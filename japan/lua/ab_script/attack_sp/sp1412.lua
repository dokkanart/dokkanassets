--SSRバーダック_ライオットスマッシュ

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
SP_01 = 155111;  --崖の上立ち
SP_02 = 155103;  --急降下　ドッカン前と共通
SP_03 = 155112;  --殴り～蹴り
SP_04 = 155113;  --殴り～蹴り　背景

--敵側
SP_02x = 155136;  --急降下　ドッカン前と共通
SP_03x = 155143;  --殴り～蹴り
SP_04x = 155144;  --殴り～蹴り　背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 崖の上立ち(166F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上立ち(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, tachi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tachi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, tachi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 166, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 166, tachi, 255 );

spep_x = spep_0 + 72 -3;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1500 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +10, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 275.5, -200.1 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 275.5, -201.3 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 275.5, -201.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 275.5, -202.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 275.5, -202.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 275.5, -203.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 275.5, -203.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 275.5, -204.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 275.5, -205.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 275.5, -207 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 275.5, -208.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 275.5, -209.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 275.5, -210.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 275.5, -211.6 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 275.5, -212.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 275.5, -213.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 275.5, -215 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 275.5, -216.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 275.5, -217.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 275.5, -218.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 275.5, -219.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 275.5, -220.7 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 275.5, -221.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 275.5, -223 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 275.5, -223 , 0 );

setScaleKey( spep_0 + 0, 1, 2, 2 );
setScaleKey( spep_0 + 1, 1, 2, 2 );
setScaleKey( spep_0 + 2, 1, 2, 2 );
setScaleKey( spep_0 + 3, 1, 2, 2 );
setScaleKey( spep_0 + 4, 1, 2, 2 );
setScaleKey( spep_0 + 5, 1, 2, 2 );
setScaleKey( spep_0 + 6, 1, 2, 2 );
setScaleKey( spep_0 -3 + 44, 1, 2, 2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 44, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--カメラ煽る
playSe( spep_0 + 62, 1072 );

--瞬間移動
playSe( spep_0 + 161, 1109 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- 急降下(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakka = entryEffectLife( spep_1 + 0, SP_02, 106, 0x100, -1, 0, 0, 0 );  --急降下(ef_002)
setEffMoveKey( spep_1 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, rakka, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rakka, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rakka, 0 );
setEffRotateKey( spep_1 + 106, rakka, 0 );
setEffAlphaKey( spep_1 + 0, rakka, 255 );
setEffAlphaKey( spep_1 + 105, rakka, 255 );
setEffAlphaKey( spep_1 + 106, rakka, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--前方ダッシュ
SE0 = playSe( spep_1 + 51, 1183 );
SE1 = playSe( spep_1 + 51, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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
shuchusen1 = entryEffectLife( spep_1 + 82 -3, 906, 24 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 82 -3, shuchusen1, 24 +3, 20 );

setEffMoveKey( spep_1 + 82 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 82 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_1 + 106, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_1 + 82 -3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 82 -3, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 106, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 106 -8, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--振りかぶる
playSe( spep_1 + 83, 1004 );

-- ** 次の準備 ** --
spep_1a = spep_1 + 106;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1a + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1a + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1a + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1a + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1a + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1a + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1a + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1a + 0, shuchusen, 0 );
setEffRotateKey( spep_1a + 90, shuchusen, 0 );

setEffAlphaKey( spep_1a + 0, shuchusen, 255 );
setEffAlphaKey( spep_1a + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1a + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1a + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1a + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1a + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1a + 94;

------------------------------------------------------
-- 殴り～蹴り(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --殴り～蹴り(ef_003)
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 142, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 142, kick_f, 255 );

kick_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --殴り～蹴り　背景(ef_004)
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 142, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 142, kick_b, 255 );

hibi = entryEffect( spep_2 -15 + 90, 1600, 0x100, -1, 0, 30 +50, -130 -70 );   -- ひび割れ
setEffMoveKey( spep_2 -15 + 90, hibi, 30 +50, -130 -70 , 0 );
setEffMoveKey( spep_2 + 142, hibi, 30 +50, -130 -70 , 0 );
setEffScaleKey( spep_2 -15 + 90, hibi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, hibi, 1.0, 1.0 );
setEffRotateKey( spep_2 -15 + 90, hibi, 0 );
setEffRotateKey( spep_2 + 142, hibi, 0 );
setEffAlphaKey( spep_2 -15 + 90, hibi, 255 );
setEffAlphaKey( spep_2 + 142, hibi, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 -3 + 4,  10005, 18, 0x100, -1, 0, 27.5, 101.4 );  --ガッ
setEffMoveKey( spep_2 -3 + 4, ctga, 27.5, 101.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctga, 64.1, 180 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctga, 96, 252.1 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctga, 100.1, 258.1 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctga, 96.7, 253.5 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctga, 100.8, 259.5 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctga, 97.4, 255 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctga, 101.5, 261 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctga, 98, 256.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctga, 102.2, 262.5 , 0 );

setEffScaleKey( spep_2 -3 + 4, ctga, 0.66, 0.66 );
setEffScaleKey( spep_2 -3 + 6, ctga, 1.64, 1.64 );
setEffScaleKey( spep_2 -3 + 8, ctga, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 10, ctga, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 12, ctga, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 14, ctga, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 16, ctga, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 18, ctga, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 20, ctga, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 22, ctga, 2.68, 2.68 );

setEffRotateKey( spep_2 -3 + 4, ctga, 13.8 );
setEffRotateKey( spep_2 -3 + 6, ctga, 14 );
setEffRotateKey( spep_2 -3 + 22, ctga, 14 );

setEffAlphaKey( spep_2 -3 + 4, ctga, 255 );
setEffAlphaKey( spep_2 -3 + 22, ctga, 255 );

ctga1 = entryEffectLife( spep_2 -3 + 90,  10005, 84, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffMoveKey( spep_2 -3 + 90, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctga1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 -3 + 90, ctga1, 2 +1.3, 2 +1.3 );
setEffScaleKey( spep_2 -3 + 106, ctga1, 2 +1.3, 2 +1.3 );

setEffRotateKey( spep_2 -3 + 90, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 92, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 94, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 96, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 98, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 100, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 102, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 104, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 106, ctga1, -23.9 );

setEffAlphaKey( spep_2 -3 + 90, ctga1, 255 );
setEffAlphaKey( spep_2 -3 + 106, ctga1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 90 -3, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 90 -3, shuchusen2, 32, 20 );

setEffMoveKey( spep_2 + 90 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 122 -3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 90 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 122 -3, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 90 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 122 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 90 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 102 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 122 -3, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2 -3 + 76, 1, 107 );

setMoveKey( spep_2 + 0, 1, 11.3, -10.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.4, -62.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 15.4, -26.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 72.2, -42.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.3, -3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 53.2, -61.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 10.6, -36.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 44.7, -49.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 6.2, -28.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 14.8, -46.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 9.8, -49.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 10.7, -49.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 11.6, -48.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 12.5, -47.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 13.4, -46.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 14.2, -46 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 15, -45.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 15.9, -44.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 16.8, -43.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 17.7, -43.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 18.6, -42.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.6, -42.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 18.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 18.5, -44.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 18.5, -44.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 18.4, -45.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 18.3, -46 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 18.3, -46.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 18.2, -47.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 18.2, -47.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 18.1, -48.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 18, -48.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 21.1, -44.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 24.2, -41.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 27.3, -37.3 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 30.5, -33.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 73.1, 7.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 69.8, -20.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 65.5 -10, -57.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 60 -18, -101.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 53.7 -24, -154.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 46.4 -30, -215.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 38.1 -35, -284.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 38.2 -40, -284.2 , 0 );
setMoveKey( spep_2 + 142, 1, 38.2 -40, -284.2 , 0 );

setScaleKey( spep_2 + 0, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 4, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 6, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 8, 1, 4.25, 4.25 );
setScaleKey( spep_2 -3 + 10, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 12, 1, 3.55, 3.55 );
setScaleKey( spep_2 -3 + 14, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 18, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 20, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 75, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 76, 1, 1 -0.3, 1 -0.3 );
setScaleKey( spep_2 -3 + 78, 1, 1.05 -0.3, 1.05 -0.3 );
setScaleKey( spep_2 -3 + 80, 1, 1.11 -0.3, 1.11 -0.3 );
setScaleKey( spep_2 -3 + 82, 1, 1.19 -0.3, 1.19 -0.3 );
setScaleKey( spep_2 -3 + 84, 1, 1.28 -0.3, 1.28 -0.3 );
setScaleKey( spep_2 -3 + 86, 1, 1.38 -0.3, 1.38 -0.3 );
setScaleKey( spep_2 -3 + 88, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 90, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 92, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 94, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 96, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 98, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 100, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 102, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2  + 142, 1, 1.6 -0.3, 1.6 -0.3 );

setRotateKey( spep_2 + 0, 1, -25.7 -10 );
setRotateKey( spep_2 -3 + 75, 1, -25.7 -10 );
setRotateKey( spep_2 -3 + 76, 1, 41.4 -10 );
setRotateKey( spep_2 -3 + 78, 1, 147.5 -10 );
setRotateKey( spep_2 -3 + 80, 1, 284 -10 );
setRotateKey( spep_2 -3 + 82, 1, 450.7 -10 );
setRotateKey( spep_2 -3 + 84, 1, 647.8 -10 );
setRotateKey( spep_2 -3 + 86, 1, 875.3 -10 );
setRotateKey( spep_2 -3 + 88, 1, 1133 -26 );
setRotateKey( spep_2 -3 + 90, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 92, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 94, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 96, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 98, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 100, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 102, 1, 1138.5 -36 );
setRotateKey( spep_2 + 142, 1, 1138.5 -36 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 10, SE0, 12 );
stopSe( spep_2 + 13, SE1, 0 );

--ボディブロー
playSe( spep_2 + 4, 1189 );
SE2 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 251);
setSeVolume( spep_2 + 19, 1182, 251);
setSeVolume( spep_2 + 24, 1182, 200);
setSeVolume( spep_2 + 32, 1182, 162);
setSeVolume( spep_2 + 38, 1182, 130);
setSeVolume( spep_2 + 44, 1182, 96);
setSeVolume( spep_2 + 52, 1182, 42);
setSeVolume( spep_2 + 58, 1182, 18);
setSeVolume( spep_2 + 64, 1182, 0);
stopSe( spep_2 + 64, SE2, 0 );
playSe( spep_2 + 12, 1009 );
playSe( spep_2 + 15, 1006 );
setSeVolume( spep_2 + 15, 1006, 89);

--瞬間移動
playSe( spep_2 + 40, 43 );

--くるくる
playSe( spep_2 + 56, 1003 );
setSeVolume( spep_2 + 56, 1003, 79);
playSe( spep_2 + 60, 1003 );
setSeVolume( spep_2 + 60, 1003, 50);
playSe( spep_2 + 64, 1003 );

--キック
playSe( spep_2 + 81, 1189 );
setSeVolume( spep_2 + 81, 1189, 63);
playSe( spep_2 + 83, 1182 );
setSeVolume( spep_2 + 83, 1182, 141);
playSe( spep_2 + 84, 1007 );
playSe( spep_2 + 87, 1110 );
playSe( spep_2 + 88, 1001 );

--ガラス割れ
playSe( spep_2 + 94, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 80 );
endPhase( spep_2 + 140 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 崖の上立ち(166F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上立ち(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, tachi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tachi, -1.0, 1.0 );
setEffScaleKey( spep_0 + 166, tachi, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 166, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 166, tachi, 255 );

spep_x = spep_0 + 72 -3;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1500 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +10, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, -275.5, -200.1 , 0 );
setMoveKey( spep_0 -3 + 4, 1, -275.5, -201.3 , 0 );
setMoveKey( spep_0 -3 + 5, 1, -275.5, -201.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, -275.5, -202.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, -275.5, -202.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, -275.5, -203.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, -275.5, -203.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, -275.5, -204.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, -275.5, -205.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, -275.5, -207 , 0 );
setMoveKey( spep_0 -3 + 16, 1, -275.5, -208.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, -275.5, -209.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, -275.5, -210.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, -275.5, -211.6 , 0 );
setMoveKey( spep_0 -3 + 24, 1, -275.5, -212.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, -275.5, -213.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, -275.5, -215 , 0 );
setMoveKey( spep_0 -3 + 30, 1, -275.5, -216.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, -275.5, -217.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, -275.5, -218.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, -275.5, -219.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, -275.5, -220.7 , 0 );
setMoveKey( spep_0 -3 + 40, 1, -275.5, -221.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, -275.5, -223 , 0 );
setMoveKey( spep_0 -3 + 44, 1, -275.5, -223 , 0 );

setScaleKey( spep_0 + 0, 1, 2, 2 );
setScaleKey( spep_0 + 1, 1, 2, 2 );
setScaleKey( spep_0 + 2, 1, 2, 2 );
setScaleKey( spep_0 + 3, 1, 2, 2 );
setScaleKey( spep_0 + 4, 1, 2, 2 );
setScaleKey( spep_0 + 5, 1, 2, 2 );
setScaleKey( spep_0 + 6, 1, 2, 2 );
setScaleKey( spep_0 -3 + 44, 1, 2, 2 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 44, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--カメラ煽る
playSe( spep_0 + 62, 1072 );

--瞬間移動
playSe( spep_0 + 161, 1109 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- 急降下(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakka = entryEffectLife( spep_1 + 0, SP_02x, 106, 0x100, -1, 0, 0, 0 );  --急降下(ef_002)
setEffMoveKey( spep_1 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, rakka, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, rakka, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rakka, 0 );
setEffRotateKey( spep_1 + 106, rakka, 0 );
setEffAlphaKey( spep_1 + 0, rakka, 255 );
setEffAlphaKey( spep_1 + 105, rakka, 255 );
setEffAlphaKey( spep_1 + 106, rakka, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--前方ダッシュ
SE0 = playSe( spep_1 + 51, 1183 );
SE1 = playSe( spep_1 + 51, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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
shuchusen1 = entryEffectLife( spep_1 + 82 -3, 906, 24 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 82 -3, shuchusen1, 24 +3, 20 );

setEffMoveKey( spep_1 + 82 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 82 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_1 + 106, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_1 + 82 -3, shuchusen1, 0 );
setEffRotateKey( spep_1 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 82 -3, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 106, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 106 -8, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--振りかぶる
playSe( spep_1 + 83, 1004 );

-- ** 次の準備 ** --
spep_1a = spep_1 + 106;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1a + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1a + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1a + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1a + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1a + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1a + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1a + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1a + 0, shuchusen, 0 );
setEffRotateKey( spep_1a + 90, shuchusen, 0 );

setEffAlphaKey( spep_1a + 0, shuchusen, 255 );
setEffAlphaKey( spep_1a + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1a + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1a + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1a + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1a + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1a + 94;

------------------------------------------------------
-- 殴り～蹴り(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --殴り～蹴り(ef_003)
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 142, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 142, kick_f, 255 );

kick_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --殴り～蹴り　背景(ef_004)
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 142, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 142, kick_b, 255 );

hibi = entryEffect( spep_2 -15 + 90, 1600, 0x100, -1, 0, 30 +50, -130 -70 );   -- ひび割れ
setEffMoveKey( spep_2 -15 + 90, hibi, 30 +50, -130 -70 , 0 );
setEffMoveKey( spep_2 + 142, hibi, 30 +50, -130 -70 , 0 );
setEffScaleKey( spep_2 -15 + 90, hibi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, hibi, 1.0, 1.0 );
setEffRotateKey( spep_2 -15 + 90, hibi, 0 );
setEffRotateKey( spep_2 + 142, hibi, 0 );
setEffAlphaKey( spep_2 -15 + 90, hibi, 255 );
setEffAlphaKey( spep_2 + 142, hibi, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 -3 + 4,  10005, 18, 0x100, -1, 0, 27.5, 101.4 );  --ガッ
setEffMoveKey( spep_2 -3 + 4, ctga, 27.5, 101.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctga, 64.1, 180 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctga, 96, 252.1 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctga, 100.1, 258.1 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctga, 96.7, 253.5 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctga, 100.8, 259.5 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctga, 97.4, 255 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctga, 101.5, 261 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctga, 98, 256.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctga, 102.2, 262.5 , 0 );

setEffScaleKey( spep_2 -3 + 4, ctga, 0.66, 0.66 );
setEffScaleKey( spep_2 -3 + 6, ctga, 1.64, 1.64 );
setEffScaleKey( spep_2 -3 + 8, ctga, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 10, ctga, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 12, ctga, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 14, ctga, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 16, ctga, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 18, ctga, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 20, ctga, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 22, ctga, 2.68, 2.68 );

setEffRotateKey( spep_2 -3 + 4, ctga, 13.8 );
setEffRotateKey( spep_2 -3 + 6, ctga, 14 );
setEffRotateKey( spep_2 -3 + 22, ctga, 14 );

setEffAlphaKey( spep_2 -3 + 4, ctga, 255 );
setEffAlphaKey( spep_2 -3 + 22, ctga, 255 );

ctga1 = entryEffectLife( spep_2 -3 + 90,  10005, 84, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffMoveKey( spep_2 -3 + 90, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctga1, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctga1, 4, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctga1, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 -3 + 90, ctga1, 2 +1.3, 2 +1.3 );
setEffScaleKey( spep_2 -3 + 106, ctga1, 2 +1.3, 2 +1.3 );

setEffRotateKey( spep_2 -3 + 90, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 92, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 94, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 96, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 98, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 100, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 102, ctga1, -23.9 );
setEffRotateKey( spep_2 -3 + 104, ctga1, -14.9 );
setEffRotateKey( spep_2 -3 + 106, ctga1, -23.9 );

setEffAlphaKey( spep_2 -3 + 90, ctga1, 255 );
setEffAlphaKey( spep_2 -3 + 106, ctga1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 90 -3, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 90 -3, shuchusen2, 32, 20 );

setEffMoveKey( spep_2 + 90 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 122 -3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 90 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 122 -3, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 90 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 122 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 90 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 102 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 122 -3, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 108 );
changeAnime( spep_2 -3 + 76, 1, 107 );

setMoveKey( spep_2 + 0, 1, 11.3, -10.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 62.4, -62.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 15.4, -26.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 72.2, -42.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.3, -3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 53.2, -61.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 10.6, -36.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 44.7, -49.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 6.2, -28.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 14.8, -46.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 9.8, -49.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 10.7, -49.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 11.6, -48.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 12.5, -47.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 13.4, -46.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 14.2, -46 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 15, -45.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 15.9, -44.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 16.8, -43.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 17.7, -43.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 18.6, -42.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.6, -42.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 18.5, -43.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 18.5, -44.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 18.5, -44.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 18.4, -45.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 18.3, -46 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 18.3, -46.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 18.2, -47.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 18.2, -47.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 18.1, -48.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 18, -48.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 21.1, -44.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 24.2, -41.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 27.3, -37.3 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 30.5, -33.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 73.1, 7.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 69.8, -20.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 65.5 -10, -57.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 60 -18, -101.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 53.7 -24, -154.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 46.4 -30, -215.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 38.1 -35, -284.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 38.2 -40, -284.2 , 0 );
setMoveKey( spep_2 + 142, 1, 38.2 -40, -284.2 , 0 );

setScaleKey( spep_2 + 0, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 4, 1, 4.09, 4.09 );
setScaleKey( spep_2 -3 + 6, 1, 4.4, 4.4 );
setScaleKey( spep_2 -3 + 8, 1, 4.25, 4.25 );
setScaleKey( spep_2 -3 + 10, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 12, 1, 3.55, 3.55 );
setScaleKey( spep_2 -3 + 14, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_2 -3 + 18, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 20, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 75, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 76, 1, 1 -0.3, 1 -0.3 );
setScaleKey( spep_2 -3 + 78, 1, 1.05 -0.3, 1.05 -0.3 );
setScaleKey( spep_2 -3 + 80, 1, 1.11 -0.3, 1.11 -0.3 );
setScaleKey( spep_2 -3 + 82, 1, 1.19 -0.3, 1.19 -0.3 );
setScaleKey( spep_2 -3 + 84, 1, 1.28 -0.3, 1.28 -0.3 );
setScaleKey( spep_2 -3 + 86, 1, 1.38 -0.3, 1.38 -0.3 );
setScaleKey( spep_2 -3 + 88, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 90, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 92, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 94, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 96, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 98, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2 -3 + 100, 1, 1.5 -0.3, 1.5 -0.3 );
setScaleKey( spep_2 -3 + 102, 1, 1.6 -0.3, 1.6 -0.3 );
setScaleKey( spep_2  + 142, 1, 1.6 -0.3, 1.6 -0.3 );

setRotateKey( spep_2 + 0, 1, -25.7 -10 );
setRotateKey( spep_2 -3 + 75, 1, -25.7 -10 );
setRotateKey( spep_2 -3 + 76, 1, 41.4 -10 );
setRotateKey( spep_2 -3 + 78, 1, 147.5 -10 );
setRotateKey( spep_2 -3 + 80, 1, 284 -10 );
setRotateKey( spep_2 -3 + 82, 1, 450.7 -10 );
setRotateKey( spep_2 -3 + 84, 1, 647.8 -10 );
setRotateKey( spep_2 -3 + 86, 1, 875.3 -10 );
setRotateKey( spep_2 -3 + 88, 1, 1133 -26 );
setRotateKey( spep_2 -3 + 90, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 92, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 94, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 96, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 98, 1, 1138.5 -36 );
setRotateKey( spep_2 -3 + 100, 1, 1138.4 -36 );
setRotateKey( spep_2 -3 + 102, 1, 1138.5 -36 );
setRotateKey( spep_2 + 142, 1, 1138.5 -36 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 10, SE0, 12 );
stopSe( spep_2 + 13, SE1, 0 );

--ボディブロー
playSe( spep_2 + 4, 1189 );
SE2 = playSe( spep_2 + 11, 1182 );
setSeVolume( spep_2 + 11, 1182, 251);
setSeVolume( spep_2 + 19, 1182, 251);
setSeVolume( spep_2 + 24, 1182, 200);
setSeVolume( spep_2 + 32, 1182, 162);
setSeVolume( spep_2 + 38, 1182, 130);
setSeVolume( spep_2 + 44, 1182, 96);
setSeVolume( spep_2 + 52, 1182, 42);
setSeVolume( spep_2 + 58, 1182, 18);
setSeVolume( spep_2 + 64, 1182, 0);
stopSe( spep_2 + 64, SE2, 0 );
playSe( spep_2 + 12, 1009 );
playSe( spep_2 + 15, 1006 );
setSeVolume( spep_2 + 15, 1006, 89);

--瞬間移動
playSe( spep_2 + 40, 43 );

--くるくる
playSe( spep_2 + 56, 1003 );
setSeVolume( spep_2 + 56, 1003, 79);
playSe( spep_2 + 60, 1003 );
setSeVolume( spep_2 + 60, 1003, 50);
playSe( spep_2 + 64, 1003 );

--キック
playSe( spep_2 + 81, 1189 );
setSeVolume( spep_2 + 81, 1189, 63);
playSe( spep_2 + 83, 1182 );
setSeVolume( spep_2 + 83, 1182, 141);
playSe( spep_2 + 84, 1007 );
playSe( spep_2 + 87, 1110 );
playSe( spep_2 + 88, 1001 );

--ガラス割れ
playSe( spep_2 + 94, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 80 );
endPhase( spep_2 + 140 );

end