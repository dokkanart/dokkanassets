--超サイヤ人ベジータ　1015310
--エネルギースラッシュ

fcolor_r = 245 ;
fcolor_g = 245 ;
fcolor_b = 245 ;
 
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 152344; --構え
SP_02 = 152345; --放つ
SP_03 = 152346; --迫る〜着弾〜爆発

--敵側
SP_01x = 152347; --構え
SP_02x = 152348; --放つ
SP_03x = 152349; --迫る〜着弾〜爆発

-----------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000,   0);
setMoveKey(   4,   1,    0, -2000, 0);
setMoveKey(   5,   0,    0, -2000,   0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000,   0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   1, 0);
setRotateKey(   6,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--味方側
------------------------------------------------------
------------------------------------------------------
-- スラッシュ持ち
------------------------------------------------------
spep_0=0;

--スラッシュ持ちef
efmoti = entryEffectLife( spep_0, SP_01, 120, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, efmoti, 0, 0, 0);
setEffScaleKey( spep_0, efmoti, 1, 1);
setEffRotateKey( spep_0, efmoti, 0);
setEffAlphaKey( spep_0, efmoti, 255);

setEffMoveKey( spep_0+120, efmoti, 0, 0, 0);
setEffScaleKey( spep_0+120, efmoti, 1, 1);
setEffRotateKey( spep_0+120, efmoti, 0);
setEffAlphaKey( spep_0+120, efmoti, 255);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 130, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0, shuchusen1, 0);
setEffAlphaKey( spep_0, shuchusen1, 255);

setEffMoveKey( spep_0+130, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+130, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0+130, shuchusen1, 0);
setEffAlphaKey( spep_0+130, shuchusen1, 255);

--顔カットイン・セリフカットイン
spkao = entryEffect( spep_0+32, 1504, 0x100, -1, 0, 0, 0, 0);
setEffReplaceTexture( spkao, 3, 2);                        
spserifu = entryEffect( spep_0+32, 1505, 0x100, -1, 0, 0, 0, 0);
setEffReplaceTexture( spserifu, 4, 5);

--書き文字 ゴゴゴゴゴ
ctgo = entryEffectLife( spep_0+44, 190006, 70, 0x100, -1, 0, 0, 500, 0);

setEffMoveKey( spep_0+44, ctgo, 0, 500, 0);
setEffMoveKey( spep_0+114, ctgo, 0, 500, 0);

setEffScaleKey( spep_0+44, ctgo, 1.0, 1.0);
setEffScaleKey( spep_0+110, ctgo, 1.0, 1.0);
setEffScaleKey( spep_0+114, ctgo, 4, 4);

setEffRotateKey( spep_0+44, ctgo, 0);
setEffRotateKey( spep_0+114, ctgo, 0);

setEffAlphaKey( spep_0+44, ctgo, 0);
setEffAlphaKey( spep_0+45, ctgo, 255);
setEffAlphaKey( spep_0+110, ctgo, 255);
setEffAlphaKey( spep_0+114, ctgo, 0 );

setEffShake( spep_0+44, ctgo, 58, 8);

--white fade
entryFade( spep_0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_0+20, SE_01);
playSe( spep_0+45, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_1=spep_0+120;

--カード
spcard = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0, 0);   
setEffReplaceTexture( spcard, 1, 1);
setEffReplaceTexture( spcard, 2, 0);-- カード差し替え
setEffReplaceTexture( spcard, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_1+84, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);

--集中線
shuchusenc = entryEffectLife( spep_1, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_1, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1, shuchusenc, 0);
setEffAlphaKey( spep_1, shuchusenc, 255);

setEffMoveKey( spep_1+90, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1+90, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1+90, shuchusenc, 0);
setEffAlphaKey( spep_1+90, shuchusenc, 255);

--SE
playSe( spep_1, SE_05);

------------------------------------------------------
-- スラッシュ投げ
------------------------------------------------------
spep_2=spep_1+90;

--スラッシュ投げef
efnage1 = entryEffectLife( spep_2, SP_02, 46, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_2, efnage1, 0, 0, 0);
setEffScaleKey( spep_2, efnage1, 1, 1);
setEffRotateKey( spep_2, efnage1, 0);
setEffAlphaKey( spep_2, efnage1, 255);

setEffMoveKey( spep_2+46, efnage1, 0, 0, 0);
setEffScaleKey( spep_2+46, efnage1, 1, 1);
setEffRotateKey( spep_2+46, efnage1, 0);
setEffAlphaKey( spep_2+46, efnage1, 255);

efnage2 = entryEffectLife( spep_2, SP_02, 110, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_2, efnage2, 0, 0, 0);
setEffScaleKey( spep_2, efnage2, 1, 1);
setEffRotateKey( spep_2, efnage2, 0);
setEffAlphaKey( spep_2, efnage2, 0);

setEffAlphaKey( spep_2+45, efnage2, 0);
setEffAlphaKey( spep_2+46, efnage2, 255);

setEffMoveKey( spep_2+110, efnage2, 0, 0, 0);
setEffScaleKey( spep_2+110, efnage2, 1, 1);
setEffRotateKey( spep_2+110, efnage2, 0);
setEffAlphaKey( spep_2+110, efnage2, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2, 906, 50, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffAlphaKey( spep_2, shuchusen2, 255);

setEffAlphaKey( spep_2+49, shuchusen2, 255);
setEffMoveKey( spep_2+50, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+50, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2+50, shuchusen2, 0);
setEffAlphaKey( spep_2+50, shuchusen2, 0);

--書き文字 ズオッ
ctzuo = entryEffectLife( spep_2 + 2,  10012, 42, 0x100, -1, 0, -69.5, 195.1 );

setEffMoveKey( spep_2 + 2, ctzuo, -69.5, 195.1 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, -70.3, 232.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, -89.2, 270.8 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, -75.9, 303.1 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, -98.1, 307.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, -76, 303.8 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, -98.4, 308.2 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, -76.2, 304.4 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, -98.6, 308.4 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, -76.4, 305 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, -98.9, 308.6 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, -76.7, 305.6 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, -99.2, 308.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, -76.8, 306.1 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, -99.4, 309.1 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, -77.1, 306.7 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, -99.7, 309.3 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, -60.1, 327.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -78.6, 354 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -25.5, 368.1 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, -56.6, 397.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, -45.3, 418.9 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 4, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 34, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 36, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 38, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 40, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 42, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 44, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 2, ctzuo, -17.8 );
setEffRotateKey( spep_2 + 4, ctzuo, -13.9 );
setEffRotateKey( spep_2 + 6, ctzuo, -9.9 );
setEffRotateKey( spep_2 + 8, ctzuo, -6 );
setEffRotateKey( spep_2 + 10, ctzuo, -6.5 );
setEffRotateKey( spep_2 + 12, ctzuo, -6.9 );
setEffRotateKey( spep_2 + 14, ctzuo, -7.4 );
setEffRotateKey( spep_2 + 16, ctzuo, -7.8 );
setEffRotateKey( spep_2 + 18, ctzuo, -8.3 );
setEffRotateKey( spep_2 + 20, ctzuo, -8.7 );
setEffRotateKey( spep_2 + 22, ctzuo, -9.2 );
setEffRotateKey( spep_2 + 24, ctzuo, -9.7 );
setEffRotateKey( spep_2 + 26, ctzuo, -10.1 );
setEffRotateKey( spep_2 + 28, ctzuo, -10.6 );
setEffRotateKey( spep_2 + 30, ctzuo, -11 );
setEffRotateKey( spep_2 + 32, ctzuo, -11.5 );
setEffRotateKey( spep_2 + 34, ctzuo, -11.9 );
setEffRotateKey( spep_2 + 36, ctzuo, -10.4 );
setEffRotateKey( spep_2 + 38, ctzuo, -8.8 );
setEffRotateKey( spep_2 + 40, ctzuo, -7.3 );
setEffRotateKey( spep_2 + 42, ctzuo, -5.7 );
setEffRotateKey( spep_2 + 44, ctzuo, -4.2 );

setEffAlphaKey( spep_2 + 2, ctzuo, 255 );
setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 36, ctzuo, 204 );
setEffAlphaKey( spep_2 + 38, ctzuo, 153 );
setEffAlphaKey( spep_2 + 40, ctzuo, 102 );
setEffAlphaKey( spep_2 + 42, ctzuo, 51 );
setEffAlphaKey( spep_2 + 44, ctzuo, 0 );

--斜め流線
ryusen1 = entryEffectLife( spep_2+52, 921, 58, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2+52, ryusen1, 0, 0, 0);
setEffScaleKey( spep_2+52, ryusen1, 1.0, 1,0);
setEffRotateKey( spep_2+52, ryusen1, 180);
setEffAlphaKey( spep_2+52, ryusen1, 255);

setEffMoveKey( spep_2+110, ryusen1, 0, 0, 0);
setEffScaleKey( spep_2+110, ryusen1, 1.0, 1.0);
setEffRotateKey( spep_2+110, ryusen1, 180);
setEffAlphaKey( spep_2+110, ryusen1, 255);

--集中線
shuchusen3 = entryEffectLife( spep_2+52, 906, 58, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2+52, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+52, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_2+52, shuchusen3, 0);
setEffAlphaKey( spep_2+52, shuchusen3, 255);

setEffMoveKey( spep_2+110, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+110, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_2+110, shuchusen3, 0);
setEffAlphaKey( spep_2+110, shuchusen3, 255);

--white fade
entryFade( spep_2, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+46, 0, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+100, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_2+52, 0, 58, 0, 0, 0, 0, 255);

--SE
playSe( spep_2+2, SE_06);
playSe( spep_2+54, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speffyoke = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speffyoke, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵に迫る〜爆発
------------------------------------------------------
spep_3=spep_2+110;

--敵
setDisp( spep_3, 1, 1);
setDisp( spep_3+50, 1, 0);
changeAnime( spep_3, 1, 104);

setMoveKey( spep_3+7, 1, 475, 0, 0);
setMoveKey( spep_3+50, 1, 100, 0, 0);
setScaleKey( spep_3+7, 1, 0.5, 0.5);
setScaleKey( spep_3+50, 1, 1.75, 1.75);
setRotateKey( spep_3+7, 1, 0);
setRotateKey( spep_3+50, 1, 0);

setShakeChara( spep_3, 1, 48, 20);

--迫る
efsema1 = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_3, efsema1, 0, 0, 0);
setEffScaleKey( spep_3, efsema1, 1, 1);
setEffRotateKey( spep_3, efsema1, 0);
setEffAlphaKey( spep_3, efsema1, 255);

setEffMoveKey( spep_3+46, efsema1, 0, 0, 0);
setEffScaleKey( spep_3+46, efsema1, 1, 1);
setEffRotateKey( spep_3+46, efsema1, 0);
setEffAlphaKey( spep_3+46, efsema1, 255);

efsema2 = entryEffect( spep_3, SP_03, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_3, efsema2, 0, 0, 0);
setEffScaleKey( spep_3, efsema2, 1, 1);
setEffRotateKey( spep_3, efsema2, 0);
setEffAlphaKey( spep_3, efsema2, 0);

setEffAlphaKey( spep_3+46, efsema2, 255);
setEffMoveKey( spep_3+300, efsema2, 0, 0, 0);
setEffScaleKey( spep_3+300, efsema2, 1, 1);
setEffRotateKey( spep_3+300, efsema2, 0);
setEffAlphaKey( spep_3+300, efsema2, 255);

--斜め流線
ryusen2 = entryEffectLife( spep_3, 921, 46, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3, ryusen2, 1.0, 1,0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffAlphaKey( spep_3, ryusen2, 255);

setEffMoveKey( spep_3+46, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3+46, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_3+46, ryusen2, 0);
setEffAlphaKey( spep_3+46, ryusen2, 255);

--集中線
shuchusen4 = entryEffectLife( spep_3, 906, 48, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_3, shuchusen4, 0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffMoveKey( spep_3+48, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3+48, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_3+48, shuchusen4, 0);
setEffAlphaKey( spep_3+47, shuchusen4, 255);
setEffAlphaKey( spep_3+48, shuchusen4, 0);

--white fade
entryFade( spep_3+47, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3+154, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen5 = entryEffectLife( spep_3+172, 906, 128, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3+172, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3+172, shuchusen5, 1.5, 1.5);
setEffRotateKey( spep_3+172, shuchusen5, 0);
setEffAlphaKey( spep_3+172, shuchusen5, 255);

setEffMoveKey( spep_3+300, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3+300, shuchusen5, 1.5, 1.5);
setEffRotateKey( spep_3+300, shuchusen5, 0);
setEffAlphaKey( spep_3+300, shuchusen5, 255);

--黒背景
entryFadeBg( spep_3, 0, 300, 0, 0, 0, 0, 255);

--SE
playSe( spep_3+18, SE_06);
playSe( spep_3+50, 1026);
SEgogo=playSe( spep_3+84, 1044);
stopSe( spep_3+170, SEgogo, 0);
playSe( spep_3+178, SE_10);

-- ダメージ表示
dealDamage(spep_3+170);
entryFade( spep_3+286, 14, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);
endPhase( spep_3+280);

else


------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
-- スラッシュ持ち
------------------------------------------------------
spep_0=0;

--スラッシュ持ちef
efmoti = entryEffectLife( spep_0, SP_01x, 120, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, efmoti, 0, 0, 0);
setEffScaleKey( spep_0, efmoti, -1, 1);
setEffRotateKey( spep_0, efmoti, 0);
setEffAlphaKey( spep_0, efmoti, 255);

setEffMoveKey( spep_0+120, efmoti, 0, 0, 0);
setEffScaleKey( spep_0+120, efmoti, -1, 1);
setEffRotateKey( spep_0+120, efmoti, 0);
setEffAlphaKey( spep_0+120, efmoti, 255);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 130, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0, shuchusen1, 0);
setEffAlphaKey( spep_0, shuchusen1, 255);

setEffMoveKey( spep_0+130, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+130, shuchusen1, 1.5, 1.5);
setEffRotateKey( spep_0+130, shuchusen1, 0);
setEffAlphaKey( spep_0+130, shuchusen1, 255);

--顔カットイン・セリフカットイン
--spkao = entryEffect( spep_0+32, 1504, 0x100, -1, 0, 0, 0, 0);
--setEffReplaceTexture( spkao, 3, 2);                        
--spserifu = entryEffect( spep_0+32, 1505, 0x100, -1, 0, 0, 0, 0);
--setEffReplaceTexture( spserifu, 4, 5);

--書き文字 ゴゴゴゴゴ
ctgo = entryEffectLife( spep_0+44, 190006, 70, 0x100, -1, 0, 0, 500, 0);

setEffMoveKey( spep_0+44, ctgo, 0, 500, 0);
setEffMoveKey( spep_0+114, ctgo, 0, 500, 0);

setEffScaleKey( spep_0+44, ctgo, -1.0, 1.0);
setEffScaleKey( spep_0+110, ctgo, -1.0, 1.0);
setEffScaleKey( spep_0+114, ctgo, -4, 4);

setEffRotateKey( spep_0+44, ctgo, 0);
setEffRotateKey( spep_0+114, ctgo, 0);

setEffAlphaKey( spep_0+44, ctgo, 0);
setEffAlphaKey( spep_0+45, ctgo, 255);
setEffAlphaKey( spep_0+110, ctgo, 255);
setEffAlphaKey( spep_0+114, ctgo, 0 );

setEffShake( spep_0+44, ctgo, 58, 8);

--white fade
entryFade( spep_0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_0+20, SE_01);
playSe( spep_0+45, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_1=spep_0+120;

--カード
spcard = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0, 0);   
setEffReplaceTexture( spcard, 1, 1);
setEffReplaceTexture( spcard, 2, 0);-- カード差し替え
setEffReplaceTexture( spcard, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_1+84, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);

--集中線
shuchusenc = entryEffectLife( spep_1, 906, 90, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_1, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1, shuchusenc, 0);
setEffAlphaKey( spep_1, shuchusenc, 255);

setEffMoveKey( spep_1+90, shuchusenc, 0, 0, 0);
setEffScaleKey( spep_1+90, shuchusenc, 1.5, 1.5);
setEffRotateKey( spep_1+90, shuchusenc, 0);
setEffAlphaKey( spep_1+90, shuchusenc, 255);

--SE
playSe( spep_1, SE_05);

------------------------------------------------------
-- スラッシュ投げ
------------------------------------------------------
spep_2=spep_1+90;

--スラッシュ投げef
efnage1 = entryEffectLife( spep_2, SP_02x, 46, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_2, efnage1, 0, 0, 0);
setEffScaleKey( spep_2, efnage1, -1, 1);
setEffRotateKey( spep_2, efnage1, 0);
setEffAlphaKey( spep_2, efnage1, 255);

setEffMoveKey( spep_2+46, efnage1, 0, 0, 0);
setEffScaleKey( spep_2+46, efnage1, -1, 1);
setEffRotateKey( spep_2+46, efnage1, 0);
setEffAlphaKey( spep_2+46, efnage1, 255);

efnage2 = entryEffectLife( spep_2, SP_02x, 110, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_2, efnage2, 0, 0, 0);
setEffScaleKey( spep_2, efnage2, -1, 1);
setEffRotateKey( spep_2, efnage2, 0);
setEffAlphaKey( spep_2, efnage2, 0);

setEffAlphaKey( spep_2+45, efnage2, 0);
setEffAlphaKey( spep_2+46, efnage2, 255);

setEffMoveKey( spep_2+110, efnage2, 0, 0, 0);
setEffScaleKey( spep_2+110, efnage2, -1, 1);
setEffRotateKey( spep_2+110, efnage2, 0);
setEffAlphaKey( spep_2+110, efnage2, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2, 906, 50, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffAlphaKey( spep_2, shuchusen2, 255);

setEffAlphaKey( spep_2+49, shuchusen2, 255);
setEffMoveKey( spep_2+50, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2+50, shuchusen2, 1.5, 1.5);
setEffRotateKey( spep_2+50, shuchusen2, 0);
setEffAlphaKey( spep_2+50, shuchusen2, 0);

--書き文字 ズオッ
ctzuo = entryEffectLife( spep_2 + 2,  10012, 42, 0x100, -1, 0, -69.5, 195.1 );

setEffMoveKey( spep_2 + 2, ctzuo, -69.5, 195.1 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, -70.3, 232.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, -89.2, 270.8 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, -75.9, 303.1 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, -98.1, 307.9 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, -76, 303.8 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, -98.4, 308.2 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, -76.2, 304.4 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, -98.6, 308.4 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, -76.4, 305 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, -98.9, 308.6 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, -76.7, 305.6 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, -99.2, 308.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, -76.8, 306.1 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, -99.4, 309.1 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, -77.1, 306.7 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, -99.7, 309.3 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, -60.1, 327.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -78.6, 354 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -25.5, 368.1 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, -56.6, 397.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, -45.3, 418.9 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 4, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 6, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 34, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 36, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 38, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 40, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 42, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 44, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 2, ctzuo, -17.8 );
setEffRotateKey( spep_2 + 4, ctzuo, -13.9 );
setEffRotateKey( spep_2 + 6, ctzuo, -9.9 );
setEffRotateKey( spep_2 + 8, ctzuo, -6 );
setEffRotateKey( spep_2 + 10, ctzuo, -6.5 );
setEffRotateKey( spep_2 + 12, ctzuo, -6.9 );
setEffRotateKey( spep_2 + 14, ctzuo, -7.4 );
setEffRotateKey( spep_2 + 16, ctzuo, -7.8 );
setEffRotateKey( spep_2 + 18, ctzuo, -8.3 );
setEffRotateKey( spep_2 + 20, ctzuo, -8.7 );
setEffRotateKey( spep_2 + 22, ctzuo, -9.2 );
setEffRotateKey( spep_2 + 24, ctzuo, -9.7 );
setEffRotateKey( spep_2 + 26, ctzuo, -10.1 );
setEffRotateKey( spep_2 + 28, ctzuo, -10.6 );
setEffRotateKey( spep_2 + 30, ctzuo, -11 );
setEffRotateKey( spep_2 + 32, ctzuo, -11.5 );
setEffRotateKey( spep_2 + 34, ctzuo, -11.9 );
setEffRotateKey( spep_2 + 36, ctzuo, -10.4 );
setEffRotateKey( spep_2 + 38, ctzuo, -8.8 );
setEffRotateKey( spep_2 + 40, ctzuo, -7.3 );
setEffRotateKey( spep_2 + 42, ctzuo, -5.7 );
setEffRotateKey( spep_2 + 44, ctzuo, -4.2 );

setEffAlphaKey( spep_2 + 2, ctzuo, 255 );
setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 36, ctzuo, 204 );
setEffAlphaKey( spep_2 + 38, ctzuo, 153 );
setEffAlphaKey( spep_2 + 40, ctzuo, 102 );
setEffAlphaKey( spep_2 + 42, ctzuo, 51 );
setEffAlphaKey( spep_2 + 44, ctzuo, 0 );

--斜め流線
ryusen1 = entryEffectLife( spep_2+52, 921, 58, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2+52, ryusen1, 0, 0, 0);
setEffScaleKey( spep_2+52, ryusen1, 1.0, 1,0);
setEffRotateKey( spep_2+52, ryusen1, 180);
setEffAlphaKey( spep_2+52, ryusen1, 255);

setEffMoveKey( spep_2+110, ryusen1, 0, 0, 0);
setEffScaleKey( spep_2+110, ryusen1, 1.0, 1.0);
setEffRotateKey( spep_2+110, ryusen1, 180);
setEffAlphaKey( spep_2+110, ryusen1, 255);

--集中線
shuchusen3 = entryEffectLife( spep_2+52, 906, 58, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_2+52, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+52, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_2+52, shuchusen3, 0);
setEffAlphaKey( spep_2+52, shuchusen3, 255);

setEffMoveKey( spep_2+110, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+110, shuchusen3, 1.5, 1.5);
setEffRotateKey( spep_2+110, shuchusen3, 0);
setEffAlphaKey( spep_2+110, shuchusen3, 255);

--white fade
entryFade( spep_2, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+46, 0, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+100, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--黒背景
entryFadeBg( spep_2+52, 0, 58, 0, 0, 0, 0, 255);

--SE
playSe( spep_2+2, SE_06);
playSe( spep_2+54, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speffyoke = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speffyoke, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵に迫る〜爆発
------------------------------------------------------
spep_3=spep_2+110;

--敵
setDisp( spep_3, 1, 1);
setDisp( spep_3+50, 1, 0);
changeAnime( spep_3, 1, 104);

setMoveKey( spep_3+7, 1, 475, 0, 0);
setMoveKey( spep_3+50, 1, 100, 0, 0);
setScaleKey( spep_3+7, 1, 0.5, 0.5);
setScaleKey( spep_3+50, 1, 1.75, 1.75);
setRotateKey( spep_3+7, 1, 0);
setRotateKey( spep_3+50, 1, 0);

setShakeChara( spep_3, 1, 48, 20);

--迫る
efsema1 = entryEffect( spep_3, SP_03x, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_3, efsema1, 0, 0, 0);
setEffScaleKey( spep_3, efsema1, -1, 1);
setEffRotateKey( spep_3, efsema1, 0);
setEffAlphaKey( spep_3, efsema1, 255);

setEffMoveKey( spep_3+46, efsema1, 0, 0, 0);
setEffScaleKey( spep_3+46, efsema1, -1, 1);
setEffRotateKey( spep_3+46, efsema1, 0);
setEffAlphaKey( spep_3+46, efsema1, 255);

efsema2 = entryEffect( spep_3, SP_03x, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_3, efsema2, 0, 0, 0);
setEffScaleKey( spep_3, efsema2, -1, 1);
setEffRotateKey( spep_3, efsema2, 0);
setEffAlphaKey( spep_3, efsema2, 0);

setEffAlphaKey( spep_3+46, efsema2, 255);
setEffMoveKey( spep_3+300, efsema2, 0, 0, 0);
setEffScaleKey( spep_3+300, efsema2, -1, 1);
setEffRotateKey( spep_3+300, efsema2, 0);
setEffAlphaKey( spep_3+300, efsema2, 255);

--斜め流線
ryusen2 = entryEffectLife( spep_3, 921, 46, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3, ryusen2, 1.0, 1,0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffAlphaKey( spep_3, ryusen2, 255);

setEffMoveKey( spep_3+46, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3+46, ryusen2, 1.0, 1.0);
setEffRotateKey( spep_3+46, ryusen2, 0);
setEffAlphaKey( spep_3+46, ryusen2, 255);

--集中線
shuchusen4 = entryEffectLife( spep_3, 906, 48, 0x80, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_3, shuchusen4, 0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffMoveKey( spep_3+48, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3+48, shuchusen4, 1.5, 1.5);
setEffRotateKey( spep_3+48, shuchusen4, 0);
setEffAlphaKey( spep_3+47, shuchusen4, 255);
setEffAlphaKey( spep_3+48, shuchusen4, 0);

--white fade
entryFade( spep_3+47, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_3+154, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen5 = entryEffectLife( spep_3+172, 906, 128, 0x100, -1, 0, 0, 0, 0);

setEffMoveKey( spep_3+172, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3+172, shuchusen5, 1.5, 1.5);
setEffRotateKey( spep_3+172, shuchusen5, 0);
setEffAlphaKey( spep_3+172, shuchusen5, 255);

setEffMoveKey( spep_3+300, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3+300, shuchusen5, 1.5, 1.5);
setEffRotateKey( spep_3+300, shuchusen5, 0);
setEffAlphaKey( spep_3+300, shuchusen5, 255);

--黒背景
entryFadeBg( spep_3, 0, 300, 0, 0, 0, 0, 255);

--SE
playSe( spep_3+18, SE_06);
playSe( spep_3+50, 1026);
SEgogo=playSe( spep_3+84, 1044);
stopSe( spep_3+170, SEgogo, 0);
playSe( spep_3+178, SE_10);

-- ダメージ表示
dealDamage(spep_3+170);
entryFade( spep_3+286, 14, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);
endPhase( spep_3+280);

end
