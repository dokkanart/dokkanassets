--1020370:魔人ブウ(ゴテンクス吸収)_吸収(変身演出)(アクティブスキル)
--battle_301206

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

--エフェクト(味方)
SP_01=	3124	;--	魔人ブウ(ゴテンクス吸収)_吸収(変身演出)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1036, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1036, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1036, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1036, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--入り
SE00 = playSe( spep_0 + 0, 8 );
setPitch(spep_0 + 0, SE00, -800);
setPitch( spep_0 + 0, SE00, -800 );
setTimeStretch( SE00, 0.47, 10, 1 );

--これ見て
SE01=playSe( spep_0 + 32, 37 );
setSeVolume( spep_0 + 32, 37, 114 );
setTimeStretch( SE01, 0.51, 10, 1 );

--悟飯に襲いかかる1
playSe( spep_0 + 52, 1178 );
setSeVolume( spep_0 + 52, 1178, 54 );

--悟飯に襲いかかる2
SE02 = playSe( spep_0 + 54, 1145 );
setSeVolume( spep_0 + 54, 1145, 41 );
setPitch( spep_0 + 54, SE02, 800 );
setTimeStretch( SE02, 1.28, 10, 1 );

--悟飯に襲いかかる3
SE03 = playSe( spep_0 + 60, 49 );
setSeVolume( spep_0 + 60, 49, 91 );
setTimeStretch( SE03, 1.68, 10, 1 );

--吸収する1
SE04 = playSe( spep_0 + 118, 1196 );
setPitch( spep_0 + 118, SE04, -300 );
setTimeStretch( SE04, 0.4, 10, 1 );

--吸収する2
SE05 = playSe( spep_0 + 118, 1184 );
setSeVolume( spep_0 + 118, 1184, 46 );
stopSe( spep_0 + 191, SE05, 84 );
--吸収する3
SE06 = playSe( spep_0 + 118, 1267 );
stopSe( spep_0 + 203, SE06, 0 );

--目線カットイン
playSe( spep_0 + 128, 1018 );

--吸収する
playSe( spep_0 + 140, 1178 );
setSeVolume( spep_0 + 140, 1178, 53 );

--環境音
SE07 = playSe( spep_0 + 216, 1175 );
setSeVolume( spep_0 + 216, 1175, 7 );
setTimeStretch( SE07, 2, 30, 5 );

--ふははは
playSe( spep_0 + 260, 1237 );
setSeVolume( spep_0 + 260, 1237, 59 );

--腕構える
SE08 = playSe( spep_0 + 442, 1233 );
setSeVolume( spep_0 + 442, 1233, 60 );
setPitch( spep_0 + 442, SE08, -900 );
setTimeStretch( SE08, 0.4, 10, 1 );

--画面遷移
playSe( spep_0 + 670, 1003 );
setSeVolume( spep_0 + 670, 1003, 56 );

--腕組む
playSe( spep_0 + 726, 1013 );
setSeVolume( spep_0 + 726, 1013, 72 );

--腕組む
SE09 = playSe( spep_0 + 728, 1006 );
setSeVolume( spep_0 + 728, 1006, 87 );
stopSe( spep_0 + 738, SE09, 3 );

--最後決め1
playSe( spep_0 + 906, 1068 );
setSeVolume( spep_0 + 906, 1068, 84 );
--最後決め2
playSe( spep_0 + 912, 1014 );
setSeVolume( spep_0 + 912, 1014, 79 );


-------------------------------------------
--ボイス
-------------------------------------------

--ふ……ふははは…！！これは、いい！！
playVoice( spep_0 + 198, 173 );
setVoiceVolume( spep_0 + 198, 173, 141 );

--前よりさらにパワーアップしてしまったぞ！！」
playVoice( spep_0 + 464, 174 );
setVoiceVolume( spep_0 + 464, 174, 141 );

--すぐ楽にしてやる　…ほんの少し　苦しむだけだ…
playVoice( spep_0 + 696, 175 );
setVoiceVolume( spep_0 + 696, 175, 141 );

entryFade( spep_0 + 1036 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 1036 );--1036
else end