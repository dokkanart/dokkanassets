--1020220:超サイヤ人2ベジータ(天使)_ベジータとカカロット(バフ)
--sp_effect_b4_00155

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
SP_01=	156008	;--	冒頭シーン
SP_02=	156009	;--	ベジータ見上げ
SP_03=	156010	;--	丘に立ち風に吹かれる
SP_04=	156011	;--	カカロット回想シーン
SP_05=	156012	;--	頑張れカカロット、、、
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
------------------------------------------------------
-- 冒頭シーン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, fast, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, fast, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast, 0 );
setEffRotateKey( spep_0 + 56, fast, 0 );
setEffAlphaKey( spep_0 + 0, fast, 255 );
setEffAlphaKey( spep_0 + 56, fast, 255 );
setEffAlphaKey( spep_0 + 57, fast, 0 );
setEffAlphaKey( spep_0 + 58, fast, 0 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 10 );

--入り
SE002 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 54 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+56;
------------------------------------------------------
-- ベジータ見上げ
------------------------------------------------------
-- ** エフェクト等 ** --
admire = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, admire, 0, 0, 0 );
setEffMoveKey( spep_1 + 208, admire, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, admire, 1.0, 1.0 );
setEffScaleKey( spep_1 + 208, admire, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, admire, 0 );
setEffRotateKey( spep_1 + 208, admire, 0 );
setEffAlphaKey( spep_1 + 0, admire, 255 );
setEffAlphaKey( spep_1 + 208, admire, 255 );
setEffAlphaKey( spep_1 +209, admire, 0 );
setEffAlphaKey( spep_1 + 210, admire,0 );

--SE
--顔あげ
SE003 = playSe( spep_1 + 0, 1004 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 33 );

--ボイス
--カカロット…すごいヤツだよおまえは…
playVoice( spep_1 + 18, 189 );
setVoiceVolume( spep_1 + 18, 189, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+208;

------------------------------------------------------
-- 丘に立ち風に吹かれる
------------------------------------------------------
-- ** エフェクト等 ** --
draft = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, draft, 0, 0, 0 );
setEffMoveKey( spep_2 + 166, draft, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, draft, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, draft, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, draft, 0 );
setEffRotateKey( spep_2 + 166, draft, 0 );
setEffAlphaKey( spep_2 + 0, draft, 255 );
setEffAlphaKey( spep_2 + 166, draft, 255 );

--SE
--風が吹く
SE004 = playSe( spep_2 + 4, 1175 );
setSeVolumeByWorkId( spep_2 + 4, SE004, 22 );

--ボイス
--…アタマにくるぜ…！
playVoice( spep_2 + 82, 190 );
setVoiceVolume( spep_2 + 82, 190, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+166;
------------------------------------------------------
-- カカロット回想シーン
------------------------------------------------------
-- ** エフェクト等 ** --
reminiscence = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, reminiscence, 0, 0, 0 );
setEffMoveKey( spep_3 + 200, reminiscence, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, reminiscence, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, reminiscence, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, reminiscence, 0 );
setEffRotateKey( spep_3 + 200, reminiscence, 0 );
setEffAlphaKey( spep_3 + 0, reminiscence, 255 );
setEffAlphaKey( spep_3 + 200, reminiscence, 255 );

--ボイス
--闘いが大好きでやさしいサイヤ人なんてよ……！！
playVoice( spep_3 + 22, 191 );
setVoiceVolume( spep_3 + 22, 191, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+200;
------------------------------------------------------
-- 頑張れカカロット、、、
------------------------------------------------------
-- ** エフェクト等 ** --
fight = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fight, 0, 0, 0 );
setEffMoveKey( spep_4 + 314+30, fight, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fight, 1.0, 1.0 );
setEffScaleKey( spep_4 + 314+30, fight, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fight, 0 );
setEffRotateKey( spep_4 + 314+30, fight, 0 );
setEffAlphaKey( spep_4 + 0, fight, 255 );
setEffAlphaKey( spep_4 + 314+30, fight, 255 );

--SE
--セリフカットイン
SE005 = playSe( spep_4 + 94, 1018 );
setSeVolumeByWorkId( spep_4 + 94, SE005, 59 );

--決め
SE006 = playSe( spep_4 + 190, 1068 );
setSeVolumeByWorkId( spep_4 + 190, SE006, 66 );
SE007 = playSe( spep_4 + 190, 1226 );
setSeVolumeByWorkId( spep_4 + 190, SE007, 64 );

--風強く吹く
SE007 = playSe( spep_4 + 190, 1226 );
setSeVolumeByWorkId( spep_4 + 190, SE007, 64 );
SE008 = playSe( spep_4 + 216, 1278 );
setSeVolumeByWorkId( spep_4 + 216, SE008, 126 );
stopSe( spep_4 + 300, SE008, 0 );

--環境音
stopSe( spep_4 + 300, SE001, 0 );

--ボイス
--フフッ
playVoice( spep_4 + 36, 192 );
setVoiceVolume( spep_4 + 36, 192, 178 );

--がんばれカカロット…おまえがナンバー１だ！！
playVoice( spep_4 + 84, 193 );
setVoiceVolume( spep_4 + 84, 193, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 400, 0,  0, 0, 0, 255 ); --くろ背景

endPhase( spep_4 + 304+27 );
else end