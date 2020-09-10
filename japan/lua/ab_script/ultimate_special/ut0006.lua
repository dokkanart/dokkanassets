--パーフェクトセル_太陽系破壊かめはめ波

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
SP_01 = 153925; --前半
SP_02 = 153926; --後半

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
-- 溜め〜(360F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamehame = entryEffectLife( spep_0 + 0, SP_01, 360, 0x100, -1, 0, 0, 0 );  --溜め〜発射(ef_001)
setEffMoveKey( spep_0 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 360, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamehame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 360, kamehame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamehame, 0 );
setEffRotateKey( spep_0 + 360, kamehame, 0 );
setEffAlphaKey( spep_0 + 0, kamehame, 255 );
setEffAlphaKey( spep_0 + 360, kamehame, 255 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 300; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

--stopSe( SP_dodge,  SE_ha, 0);
setVoiceVolume( SP_dodge, 121, 0 );

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


-- ** ボイス ** --
--お遊びはせんぞ、覚悟しろ
playVoice( spep_0 + 0, 124 );
setVoiceVolume( spep_0 + 0, 124, 250 );

-- ** 音 ** --
SE1 = playSe( spep_0 + 0, 55 );  --気溜め
stopSe( spep_0+ 10, SE1, 350 );
playSe( spep_0 + 20, 1003 );  -- 腕を上げる
playSe( spep_0 + 120,  1006);  --構え
playSe( spep_0 + 150,  1004);  --腕だけ
playSe( spep_0 + 266,  1068);  --ブオ
playSe( spep_0 + 300,  1131);
playSe( spep_0 + 302,  1132);
playSe( spep_0 + 324,  17);
setSeVolume(  spep_0 + 324,  17,  100);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 52, 4, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 126, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 360;

------------------------------------------------------
-- 放つ(500F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --放つ(ef_002)
setEffMoveKey( spep_1 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 660, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 660, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hanatsu, 0 );
setEffRotateKey( spep_1 + 660, hanatsu, 0 );
setEffAlphaKey( spep_1 + 0, hanatsu, 255 );
setEffAlphaKey( spep_1 + 660, hanatsu, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 660, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ボイス ** --
--地球ごと消えてなくなれ
playVoice( spep_1 + 0, 125 );
setVoiceVolume( spep_1 + 0, 125, 700 );

-- ** 音 ** --
playSe( spep_1 + 0,  1132);
playSe( spep_1 + 124, 1145 );  --かめはめ波
playSe( spep_1 + 160, 1021);
setSeVolume( spep_1 + 140,  1021,  100);
playSe(  spep_1 + 200,  1146);  --伸びる音
setSeVolume( spep_1 + 200,  1146,  80);  --音量をあげる
playSe(  spep_1 + 250,  1122);  --伸びる音
setSeVolume( spep_1 + 250,  1122,  40);  --音量をあげる
SE2 = playSe( spep_1 + 250,  1044);
stopSe(spep_1 + 376,  SE2,  0 );
playSe( spep_1 +380,  1072);
playSe( spep_1 + 440,  1024);  --爆発
setSeVolume(  spep_1 + 440,  1024,  200);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 560 );
endPhase( spep_1 + 660 );

else end