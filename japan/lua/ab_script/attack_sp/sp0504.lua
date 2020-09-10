--1015780 フロスト(最終形態)_カオスボール(Ver.2)
--sp_effect_a2_00096

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方
SP_01=	152529	;--	カオスボール発生
SP_02=	152531	;--	カオスボール回転
SP_03=	152532	;--	導入部
SP_04=	152533	;--	カオスボール発射

--敵
SP_01x=	152529	;--	カオスボール発生
SP_02x=	152531	;--	カオスボール回転
SP_03x=	152535	;--	導入部(敵)
SP_04x=	152536	;--	カオスボール発射(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--ため
------------------------------------------------------

spep_0=0;
--エフェクト(前)
tame_f=entryEffectLife(spep_0,SP_01,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame_f, 0, 0 , 0 );

setEffScaleKey(spep_0,tame_f,1.0,1.0);
setEffScaleKey(spep_0+100,tame_f,1.0,1.0);

setEffRotateKey(spep_0,tame_f,0);
setEffRotateKey(spep_0+100,tame_f,0);

setEffAlphaKey(spep_0,tame_f,255);
setEffAlphaKey(spep_0+100,tame_f,255);

--エフェクト(後)
tame_b=entryEffectLife(spep_0,SP_03,100,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame_b, 0, 0 , 0 );

setEffScaleKey(spep_0,tame_b,1.0,1.0);
setEffScaleKey(spep_0+100,tame_b,1.0,1.0);

setEffRotateKey(spep_0,tame_b,0);
setEffRotateKey(spep_0+100,tame_b,0);

setEffAlphaKey(spep_0,tame_b,255);
setEffAlphaKey(spep_0+100,tame_b,255);

--集中線
shuchusen1=entryEffectLife(spep_0,906,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey(spep_0,shuchusen1,1.0,1.0);
setEffScaleKey(spep_0+100,shuchusen1,1.0,1.0);

setEffRotateKey(spep_0,shuchusen1,0);
setEffRotateKey(spep_0+100,shuchusen1,0);

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+100,shuchusen1,255);

--顔カットイン
speff=entryEffect(spep_0+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+30,190006,70,0x100,-1,-90,520);--ゴゴゴ

setEffMoveKey(spep_0+30,ctgogo,-90,520,0);
setEffMoveKey(spep_0+100,ctgogo,-90,520,0);

setEffScaleKey(spep_0+30, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+30,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--SE
SE1=playSe(spep_0,15);--力をつける
stopSe(spep_0+28,SE1,0);
playSe( spep_0+30, SE_04); --ゴゴゴ

--黒背景
entryFadeBg( spep_0, 0,100, 0, 0, 0, 0, 200);

--白フェード
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade
entryFade(spep_0+90, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_1=100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--なんか鬱
------------------------------------------------------
--エフェクト(前)
shoot_f=entryEffectLife(spep_2,SP_04,120,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, shoot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, shoot_f, 0, 0 , 0 );

setEffScaleKey(spep_2,shoot_f,1.0,1.0);
setEffScaleKey(spep_2+120,shoot_f,1.0,1.0);

setEffRotateKey(spep_2,shoot_f,0);
setEffRotateKey(spep_2+120,shoot_f,0);

setEffAlphaKey(spep_2,shoot_f,255);
setEffAlphaKey(spep_2+120,shoot_f,255);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 46, 0x100, -1, 0, 77.3, 260.6 );--ズオッ
setEffShake(spep_2 + 2, ctzuo, 46, 20);

setEffMoveKey( spep_2 + 2, ctzuo, 77.3, 260.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 110.9, 304.2 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 137.6, 367.5 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 174.3, 343.6 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 159.8, 371 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 206.2, 337.6 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 222.2, 334.6 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.3, 0.3 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 38, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 40, ctzuo, 3.12, 3.12 );
setEffScaleKey( spep_2 + 42, ctzuo, 3.84, 3.84 );
setEffScaleKey( spep_2 + 44, ctzuo, 4.56, 4.56 );
setEffScaleKey( spep_2 + 46, ctzuo, 5.28, 5.28 );
setEffScaleKey( spep_2 + 48, ctzuo, 6, 6 );

setEffRotateKey( spep_2 + 2, ctzuo, 25 );
setEffRotateKey( spep_2 + 48, ctzuo, 25 );

setEffAlphaKey( spep_2 + 2, ctzuo, 0 );
setEffAlphaKey( spep_2 + 3, ctzuo, 255 );
setEffAlphaKey( spep_2 + 4, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 40, ctzuo, 204 );
setEffAlphaKey( spep_2 + 42, ctzuo, 153 );
setEffAlphaKey( spep_2 + 44, ctzuo, 102 );
setEffAlphaKey( spep_2 + 46, ctzuo, 51 );
setEffAlphaKey( spep_2 + 48, ctzuo, 0 );

--流線
ryuusen1 = entryEffectLife( spep_2 + 0,  921, 118, 0x80, -1, 0, 5.1, 5.7 );

setEffMoveKey( spep_2 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen1, 1.8, 1.2 );
setEffScaleKey( spep_2 + 118, ryuusen1, 1.8, 1.2 );

setEffRotateKey( spep_2 + 0, ryuusen1,  -180 );
setEffRotateKey( spep_2 + 118, ryuusen1, -180 );

setEffAlphaKey( spep_2 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryuusen1, 255 );

--撃つ
playSe( spep_2, SE_01); --撃つ

--黒背景
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 200);

--白フェード
entryFade(spep_2+110, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_3=spep_2+120;

------------------------------------------------------
--這い寄る
------------------------------------------------------
--エフェクト(前)
mawaru=entryEffectLife(spep_3,SP_02,100,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, mawaru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, mawaru, 0, 0 , 0 );

setEffScaleKey(spep_3,mawaru,1.0,1.0);
setEffScaleKey(spep_3+100,mawaru,1.0,1.0);

setEffRotateKey(spep_3,mawaru,0);
setEffRotateKey(spep_3+100,mawaru,0);

setEffAlphaKey(spep_3,mawaru,255);
setEffAlphaKey(spep_3+100,mawaru,255);

--流線
ryuusen2 = entryEffectLife( spep_3 + 0,  921, 100, 0x80, -1, 0, 5.1, 5.7 );

setEffMoveKey( spep_3 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ryuusen2, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, ryuusen2,  0 );
setEffRotateKey( spep_3 + 100, ryuusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 100, ryuusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3 + 0,  10014, 98, 0x100, -1, 0, 58, 347.4 );--ズドドドッ
setEffShake(spep_3 + 0, ctzudododo, 98, 20);

setEffMoveKey( spep_3 + 0, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 2, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 4, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 6, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 10, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 14, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 16, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 18, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 20, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 22, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 26, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 28, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 30, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 32, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 38, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 42, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 46, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 50, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 52, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 54, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 56, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 58, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 60, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 62, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 64, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 66, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 68, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 70, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 72, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 74, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 78, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 80, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 82, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 84, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 86, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 90, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 92, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 94, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 96, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 98, ctzudododo, 34, 331.4 , 0 );

setEffScaleKey( spep_3 + 0, ctzudododo, 3.2, 3 );
setEffScaleKey( spep_3 + 98, ctzudododo, 3.2, 3 );

setEffRotateKey( spep_3 + 0, ctzudododo, 72 );
setEffRotateKey( spep_3 + 98, ctzudododo, 72 );

setEffAlphaKey( spep_3 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_3 + 98, ctzudododo, 255 );

--文字エントリー
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 84, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 60, 1, 108 );

setMoveKey( spep_3 + 0, 1, 258.1, -18.7 , 0 );
setMoveKey( spep_3 + 2, 1, 267.5, -8.8 , 0 );
setMoveKey( spep_3 + 4, 1, 259.1, -15 , 0 );
setMoveKey( spep_3 + 6, 1, 266.6, -9.2 , 0 );
setMoveKey( spep_3 + 8, 1, 258, -15.4 , 0 );
setMoveKey( spep_3 + 10, 1, 265.5, -9.7 , 0 );
setMoveKey( spep_3 + 12, 1, 256.9, -16 , 0 );
setMoveKey( spep_3 + 14, 1, 264.3, -10.2 , 0 );
setMoveKey( spep_3 + 16, 1, 255.6, -16.5 , 0 );
setMoveKey( spep_3 + 18, 1, 262.9, -10.8 , 0 );
setMoveKey( spep_3 + 20, 1, 254.2, -17.2 , 0 );
setMoveKey( spep_3 + 22, 1, 261.5, -11.5 , 0 );
setMoveKey( spep_3 + 24, 1, 252.7, -17.8 , 0 );
setMoveKey( spep_3 + 26, 1, 259.9, -12.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 6, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 12, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 16, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 26, 1, 1.48, 1.48 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 26, 1, 0 );

--黒背景
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 200);
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+26 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,259.9, -12.2 , 0 );
    setScaleKey(SP_dodge , 1, 1.48, 1.48);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,259.9, -12.2 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.48, 1.48);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------

setMoveKey( spep_3 + 28, 1, 251, -18.6 , 0 );
setMoveKey( spep_3 + 30, 1, 258.1, -12.9 , 0 );
setMoveKey( spep_3 + 32, 1, 249.2, -19.2 , 0 );
setMoveKey( spep_3 + 34, 1, 256.3, -13.6 , 0 );
setMoveKey( spep_3 + 36, 1, 247.4, -20 , 0 );
setMoveKey( spep_3 + 38, 1, 254.4, -14.5 , 0 );
setMoveKey( spep_3 + 40, 1, 245.3, -20.9 , 0 );
setMoveKey( spep_3 + 42, 1, 252.3, -15.4 , 0 );
setMoveKey( spep_3 + 44, 1, 243.2, -21.8 , 0 );
setMoveKey( spep_3 + 46, 1, 250.1, -16.3 , 0 );
setMoveKey( spep_3 + 48, 1, 240.9, -22.8 , 0 );
setMoveKey( spep_3 + 50, 1, 247.8, -17.3 , 0 );
setMoveKey( spep_3 + 52, 1, 238.5, -23.8 , 0 );
setMoveKey( spep_3 + 54, 1, 245.6, -18.2 , 0 );
setMoveKey( spep_3 + 56, 1, 236.1, -24.9 , 0 );
setMoveKey( spep_3 + 59, 1, 243, -19.4 , 0 );
setMoveKey( spep_3 + 60, 1, 186.9, -29.3 , 0 );
setMoveKey( spep_3 + 62, 1, 223, 8.2 , 0 );
setMoveKey( spep_3 + 64, 1, 185.4, -25.6 , 0 );
setMoveKey( spep_3 + 66, 1, 195.9, -19.5 , 0 );
setMoveKey( spep_3 + 68, 1, 195.3, -25 , 0 );
setMoveKey( spep_3 + 70, 1, 215.6, -18.3 , 0 );
setMoveKey( spep_3 + 72, 1, 224.9, -23.2 , 0 );
setMoveKey( spep_3 + 74, 1, 255.1, -15.9 , 0 );
setMoveKey( spep_3 + 76, 1, 274.2, -20.3 , 0 );
setMoveKey( spep_3 + 78, 1, 314.3, -12.4 , 0 );
setMoveKey( spep_3 + 80, 1, 343.3, -16.2 , 0 );
setMoveKey( spep_3 + 82, 1, 393.2, -7.6 , 0 );
setMoveKey( spep_3 + 84, 1, 432.1, -10.8 , 0 );



setScaleKey( spep_3 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 30, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 32, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 42, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 44, 1, 1.96, 1.96 );
setScaleKey( spep_3 + 46, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 48, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 50, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 52, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 54, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 56, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 59, 1, 2.41, 2.41 );
setScaleKey( spep_3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_3 + 62, 1, 2.38, 2.38 );
setScaleKey( spep_3 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_3 + 66, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 68, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 74, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 76, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 80, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 84, 1, 0.51, 0.51 );


setRotateKey( spep_3 + 59, 1, 0 );
setRotateKey( spep_3 + 60, 1, 23.7 );
setRotateKey( spep_3 + 62, 1, -16 );
setRotateKey( spep_3 + 64, 1, 0 );
setRotateKey( spep_3 + 84, 1, 0 );


--撃つ
playSe( spep_3, SE_07); --撃つ
playSe( spep_3+60, 1024); --当たる

--白フェード
entryFade(spep_3+90, 4, 14, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_4=spep_3+100;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+110, ct, 0);

playSe( spep_4+14, SE_11);
shuchusen = entryEffectLife( spep_4+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+106);

else 
------------------------------------------------------
--ため
------------------------------------------------------

spep_0=0;
--エフェクト(前)
tame_f=entryEffectLife(spep_0,SP_01x,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame_f, 0, 0 , 0 );

setEffScaleKey(spep_0,tame_f,1.0,1.0);
setEffScaleKey(spep_0+100,tame_f,1.0,1.0);

setEffRotateKey(spep_0,tame_f,0);
setEffRotateKey(spep_0+100,tame_f,0);

setEffAlphaKey(spep_0,tame_f,255);
setEffAlphaKey(spep_0+100,tame_f,255);

--エフェクト(後)
tame_b=entryEffectLife(spep_0,SP_03x,100,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame_b, 0, 0 , 0 );

setEffScaleKey(spep_0,tame_b,1.0,1.0);
setEffScaleKey(spep_0+100,tame_b,1.0,1.0);

setEffRotateKey(spep_0,tame_b,0);
setEffRotateKey(spep_0+100,tame_b,0);

setEffAlphaKey(spep_0,tame_b,255);
setEffAlphaKey(spep_0+100,tame_b,255);

--集中線
shuchusen1=entryEffectLife(spep_0,906,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey(spep_0,shuchusen1,1.0,1.0);
setEffScaleKey(spep_0+100,shuchusen1,1.0,1.0);

setEffRotateKey(spep_0,shuchusen1,0);
setEffRotateKey(spep_0+100,shuchusen1,0);

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+100,shuchusen1,255);

--顔カットイン
--speff=entryEffect(spep_0+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+30,190006,70,0x100,-1,-90,520);--ゴゴゴ

setEffMoveKey(spep_0+30,ctgogo,-90,520,0);
setEffMoveKey(spep_0+100,ctgogo,-90,520,0);

setEffScaleKey(spep_0+30, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+30,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--SE
SE1=playSe(spep_0,15);--力をつける
stopSe(spep_0+28,SE1,0);
playSe( spep_0+30, SE_04); --ゴゴゴ

--黒背景
entryFadeBg( spep_0, 0,100, 0, 0, 0, 0, 200);

--白フェード
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade
entryFade(spep_0+90, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_1=100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--なんか鬱
------------------------------------------------------
--エフェクト(前)
shoot_f=entryEffectLife(spep_2,SP_04x,120,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, shoot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, shoot_f, 0, 0 , 0 );

setEffScaleKey(spep_2,shoot_f,1.0,1.0);
setEffScaleKey(spep_2+120,shoot_f,1.0,1.0);

setEffRotateKey(spep_2,shoot_f,0);
setEffRotateKey(spep_2+120,shoot_f,0);

setEffAlphaKey(spep_2,shoot_f,255);
setEffAlphaKey(spep_2+120,shoot_f,255);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 46, 0x100, -1, 0, 77.3, 260.6 );--ズオッ
setEffShake(spep_2 + 2, ctzuo, 46, 20);

setEffMoveKey( spep_2 + 2, ctzuo, 77.3, 260.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, 110.9, 304.2 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 126.5, 365.8 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, 142.5, 349.8 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 137.6, 367.5 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 174.3, 343.6 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 159.8, 371 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 206.2, 337.6 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 222.2, 334.6 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.3, 0.3 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 38, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 40, ctzuo, 3.12, 3.12 );
setEffScaleKey( spep_2 + 42, ctzuo, 3.84, 3.84 );
setEffScaleKey( spep_2 + 44, ctzuo, 4.56, 4.56 );
setEffScaleKey( spep_2 + 46, ctzuo, 5.28, 5.28 );
setEffScaleKey( spep_2 + 48, ctzuo, 6, 6 );

setEffRotateKey( spep_2 + 2, ctzuo, -25 );
setEffRotateKey( spep_2 + 48, ctzuo, -25 );

setEffAlphaKey( spep_2 + 2, ctzuo, 0 );
setEffAlphaKey( spep_2 + 3, ctzuo, 255 );
setEffAlphaKey( spep_2 + 4, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 40, ctzuo, 204 );
setEffAlphaKey( spep_2 + 42, ctzuo, 153 );
setEffAlphaKey( spep_2 + 44, ctzuo, 102 );
setEffAlphaKey( spep_2 + 46, ctzuo, 51 );
setEffAlphaKey( spep_2 + 48, ctzuo, 0 );

--流線
ryuusen1 = entryEffectLife( spep_2 + 0,  921, 118, 0x80, -1, 0, 5.1, 5.7 );

setEffMoveKey( spep_2 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen1, 1.8, 1.2 );
setEffScaleKey( spep_2 + 118, ryuusen1, 1.8, 1.2 );

setEffRotateKey( spep_2 + 0, ryuusen1,  -180 );
setEffRotateKey( spep_2 + 118, ryuusen1, -180 );

setEffAlphaKey( spep_2 + 0, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryuusen1, 255 );

--撃つ
playSe( spep_2, SE_01); --撃つ

--黒背景
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 200);

--白フェード
entryFade(spep_2+110, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_3=spep_2+120;

------------------------------------------------------
--這い寄る
------------------------------------------------------
--エフェクト(前)
mawaru=entryEffectLife(spep_3,SP_02x,100,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, mawaru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, mawaru, 0, 0 , 0 );

setEffScaleKey(spep_3,mawaru,1.0,1.0);
setEffScaleKey(spep_3+100,mawaru,1.0,1.0);

setEffRotateKey(spep_3,mawaru,0);
setEffRotateKey(spep_3+100,mawaru,0);

setEffAlphaKey(spep_3,mawaru,255);
setEffAlphaKey(spep_3+100,mawaru,255);

--流線
ryuusen2 = entryEffectLife( spep_3 + 0,  921, 100, 0x80, -1, 0, 5.1, 5.7 );

setEffMoveKey( spep_3 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ryuusen2, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, ryuusen2,  0 );
setEffRotateKey( spep_3 + 100, ryuusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 100, ryuusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_3 + 0,  10014, 98, 0x100, -1, 0, 58, 347.4 );--ズドドドッ
setEffShake(spep_3 + 0, ctzudododo, 98, 20);

setEffMoveKey( spep_3 + 0, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 2, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 4, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 6, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 10, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 14, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 16, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 18, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 20, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 22, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 26, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 28, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 30, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 32, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 38, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 42, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 46, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 50, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 52, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 54, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 56, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 58, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 60, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 62, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 64, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 66, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 68, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 70, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 72, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 74, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 78, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 80, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 82, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 84, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 86, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 90, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 92, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 94, ctzudododo, 34, 331.4 , 0 );
setEffMoveKey( spep_3 + 96, ctzudododo, 58, 347.4 , 0 );
setEffMoveKey( spep_3 + 98, ctzudododo, 34, 331.4 , 0 );

setEffScaleKey( spep_3 + 0, ctzudododo, 3.2, 3 );
setEffScaleKey( spep_3 + 98, ctzudododo, 3.2, 3 );

setEffRotateKey( spep_3 + 0, ctzudododo, -2 );
setEffRotateKey( spep_3 + 98, ctzudododo, -2 );

setEffAlphaKey( spep_3 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_3 + 98, ctzudododo, 255 );

--文字エントリー
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 84, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 60, 1, 108 );

setMoveKey( spep_3 + 0, 1, 258.1, -18.7 , 0 );
setMoveKey( spep_3 + 2, 1, 267.5, -8.8 , 0 );
setMoveKey( spep_3 + 4, 1, 259.1, -15 , 0 );
setMoveKey( spep_3 + 6, 1, 266.6, -9.2 , 0 );
setMoveKey( spep_3 + 8, 1, 258, -15.4 , 0 );
setMoveKey( spep_3 + 10, 1, 265.5, -9.7 , 0 );
setMoveKey( spep_3 + 12, 1, 256.9, -16 , 0 );
setMoveKey( spep_3 + 14, 1, 264.3, -10.2 , 0 );
setMoveKey( spep_3 + 16, 1, 255.6, -16.5 , 0 );
setMoveKey( spep_3 + 18, 1, 262.9, -10.8 , 0 );
setMoveKey( spep_3 + 20, 1, 254.2, -17.2 , 0 );
setMoveKey( spep_3 + 22, 1, 261.5, -11.5 , 0 );
setMoveKey( spep_3 + 24, 1, 252.7, -17.8 , 0 );
setMoveKey( spep_3 + 26, 1, 259.9, -12.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 6, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 12, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 16, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 18, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 26, 1, 1.48, 1.48 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 26, 1, 0 );

--黒背景
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 200);
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+26 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,259.9, -12.2 , 0 );
    setScaleKey(SP_dodge , 1, 1.48, 1.48);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,259.9, -12.2 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.48, 1.48);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------

setMoveKey( spep_3 + 28, 1, 251, -18.6 , 0 );
setMoveKey( spep_3 + 30, 1, 258.1, -12.9 , 0 );
setMoveKey( spep_3 + 32, 1, 249.2, -19.2 , 0 );
setMoveKey( spep_3 + 34, 1, 256.3, -13.6 , 0 );
setMoveKey( spep_3 + 36, 1, 247.4, -20 , 0 );
setMoveKey( spep_3 + 38, 1, 254.4, -14.5 , 0 );
setMoveKey( spep_3 + 40, 1, 245.3, -20.9 , 0 );
setMoveKey( spep_3 + 42, 1, 252.3, -15.4 , 0 );
setMoveKey( spep_3 + 44, 1, 243.2, -21.8 , 0 );
setMoveKey( spep_3 + 46, 1, 250.1, -16.3 , 0 );
setMoveKey( spep_3 + 48, 1, 240.9, -22.8 , 0 );
setMoveKey( spep_3 + 50, 1, 247.8, -17.3 , 0 );
setMoveKey( spep_3 + 52, 1, 238.5, -23.8 , 0 );
setMoveKey( spep_3 + 54, 1, 245.6, -18.2 , 0 );
setMoveKey( spep_3 + 56, 1, 236.1, -24.9 , 0 );
setMoveKey( spep_3 + 59, 1, 243, -19.4 , 0 );
setMoveKey( spep_3 + 60, 1, 186.9, -29.3 , 0 );
setMoveKey( spep_3 + 62, 1, 223, 8.2 , 0 );
setMoveKey( spep_3 + 64, 1, 185.4, -25.6 , 0 );
setMoveKey( spep_3 + 66, 1, 195.9, -19.5 , 0 );
setMoveKey( spep_3 + 68, 1, 195.3, -25 , 0 );
setMoveKey( spep_3 + 70, 1, 215.6, -18.3 , 0 );
setMoveKey( spep_3 + 72, 1, 224.9, -23.2 , 0 );
setMoveKey( spep_3 + 74, 1, 255.1, -15.9 , 0 );
setMoveKey( spep_3 + 76, 1, 274.2, -20.3 , 0 );
setMoveKey( spep_3 + 78, 1, 314.3, -12.4 , 0 );
setMoveKey( spep_3 + 80, 1, 343.3, -16.2 , 0 );
setMoveKey( spep_3 + 82, 1, 393.2, -7.6 , 0 );
setMoveKey( spep_3 + 84, 1, 432.1, -10.8 , 0 );



setScaleKey( spep_3 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 30, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 32, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 42, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 44, 1, 1.96, 1.96 );
setScaleKey( spep_3 + 46, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 48, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 50, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 52, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 54, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 56, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 59, 1, 2.41, 2.41 );
setScaleKey( spep_3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_3 + 62, 1, 2.38, 2.38 );
setScaleKey( spep_3 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_3 + 66, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 68, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 74, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 76, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 80, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 82, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 84, 1, 0.51, 0.51 );


setRotateKey( spep_3 + 59, 1, 0 );
setRotateKey( spep_3 + 60, 1, 23.7 );
setRotateKey( spep_3 + 62, 1, -16 );
setRotateKey( spep_3 + 64, 1, 0 );
setRotateKey( spep_3 + 84, 1, 0 );


--撃つ
playSe( spep_3, SE_07); --撃つ
playSe( spep_3+60, 1024); --当たる

--白フェード
entryFade(spep_3+90, 4, 14, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_f_fe fade

--次の準備
spep_4=spep_3+100;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+110, ct, 0);

playSe( spep_4+14, SE_11);
shuchusen = entryEffectLife( spep_4+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+106);






end