--URバーダック_ライオットスマッシュ

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
SP_01 = 155102;  --崖の上立ち
SP_02 = 155103;  --急降下　ドッカン前と共通
SP_03 = 155104;  --殴り～蹴り
SP_04 = 155105;  --殴り～蹴り　背景
SP_05 = 155106;  --拳ぷるぷる
SP_06 = 155107;  --飛びかかり
SP_07 = 155108;  --飛びかかり　背景
SP_08 = 155109;  --アッパーカット
SP_09 = 155110;  --ふっとばし

--敵側
SP_02x = 155136;  --急降下　ドッカン前と共通
SP_03x = 155137;  --殴り～蹴り
SP_04x = 155138;  --殴り～蹴り　背景
SP_05x = 155139;  --拳ぷるぷる
SP_06x = 155140;  --飛びかかり
SP_08x = 155141;  --アッパーカット
SP_09x = 155142;  --ふっとばし

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
-- 崖の上立ち(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上立ち(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, tachi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tachi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, tachi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 144, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 144, tachi, 255 );

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
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--カメラ煽る
playSe( spep_0 + 62, 1072 );

--瞬間移動
playSe( spep_0 + 138, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;

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
spep_2 = spep_1 + 106;

------------------------------------------------------
-- 殴り～蹴り(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03, 136, 0x100, -1, 0, 0, 0 );  --殴り～蹴り(ef_003)
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 136, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 136, kick_f, 255 );

kick_b = entryEffectLife( spep_2 + 0, SP_04, 136, 0x80, -1, 0, 0, 0 );  --殴り～蹴り　背景(ef_004)
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 136, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 136, kick_b, 255 );

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

ctbaki = entryEffectLife( spep_2 -3 + 76,  10020, 28, 0x100, -1, 0, 9.1, -86.4 );  --バキッ
setEffMoveKey( spep_2 -3 + 76, ctbaki, 9.1, -86.4 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbaki, -25.6, -123.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbaki, -67, -165.2 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbaki, -62.3, -162.7 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbaki, -68.3, -166.5 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, -63.5, -164 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, -69.5, -167.8 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, -64.7, -165.3 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, -70.7, -169.2 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, -65.8, -166.6 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, -72, -170.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, -67.1, -167.9 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbaki, -111.8, -211.8 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctbaki, -141.4, -247.1 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctbaki, -178.7, -286.5 , 0 );

setEffScaleKey( spep_2 -3 + 76, ctbaki, 0.77, 0.77 );
setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_2 -3 + 80, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 82, ctbaki, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 84, ctbaki, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 86, ctbaki, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 100, ctbaki, 4, 4 );
setEffScaleKey( spep_2 -3 + 102, ctbaki, 5.05, 5.05 );
setEffScaleKey( spep_2 -3 + 104, ctbaki, 6.1, 6.1 );

setEffRotateKey( spep_2 -3 + 76, ctbaki, 35.6 );
setEffRotateKey( spep_2 -3 + 78, ctbaki, 35.7 );
setEffRotateKey( spep_2 -3 + 104, ctbaki, 35.7 );

setEffAlphaKey( spep_2 -3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 98, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 100, ctbaki, 170 );
setEffAlphaKey( spep_2 -3 + 102, ctbaki, 85 );
setEffAlphaKey( spep_2 -3 + 104, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 96, 1, 0 );
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
setMoveKey( spep_2 -3 + 76, 1, 101.6, -164.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 74.8, -170.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 113.5, -189.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 88.3, -174.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 79.2, -184 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 121, -224.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 169.6, -300.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 160.6, -365.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 257.1, -420.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 273.3, -467.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 273.3, -467.6 , 0 );

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
setScaleKey( spep_2 -3 + 76, 1, 2.07 -1, 2.07 -1 );
setScaleKey( spep_2 -3 + 78, 1, 2.15 -1, 2.15 -1 );
setScaleKey( spep_2 -3 + 80, 1, 2.1 -1, 2.1 -1 );
setScaleKey( spep_2 -3 + 82, 1, 1.98 -1, 1.99 -1 );
setScaleKey( spep_2 -3 + 84, 1, 1.88 -1, 1.88 -1 );
setScaleKey( spep_2 -3 + 86, 1, 2.43 -1, 2.43 -1 );
setScaleKey( spep_2 -3 + 88, 1, 3.05 -1.5, 3.08 -1.5 );
setScaleKey( spep_2 -3 + 90, 1, 3.68 -1.6, 3.68 -1.6 );
setScaleKey( spep_2 -3 + 92, 1, 4.33 -2, 4.33 -2 );
setScaleKey( spep_2 -3 + 94, 1, 4.98 -2.3, 4.98 -2.3 );
setScaleKey( spep_2 -3 + 96, 1, 4.98 -2.3, 4.98 -2.3 );

setRotateKey( spep_2 + 0, 1, -25.7 );
setRotateKey( spep_2 -3 + 75, 1, -25.7 );
setRotateKey( spep_2 -3 + 76, 1, 18.5 );
setRotateKey( spep_2 -3 + 78, 1, 18.6 );
setRotateKey( spep_2 -3 + 96, 1, 18.6 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 拳ぷるぷる(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
puru = entryEffectLife( spep_3 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --拳ぷるぷる(ef_005)
setEffMoveKey( spep_3 + 0, puru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, puru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, puru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, puru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, puru, 0 );
setEffRotateKey( spep_3 + 96, puru, 0 );
setEffAlphaKey( spep_3 + 0, puru, 255 );
setEffAlphaKey( spep_3 + 96, puru, 255 );

spep_x = spep_3 + 10 -3;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1500 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 10 -3, 906, 86 +3, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_3 + 10 -3, shuchusen2, 86 +3, 20 );

setEffMoveKey( spep_3 + 10 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 10 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 96, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 + 10 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 10 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen2, 255 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--拳握る
SE3 = playSe( spep_3 + 9, 1233 );
stopSe( spep_3 + 24, SE3, 0 );

SE4 = playSe( spep_3 + 19, 1007 );
stopSe( spep_3 + 25, SE4, 0 );

SE5 = playSe( spep_3 + 22, 1013 );
stopSe( spep_3 + 33, SE5, 0 );

SE6 = playSe( spep_3 + 22, 1190 );
stopSe( spep_3 + 30, SE6, 9 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--向かっていく
playSe( spep_4 + 62, 1072 );
setSeVolume( spep_4 + 62, 1072, 0 );
setSeVolume( spep_4 + 88, 1072, 0 );
setSeVolume( spep_4 + 94, 1072, 23 );

playSe( spep_4 + 85, 1182 );
setSeVolume( spep_4 + 85, 1182, 0 );
setSeVolume( spep_4 + 89, 1182, 0 );
setSeVolume( spep_4 + 94, 1182, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_5 = spep_4 + 94;

------------------------------------------------------
-- 飛びかかり(102F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobikakaru_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --飛びかかり(ef_006)
setEffMoveKey( spep_5 + 0, tobikakaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, tobikakaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tobikakaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, tobikakaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tobikakaru_f, 0 );
setEffRotateKey( spep_5 + 102, tobikakaru_f, 0 );
setEffAlphaKey( spep_5 + 0, tobikakaru_f, 255 );
setEffAlphaKey( spep_5 + 102, tobikakaru_f, 255 );

tobikakaru_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --飛びかかり(ef_007)
setEffMoveKey( spep_5 + 0, tobikakaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, tobikakaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tobikakaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, tobikakaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tobikakaru_b, 0 );
setEffRotateKey( spep_5 + 102, tobikakaru_b, 0 );
setEffAlphaKey( spep_5 + 0, tobikakaru_b, 255 );
setEffAlphaKey( spep_5 + 102, tobikakaru_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 + 102, 1, 0 );
changeAnime( spep_5 -3 + 22, 1, 105 );

setMoveKey( spep_5 -3 + 22, 1, 600.2, -394.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 562.9, -362.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 525.6, -330.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 488.4, -299 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 451.1, -267.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 413.8, -235.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 376.5, -203.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 339.3, -172 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 301.9, -140.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 264.7, -108.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 227.4, -76.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 190.1, -45.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 190.4, -45.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 190.7, -45.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 190.9, -45.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 191.2, -45.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 191.5, -45.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 191.8, -45.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 192, -45.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 192.3, -45.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 192.6, -46 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 192.9, -46.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 193.1, -46.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 193.4, -46.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 193.7, -46.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 194, -46.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 194.2, -46.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 194.5, -46.7 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 194.8, -46.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 195.1, -46.9 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 195.3, -47 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 195.6, -47.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 195.9, -47.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 196.2, -47.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 196.4, -47.4 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 196.7, -47.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 197, -47.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 197.3, -47.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 197.5, -47.8 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 197.8, -47.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 198.1, -48 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 198.4, -48.1 , 0 );
setMoveKey( spep_5 + 102, 1, 198.4, -48.1 , 0 );

setScaleKey( spep_5 -3 + 22, 1, 1, 1 );
setScaleKey( spep_5 -3 + 24, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 38, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 40, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 42, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 48, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 50, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 52, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 54, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 58, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 60, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 62, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 64, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 66, 1, 0.73, 0.73 );
setScaleKey( spep_5 -3 + 68, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_5 -3 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 74, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 76, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 78, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 80, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 82, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 84, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 86, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 88, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 90, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 92, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 94, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 96, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 98, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 100, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 102, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 102, 1, 0.53, 0.53 );

setRotateKey( spep_5 -3 + 22, 1, 0 );
setRotateKey( spep_5 + 102, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--向かっていく
setSeVolume( spep_5 + 0, 1072, 62 );
setSeVolume( spep_5 + 3, 1072, 141 );

setSeVolume( spep_5 + 0, 1182, 38 );
setSeVolume( spep_5 + 4, 1182, 72 );
setSeVolume( spep_5 + 7, 1182, 100 );

SE7 = playSe( spep_5 + 7, 1183 );
stopSe( spep_5 + 2, SE7, 31 );

playSe( spep_5 + 20, 9 );
setSeVolume( spep_5 + 20, 9, 10 );
setSeVolume( spep_5 + 28, 9, 26 );
setSeVolume( spep_5 + 36, 9, 48 );
setSeVolume( spep_5 + 44, 9, 62 );
setSeVolume( spep_5 + 53, 9, 71 );

SE8 = playSe( spep_5 + 44, 1188 );
setSeVolume( spep_5 + 44, 1188, 10 );
setSeVolume( spep_5 + 52, 1188, 28 );
setSeVolume( spep_5 + 60, 1188, 42 );
setSeVolume( spep_5 + 68, 1188, 56 );

SE9 = playSe( spep_5 + 67, 1116 );
setSeVolume( spep_5 + 67, 1116, 89 );
setSeVolume( spep_5 + 88, 1116, 89 );
setSeVolume( spep_5 + 102, 1116, 60 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 102;

------------------------------------------------------
-- アッパーカット(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
upper = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --アッパーカット(ef_008)
setEffMoveKey( spep_6 + 0, upper, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, upper, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, upper, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, upper, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, upper, 0 );
setEffRotateKey( spep_6 + 66, upper, 0 );
setEffAlphaKey( spep_6 + 0, upper, 255 );
setEffAlphaKey( spep_6 + 65, upper, 255 );
setEffAlphaKey( spep_6 + 66, upper, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_6 -3 + 34,  10021, 34, 0x100, -1, 0, 28.9, -347.2 );  --バゴ
setEffShake( spep_6 -3 + 38, ctbago, 30, 20 );
setEffMoveKey( spep_6 -3 + 34, ctbago, 28.9, -347.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctbago, 31.1, -347.1 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctbago, 32.6, -341.4 , 0 );
setEffMoveKey( spep_6 -3 + 68, ctbago, 32.6, -341.4 , 0 );

setEffScaleKey( spep_6 -3 + 34, ctbago, 1.13, 1.13 );
setEffScaleKey( spep_6 -3 + 36, ctbago, 2.41, 2.41 );
setEffScaleKey( spep_6 -3 + 38, ctbago, 3.66, 3.66 );
setEffScaleKey( spep_6 -3 + 68, ctbago, 3.66, 3.66 );

setEffRotateKey( spep_6 -3 + 34, ctbago, -12.1 );
setEffRotateKey( spep_6 -3 + 36, ctbago, -12.2 );
setEffRotateKey( spep_6 -3 + 68, ctbago, -12.2 );

setEffAlphaKey( spep_6 -3 + 34, ctbago, 255 );
setEffAlphaKey( spep_6 -3 + 68, ctbago, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 0, 906, 66, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen3, 66, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_6 + 66, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 66, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 17 -3, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 18 -3, shuchusen3, 0 );
setEffAlphaKey( spep_6 + 47 -3, shuchusen3, 0 );
setEffAlphaKey( spep_6 + 48 -3, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 65, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 66, shuchusen3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--向かっていく
setSeVolume( spep_6 + 2, 1188, 56 );
setSeVolume( spep_6 + 18, 1188, 44 );
setSeVolume( spep_6 + 32, 1188, 32 );
setSeVolume( spep_6 + 48, 1188, 14 );
setSeVolume( spep_6 + 62, 1188, 0 );
stopSe( spep_6 + 62, SE8, 0 );

setSeVolume( spep_6 + 0, 1116, 34 );
setSeVolume( spep_6 + 8, 1116, 12 );
setSeVolume( spep_6 + 13, 1116, 0 );
stopSe( spep_6 + 13, SE9, 0 );

--アッパー
playSe( spep_6 + 29, 1003 );
playSe( spep_6 + 33, 1009 );
setSeVolume( spep_6 + 33, 1009, 79 );
playSe( spep_6 + 37, 1120 );
playSe( spep_6 + 47, 1013 );

--敵が飛んでいく
SE10 = playSe( spep_6 + 31, 1121 );
setSeVolume( spep_6 + 31, 1121, 0 );
setSeVolume( spep_6 + 70, 1121, 10 );
setSeVolume( spep_6 + 78, 1121, 34 );
setSeVolume( spep_6 + 85, 1121, 56 );

playSe( spep_6 + 46, 1011 );
setSeVolume( spep_6 + 46, 1011, 10 );
setSeVolume( spep_6 + 52, 1011, 26 );
setSeVolume( spep_6 + 54, 1011, 48 );
setSeVolume( spep_6 + 57, 1011, 63 );

playSe( spep_6 + 58, 1025 );
setSeVolume( spep_6 + 58, 1025, 10 );
setSeVolume( spep_6 + 66, 1025, 28 );

SE11 = playSe( spep_6 + 65, 9 );
setSeVolume( spep_6 + 65, 9, 112 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- ふっとばし(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --ふっとばし(ef_009)
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 130, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 130, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 26, 1, 0 );
changeAnime( spep_7 -3 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 199.6, -68.7 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 258.3, -42.7 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 365, -45.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 423.6, -54.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 514.7, -58.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 613.7, -62.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 668.4, -33.5 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 793.5, -25.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 832.5, -36 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 936.7, -43.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 1001.8, -38.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 1035.6, -17.8 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 1135.6, -27.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.98 -1, 1.98 -1 );
setScaleKey( spep_7 -3 + 4, 1, 2.44 -1, 2.44 -1 );
setScaleKey( spep_7 -3 + 6, 1, 2.82 -1, 2.82 -1 );
setScaleKey( spep_7 -3 + 8, 1, 3.28 -1, 3.28 -1 );
setScaleKey( spep_7 -3 + 10, 1, 3.71 -1, 3.71 -1 );
setScaleKey( spep_7 -3 + 12, 1, 4.27 -1.5, 4.27 -1.5 );
setScaleKey( spep_7 -3 + 14, 1, 4.58 -1.6, 4.58 -1.6 );
setScaleKey( spep_7 -3 + 16, 1, 5.17 -2, 5.17 -2 );
setScaleKey( spep_7 -3 + 18, 1, 5.45 -2, 5.45 -2 );
setScaleKey( spep_7 -3 + 20, 1, 5.99 -2, 5.99 -2 );
setScaleKey( spep_7 -3 + 22, 1, 6.21 -2.3, 6.21 -2.3 );
setScaleKey( spep_7 -3 + 24, 1, 6.41 -2.4, 6.41 -2.4 );
setScaleKey( spep_7 -3 + 26, 1, 6.41 -2.4, 6.41 -2.4 );

setRotateKey( spep_7 + 0, 1, -33.9 );
setRotateKey( spep_7 -3 + 26, 1, -33.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が飛んでいく
setSeVolume( spep_7 + 103, 1121, 56 );
setSeVolume( spep_7 + 108, 1121, 24 );
setSeVolume( spep_7 + 118 -4 , 1121, 0 );
stopSe( spep_7 + 118 -4 , SE10, 0 );

setSeVolume( spep_7 + 0, 1025, 46 );
setSeVolume( spep_7 + 8, 1025, 71 );

setSeVolume( spep_7 + 35, 9, 112 );
setSeVolume( spep_7 + 64, 9, 64 );
setSeVolume( spep_7 + 88, 9, 0 );

playSe( spep_7 + 5, 1183 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 36 );
endPhase( spep_7 + 130 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 崖の上立ち(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tachi = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖の上立ち(ef_001)
setEffMoveKey( spep_0 + 0, tachi, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, tachi, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tachi, -1.0, 1.0 );
setEffScaleKey( spep_0 + 144, tachi, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tachi, 0 );
setEffRotateKey( spep_0 + 144, tachi, 0 );
setEffAlphaKey( spep_0 + 0, tachi, 255 );
setEffAlphaKey( spep_0 + 144, tachi, 255 );

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
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--カメラ煽る
playSe( spep_0 + 62, 1072 );

--瞬間移動
playSe( spep_0 + 138, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;

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
spep_2 = spep_1 + 106;

------------------------------------------------------
-- 殴り～蹴り(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03x, 136, 0x100, -1, 0, 0, 0 );  --殴り～蹴り(ef_003)
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 136, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 136, kick_f, 255 );

kick_b = entryEffectLife( spep_2 + 0, SP_04x, 136, 0x80, -1, 0, 0, 0 );  --殴り～蹴り　背景(ef_004)
setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 136, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 136, kick_b, 255 );

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

ctbaki = entryEffectLife( spep_2 -3 + 76,  10020, 28, 0x100, -1, 0, 9.1, -86.4 );  --バキッ
setEffMoveKey( spep_2 -3 + 76, ctbaki, 9.1, -86.4 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbaki, -25.6, -123.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbaki, -67, -165.2 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbaki, -62.3, -162.7 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbaki, -68.3, -166.5 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, -63.5, -164 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, -69.5, -167.8 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, -64.7, -165.3 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, -70.7, -169.2 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, -65.8, -166.6 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, -72, -170.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, -67.1, -167.9 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbaki, -111.8, -211.8 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctbaki, -141.4, -247.1 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctbaki, -178.7, -286.5 , 0 );

setEffScaleKey( spep_2 -3 + 76, ctbaki, 0.77, 0.77 );
setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_2 -3 + 80, ctbaki, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 82, ctbaki, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 84, ctbaki, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 86, ctbaki, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 100, ctbaki, 4, 4 );
setEffScaleKey( spep_2 -3 + 102, ctbaki, 5.05, 5.05 );
setEffScaleKey( spep_2 -3 + 104, ctbaki, 6.1, 6.1 );

setEffRotateKey( spep_2 -3 + 76, ctbaki, 35.6 );
setEffRotateKey( spep_2 -3 + 78, ctbaki, 35.7 );
setEffRotateKey( spep_2 -3 + 104, ctbaki, 35.7 );

setEffAlphaKey( spep_2 -3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 98, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 100, ctbaki, 170 );
setEffAlphaKey( spep_2 -3 + 102, ctbaki, 85 );
setEffAlphaKey( spep_2 -3 + 104, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 96, 1, 0 );
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
setMoveKey( spep_2 -3 + 76, 1, 101.6, -164.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 74.8, -170.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 113.5, -189.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 88.3, -174.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 79.2, -184 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 121, -224.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 169.6, -300.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 160.6, -365.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 257.1, -420.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 273.3, -467.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 273.3, -467.6 , 0 );

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
setScaleKey( spep_2 -3 + 76, 1, 2.07 -1, 2.07 -1 );
setScaleKey( spep_2 -3 + 78, 1, 2.15 -1, 2.15 -1 );
setScaleKey( spep_2 -3 + 80, 1, 2.1 -1, 2.1 -1 );
setScaleKey( spep_2 -3 + 82, 1, 1.98 -1, 1.99 -1 );
setScaleKey( spep_2 -3 + 84, 1, 1.88 -1, 1.88 -1 );
setScaleKey( spep_2 -3 + 86, 1, 2.43 -1, 2.43 -1 );
setScaleKey( spep_2 -3 + 88, 1, 3.05 -1.5, 3.08 -1.5 );
setScaleKey( spep_2 -3 + 90, 1, 3.68 -1.6, 3.68 -1.6 );
setScaleKey( spep_2 -3 + 92, 1, 4.33 -2, 4.33 -2 );
setScaleKey( spep_2 -3 + 94, 1, 4.98 -2.3, 4.98 -2.3 );
setScaleKey( spep_2 -3 + 96, 1, 4.98 -2.3, 4.98 -2.3 );

setRotateKey( spep_2 + 0, 1, -25.7 );
setRotateKey( spep_2 -3 + 75, 1, -25.7 );
setRotateKey( spep_2 -3 + 76, 1, 18.5 );
setRotateKey( spep_2 -3 + 78, 1, 18.6 );
setRotateKey( spep_2 -3 + 96, 1, 18.6 );

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

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 拳ぷるぷる(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
puru = entryEffectLife( spep_3 + 0, SP_05x, 96, 0x100, -1, 0, 0, 0 );  --拳ぷるぷる(ef_005)
setEffMoveKey( spep_3 + 0, puru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, puru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, puru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, puru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, puru, 0 );
setEffRotateKey( spep_3 + 96, puru, 0 );
setEffAlphaKey( spep_3 + 0, puru, 255 );
setEffAlphaKey( spep_3 + 96, puru, 255 );

spep_x = spep_3 + 10 -3;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1500 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 10 -3, 906, 86 +3, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_3 + 10 -3, shuchusen2, 86 +3, 20 );

setEffMoveKey( spep_3 + 10 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 10 -3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 96, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 + 10 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 10 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen2, 255 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--拳握る
SE3 = playSe( spep_3 + 9, 1233 );
stopSe( spep_3 + 24, SE3, 0 );

SE4 = playSe( spep_3 + 19, 1007 );
stopSe( spep_3 + 25, SE4, 0 );

SE5 = playSe( spep_3 + 22, 1013 );
stopSe( spep_3 + 33, SE5, 0 );

SE6 = playSe( spep_3 + 22, 1190 );
stopSe( spep_3 + 30, SE6, 9 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--向かっていく
playSe( spep_4 + 62, 1072 );
setSeVolume( spep_4 + 62, 1072, 0 );
setSeVolume( spep_4 + 88, 1072, 0 );
setSeVolume( spep_4 + 94, 1072, 23 );

playSe( spep_4 + 85, 1182 );
setSeVolume( spep_4 + 85, 1182, 0 );
setSeVolume( spep_4 + 89, 1182, 0 );
setSeVolume( spep_4 + 94, 1182, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_5 = spep_4 + 94;

------------------------------------------------------
-- 飛びかかり(102F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobikakaru_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --飛びかかり(ef_006)
setEffMoveKey( spep_5 + 0, tobikakaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, tobikakaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tobikakaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, tobikakaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tobikakaru_f, 0 );
setEffRotateKey( spep_5 + 102, tobikakaru_f, 0 );
setEffAlphaKey( spep_5 + 0, tobikakaru_f, 255 );
setEffAlphaKey( spep_5 + 102, tobikakaru_f, 255 );

tobikakaru_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --飛びかかり(ef_007)
setEffMoveKey( spep_5 + 0, tobikakaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 102, tobikakaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tobikakaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, tobikakaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tobikakaru_b, 0 );
setEffRotateKey( spep_5 + 102, tobikakaru_b, 0 );
setEffAlphaKey( spep_5 + 0, tobikakaru_b, 255 );
setEffAlphaKey( spep_5 + 102, tobikakaru_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 + 102, 1, 0 );
changeAnime( spep_5 -3 + 22, 1, 105 );

setMoveKey( spep_5 -3 + 22, 1, 600.2, -394.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 562.9, -362.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 525.6, -330.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 488.4, -299 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 451.1, -267.2 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 413.8, -235.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 376.5, -203.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 339.3, -172 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 301.9, -140.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 264.7, -108.5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 227.4, -76.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 190.1, -45.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 190.4, -45.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 190.7, -45.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 190.9, -45.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 191.2, -45.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 191.5, -45.6 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 191.8, -45.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 192, -45.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 192.3, -45.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 192.6, -46 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 192.9, -46.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 193.1, -46.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 193.4, -46.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 193.7, -46.4 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 194, -46.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 194.2, -46.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 194.5, -46.7 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 194.8, -46.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 195.1, -46.9 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 195.3, -47 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 195.6, -47.1 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 195.9, -47.2 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 196.2, -47.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 196.4, -47.4 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 196.7, -47.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 197, -47.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 197.3, -47.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 197.5, -47.8 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 197.8, -47.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 198.1, -48 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 198.4, -48.1 , 0 );
setMoveKey( spep_5 + 102, 1, 198.4, -48.1 , 0 );

setScaleKey( spep_5 -3 + 22, 1, 1, 1 );
setScaleKey( spep_5 -3 + 24, 1, 0.99, 0.99 );
setScaleKey( spep_5 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 30, 1, 0.94, 0.94 );
setScaleKey( spep_5 -3 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_5 -3 + 38, 1, 0.88, 0.88 );
setScaleKey( spep_5 -3 + 40, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 42, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 48, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 50, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 52, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 54, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 58, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 60, 1, 0.76, 0.76 );
setScaleKey( spep_5 -3 + 62, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 64, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 66, 1, 0.73, 0.73 );
setScaleKey( spep_5 -3 + 68, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_5 -3 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 74, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 76, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 78, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 80, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 82, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 84, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 86, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 88, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 90, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 92, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 94, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 96, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 98, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 100, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 102, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 102, 1, 0.53, 0.53 );

setRotateKey( spep_5 -3 + 22, 1, 0 );
setRotateKey( spep_5 + 102, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--向かっていく
setSeVolume( spep_5 + 0, 1072, 62 );
setSeVolume( spep_5 + 3, 1072, 141 );

setSeVolume( spep_5 + 0, 1182, 38 );
setSeVolume( spep_5 + 4, 1182, 72 );
setSeVolume( spep_5 + 7, 1182, 100 );

SE7 = playSe( spep_5 + 7, 1183 );
stopSe( spep_5 + 2, SE7, 31 );

playSe( spep_5 + 20, 9 );
setSeVolume( spep_5 + 20, 9, 10 );
setSeVolume( spep_5 + 28, 9, 26 );
setSeVolume( spep_5 + 36, 9, 48 );
setSeVolume( spep_5 + 44, 9, 62 );
setSeVolume( spep_5 + 53, 9, 71 );

SE8 = playSe( spep_5 + 44, 1188 );
setSeVolume( spep_5 + 44, 1188, 10 );
setSeVolume( spep_5 + 52, 1188, 28 );
setSeVolume( spep_5 + 60, 1188, 42 );
setSeVolume( spep_5 + 68, 1188, 56 );

SE9 = playSe( spep_5 + 67, 1116 );
setSeVolume( spep_5 + 67, 1116, 89 );
setSeVolume( spep_5 + 88, 1116, 89 );
setSeVolume( spep_5 + 102, 1116, 60 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 102;

------------------------------------------------------
-- アッパーカット(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
upper = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --アッパーカット(ef_008)
setEffMoveKey( spep_6 + 0, upper, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, upper, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, upper, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, upper, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, upper, 0 );
setEffRotateKey( spep_6 + 66, upper, 0 );
setEffAlphaKey( spep_6 + 0, upper, 255 );
setEffAlphaKey( spep_6 + 65, upper, 255 );
setEffAlphaKey( spep_6 + 66, upper, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_6 -3 + 34,  10021, 34, 0x100, -1, 0, 28.9, -347.2 );  --バゴ
setEffShake( spep_6 -3 + 38, ctbago, 30, 20 );
setEffMoveKey( spep_6 -3 + 34, ctbago, 28.9, -347.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctbago, 31.1, -347.1 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctbago, 32.6, -341.4 , 0 );
setEffMoveKey( spep_6 -3 + 68, ctbago, 32.6, -341.4 , 0 );

setEffScaleKey( spep_6 -3 + 34, ctbago, 1.13, 1.13 );
setEffScaleKey( spep_6 -3 + 36, ctbago, 2.41, 2.41 );
setEffScaleKey( spep_6 -3 + 38, ctbago, 3.66, 3.66 );
setEffScaleKey( spep_6 -3 + 68, ctbago, 3.66, 3.66 );

setEffRotateKey( spep_6 -3 + 34, ctbago, -12.1 );
setEffRotateKey( spep_6 -3 + 36, ctbago, -12.2 );
setEffRotateKey( spep_6 -3 + 68, ctbago, -12.2 );

setEffAlphaKey( spep_6 -3 + 34, ctbago, 255 );
setEffAlphaKey( spep_6 -3 + 68, ctbago, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 0, 906, 66, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen3, 66, 20 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_6 + 66, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 66, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 17 -3, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 18 -3, shuchusen3, 0 );
setEffAlphaKey( spep_6 + 47 -3, shuchusen3, 0 );
setEffAlphaKey( spep_6 + 48 -3, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 65, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 66, shuchusen3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--向かっていく
setSeVolume( spep_6 + 2, 1188, 56 );
setSeVolume( spep_6 + 18, 1188, 44 );
setSeVolume( spep_6 + 32, 1188, 32 );
setSeVolume( spep_6 + 48, 1188, 14 );
setSeVolume( spep_6 + 62, 1188, 0 );
stopSe( spep_6 + 62, SE8, 0 );

setSeVolume( spep_6 + 0, 1116, 34 );
setSeVolume( spep_6 + 8, 1116, 12 );
setSeVolume( spep_6 + 13, 1116, 0 );
stopSe( spep_6 + 13, SE9, 0 );

--アッパー
playSe( spep_6 + 29, 1003 );
playSe( spep_6 + 33, 1009 );
setSeVolume( spep_6 + 33, 1009, 79 );
playSe( spep_6 + 37, 1120 );
playSe( spep_6 + 47, 1013 );

--敵が飛んでいく
SE10 = playSe( spep_6 + 31, 1121 );
setSeVolume( spep_6 + 31, 1121, 0 );
setSeVolume( spep_6 + 70, 1121, 10 );
setSeVolume( spep_6 + 78, 1121, 34 );
setSeVolume( spep_6 + 85, 1121, 56 );

playSe( spep_6 + 46, 1011 );
setSeVolume( spep_6 + 46, 1011, 10 );
setSeVolume( spep_6 + 52, 1011, 26 );
setSeVolume( spep_6 + 54, 1011, 48 );
setSeVolume( spep_6 + 57, 1011, 63 );

playSe( spep_6 + 58, 1025 );
setSeVolume( spep_6 + 58, 1025, 10 );
setSeVolume( spep_6 + 66, 1025, 28 );

SE11 = playSe( spep_6 + 65, 9 );
setSeVolume( spep_6 + 65, 9, 112 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- ふっとばし(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_09x, 0x80, -1, 0, 0, 0 );  --ふっとばし(ef_009)
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 130, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 130, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 130, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 26, 1, 0 );
changeAnime( spep_7 -3 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 199.6, -68.7 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 258.3, -42.7 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 365, -45.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 423.6, -54.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 514.7, -58.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 613.7, -62.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 668.4, -33.5 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 793.5, -25.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 832.5, -36 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 936.7, -43.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 1001.8, -38.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 1035.6, -17.8 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 1135.6, -27.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.98 -1, 1.98 -1 );
setScaleKey( spep_7 -3 + 4, 1, 2.44 -1, 2.44 -1 );
setScaleKey( spep_7 -3 + 6, 1, 2.82 -1, 2.82 -1 );
setScaleKey( spep_7 -3 + 8, 1, 3.28 -1, 3.28 -1 );
setScaleKey( spep_7 -3 + 10, 1, 3.71 -1, 3.71 -1 );
setScaleKey( spep_7 -3 + 12, 1, 4.27 -1.5, 4.27 -1.5 );
setScaleKey( spep_7 -3 + 14, 1, 4.58 -1.6, 4.58 -1.6 );
setScaleKey( spep_7 -3 + 16, 1, 5.17 -2, 5.17 -2 );
setScaleKey( spep_7 -3 + 18, 1, 5.45 -2, 5.45 -2 );
setScaleKey( spep_7 -3 + 20, 1, 5.99 -2, 5.99 -2 );
setScaleKey( spep_7 -3 + 22, 1, 6.21 -2.3, 6.21 -2.3 );
setScaleKey( spep_7 -3 + 24, 1, 6.41 -2.4, 6.41 -2.4 );
setScaleKey( spep_7 -3 + 26, 1, 6.41 -2.4, 6.41 -2.4 );

setRotateKey( spep_7 + 0, 1, -33.9 );
setRotateKey( spep_7 -3 + 26, 1, -33.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵が飛んでいく
setSeVolume( spep_7 + 103, 1121, 56 );
setSeVolume( spep_7 + 108, 1121, 24 );
setSeVolume( spep_7 + 118 -4 , 1121, 0 );
stopSe( spep_7 + 118 -4 , SE10, 0 );

setSeVolume( spep_7 + 0, 1025, 46 );
setSeVolume( spep_7 + 8, 1025, 71 );

setSeVolume( spep_7 + 35, 9, 112 );
setSeVolume( spep_7 + 64, 9, 64 );
setSeVolume( spep_7 + 88, 9, 0 );

playSe( spep_7 + 5, 1183 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 36 );
endPhase( spep_7 + 130 );

end