-- 激怒悟空アクティブ変身演出

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
SP_01 = 3074;  --

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
-- 変身
------------------------------------------------------
spep_0 = 0 ;

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 366, 0, 0, 0, 0, 255);

-- 悟空激怒 エフェクト
gokugekido = entryEffect( spep_0,  SP_01, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,gokugekido,  0,  0);
setEffMoveKey( spep_0 + 362,gokugekido,  0,  0);

setEffScaleKey( spep_0, gokugekido, 1.0, 1.0);
setEffScaleKey( spep_0 + 362, gokugekido, 1.0, 1.0);

setEffAlphaKey( spep_0, gokugekido, 255);
setEffAlphaKey( spep_0 + 362, gokugekido, 255);

setEffRotateKey( spep_0, gokugekido, 0);
setEffRotateKey( spep_0 + 362, gokugekido, 0);


-- SE
playSe(spep_0 + 32,1003);--握りしめる
playSe(spep_0 + 72,1018);--カットイン
playSe(spep_0 + 120,1025);--筋肉がボッってなる
playSe(spep_0 + 238,1023);--気を解放


-- ボイス
playVoice(spep_0 + 176,122);--俺は怒ったぞ！
setVoiceVolume(spep_0 + 176, 122, 300);

entryFade( spep_0+360, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255); 
endPhase(spep_0+ 362);

else end

