--孫悟空&ベジータ(天使)_アクティブ合体演出

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
SP_01=	3123;

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
setEffMoveKey( spep_0 + 1100, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1100, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1100, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1100, active, 255 );

-- ** SE ** --
--セリフカットイン
SE00 = playSe( spep_0 + 8, 1018 );
setSeVolumeByWorkId( spep_0 + 8, SE00, 74 );

--悟空ポタラキャッチ
SE01 = playSe( spep_0 + 129, 21 );
setTimeStretch( SE01, 0.3, 10, 1 );

--投げる
SE02 = playSe( spep_0 + 155, 1189 );
setPitch( spep_0 + 155, SE02, 150 );
setTimeStretch( SE02, 1.1, 10, 1 );

--ベジータポタラキャッチ
SE03 = playSe( spep_0 + 184, 21 );
setSeVolumeByWorkId( spep_0 + 184, SE03, 49 );
setTimeStretch( SE03, 0.3, 10, 1 );

--ベジータポタラ光る
SE04 = playSe( spep_0 + 250, 1273 );
setSeVolumeByWorkId( spep_0 + 250, SE04, 158 );
playSe( spep_0 + 260, 1274 );
playSe( spep_0 + 262, 1275 );

--悟空ポタラ光る
playSe( spep_0 + 311, 1273 );
playSe( spep_0 + 321, 1274 );
playSe( spep_0 + 323, 1275 );

--引き寄せ合う二人
SE05 = playSe( spep_0 + 371, 1183 );
stopSe( spep_0 + 515, SE05, 0 );

SE06 = playSe( spep_0 + 372, 1175 );
setSeVolumeByWorkId( spep_0 + 372, SE06, 21 );
stopSe( spep_0 + 515, SE06, 0 );

--合体
SE006 = playSe( spep_0 + 494, 1275 );
setPitch( spep_0 + 494, SE006, -700 );	
setTimeStretch( SE006, 1.0, 30, 1 );

SE07 = playSe( spep_0 + 514, 1024 );
setSeVolumeByWorkId( spep_0 + 514, SE07, 52 );
playSe( spep_0 + 514, 1231 );

SE08 = playSe( spep_0 + 522, 1035 );
setSeVolumeByWorkId( spep_0 + 522, SE08, 3 );
setSeVolumeByWorkId( spep_0 + 526, SE08, 7 );
setSeVolumeByWorkId( spep_0 + 530, SE08, 12 );
setSeVolumeByWorkId( spep_0 + 534, SE08, 16 );
setSeVolumeByWorkId( spep_0 + 538, SE08, 22 );
setSeVolumeByWorkId( spep_0 + 542, SE08, 27 );
setSeVolumeByWorkId( spep_0 + 546, SE08, 30 );
setSeVolumeByWorkId( spep_0 + 550, SE08, 36 );
setSeVolumeByWorkId( spep_0 + 554, SE08, 42 );
setSeVolumeByWorkId( spep_0 + 559, SE08, 50 );
setTimeStretch( SE08, 1.33, 10, 1 );

--顔あげる
SE09 = playSe( spep_0 + 706, 1003 );
setSeVolumeByWorkId( spep_0 + 706, SE09, 78 );

--さらに！
SE10 = playSe( spep_0 + 831, 20 );
setSeVolumeByWorkId( spep_0 + 831, SE10, 82 );

--浮く
SE11 = playSe( spep_0 + 881, 44 );
setSeVolumeByWorkId( spep_0 + 881, SE11, 72 );

--気ダメ
SE12 = playSe( spep_0 + 929, 1024 );
setSeVolumeByWorkId( spep_0 + 929, SE12, 132 );
SE13 = playSe( spep_0 + 929, 1035 );
setSeVolumeByWorkId( spep_0 + 929, SE13, 72 );

--オーラ
SE14 = playSe( spep_0 + 965, 1036 );
setSeVolumeByWorkId( spep_0 + 965, SE14, 50 );
SE15 = playSe( spep_0 + 966, 1147 );
setSeVolumeByWorkId( spep_0 + 966, SE15, 32 );
SE16 = playSe( spep_0 + 989, 1036 );
setSeVolumeByWorkId( spep_0 + 989, SE16, 50 );

--ラスト決め
SE17 = playSe( spep_0 + 1004, 1062 );
setSeVolumeByWorkId( spep_0 + 1004, SE17, 59 );
SE18 = playSe( spep_0 + 1004, 1156 );
setSeVolumeByWorkId( spep_0 + 1004, SE18, 69 );

--オーラ
SE19 = playSe( spep_0 + 1013, 1036 );
setSeVolumeByWorkId( spep_0 + 1013, SE19, 50 );
SE20 = playSe( spep_0 + 1037, 1036 );
setSeVolumeByWorkId( spep_0 + 1037, SE20, 50 );
SE21 = playSe( spep_0 + 1061, 1036 );
setSeVolumeByWorkId( spep_0 + 1061, SE21, 50 );
SE22 = playSe( spep_0 + 1085, 1036 );
setSeVolumeByWorkId( spep_0 + 1085, SE22, 50 );

-- ** ボイス ** --
--よこせ！
playVoice( spep_0 + 11, 212 );
setVoiceVolume( spep_0 + 11, 212, 141 );

--はやく！
playVoice( spep_0 + 63, 213 );
setVoiceVolume( spep_0 + 63, 213, 141 );

--いいんだろこれで！
playVoice( spep_0 + 213, 183 );
setVoiceVolume( spep_0 + 213, 183, 141 );

--サンキューベジータ！！！
playVoice( spep_0 + 286, 184 );
setVoiceVolume( spep_0 + 286, 184, 141 );

--ベジータとカカロットが合体して……
playVoice( spep_0 + 544, 185 );
setVoiceVolume( spep_0 + 544, 185, 141 );

--ベジットってとこかな……
playVoice( spep_0 + 710, 186 );
setVoiceVolume( spep_0 + 710, 186, 141 );

--さらに……
playVoice( spep_0 + 825, 187 );
setVoiceVolume( spep_0 + 825, 187, 141 );

--こいつが超ベジット！！
playVoice( spep_0 + 953, 188 );
setVoiceVolume( spep_0 + 953, 188, 168 );

-- ** 最後 ** --
entryFade( spep_0 + 1110 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 1110 );
else end