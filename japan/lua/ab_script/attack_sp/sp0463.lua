--超フルパワーサイヤ人4孫悟空かめはめ波 sp0463 card_id = 1014120 effect_pack = sp_effect_a1_00123


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
SP_01 = 151747;--タメ
SP_02 = 151748;--放つ
SP_03 = 151749;--迫る


--敵側は味方側に1xをつけてます

SP_01x = 151750;--タメ敵側
SP_02x = 151751;--放つ


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

-- ** ホワイトフェード ** --
entryFade(spep_0, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


tame = entryEffectLife(spep_0, SP_01, 286, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, tame, 0, 0, 0);
setEffMoveKey(spep_0+286, tame, 0, 0, 0);

setEffScaleKey(spep_0, tame, 1.0, 1.0);
setEffScaleKey(spep_0+286, tame, 1.0, 1.0);

setEffAlphaKey(spep_0, tame, 255);
setEffAlphaKey(spep_0+286, tame, 255);

setEffRotateKey(spep_0, tame, 0);
setEffRotateKey(spep_0+286, tame, 0);


ctzuzun = entryEffectLife(spep_0+16, 10013, 36, 0x100, -1, 20, 248);--ズズン

setEffMoveKey( spep_0 + 16, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 18, ctzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzun, 41.1, 364.5 , 0 );


setEffScaleKey( spep_0 + 16, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 18, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 20, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 22, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 52, ctzuzun, 2.92, 2.92 );


setEffRotateKey( spep_0 + 16, ctzuzun, -5 );
setEffRotateKey( spep_0 + 52, ctzuzun, -5 );


setEffAlphaKey( spep_0 + 16, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 36, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 215 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 164 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 0 );


--顔＆セリフカットイン
speff = entryEffect(spep_0+36, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

speff1 = entryEffect(spep_0+36, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_0+49, 190006, 69, 0x100, -1, 120, 500, 0);--ゴゴゴ

setEffMoveKey(spep_0+49,ctgogo, 120, 500, 0);
setEffMoveKey(spep_0+118,ctgogo, 120, 500, 0);

setEffScaleKey(spep_0+49, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+112, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+118, ctgogo, 1.5, 1.5);

setEffAlphaKey(spep_0+49, ctgogo, 255);
setEffAlphaKey(spep_0+113, ctgogo, 255);
setEffAlphaKey(spep_0+118, ctgogo, 0);

ctgogo2 = entryEffectLife(spep_0+127, 190006, 155, 0x100, -1, 110, 500, 0);

setEffMoveKey(spep_0+127, ctgogo2, 0, 400, 0);
setEffMoveKey(spep_0+282, ctgogo2, 0, 400, 0);
setEffMoveKey(spep_0+282, ctgogo2, 0, 400, 0);

setEffScaleKey(spep_0+127, ctgogo2, 1.0, 1.0);
setEffScaleKey(spep_0+282, ctgogo2, 1.0, 1.0);
setEffScaleKey(spep_0+282, ctgogo2, 1.0, 1.0);

setEffAlphaKey(spep_0+127, ctgogo2, 255);
setEffAlphaKey(spep_0+282, ctgogo2, 255);
setEffAlphaKey(spep_0+282, ctgogo2, 255);

setEffRotateKey(spep_0+127, ctgogo2, 0);
setEffRotateKey(spep_0+282,ctgogo2, 0);
setEffRotateKey(spep_0+282,ctgogo2, 0);


--集中線
shuchusen = entryEffectLife(spep_0, 906, 286, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_0, shuchusen, 0, 0, 0);
setEffMoveKey(spep_0+286, shuchusen, 0, 0, 0);

setEffScaleKey(spep_0, shuchusen, 2.0, 1.0);
setEffScaleKey(spep_0+286, shuchusen, 2.0, 1.0);

setEffAlphaKey(spep_0, shuchusen, 255);
setEffAlphaKey(spep_0+286, shuchusen, 255);

setEffRotateKey(spep_0, shuchusen, 180);
setEffRotateKey(spep_0+286,shuchusen, 180);



--SE
playSe( spep_0+15, SE_05); --ゴゴゴ
playSe( spep_0+50, SE_04); --顔カットイン

se_1 = playSe( spep_0+130, 1044); --ごごご
stopSe(spep_0+202, se_1, 0);


playSe( spep_0+203,SE_03); --かめはめ波ため
playSe( spep_0+223,SE_03);
playSe( spep_0+243,SE_03);
playSe( spep_0+263,SE_03);


entryFade(spep_0+118, 10, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_0+200, 0, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255);

entryFade(spep_0+279, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     --シーン white fade
entryFadeBg( spep_0, 0, 288, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------------------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------------------------------------------------------------------

--次の準備
spep_1 = spep_0+288;

playSe(spep_1,SE_05);

shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_1, shuchusen2, 1.6, 1.6);

speff2=entryEffect(spep_1, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+86, 2,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--放つ
------------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;

hanatu = entryEffectLife(spep_2, SP_02, 196, 0x100, -1, 0, 0, 0); --かめはめ波放つ
setEffMoveKey(spep_2, hanatu, 0, 0, 0);
setEffMoveKey(spep_2+196, hanatu, 0, 0, 0);

setEffScaleKey(spep_2, hanatu, 1.0, 1.0);
setEffScaleKey(spep_2+196, hanatu, 1.0, 1.0);

setEffAlphaKey(spep_2, hanatu, 255);
setEffAlphaKey(spep_2+196, hanatu, 255);

setEffRotateKey(spep_2, hanatu, 0);
setEffRotateKey(spep_2+196, hanatu, 0);


ryusen = entryEffectLife(spep_2+42, 920, 154, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, ryusen, 0, 0, 0);
setEffMoveKey(spep_2+196, ryusen, 0, 0, 0);

setEffScaleKey( spep_2 + 42, ryusen, 4.91, 1.37 );
setEffScaleKey( spep_2 + 196, ryusen, 4.91, 1.37 );

setEffAlphaKey(spep_2 + 42, ryusen, 255);
setEffAlphaKey(spep_2 + 196, ryusen, 255);

setEffRotateKey( spep_2 + 42, ryusen, -50.7 );
setEffRotateKey( spep_2 + 196, ryusen, -50.7 );


shuchusen3 = entryEffectLife(spep_2, 906, 196, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, shuchusen3, 0, 0, 0);
setEffMoveKey(spep_2+196, shuchusen3, 0, 0, 0);

setEffScaleKey(spep_2, shuchusen3, 2.0, 1.0);
setEffScaleKey(spep_2+196, shuchusen3, 2.0, 1.0);

setEffAlphaKey(spep_2, shuchusen3, 255);
setEffAlphaKey(spep_2+196, shuchusen3, 255);

setEffRotateKey(spep_2, shuchusen3, 180);
setEffRotateKey(spep_2+196,shuchusen3, 180);


ctzuo = entryEffectLife(spep_2+42, 10012, 154, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_2 + 42, ctzuo, 78.7, 180.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 105, 208.6 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 117.9, 250.1 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 92, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 94, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 96, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 98, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 100, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 102, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 104, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 106, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 108, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 110, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 112, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 114, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 116, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 118, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 120, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 122, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 124, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 126, ctzuo, 152.3, 286.3 , 0 );
setEffMoveKey( spep_2 + 128, ctzuo, 192.3, 262.3 , 0 );
setEffMoveKey( spep_2 + 130, ctzuo, 181.2, 289.4 , 0 );
setEffMoveKey( spep_2 + 132, ctzuo, 230.9, 255.7 , 0 );
setEffMoveKey( spep_2 + 134, ctzuo, 250.3, 252.4 , 0 );
setEffMoveKey( spep_2 + 196, ctzuo, 250.3, 252.4 , 0 );


setEffScaleKey( spep_2 + 42, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 44, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 46, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 48, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 124, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 126, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 128, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 130, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 132, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 134, ctzuo, 6.82, 6.82 );
setEffScaleKey( spep_2 + 196, ctzuo, 6.82, 6.82 );


setEffRotateKey( spep_2 + 42, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 196, ctzuo, 27.2 );


setEffAlphaKey( spep_2 + 42, ctzuo, 255 );
setEffAlphaKey( spep_2 + 124, ctzuo, 255 );
setEffAlphaKey( spep_2 + 126, ctzuo, 204 );
setEffAlphaKey( spep_2 + 128, ctzuo, 153 );
setEffAlphaKey( spep_2 + 130, ctzuo, 102 );
setEffAlphaKey( spep_2 + 132, ctzuo, 51 );
setEffAlphaKey( spep_2 + 134, ctzuo, 0 );
setEffAlphaKey( spep_2 + 196, ctzuo, 0 );


playSe( spep_2,SE_03); --かめはめ波ため
playSe( spep_2+20,SE_03);


playSe( spep_2+45, SE_07); --かめはめ波放つ


entryFade( spep_2+36, 0, 3, 12, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+193, 5, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 200, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 気弾迫る
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+198;

semaru = entryEffectLife(spep_3, SP_03, 88, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, semaru, 0, 0, 0);
setEffMoveKey(spep_3+88, semaru, 0, 0, 0);

setEffScaleKey(spep_3, semaru, 1.0, 1.0);
setEffScaleKey(spep_3+88, semaru, 1.0, 1.0);

setEffAlphaKey(spep_3, semaru, 255);
setEffAlphaKey(spep_3+88, semaru, 255);

setEffRotateKey(spep_3, semaru, 0);
setEffRotateKey(spep_3+88, semaru, 0);


shuchusen4 = entryEffectLife(spep_3, 906, 88, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_3+88, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_3, shuchusen4, 2.0, 1.0);
setEffScaleKey(spep_3+88, shuchusen4, 2.0, 1.0);

setEffAlphaKey(spep_3, shuchusen4, 255);
setEffAlphaKey(spep_3+88, shuchusen4, 255);

setEffRotateKey(spep_3, shuchusen4, 180);
setEffRotateKey(spep_3+88,shuchusen4, 180);


entryFade( spep_3+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


ctzudodo = entryEffectLife(spep_3, 10014, 90, 0x100, -1, -123.2, 368.7, 0);
 
setEffMoveKey( spep_3 + 0, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 80, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 82, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 84, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzudodo, -125.2, 368.7 , 0 );


setEffScaleKey( spep_3, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_3+88, ctzudodo, 2.3, 2.3 );


setEffRotateKey( spep_3, ctzudodo, 12.3 );


setEffAlphaKey( spep_3, ctzudodo, 255 );

--敵の動き

setDisp( spep_3, 1, 1);

setDisp( spep_3+60, 1, 0);

changeAnime(  spep_3, 1, 104);    



setMoveKey( spep_3 + 0, 1, 873.2, 969.3 , 0 );
setMoveKey( spep_3 + 2, 1, 794, 879.9 , 0 );
setMoveKey( spep_3 + 4, 1, 710.8, 786.6 , 0 );
setMoveKey( spep_3 + 6, 1, 635.6, 701.2 , 0 );
setMoveKey( spep_3 + 8, 1, 554.4, 605.8 , 0 );
setMoveKey( spep_3 + 10, 1, 477.2, 522.4 , 0 );
setMoveKey( spep_3 + 12, 1, 396, 429 , 0 );
setMoveKey( spep_3 + 14, 1, 318.8, 343.6 , 0 );
setMoveKey( spep_3 + 16, 1, 233.6, 250.3 , 0 );
setMoveKey( spep_3 + 18, 1, 234.3, 246.8 , 0 );
setMoveKey( spep_3 + 20, 1, 226.9, 235.4 , 0 );
setMoveKey( spep_3 + 22, 1, 223.6, 231.9 , 0 );
setMoveKey( spep_3 + 24, 1, 214.3, 220.5 , 0 );
setMoveKey( spep_3 + 26, 1, 212.9, 217 , 0 );
setMoveKey( spep_3 + 28, 1, 205.6, 203.6 , 0 );
setMoveKey( spep_3 + 30, 1, 202.3, 202.1 , 0 );
setMoveKey( spep_3 + 32, 1, 194.9, 192.7 , 0 );
setMoveKey( spep_3 + 34, 1, 191.6, 187.2 , 0 );
setMoveKey( spep_3 + 36, 1, 184.2, 175.8 , 0 );
setMoveKey( spep_3 + 38, 1, 180.9, 172.3 , 0 );
setMoveKey( spep_3 + 40, 1, 173.6, 160.9 , 0 );
setMoveKey( spep_3 + 42, 1, 170.2, 157.4 , 0 );
setMoveKey( spep_3 + 44, 1, 160.9, 148 , 0 );
setMoveKey( spep_3 + 46, 1, 159.6, 142.5 , 0 );
setMoveKey( spep_3 + 48, 1, 152.2, 131.1 , 0 );
setMoveKey( spep_3 + 50, 1, 148.9, 127.6 , 0 );
setMoveKey( spep_3 + 52, 1, 141.5, 114.2 , 0 );
setMoveKey( spep_3 + 54, 1, 130.2, 100.7 , 0 );
setMoveKey( spep_3 + 56, 1, 128.9, 103.3 , 0 );
setMoveKey( spep_3 + 58, 1, 123.5, 93.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 6, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 14, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 20, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 34, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 36, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 38, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 42, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 44, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 48, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 58, 1, 1.49, 1.49 );

setRotateKey( spep_3 + 0, 1, -30.2 );
setRotateKey( spep_3 + 6, 1, -30.2 );
setRotateKey( spep_3 + 8, 1, -30.1 );
setRotateKey( spep_3 + 36, 1, -30.1 );
setRotateKey( spep_3 + 38, 1, -30.2 );


setShakeChara( spep_3+23 , 1, 15, 25);


ryusen2 = entryEffectLife(spep_3, 920, 90, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, ryusen2, 0, 0, 0);
setEffMoveKey(spep_3+90, ryusen2, 0, 0, 0);

setEffScaleKey( spep_3 , ryusen2, 4.91, 1.37 );
setEffScaleKey( spep_3 + 90, ryusen2, 4.91, 1.37 );

setEffAlphaKey(spep_3 , ryusen2, 255);
setEffAlphaKey(spep_3 + 90, ryusen2, 255);

setEffRotateKey( spep_3 , ryusen2, -50.7 );
setEffRotateKey( spep_3 + 90, ryusen2, -50.7 );




------------------------------------------------------
--回避 
------------------------------------------------------



if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,130,-130);
setScaleKey(SP_dodge,1,1.3,1.3);
setRotateKey(SP_dodge,1,-30.2);

setMoveKey(SP_dodge+8,1,130,-130);
setScaleKey(SP_dodge+8,1.3,1.3);
setRotateKey(SP_dodge+8,1,-30.2);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
changeAnime(SP_dodge+9,1,100);
setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);


setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--回避 終わり
------------------------------------------------------

playSe( spep_3, SE_07);

------------------------------------------------------
-- ギャン(60f)
------------------------------------------------------
spep_4 = spep_3+90;

setDisp( spep_4-1, 1, 0);

gyan = entryEffect(spep_4,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(spep_4,  gyan,  1.0,  1.0);
setEffAlphaKey(spep_4,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_4, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_4, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_4, ct_06, 255);
setEffScaleKey( spep_4+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_4+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_4+58, ct_06, 255);
setEffShake( spep_4, ct_06, 58, 10);

playSe(spep_4, SE_09);

entryFadeBg(spep_4 ,0, 60, 0, 0, 0, 0, 255);
entryFade(spep_4+50, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-----------------------------------------------------
-- 地球からhikari (240f)
------------------------------------------------------

spep_5 = spep_4+60;

hadou=entryEffect(spep_5,1604, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_5, hadou, 0, 0, 0);
setEffMoveKey(spep_5+240, hadou, 0, 0, 0);

setEffScaleKey(spep_5, hadou, 1.3, 1.3);
setEffScaleKey(spep_5+240, hadou, 1.3, 1.3);

setEffAlphaKey(spep_5, hadou, 255);
setEffAlphaKey(spep_5+240, hadou, 255);

setEffRotateKey(spep_5, hadou, 0);
setEffRotateKey(spep_5+240, hadou, 0);



-- ダメージ表示
dealDamage( spep_5+40);
entryFade( spep_5+228, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+228);

playSe( spep_5, SE_10);

else


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

-- ** ホワイトフェード ** --
entryFade(spep_0, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


tame = entryEffectLife(spep_0, SP_01x, 286, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, tame, 0, 0, 0);
setEffMoveKey(spep_0+286, tame, 0, 0, 0);

setEffScaleKey(spep_0, tame, -1.0, 1.0);
setEffScaleKey(spep_0+286, tame, -1.0, 1.0);

setEffAlphaKey(spep_0, tame, 255);
setEffAlphaKey(spep_0+286, tame, 255);

setEffRotateKey(spep_0, tame, 0);
setEffRotateKey(spep_0+286, tame, 0);


ctzuzun = entryEffectLife(spep_0+16, 10013, 36, 0x100, -1, 20, 248);--ズズン

setEffMoveKey( spep_0 + 16, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 18, ctzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_0 + 16, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 18, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 20, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 22, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 16, ctzuzun, -5 );

setEffAlphaKey( spep_0 + 16, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 36, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 215 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 164 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 0 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 0 );

--顔＆セリフカットイン
--speff = entryEffect(spep_0+36, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

--speff1 = entryEffect(spep_0+36, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_0+49, 190006, 69, 0x100, -1, 120, 500, 0);--ゴゴゴ

setEffMoveKey(spep_0+51, ctgogo, 120, 500, 0);
setEffMoveKey(spep_0+119, ctgogo, 120, 500, 0);

setEffScaleKey(spep_0+51, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+112, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+119, ctgogo, -1.5, 1.5);

setEffAlphaKey(spep_0+51, ctgogo, 255);
setEffAlphaKey(spep_0+113, ctgogo, 255);
setEffAlphaKey(spep_0+119, ctgogo, 0);

ctgogo2 = entryEffectLife(spep_0+127, 190006, 155, 0x100, -1, 110, 500, 0);

setEffMoveKey(spep_0+127, ctgogo2, 0, 400, 0);
setEffMoveKey(spep_0+282, ctgogo2, 0, 400, 0);
setEffMoveKey(spep_0+282, ctgogo2, 0, 400, 0);

setEffScaleKey(spep_0+127, ctgogo2, -1.0, 1.0);
setEffScaleKey(spep_0+282, ctgogo2, -1.0, 1.0);
setEffScaleKey(spep_0+282, ctgogo2, -1.0, 1.0);

setEffAlphaKey(spep_0+127, ctgogo2, 255);
setEffAlphaKey(spep_0+282, ctgogo2, 255);
setEffAlphaKey(spep_0+282, ctgogo2, 255);

setEffRotateKey(spep_0+127, ctgogo2, 0);
setEffRotateKey(spep_0+282,ctgogo2, 0);
setEffRotateKey(spep_0+282,ctgogo2, 0);


--集中線
shuchusen = entryEffectLife(spep_0, 906, 286, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_0, shuchusen, 0, 0, 0);
setEffMoveKey(spep_0+286, shuchusen, 0, 0, 0);

setEffScaleKey(spep_0, shuchusen, 2.0, 1.0);
setEffScaleKey(spep_0+286, shuchusen, 2.0, 1.0);

setEffAlphaKey(spep_0, shuchusen, 255);
setEffAlphaKey(spep_0+286, shuchusen, 255);

setEffRotateKey(spep_0, shuchusen, 180);
setEffRotateKey(spep_0+286,shuchusen, 180);



--SE
playSe( spep_0+15, SE_05); --ゴゴゴ
playSe( spep_0+50, SE_04); --顔カットイン

se_1 = playSe( spep_0+130, 1044); --ごごご
stopSe(spep_0+202, se_1, 0);


playSe( spep_0+203,SE_03); --かめはめ波ため
playSe( spep_0+223,SE_03);
playSe( spep_0+243,SE_03);
playSe( spep_0+263,SE_03);


entryFade(spep_0+118, 2, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_0+200, 0, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255);

entryFade(spep_0+279, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     --シーン white fade
entryFadeBg( spep_0, 0, 288, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------------------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------------------------------------------------------------------

--次の準備
spep_1 = spep_0+287;

playSe(spep_1,SE_05);

shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_1, shuchusen2, 1.6, 1.6);

speff2=entryEffect(spep_1, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+86, 2,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--放つ
------------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;

hanatu = entryEffectLife(spep_2, SP_02x, 196, 0x100, -1, 0, 0, 0); --かめはめ波放つ
setEffMoveKey(spep_2, hanatu, 0, 0, 0);
setEffMoveKey(spep_2+196, hanatu, 0, 0, 0);

setEffScaleKey(spep_2, hanatu, 1.0, 1.0);
setEffScaleKey(spep_2+196, hanatu, 1.0, 1.0);

setEffAlphaKey(spep_2, hanatu, 255);
setEffAlphaKey(spep_2+196, hanatu, 255);

setEffRotateKey(spep_2, hanatu, 0);
setEffRotateKey(spep_2+196, hanatu, 0);


ryusen = entryEffectLife(spep_2+42, 920, 154, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, ryusen, 0, 0, 0);
setEffMoveKey(spep_2+156, ryusen, 0, 0, 0);

setEffScaleKey( spep_2 + 42, ryusen, 4.91, 1.37 );
setEffScaleKey( spep_2 + 156, ryusen, 4.91, 1.37 );

setEffAlphaKey(spep_2 + 42, ryusen, 255);
setEffAlphaKey(spep_2 + 156, ryusen, 255);

setEffRotateKey( spep_2 + 42, ryusen, -50.7 );
setEffRotateKey( spep_2 + 156, ryusen, -50.7 );


shuchusen3 = entryEffectLife(spep_2, 906, 196, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, shuchusen3, 0, 0, 0);
setEffMoveKey(spep_2+196, shuchusen3, 0, 0, 0);

setEffScaleKey(spep_2, shuchusen3, 2.0, 1.0);
setEffScaleKey(spep_2+196, shuchusen3, 2.0, 1.0);

setEffAlphaKey(spep_2, shuchusen3, 255);
setEffAlphaKey(spep_2+196, shuchusen3, 255);

setEffRotateKey(spep_2, shuchusen3, 180);
setEffRotateKey(spep_2+196,shuchusen3, 180);


ctzuo = entryEffectLife(spep_2+42, 10012, 155, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_2 + 42, ctzuo, 78.7, 180.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 105, 208.6 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 117.9, 250.1 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 92, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 94, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 96, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 98, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 100, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 102, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 104, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 106, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 108, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 110, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 112, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 114, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 116, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 118, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 120, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 122, ctzuo, 137.7, 284.8 , 0 );
setEffMoveKey( spep_2 + 124, ctzuo, 153.7, 268.8 , 0 );
setEffMoveKey( spep_2 + 126, ctzuo, 152.3, 286.3 , 0 );
setEffMoveKey( spep_2 + 128, ctzuo, 192.3, 262.3 , 0 );
setEffMoveKey( spep_2 + 130, ctzuo, 181.2, 289.4 , 0 );
setEffMoveKey( spep_2 + 132, ctzuo, 230.9, 255.7 , 0 );
setEffMoveKey( spep_2 + 134, ctzuo, 250.3, 252.4 , 0 );

setEffScaleKey( spep_2 + 42, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 44, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 46, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 48, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 124, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 126, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 128, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 130, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 132, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 134, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 42, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 42, ctzuo, 255 );
setEffAlphaKey( spep_2 + 124, ctzuo, 255 );
setEffAlphaKey( spep_2 + 126, ctzuo, 204 );
setEffAlphaKey( spep_2 + 128, ctzuo, 153 );
setEffAlphaKey( spep_2 + 130, ctzuo, 102 );
setEffAlphaKey( spep_2 + 132, ctzuo, 51 );
setEffAlphaKey( spep_2 + 134, ctzuo, 0 );

playSe( spep_2,SE_03); --かめはめ波ため
playSe( spep_2+20,SE_03);

--playSe( spep_2, 1044); --ごごご

playSe( spep_2+45, SE_07); --かめはめ波放つ


entryFade( spep_2+36, 0, 3, 12, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+193, 5, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 200, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 迫る
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+200;

semaru = entryEffectLife(spep_3, SP_03, 90, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, semaru, 0, 0, 0);
setEffMoveKey(spep_3+90, semaru, 0, 0, 0);

setEffScaleKey(spep_3, semaru, 1.0, 1.0);
setEffScaleKey(spep_3+90, semaru, 1.0, 1.0);

setEffAlphaKey(spep_3, semaru, 255);
setEffAlphaKey(spep_3+90, semaru, 255);

setEffRotateKey(spep_3, semaru, 0);
setEffRotateKey(spep_3+90, semaru, 0);


shuchusen4 = entryEffectLife(spep_3, 906, 90, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_3+90, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_3, shuchusen4, 2.0, 1.0);
setEffScaleKey(spep_3+90, shuchusen4, 2.0, 1.0);

setEffAlphaKey(spep_3, shuchusen4, 255);
setEffAlphaKey(spep_3+90, shuchusen4, 255);

setEffRotateKey(spep_3, shuchusen4, 180);
setEffRotateKey(spep_3+90,shuchusen4, 180);


entryFade( spep_3+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


ctzudodo = entryEffectLife(spep_3, 10014, 90, 0x100, -1, -123.1, 368.7, 0);
 
setEffMoveKey( spep_3 + 0, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 80, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 82, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 84, ctzudodo, -125.2, 368.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzudodo, -123.1, 344.4 , 0 );
setEffMoveKey( spep_3 + 88, ctzudodo, -125.2, 368.7 , 0 );


setEffScaleKey( spep_3, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_3+88, ctzudodo, 2.3, 2.3 );

setEffRotateKey( spep_3, ctzudodo, 297 );
setEffRotateKey( spep_3+88, ctzudodo, 297 );


setEffAlphaKey( spep_3, ctzudodo, 255 );
setEffAlphaKey( spep_3+88, ctzudodo, 255 );


--敵の動き

setDisp( spep_3, 1, 1);

setDisp( spep_3+60, 1, 0);

changeAnime(  spep_3, 1, 104);      

setMoveKey( spep_3 + 0, 1, 873.2, 969.3 , 0 );
setMoveKey( spep_3 + 2, 1, 794, 879.9 , 0 );
setMoveKey( spep_3 + 4, 1, 710.8, 786.6 , 0 );
setMoveKey( spep_3 + 6, 1, 635.6, 701.2 , 0 );
setMoveKey( spep_3 + 8, 1, 554.4, 605.8 , 0 );
setMoveKey( spep_3 + 10, 1, 477.2, 522.4 , 0 );
setMoveKey( spep_3 + 12, 1, 396, 429 , 0 );
setMoveKey( spep_3 + 14, 1, 318.8, 343.6 , 0 );
setMoveKey( spep_3 + 16, 1, 233.6, 250.3 , 0 );
setMoveKey( spep_3 + 18, 1, 234.3, 246.8 , 0 );
setMoveKey( spep_3 + 20, 1, 226.9, 235.4 , 0 );
setMoveKey( spep_3 + 22, 1, 223.6, 231.9 , 0 );
setMoveKey( spep_3 + 24, 1, 214.3, 220.5 , 0 );
setMoveKey( spep_3 + 26, 1, 212.9, 217 , 0 );
setMoveKey( spep_3 + 28, 1, 205.6, 203.6 , 0 );
setMoveKey( spep_3 + 30, 1, 202.3, 202.1 , 0 );
setMoveKey( spep_3 + 32, 1, 194.9, 192.7 , 0 );
setMoveKey( spep_3 + 34, 1, 191.6, 187.2 , 0 );
setMoveKey( spep_3 + 36, 1, 184.2, 175.8 , 0 );
setMoveKey( spep_3 + 38, 1, 180.9, 172.3 , 0 );
setMoveKey( spep_3 + 40, 1, 173.6, 160.9 , 0 );
setMoveKey( spep_3 + 42, 1, 170.2, 157.4 , 0 );
setMoveKey( spep_3 + 44, 1, 160.9, 148 , 0 );
setMoveKey( spep_3 + 46, 1, 159.6, 142.5 , 0 );
setMoveKey( spep_3 + 48, 1, 152.2, 131.1 , 0 );
setMoveKey( spep_3 + 50, 1, 148.9, 127.6 , 0 );
setMoveKey( spep_3 + 52, 1, 141.5, 114.2 , 0 );
setMoveKey( spep_3 + 54, 1, 130.2, 100.7 , 0 );
setMoveKey( spep_3 + 56, 1, 128.9, 103.3 , 0 );
setMoveKey( spep_3 + 58, 1, 123.5, 93.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 6, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 14, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 18, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 20, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 34, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 36, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 38, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 42, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 44, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 48, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 52, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 58, 1, 1.49, 1.49 );

setRotateKey( spep_3 + 0, 1, -30.2 );
setRotateKey( spep_3 + 6, 1, -30.2 );
setRotateKey( spep_3 + 8, 1, -30.1 );
setRotateKey( spep_3 + 36, 1, -30.1 );
setRotateKey( spep_3 + 38, 1, -30.2 );


setShakeChara( spep_3+23 , 1, 15, 25);



ryusen2 = entryEffectLife(spep_3, 920, 90, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, ryusen2, 0, 0, 0);
setEffMoveKey(spep_3+90, ryusen2, 0, 0, 0);

setEffScaleKey( spep_3 , ryusen2, 4.91, 1.37 );
setEffScaleKey( spep_3 + 90, ryusen2, 4.91, 1.37 );

setEffAlphaKey(spep_3 , ryusen2, 255);
setEffAlphaKey(spep_3 + 90, ryusen2, 255);

setEffRotateKey( spep_3 , ryusen2, -50.7 );
setEffRotateKey( spep_3 + 90, ryusen2, -50.7 );




------------------------------------------------------
--回避 
------------------------------------------------------



if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,130,-130);
setScaleKey(SP_dodge,1,1.3,1.3);
setRotateKey(SP_dodge,1,-30.2);

setMoveKey(SP_dodge+8,1,130,-130);
setScaleKey(SP_dodge+8,1.3,1.3);
setRotateKey(SP_dodge+8,1,-30.2);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
changeAnime(SP_dodge+9,1,100);
setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);


setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--回避 終わり
------------------------------------------------------

playSe( spep_3, SE_07);

------------------------------------------------------
-- ギャン(60f)
------------------------------------------------------
spep_4 = spep_3+90;

setDisp( spep_4-1, 1, 0);

gyan = entryEffect(spep_4,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(spep_4,  gyan,  1.0,  1.0);
setEffAlphaKey(spep_4,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_4, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_4, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_4, ct_06, 255);
setEffScaleKey( spep_4+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_4+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_4+58, ct_06, 255);
setEffShake( spep_4, ct_06, 58, 10);

playSe(spep_4, SE_09);

entryFadeBg(spep_4 ,0, 60, 0, 0, 0, 0, 255);
entryFade(spep_4+50, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-----------------------------------------------------
-- 地球からhikari (24å0f)
------------------------------------------------------


spep_5 = spep_4+60;

hadou=entryEffect(spep_5,1604, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_5, hadou, 0, 0, 0);
setEffMoveKey(spep_5+240, hadou, 0, 0, 0);

setEffScaleKey(spep_5, hadou, 1.3, 1.3);
setEffScaleKey(spep_5+240, hadou, 1.3, 1.3);

setEffAlphaKey(spep_5, hadou, 255);
setEffAlphaKey(spep_5+240, hadou, 255);

setEffRotateKey(spep_5, hadou, 0);
setEffRotateKey(spep_5+240, hadou, 0);


-- ダメージ表示
dealDamage( spep_5+40);
entryFade( spep_5+228, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+228);

playSe( spep_5, SE_10);


end


