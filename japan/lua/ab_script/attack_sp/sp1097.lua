--1011160　超サイヤ人3ブロリー　ダブルイレーザーキャノン

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

SE_13 = 1022; --のびる発射
SE_14 = 1009; --huru
SE_15 = 1010; --HIT

SP_01 = 150310;--100突進
SP_02 = 150311;--50追いかける
SP_03 = 150312;--ef_102e
SP_04 = 150313;--ef_103 
SP_05 = 150314;--ef_104 
SP_06 = 150315;--ef_105 
SP_07 = 150316;--ef_07 
SP_08 = 190010;--ギャン緑
SP_09 = 1550;

SP_10 = 150317;
SP_11 = 150318;
SP_12 = 150319;
SP_13 = 150320;
SP_14 = 150321;
SP_15 = 150322;

multi_frm = 2;

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

------------------------------------------------------
-- 構え(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen0 = entryEffectLife( 3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen0, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen0, 255);
setEffScaleKey( 120, shuchusen0, 1.5, 1.5);

dounyu = entryEffect( 3,   SP_01,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffAlphaKey( 3,dounyu,255);
setEffShake(3,dounyu,116,10);

setEffScaleKey( 3, dounyu, 1.0, 1.0);
setEffAlphaKey( 114,dounyu,255);
setEffAlphaKey( 116,dounyu,0);

playSe( 4, SE_01);

playSe( 4, SE_03);
playSe( 24, SE_03);
playSe( 44, SE_03);
playSe( 64, SE_03);
playSe( 84, SE_03);
playSe( 104, SE_03);

playSe(30, SE_04);
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

ctgogogo = entryEffectLife( 30, 190006, 80, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴ
setEffRotateKey(30+5, ctgogogo, -10);
setEffAlphaKey( 30+5, ctgogogo, 255);
setEffScaleKey( 30+5, ctgogogo, 1.0, 1.0);
setEffAlphaKey( 70+5, ctgogogo, 255);
setEffAlphaKey( 70+5, ctgogogo, 0);
------------------------------------------------------
-- 突進(100F)
------------------------------------------------------

spep_1=115;
entryFade( spep_1-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setMoveKey(  spep_1,    1,  1000,  0,   0);

playSe( spep_1, 1033);

ryusen1 = entryEffectLife( spep_1, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

setEffScaleKey( spep_1, ryusen1, 1, 1);
setEffAlphaKey( spep_1, ryusen1, 255);

tosshin1 = entryEffect( spep_1, SP_02, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin1, 1.0, 1.0);
setEffShake(spep_1, tosshin1,100,10);

playSe( spep_1+70, 1009);
shuchusen1 = entryEffectLife( spep_1+1, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen1, 255);

setDisp( spep_1+30, 1, 1);
setShakeChara(spep_1+30, 1, 100, 10 );
changeAnime( spep_1+30, 1, 104);  --ガード
setScaleKey(  spep_1+30,   1,   2.6,  2.6);
setMoveKey(  spep_1+30,   1,  1000,  0,   0);

setMoveKey(  spep_1+38,   1,  500,  0,   0);
setScaleKey(  spep_1+38,   1,   2.6,  2.6);

setMoveKey(  spep_1+68,    1,  200,  0,   0);
setScaleKey(  spep_1+68,   1,   2.6,  2.6);

entryFade( spep_1+68, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);  

changeAnime( spep_1+72, 1, 108); 
setMoveKey(  spep_1+72,   1,  150,  0,   0);
setScaleKey(  spep_1+72,   1,   4,  4);

setMoveKey(  spep_1+80,   1,  200,  50,   0);
setScaleKey(  spep_1+80,   1,   4,  4);

playSe( spep_1+90, 1027);
setMoveKey(  spep_1+100,   1,  300,  300,   0);--フレーム110
setScaleKey(  spep_1+100,   1,   0.4,  0.4);--フレーム110

-- 書き文字エントリー
ctBaki = entryEffectLife( spep_1+72, 10020, 22, 0x100, -1, 0, -100, 280);    -- バキ
setEffShake(spep_1+72, ctBaki, 24, 28);
setEffScaleKey(spep_1+72, ctBaki, 2.8, 2.8);
setEffRotateKey(spep_1+72, ctBaki, -10);
setEffAlphaKey( spep_1+72, ctBaki, 255);
setEffScaleKey(spep_1+100, ctBaki, 2.0, 2.0);
setEffAlphaKey( spep_1+92, ctBaki, 255);
setEffAlphaKey( spep_1+94, ctBaki, 0);

spep_2=spep_1+102;
entryFade( spep_2-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_2, 0, 260, 0, 10, 10, 10, 180);          -- ベース暗め　背景
------------------------------------------------------
--吹っ飛ばし(30F)
------------------------------------------------------
playSe( spep_2+5, 1027);

ryuusen2 = entryEffectLife( spep_2-1, 921, 30, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey( spep_2, ryuusen2, 2, 2);
setEffAlphaKey( spep_2, ryuusen2, 255);
setEffRotateKey(spep_2, ryuusen2, -50);

shuchusen2 = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.5, 2.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey(spep_2, shuchusen2, -50);

setMoveKey(  spep_2+1,    1,  -200,  -300,   0);
setScaleKey(  spep_2+1,   1,   4,  4);

setShakeChara( spep_2, 1, 30,  10);

setMoveKey(  spep_2+30,   1,  300,  300,   0);
setScaleKey(  spep_2+30,   1,   0.4,  0.4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,   1,  1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
--接近(50F)
------------------------------------------------------

spep_3=spep_2+30;
entryFade( spep_3-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_3, 1, 0);
--playSe(spep_3+2, 1027);
--playSe( spep_1, 1033);
playSe(spep_3+2, 1033);

sekkin3 = entryEffect( spep_3-35, SP_03, 0,  -1, 0,  0,  0); 
setEffScaleKey( spep_3, sekkin3, 1.0, 1.0);
setEffAlphaKey( spep_3-30, sekkin3, 255);
setEffShake(spep_3, sekkin3,60,5);

ryuusen3 = entryEffectLife( spep_3, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_3, ryuusen3, 2, 2);
setEffAlphaKey( spep_3, ryuusen3, 255);
setEffRotateKey(spep_3, ryuusen3, -230);
------------------------------------------------------
--掴む(50)
------------------------------------------------------
spep_4=spep_3+50;
--playSe(spep_4+3, 1027);
playSe(spep_4+3, 1033);

entryFade( spep_4-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setShakeChara( spep_4, 1, 80,  10);

ryuusen4 = entryEffectLife( spep_4-1, 921, 16, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_4, ryuusen4, 2, 2);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey( spep_4, ryuusen4, -50);

tosshin4 = entryEffect( spep_4, SP_04,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_4, tosshin4, 1 , 1  );
setEffAlphaKey(spep_4, tosshin4,255);
setEffShake( spep_4, tosshin4 , 80 , 10);

setMoveKey(  spep_4-2,    1,  300,  300,   0);
setScaleKey(  spep_4-2,   1,   2.0,  2.0);

setDisp( spep_4+1, 1, 1);

setMoveKey(  spep_4+16,    1,  130,  100,   0);
setScaleKey(  spep_4+16,   1,   2.0,  2.0);

entryFade( spep_4+10, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     

shuchusen4 = entryEffectLife( spep_4+16, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+16, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4+16, shuchusen4, 255);

ryusen4 = entryEffectLife( spep_4+16, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4+16, ryusen4, -10);
setEffScaleKey( spep_4+16, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+16, ryusen4, 255);

playSe( spep_4+20, 1001);
--playSe( spep_4+20, SE_03);
--playSe( spep_4+40, SE_03);

ctGa = entryEffectLife( spep_4+20, 10005, 20, 0x100, -1, 0, -100, 400);    -- ガッ
setEffRotateKey(spep_4+20, ctGa, -20);
setEffAlphaKey( spep_4+20, ctGa, 255);
setEffScaleKey( spep_4+20, ctGa, 3.0, 3.0);
setEffAlphaKey( spep_4+20, ctGa, 255);
setEffAlphaKey( spep_4+39, ctGa, 255);
setEffAlphaKey( spep_4+40, ctGa, 0);
setEffShake( spep_4+20, ctGa, 45, 10);

setMoveKey(  spep_4+18,   1,  300,  190,   0);
setScaleKey(  spep_4+18,   1,   2.0,  2.0);

setMoveKey(  spep_4+22,   1,  300,  200,   0);

setMoveKey(  spep_4+26,   1,  300,  220,   0);

setMoveKey(  spep_4+30,   1,  300,  230,   0);

setMoveKey(  spep_4+48,   1,  340,  230,   0);

setScaleKey(  spep_4+50,   1,   2.0,  2.0);

setDisp( spep_4+55, 1, 0);

spep_5=spep_4+50;
entryFade( spep_5-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 260);          -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
SEx=playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_6=spep_5+90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--一発目発射(100F)
------------------------------------------------------
entryFadeBg( spep_6, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setShakeChara( spep_6, 1, 100,  10);

sekkin6 = entryEffect( spep_6, SP_05,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_6, sekkin6, 1.0, 1.0);

setScaleKey(  spep_6+1,   1,   2.5,  2.5);
setRotateKey( spep_6+1,  1,  0 );
setEffShake(spep_6, sekkin6,100,10);

shuchusen6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);

ryuusen6 = entryEffectLife( spep_6, 921, 50, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_6, ryuusen6, 2, 2);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey( spep_6+2, ryuusen6, 30);

setMoveKey(  spep_6,   1,  270,  220,   0);--76
setScaleKey(  spep_6,   1,   2.5,  2.5);--2.0

setMoveKey(  spep_6+46,   1,  320,  220,   0);--76
setScaleKey(  spep_6+46,   1,   2.5,  2.5);--2.0

ryuusen6b = entryEffectLife( spep_6+50, 921, 50, 0x80,  -1, 0,  0,  0); -- 流線横
setEffScaleKey( spep_6+50, ryuusen6b, 2, 2);
setEffAlphaKey( spep_6+50, ryuusen6b, 255);
setEffRotateKey( spep_6+50, ryuusen6b, 0);


SE0=playSe( spep_6+10, SE_03);
--setSeVolume( spep_6+10 , SE_03, 80 );
SE1=playSe( spep_6+20, SE_03);
--setSeVolume( spep_6+20 , SE_03, 80 );
SE2=playSe( spep_6+30, SE_03);
--setSeVolume( spep_6+30 , SE_03, 80 );
SE3=playSe( spep_6+40, SE_03);
--setSeVolume( spep_6+40 , SE_03, 80 );
SE4=playSe( spep_6+44, SE_06);
SEA=playSe( spep_6+54, SE_07);

stopSe( spep_6+5  , SEx, 10 );
stopSe( spep_6 + 25, SE0, 4 );
stopSe( spep_6 + 35, SE1, 4 );
stopSe( spep_6 + 45, SE2, 4 );
stopSe( spep_6 + 55, SE3, 4 );

setMoveKey(  spep_6+47,   1,  0,  0,   0);--76
setScaleKey(  spep_6+47,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+47,  1,  0 );

entryFade( spep_6+40, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  spep_6+48,   1,  50,  0,   0);--76,270
setMoveKey(  spep_6+100,   1,  150,  0,   0);--76,270

setScaleKey(  spep_6+100,   1,   2,  2);--2.5
setRotateKey( spep_6+100,  1,  0 );

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_6+47, 10014, 53, 0, -1, 0, 0, 300); -- ズドドドッ
setEffShake( spep_6+47, ctZudodo, 53, 40);
setEffScaleKey( spep_6+47, ctZudodo, 2.8, 2.8);
setEffRotateKey( spep_6+47, ctZudodo, 70);
setEffAlphaKey( spep_6+47, ctZudodo, 255);
setEffAlphaKey( spep_6+98, ctZudodo, 255);
setEffAlphaKey( spep_6+100, ctZudodo, 0);

setDisp( spep_6+1, 1, 1);

------------------------------------------------------
--二発目発射(100F)
------------------------------------------------------

spep_7=spep_6+100; --410 469
entryFade( spep_7-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setDisp( spep_7, 1, 0);

entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景

SE5=playSe( spep_7+5, SE_03);
--setSeVolume( spep_7+5 , SE_03, 80 );
SE6=playSe( spep_7+15, SE_03);
--setSeVolume( spep_7+15 , SE_03, 80 );
SE7=playSe( spep_7+25, SE_03);
--setSeVolume( spep_7+25 , SE_03, 80 );
SE8=playSe( spep_7+35, SE_03);
--setSeVolume( spep_7+35 , SE_03, 80 );
SE9=playSe( spep_7+45, SE_03);
--setSeVolume( spep_7+45 , SE_03, 80 );
playSe( spep_7+50, SE_06);
playSe( spep_7+54, SE_07);

stopSe( spep_7+10 , SE4,10 );
stopSe( spep_7+10 , SEA,10 );
stopSe( spep_7 + 20, SE5, 4 );
stopSe( spep_7 + 30, SE6, 4 );
stopSe( spep_7 + 40, SE6, 4 );
stopSe( spep_7 + 50, SE8, 4 );
stopSe( spep_7 + 60, SE9, 4 );

ryuusen7 = entryEffectLife( spep_7, 921, 90, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_7, ryuusen7, 2, 2);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey( spep_7, ryuusen7, 180);

ha7 = entryEffect( spep_7, SP_06,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_7, ha7, 1.0, 1.0);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setMoveKey(  spep_6+1,    1,  130,  180,   0);
setEffShake(spep_7, ha7, 100, 10);

shuchusen7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen7, 255);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_7+50, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_7+50, ctZuo, 32, 5);
setEffAlphaKey(spep_7+50, ctZuo, 255);
setEffAlphaKey(spep_7+50+22, ctZuo, 255);
setEffAlphaKey(spep_7+50+40, ctZuo, 0);
setEffScaleKey(spep_7+50, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_7+50+4, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_7+50+22, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_7+50+50, ctZuo, 1.7, 1.7);

------------------------------------------------------
--二発目着弾(80F)
------------------------------------------------------
spep_8=spep_7+100; 
entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 180);          -- ベース暗め　背景

playSe( spep_8+6, SE_06);
playSe( spep_8+64, SE_06);

ha8 = entryEffect( spep_8, SP_07,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_8, ha8, 1.0, 1.0);
setEffShake(spep_8, ha8, 80, 10);

ryuusen8 = entryEffectLife( spep_8, 921, 80, 0x80,  -1, 0,  0,  0); -- 流線横
setEffScaleKey( spep_8, ryuusen8, 2, 2);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey( spep_8, ryuusen8, 0);

shuchusen8 = entryEffectLife( spep_8, 906, 80, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen8, 255);

entryFade( spep_8-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setDisp( spep_8, 1, 1);
setShakeChara( spep_8, 1,  80,  20);

setMoveKey(  spep_8,   1,  230,  0,   0);--76
setScaleKey(  spep_8,   1,   1.5,  1.5);--2.0

setMoveKey(  spep_8+80,   1,  260,  0,   0);--76,270
setScaleKey(  spep_8+80,   1,   1,  1);--2.0

-- 書き文字エントリー
ctZudodo8 = entryEffectLife( spep_8, 10014, 80, 0, -1, 0, 0, 300); -- ズドドドッ
setEffShake( spep_8, ctZudodo8, 99, 40);
setEffScaleKey( spep_8, ctZudodo8, 2.8, 2.8);
setEffRotateKey( spep_8, ctZudodo8, 70);
setEffAlphaKey( spep_8, ctZudodo8, 255);
setEffAlphaKey( spep_8+78, ctZudodo8, 255);
setEffAlphaKey( spep_8+80, ctZudodo8, 0);

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_9=spep_8+80;

entryFadeBg( spep_9, 0, 60, 0, 0, 0, 0, 180);          -- ベース暗め　背景

entryFade( spep_9-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setDisp( spep_9, 1, 0);

gyan=entryEffectLife(  spep_9,  SP_08,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_9, ct4, 255);
setEffScaleKey( spep_9, ct4, 3.0, 3.0);
setEffScaleKey( spep_9+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_9, ct4, 255);
setEffAlphaKey( spep_9+60, ct4, 0);
setEffShake( spep_9, ct4, 45, 8);

------------------------------------------------------
--地球爆発
------------------------------------------------------
SP_09 = 1550;

spep_10 = spep_9+60; 

entryFadeBg( spep_10, 0, 200, 0, 0, 0, 0, 180);          -- ベース暗め　背景

entryFade( spep_10-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

bakuhatu = entryEffect( spep_10, SP_09, 0,  -1,  0,  0,  0);   -- 爆発
setEffScaleKey( spep_10, bakuhatu, 1.1, 1.1);

playSe( spep_10+8, SE_10);
	
setDamage( spep_10+16, 1, 0);  -- ダメージ振動等
setShake(spep_10+7,6,15);
setShake(spep_10+13,15,10);
	
-- ダメージ表示
dealDamage(spep_10+16);
	
entryFade( spep_10+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
endPhase(spep_10+160);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 構え(120F)
------------------------------------------------------

setVisibleUI( 0, 0);

entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen0 = entryEffectLife( 3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen0, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen0, 255);
setEffScaleKey( 120, shuchusen0, 1.5, 1.5);

dounyu = entryEffect( 3,   SP_10,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffAlphaKey( 3,dounyu,255);
setEffShake(3,dounyu,116,10);

setEffScaleKey( 3, dounyu, 1.0, 1.0);
setEffAlphaKey( 114,dounyu,255);
setEffAlphaKey( 116,dounyu,0);

playSe( 4, SE_01);

playSe( 4, SE_03);
playSe( 24, SE_03);
playSe( 44, SE_03);
playSe( 64, SE_03);
playSe( 84, SE_03);
playSe( 104, SE_03);

playSe(30, SE_04);
--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

ctgogogo = entryEffectLife( 30, 190006, 80, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴ
setEffRotateKey(30+5, ctgogogo, -10);
setEffAlphaKey( 30+5, ctgogogo, 255);
setEffScaleKey( 30+5, ctgogogo, -1.0, 1.0);
setEffAlphaKey( 70+5, ctgogogo, 255);
setEffAlphaKey( 70+5, ctgogogo, 0);

------------------------------------------------------
-- 突進(100F)
------------------------------------------------------
spep_1=115;
entryFade( spep_1-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setMoveKey(  spep_1,    1,  1000,  0,   0);

playSe( spep_1, 1033);

ryusen1 = entryEffectLife( spep_1, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

setEffScaleKey( spep_1, ryusen1, 1, 1);
setEffAlphaKey( spep_1, ryusen1, 255);

tosshin1 = entryEffect( spep_1, SP_11, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin1, 1.0, 1.0);
setEffShake(spep_1, tosshin1,100,10);

playSe( spep_1+70, 1009);
shuchusen1 = entryEffectLife( spep_1+1, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen1, 255);

setDisp( spep_1+30, 1, 1);
setShakeChara(spep_1+30, 1, 100, 10 );
changeAnime( spep_1+30, 1, 104);  --ガード
setScaleKey(  spep_1+30,   1,   2.6,  2.6);
setMoveKey(  spep_1+30,   1,  1000,  0,   0);

setMoveKey(  spep_1+38,   1,  500,  0,   0);
setScaleKey(  spep_1+38,   1,   2.6,  2.6);

setMoveKey(  spep_1+68,    1,  200,  0,   0);
setScaleKey(  spep_1+68,   1,   2.6,  2.6);

entryFade( spep_1+68, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);  

changeAnime( spep_1+72, 1, 108); 
setMoveKey(  spep_1+72,   1,  150,  0,   0);
setScaleKey(  spep_1+72,   1,   4,  4);

setMoveKey(  spep_1+80,   1,  200,  50,   0);
setScaleKey(  spep_1+80,   1,   4,  4);

playSe( spep_1+90, 1027);
setMoveKey(  spep_1+100,   1,  300,  300,   0);--フレーム110
setScaleKey(  spep_1+100,   1,   0.4,  0.4);--フレーム110

-- 書き文字エントリー
ctBaki = entryEffectLife( spep_1+72, 10020, 22, 0x100, -1, 0, -100, 280);    -- バキ
setEffShake(spep_1+72, ctBaki, 24, 28);
setEffScaleKey(spep_1+72, ctBaki, 2.8, 2.8);
setEffRotateKey(spep_1+72, ctBaki, -10);
setEffAlphaKey( spep_1+72, ctBaki, 255);
setEffScaleKey(spep_1+100, ctBaki, 2.0, 2.0);
setEffAlphaKey( spep_1+92, ctBaki, 255);
setEffAlphaKey( spep_1+94, ctBaki, 0);

spep_2=spep_1+102;
entryFade( spep_2-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_2, 0, 260, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--吹っ飛ばし(30F)
------------------------------------------------------

playSe( spep_2+5, 1027);

ryuusen2 = entryEffectLife( spep_2-1, 921, 30, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey( spep_2, ryuusen2, 2, 2);
setEffAlphaKey( spep_2, ryuusen2, 255);
setEffRotateKey(spep_2, ryuusen2, -50);

shuchusen2 = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.5, 2.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey(spep_2, shuchusen2, -50);

setMoveKey(  spep_2+1,    1,  -200,  -300,   0);
setScaleKey(  spep_2+1,   1,   4,  4);

setShakeChara( spep_2, 1, 30,  10);

setMoveKey(  spep_2+30,   1,  300,  300,   0);
setScaleKey(  spep_2+30,   1,   0.4,  0.4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,   1,  1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--接近(50F)
------------------------------------------------------

spep_3=spep_2+30;
entryFade( spep_3-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_3, 1, 0);
--playSe(spep_3+2, 1027);
--playSe( spep_1, 1033);
playSe(spep_3+2, 1033);

sekkin3 = entryEffect( spep_3-35, SP_12, 0,  -1, 0,  0,  0); 
setEffScaleKey( spep_3, sekkin3, 1.0, 1.0);
setEffAlphaKey( spep_3-30, sekkin3, 255);
setEffShake(spep_3, sekkin3,60,5);

ryuusen3 = entryEffectLife( spep_3, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_3, ryuusen3, 2, 2);
setEffAlphaKey( spep_3, ryuusen3, 255);
setEffRotateKey(spep_3, ryuusen3, -230);

------------------------------------------------------
--掴む(50)
------------------------------------------------------
spep_4=spep_3+50;
--playSe(spep_4+3, 1027);
playSe(spep_4+3, 1033);

entryFade( spep_4-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setShakeChara( spep_4, 1, 80,  10);

ryuusen4 = entryEffectLife( spep_4-1, 921, 16, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_4, ryuusen4, 2, 2);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey( spep_4, ryuusen4, -50);

tosshin4 = entryEffect( spep_4, SP_13,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_4, tosshin4, 1 , 1  );
setEffAlphaKey(spep_4, tosshin4,255);
setEffShake( spep_4, tosshin4 , 80 , 10);

setMoveKey(  spep_4-2,    1,  300,  300,   0);
setScaleKey(  spep_4-2,   1,   2.0,  2.0);

setDisp( spep_4+1, 1, 1);

setMoveKey(  spep_4+16,    1,  130,  100,   0);
setScaleKey(  spep_4+16,   1,   2.0,  2.0);

entryFade( spep_4+10, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     

shuchusen4 = entryEffectLife( spep_4+16, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+16, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4+16, shuchusen4, 255);

ryusen4 = entryEffectLife( spep_4+16, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4+16, ryusen4, -10);
setEffScaleKey( spep_4+16, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+16, ryusen4, 255);

playSe( spep_4+20, 1001);
--playSe( spep_4+20, SE_03);
--playSe( spep_4+40, SE_03);

ctGa = entryEffectLife( spep_4+20, 10005, 20, 0x100, -1, 0, -100, 400);    -- ガッ
setEffRotateKey(spep_4+20, ctGa, -20);
setEffAlphaKey( spep_4+20, ctGa, 255);
setEffScaleKey( spep_4+20, ctGa, 3.0, 3.0);
setEffAlphaKey( spep_4+20, ctGa, 255);
setEffAlphaKey( spep_4+39, ctGa, 255);
setEffAlphaKey( spep_4+40, ctGa, 0);
setEffShake( spep_4+20, ctGa, 45, 10);

setMoveKey(  spep_4+18,   1,  300,  190,   0);
setScaleKey(  spep_4+18,   1,   2.0,  2.0);

setMoveKey(  spep_4+22,   1,  300,  200,   0);

setMoveKey(  spep_4+26,   1,  300,  220,   0);

setMoveKey(  spep_4+30,   1,  300,  230,   0);

setMoveKey(  spep_4+48,   1,  340,  230,   0);

setScaleKey(  spep_4+50,   1,   2.0,  2.0);

setDisp( spep_4+55, 1, 0);

spep_5=spep_4+50;
entryFade( spep_5-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 260);          -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_6=spep_5+90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--一発目発射(100F)
------------------------------------------------------
entryFadeBg( spep_6, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setShakeChara( spep_6, 1, 100,  10);

sekkin6 = entryEffect( spep_6, SP_14,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_6, sekkin6, 1.0, 1.0);

setScaleKey(  spep_6+1,   1,   2.5,  2.5);
setRotateKey( spep_6+1,  1,  0 );
setEffShake(spep_6, sekkin6,100,10);

shuchusen6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);

ryuusen6 = entryEffectLife( spep_6, 921, 50, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_6, ryuusen6, 2, 2);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey( spep_6+2, ryuusen6, 30);

setMoveKey(  spep_6,   1,  270,  220,   0);--76
setScaleKey(  spep_6,   1,   2.5,  2.5);--2.0

setMoveKey(  spep_6+46,   1,  320,  220,   0);--76
setScaleKey(  spep_6+46,   1,   2.5,  2.5);--2.0

ryuusen6b = entryEffectLife( spep_6+50, 921, 50, 0x80,  -1, 0,  0,  0); -- 流線横
setEffScaleKey( spep_6+50, ryuusen6b, 2, 2);
setEffAlphaKey( spep_6+50, ryuusen6b, 255);
setEffRotateKey( spep_6+50, ryuusen6b, 0);

SE0=playSe( spep_6+10, SE_03);
--setSeVolume( spep_6+10 , SE_03, 80 );
SE1=playSe( spep_6+20, SE_03);
--setSeVolume( spep_6+20 , SE_03, 80 );
SE2=playSe( spep_6+30, SE_03);
--setSeVolume( spep_6+30 , SE_03, 80 );
SE3=playSe( spep_6+40, SE_03);
--setSeVolume( spep_6+40 , SE_03, 80 );
SE4=playSe( spep_6+44, SE_06);
SEA=playSe( spep_6+54, SE_07);

stopSe( spep_6+5  , SEx, 10 );
stopSe( spep_6 + 25, SE0, 4 );
stopSe( spep_6 + 35, SE1, 4 );
stopSe( spep_6 + 45, SE2, 4 );
stopSe( spep_6 + 55, SE3, 4 );

setMoveKey(  spep_6+47,   1,  0,  0,   0);--76
setScaleKey(  spep_6+47,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+47,  1,  0 );

entryFade( spep_6+40, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  spep_6+48,   1,  50,  0,   0);--76,270
setMoveKey(  spep_6+100,   1,  150,  0,   0);--76,270

setScaleKey(  spep_6+100,   1,   2,  2);--2.5
setRotateKey( spep_6+100,  1,  0 );

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_6+47, 10014, 53, 0, -1, 0, 0, 300); -- ズドドドッ
setEffShake( spep_6+47, ctZudodo, 53, 40);
setEffScaleKey( spep_6+47, ctZudodo, 2.8, 2.8);
setEffRotateKey( spep_6+47, ctZudodo, 0);
setEffAlphaKey( spep_6+47, ctZudodo, 255);
setEffAlphaKey( spep_6+98, ctZudodo, 255);
setEffAlphaKey( spep_6+100, ctZudodo, 0);

setDisp( spep_6+1, 1, 1);

------------------------------------------------------
--二発目発射(100F)
------------------------------------------------------

spep_7=spep_6+100; --410 469
entryFade( spep_7-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setDisp( spep_7, 1, 0);

entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景

SE5=playSe( spep_7+5, SE_03);
--setSeVolume( spep_7+5 , SE_03, 80 );
SE6=playSe( spep_7+15, SE_03);
--setSeVolume( spep_7+15 , SE_03, 80 );
SE7=playSe( spep_7+25, SE_03);
--setSeVolume( spep_7+25 , SE_03, 80 );
SE8=playSe( spep_7+35, SE_03);
--setSeVolume( spep_7+35 , SE_03, 80 );
SE9=playSe( spep_7+45, SE_03);
--setSeVolume( spep_7+45 , SE_03, 80 );
playSe( spep_7+50, SE_06);
playSe( spep_7+54, SE_07);

stopSe( spep_7+10 , SE4,10 );
stopSe( spep_7+10 , SEA,10 );
stopSe( spep_7 + 20, SE5, 4 );
stopSe( spep_7 + 30, SE6, 4 );
stopSe( spep_7 + 40, SE6, 4 );
stopSe( spep_7 + 50, SE8, 4 );
stopSe( spep_7 + 60, SE9, 4 );


ryuusen7 = entryEffectLife( spep_7, 921, 90, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_7, ryuusen7, 2, 2);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey( spep_7, ryuusen7, 180);



ha7 = entryEffect( spep_7, SP_15,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_7, ha7, 1.0, 1.0);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setMoveKey(  spep_6+1,    1,  130,  180,   0);
setEffShake(spep_7, ha7, 100, 10);

shuchusen7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen7, 255);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_7+50, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_7+50, ctZuo, 32, 5);
setEffAlphaKey(spep_7+50, ctZuo, 255);
setEffAlphaKey(spep_7+50+22, ctZuo, 255);
setEffAlphaKey(spep_7+50+40, ctZuo, 0);
setEffScaleKey(spep_7+50, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_7+50+4, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_7+50+22, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_7+50+50, ctZuo, 1.7, 1.7);


------------------------------------------------------
--二発目着弾(80F)
------------------------------------------------------
spep_8=spep_7+100; 
entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 180);          -- ベース暗め　背景

playSe( spep_8+6, SE_06);
playSe( spep_8+64, SE_06);

ha8 = entryEffect( spep_8, SP_07,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_8, ha8, 1.0, 1.0);
setEffShake(spep_8, ha8, 80, 10);

ryuusen8 = entryEffectLife( spep_8, 921, 80, 0x80,  -1, 0,  0,  0); -- 流線横
setEffScaleKey( spep_8, ryuusen8, 2, 2);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey( spep_8, ryuusen8, 0);

shuchusen8 = entryEffectLife( spep_8, 906, 80, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen8, 255);

entryFade( spep_8-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setDisp( spep_8, 1, 1);
setShakeChara( spep_8, 1,  80,  20);

setMoveKey(  spep_8,   1,  230,  0,   0);--76
setScaleKey(  spep_8,   1,   1.5,  1.5);--2.0

setMoveKey(  spep_8+80,   1,  260,  0,   0);--76,270
setScaleKey(  spep_8+80,   1,   1,  1);--2.0



-- 書き文字エントリー
ctZudodo8 = entryEffectLife( spep_8, 10014, 80, 0, -1, 0, 0, 300); -- ズドドドッ
setEffShake( spep_8, ctZudodo8, 80, 40);
setEffScaleKey( spep_8, ctZudodo8, 2.8, 2.8);
setEffRotateKey( spep_8, ctZudodo8, 0);
setEffAlphaKey( spep_8, ctZudodo8, 255);
setEffAlphaKey( spep_8+78, ctZudodo8, 255);
setEffAlphaKey( spep_8+80, ctZudodo8, 0);

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_9=spep_8+80;

entryFadeBg( spep_9, 0, 60, 0, 0, 0, 0, 180);          -- ベース暗め　背景

entryFade( spep_9-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setDisp( spep_9, 1, 0);

gyan=entryEffectLife(  spep_9,  SP_08,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_9, ct4, 255);
setEffScaleKey( spep_9, ct4, 3.0, 3.0);
setEffScaleKey( spep_9+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_9, ct4, 255);
setEffAlphaKey( spep_9+60, ct4, 0);
setEffShake( spep_9, ct4, 45, 8);

------------------------------------------------------
--地球爆発
------------------------------------------------------
spep_10 = spep_9+60; 

entryFadeBg( spep_10, 0, 200, 0, 0, 0, 0, 180);          -- ベース暗め　背景

entryFade( spep_10-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

bakuhatu = entryEffect( spep_10, SP_09, 0,  -1,  0,  0,  0);   -- 爆発
setEffScaleKey( spep_10, bakuhatu, 1.1, 1.1);

playSe( spep_10+8, SE_10);
	
setDamage( spep_10+16, 1, 0);  -- ダメージ振動等
setShake(spep_10+7,6,15);
setShake(spep_10+13,15,10);
	
-- ダメージ表示
dealDamage(spep_10+16);
	
entryFade( spep_10+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
endPhase(spep_10+160);

end
