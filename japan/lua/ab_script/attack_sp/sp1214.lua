--1015290 ピッコロ ミスティックアタック
--sp1214

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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
SP_01 = 152299;	--突進	ef_002 (70F)
SP_02 = 152300;	--格闘	ef_003 (214F)
SP_03 = 152301;	--気溜め	ef_004 (100F)
SP_04 = 152302;	--手伸ばし	ef_005(70F)
SP_05 = 152303;	--手伸ばし 地面突抜け	ef_006(80F)
SP_06 = 152304;	--手伸ばし　奥へ	ef_007(70F)
SP_07 = 152305;	--手伸ばし　右手	ef_008(50F)
SP_08 = 152306;	--手伸ばし　左手	ef_009(50F)

SP_09 = 152331; --ヒットエフェクト

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
spep_1 = 0;

entryFadeBg(spep_1,0,68,0,10,10,10,200);

--entryFade(spep_1,0,0,10,255,255,255,255);　いらない
entryFade(spep_1+48,20,2,0,255,255,255,255);

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, shuchusen1,0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.13, 1.61 );
setEffScaleKey( spep_1 + 68, shuchusen1, 1.13, 1.61 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 68, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 68, shuchusen1, 255 );

--***エフェクト***
Tossin = entryEffectLife(  spep_1,  SP_01, 68, 0x100,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  Tossin,  1.0,  1.0);
setEffScaleKey(  spep_1+68,  Tossin,  1.0,  1.0);
setEffMoveKey(  spep_1,  Tossin,  0,  0);
setEffMoveKey(  spep_1+68,  Tossin,  0,  0);
setEffRotateKey(  spep_1,  Tossin,  0);
setEffRotateKey(  spep_1+68,  Tossin,  0);

playSe(spep_1,SE_04);

------------------------------------------------------
-- 岩山に吹き飛ぶ
------------------------------------------------------
spep_2 = spep_1+68;

entryFadeBg(spep_2,0,168,0,10,10,10,200);

entryFade(spep_2,0,0,10,255,255,255,255);
--entryFade(spep_2+42,0,2,8,255,255,255,255);
--entryFade(spep_2+84,0,2,8,255,255,255,255);
--entryFade(spep_2+132,0,2,8,255,255,255,255);

--敵の動き(書き出し不能)
setDisp(spep_2+12,1,1);

changeAnime(spep_2+12,1,101);

setMoveKey( spep_2 + 12, 1, 519.4, 13 , 0 );
setMoveKey( spep_2 + 14, 1, 486.4, 13 , 0 );
setMoveKey( spep_2 + 16, 1, 431.3, 13 , 0 );
setMoveKey( spep_2 + 18, 1, 354.2, 13 , 0 );
setMoveKey( spep_2 + 20, 1, 255.1, 13 , 0 );
setMoveKey( spep_2 + 22, 1, 133.9, 13 , 0 );
setMoveKey( spep_2 + 24, 1, -9.3, 13 , 0 );

setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 35, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 12, 1, 5.2 );
setRotateKey( spep_2 + 35, 1, 5.2 );

Kakutou = entryEffectLife(  spep_2,  SP_02,168,  0x100,  -1,  0,  0,  0);  --岩山背景

setEffScaleKey(  spep_2,  Kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+168,  Kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  Kakutou,  0,  0);
setEffMoveKey(  spep_2+168,  Kakutou,  0,  0);
setEffRotateKey(  spep_2,  Kakutou,  0);
setEffRotateKey(  spep_2+168,  Kakutou,  0);
setEffAlphaKey(  spep_2,  Kakutou,  255);
setEffAlphaKey(  spep_2+168,  Kakutou,  255);

--流線(横)
ryusen1 = entryEffectLife( spep_2 + 0,  920, 130, 0x80, -1, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, ryusen1, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 130, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 130, ryusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 208, 0x100, -1, 0, 0, 8 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 208, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_2 + 208, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 208, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 208, shuchusen2, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+28 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -9.3, 13 , 0 );
setScaleKey(SP_dodge , 1,1.13, 1.13 );
setRotateKey(SP_dodge,   1, 5.2);

setMoveKey(SP_dodge+8,1, -27.5, 2.6 , 0 );
setScaleKey(SP_dodge+8 , 1,1.13, 1.13 );
setRotateKey(SP_dodge+8,   1, 5.2);

setDisp(SP_dodge+9, 0, 0);

setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );

setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);

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
entryFade(spep_2+160-2,8,4,0,255,255,255,255);

setDisp(spep_2+162-2,1,0);

changeAnime(spep_2-2 +40,1,108);
changeAnime(spep_2-2 +84,1,106);

changeAnime(spep_2-2+134,1,108);
changeAnime(spep_2-2+135,1,108); --131

setMoveKey( spep_2-2  + 40, 1, -27.5, 2.6 , 0 );
setMoveKey( spep_2-2  + 42, 1, 35, 3.9 , 0 );
setMoveKey( spep_2-2  + 44, 1, 24.6, -4.4 , 0 );
setMoveKey( spep_2-2  + 46, 1, 25, 3.3 , 0 );
setMoveKey( spep_2-2  + 48, 1, 6.5, -5 , 0 );
setMoveKey( spep_2-2  + 50, 1, -27.7, 2.6 , 0 );
setMoveKey( spep_2-2  + 52, 1, -42.5, -5.4 , 0 );
setMoveKey( spep_2-2  + 54, 1, -29.6, 1.5 , 0 );
setMoveKey( spep_2-2  + 56, 1, -30.9, -10.9 , 0 );
setMoveKey( spep_2-2  + 58, 1, -18.7, -0.6 , 0 );
setMoveKey( spep_2-2  + 60, 1, -20.3, -9.7 , 0 );
setMoveKey( spep_2-2  + 62, 1, -8.2, -2.8 , 0 );
setMoveKey( spep_2-2  + 64, 1, -9.7, -8.8 , 0 );
setMoveKey( spep_2-2  + 66, 1, 2.2, -4.9 , 0 );
setMoveKey( spep_2-2  + 68, 1, 1.4, -15.3 , 0 );
setMoveKey( spep_2-2  + 70, 1, 13.2, -9.6 , 0 );
setMoveKey( spep_2-2  + 72, 1, 13.3, -16.6 , 0 );
setMoveKey( spep_2-2  + 74, 1, 27.4, -12 , 0 );
setMoveKey( spep_2-2  + 76, 1, 36.3, -13.1 , 0 );
setMoveKey( spep_2-2  + 78, 1, 45.2, -14.2 , 0 );
setMoveKey( spep_2-2  + 80, 1, 54.1, -15.3 , 0 );
setMoveKey( spep_2-2  + 82, 1, 63, -16.5 , 0 );
setMoveKey( spep_2-2  + 84, 1, 94.2, 17.1 , 0 );
setMoveKey( spep_2-2  + 86, 1, 109.7, 21.8 , 0 );
setMoveKey( spep_2-2  + 88, 1, 103.3, 10.7 , 0 );
setMoveKey( spep_2-2  + 90, 1, 103.2, 15.6 , 0 );
setMoveKey( spep_2-2  + 92, 1, 107.5, 3.3 , 0 );
setMoveKey( spep_2-2  + 94, 1, 115.8, 15.2 , 0 );
setMoveKey( spep_2-2  + 96, 1, 112.1, 7.1 , 0 );
setMoveKey( spep_2-2  + 98, 1, 124.4, 15 , 0 );
setMoveKey( spep_2-2  + 100, 1, 124.8, 10.8 , 0 );
setMoveKey( spep_2-2  + 102, 1, 133.1, 14.7 , 0 );
setMoveKey( spep_2-2  + 104, 1, 129.4, 6.6 , 0 );
setMoveKey( spep_2-2  + 106, 1, 141.7, 14.5 , 0 );
setMoveKey( spep_2-2  + 108, 1, 142, 6.4 , 0 );
setMoveKey( spep_2-2  + 110, 1, 149.2, 10.3 , 0 );
setMoveKey( spep_2-2  + 112, 1, 149, 6.2 , 0 );
setMoveKey( spep_2-2  + 114, 1, 163.5, 8.9 , 0 );
setMoveKey( spep_2-2  + 116, 1, 168.1, 6.1 , 0 );
setMoveKey( spep_2-2  + 118, 1, 174.4, 6.1 , 0 );
setMoveKey( spep_2-2  + 120, 1, 180.6, 6.1 , 0 );
setMoveKey( spep_2-2  + 122, 1, 186.9, 6 , 0 );
setMoveKey( spep_2-2  + 124, 1, 193.2, 6 , 0 );
setMoveKey( spep_2-2  + 126, 1, 199.5, 5.9 , 0 );
setMoveKey( spep_2-2  + 128, 1, 205.7, 5.9 , 0 );
setMoveKey( spep_2-2  + 130, 1, 212, 5.8 , 0 );
setMoveKey( spep_2-2  + 132, 1, 218.3, 5.8 , 0 );

setMoveKey( spep_2  + 132, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 133, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 134, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 136, 1, 242.2, -102 , 0 );
setMoveKey( spep_2  + 138, 1, 252.6, -159.3 , 0 );
setMoveKey( spep_2  + 140, 1, 266.2, -176.1 , 0 );
setMoveKey( spep_2  + 142, 1, 257.9, -188.5 , 0 );
setMoveKey( spep_2  + 144, 1, 301.8, -227.9 , 0 );
setMoveKey( spep_2  + 146, 1, 330.5, -288.6 , 0 );
setMoveKey( spep_2  + 148, 1, 374.1, -327.5 , 0 );
setMoveKey( spep_2  + 150, 1, 406.5, -385.3 , 0 );
setMoveKey( spep_2  + 152, 1, 442.6, -435.1 , 0 );
setMoveKey( spep_2  + 154, 1, 478.8, -484.9 , 0 );
setMoveKey( spep_2  + 156, 1, 525.7, -553.9 , 0 );
setMoveKey( spep_2  + 158, 1, 572.6, -622.9 , 0 );
setMoveKey( spep_2  + 160, 1, 619.5, -692 , 0 );
setMoveKey( spep_2  + 162, 1, 666.4, -761 , 0 );

setScaleKey( spep_2-2  + 40, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 42, 1, 1.96, 1.96 );
setScaleKey( spep_2-2  + 44, 1, 1.8, 1.8 );
setScaleKey( spep_2-2  + 46, 1, 1.64, 1.64 );
setScaleKey( spep_2-2  + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2-2  + 50, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 52, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 54, 1, 1.3, 1.3 );
setScaleKey( spep_2-2  + 56, 1, 1.29, 1.29 );
setScaleKey( spep_2-2  + 58, 1, 1.27, 1.27 );
setScaleKey( spep_2-2  + 60, 1, 1.26, 1.26 );
setScaleKey( spep_2-2  + 62, 1, 1.25, 1.25 );
setScaleKey( spep_2-2  + 64, 1, 1.24, 1.24 );
setScaleKey( spep_2-2  + 66, 1, 1.23, 1.23 );
setScaleKey( spep_2-2  + 68, 1, 1.21, 1.21 );
setScaleKey( spep_2-2  + 70, 1, 1.2, 1.2 );
setScaleKey( spep_2-2  + 72, 1, 1.19, 1.19 );
setScaleKey( spep_2-2  + 74, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 76, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 78, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 80, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 82, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 84, 1, 1.91, 1.91 );
setScaleKey( spep_2-2  + 86, 1, 1.67, 1.67 );
setScaleKey( spep_2-2  + 88, 1, 1.44, 1.44 );
setScaleKey( spep_2-2  + 90, 1, 1.21, 1.21 );
setScaleKey( spep_2-2  + 92, 1, 1.19, 1.19 );
setScaleKey( spep_2-2  + 94, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 96, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 98, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 100, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 102, 1, 1.16, 1.16 );
setScaleKey( spep_2-2  + 104, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 106, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 108, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 110, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 112, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 116, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 118, 1, 1.12, 1.12 );
setScaleKey( spep_2-2  + 124, 1, 1.12, 1.12 );
setScaleKey( spep_2-2  + 126, 1, 1.11, 1.11 );
setScaleKey( spep_2-2  + 132, 1, 1.11, 1.11 );

setScaleKey( spep_2  + 132, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 133, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 133, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 134, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 136, 1, 2.11, 2.11 );
setScaleKey( spep_2  + 138, 1, 1.96, 1.96 );
setScaleKey( spep_2  + 140, 1, 1.78, 1.78 );
setScaleKey( spep_2  + 142, 1, 1.78, 1.78 );
setScaleKey( spep_2  + 144, 1, 1.88, 1.88 );
setScaleKey( spep_2  + 146, 1, 1.98, 1.98 );
setScaleKey( spep_2  + 148, 1, 2.08, 2.08 );
setScaleKey( spep_2  + 150, 1, 2.18, 2.18 );
setScaleKey( spep_2  + 152, 1, 2.28, 2.28 );
setScaleKey( spep_2  + 154, 1, 2.38, 2.38 );
setScaleKey( spep_2  + 156, 1, 2.5, 2.5 );
setScaleKey( spep_2  + 158, 1, 2.62, 2.62 );
setScaleKey( spep_2  + 160, 1, 2.74, 2.74 );
setScaleKey( spep_2  + 162, 1, 2.86, 2.86 );

setRotateKey( spep_2-2  + 40, 1, 0.8 );
setRotateKey( spep_2-2  + 83, 1, 0.8 );
setRotateKey( spep_2-2  + 84, 1, -25 ); --調整
setRotateKey( spep_2-2  + 133, 1, -25 );
--setRotateKey( spep_2-2  + 133, 1, 0.8 );
setRotateKey( spep_2-2  + 134, 1, 38.1 );
setRotateKey( spep_2-2  + 135, 1, 38.1 );
setRotateKey( spep_2+2  + 162, 1, 38.1 );

--書き文字
--ドン
ctDon = entryEffectLife( spep_2-2 + 42,  10019, 16, 0x100, -1, 0, -112.9, 185.9 );
setEffMoveKey( spep_2-2 + 42, ctDon, -112.9, 185.9 , 0 );
setEffMoveKey( spep_2-2 + 44, ctDon, -125.5, 204.3 , 0 );
setEffMoveKey( spep_2-2 + 46, ctDon, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2-2 + 48, ctDon, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2-2 + 50, ctDon, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2-2 + 52, ctDon, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2-2 + 54, ctDon, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2-2 + 56, ctDon, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2-2 + 58, ctDon, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2-2 + 42, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_2-2 + 44, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_2-2 + 46, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_2-2 + 48, ctDon, 2, 2 );
setEffScaleKey( spep_2-2 + 50, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_2-2 + 52, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_2-2 + 54, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_2-2 + 56, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_2-2 + 58, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_2-2 + 42, ctDon, -0.8 );
setEffRotateKey( spep_2-2 + 44, ctDon, -0.2 );
setEffRotateKey( spep_2-2 + 46, ctDon, 0.3 );

setEffAlphaKey( spep_2-2 + 42, ctDon, 255 );
setEffAlphaKey( spep_2-2 + 52, ctDon, 255 );
setEffAlphaKey( spep_2-2 + 54, ctDon, 170 );
setEffAlphaKey( spep_2-2 + 56, ctDon, 85 );
setEffAlphaKey( spep_2-2 + 58, ctDon, 0 );

playSe( spep_2-4 + 42,1009);

--ガ
ctGa = entryEffectLife( spep_2-2 + 84,  10005, 26, 0x100, -1, 0, -62.5, 265.9 );
setEffMoveKey( spep_2-2 + 84, ctGa, -62.5, 265.9 , 0 );
setEffMoveKey( spep_2-2 + 86, ctGa, -62.5, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 88, ctGa, -62.8, 266.1 , 0 );
setEffMoveKey( spep_2-2 + 90, ctGa, -62.8, 266 , 0 );
setEffMoveKey( spep_2-2 + 92, ctGa, -62.7, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 94, ctGa, -62.7, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 96, ctGa, -62.6, 266 , 0 );
setEffMoveKey( spep_2-2 + 98, ctGa, -62.5, 266 , 0 );
setEffMoveKey( spep_2-2 + 104, ctGa, -62.5, 266 , 0 );
setEffMoveKey( spep_2-2 + 106, ctGa, -62.6, 266 , 0 );
setEffMoveKey( spep_2-2 + 110, ctGa, -62.6, 266 , 0 );

setEffScaleKey( spep_2-2 + 84, ctGa, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 86, ctGa, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 88, ctGa, 2.48, 2.48 );
setEffScaleKey( spep_2-2 + 90, ctGa, 2.36, 2.36 );
setEffScaleKey( spep_2-2 + 92, ctGa, 2.24, 2.24 );
setEffScaleKey( spep_2-2 + 94, ctGa, 2.12, 2.12 );
setEffScaleKey( spep_2-2 + 96, ctGa, 2.01, 2.01 );
setEffScaleKey( spep_2-2 + 98, ctGa, 2, 2 );
setEffScaleKey( spep_2-2 + 100, ctGa, 1.99, 1.99 );
setEffScaleKey( spep_2-2 + 102, ctGa, 1.98, 1.98 );
setEffScaleKey( spep_2-2 + 104, ctGa, 1.97, 1.97 );
setEffScaleKey( spep_2-2 + 106, ctGa, 1.96, 1.96 );
setEffScaleKey( spep_2-2 + 108, ctGa, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 110, ctGa, 1.94, 1.94 );

setEffRotateKey( spep_2-2 + 84, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 86, ctGa, -38 );
setEffRotateKey( spep_2-2 + 88, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 90, ctGa, -16.1 );
setEffRotateKey( spep_2-2 + 92, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 94, ctGa, -35.5 );
setEffRotateKey( spep_2-2 + 96, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 98, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 100, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 102, ctGa, -24.7 );
setEffRotateKey( spep_2-2 + 106, ctGa, -24.7 );
setEffRotateKey( spep_2-2 + 108, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 110, ctGa, -24.6 );

setEffAlphaKey( spep_2-2 + 84, ctGa, 255 );
setEffAlphaKey( spep_2-2 + 98, ctGa, 255 );
setEffAlphaKey( spep_2-2 + 100, ctGa, 213 );
setEffAlphaKey( spep_2-2 + 102, ctGa, 170 );
setEffAlphaKey( spep_2-2 + 104, ctGa, 128 );
setEffAlphaKey( spep_2-2 + 106, ctGa, 85 );
setEffAlphaKey( spep_2-2 + 108, ctGa, 42 );
setEffAlphaKey( spep_2-2 + 110, ctGa, 0 );

playSe( spep_2-4 + 84,1010);

--ばき
ctBaki = entryEffectLife( spep_2-3 + 134,  10020, 23, 0x100, -1, 0, 229.5, 383 );
setEffMoveKey( spep_2-3 + 134, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_2-2 + 134, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_2-2 + 136, ctBaki, 224.5, 353.2 , 0 );
setEffMoveKey( spep_2-2 + 138, ctBaki, 204.7, 347.2 , 0 );
setEffMoveKey( spep_2-2 + 140, ctBaki, 198.8, 356 , 0 );
setEffMoveKey( spep_2-2 + 142, ctBaki, 208.7, 352.6 , 0 );
setEffMoveKey( spep_2-2 + 144, ctBaki, 220.2, 349.9 , 0 );
setEffMoveKey( spep_2-2 + 146, ctBaki, 212.1, 357.8 , 0 );
setEffMoveKey( spep_2-2 + 148, ctBaki, 212.9, 358.9 , 0 );
setEffMoveKey( spep_2-2 + 150, ctBaki, 213.6, 359.9 , 0 );
setEffMoveKey( spep_2-2 + 152, ctBaki, 214.3, 360.9 , 0 );
setEffMoveKey( spep_2-2 + 154, ctBaki, 215.1, 362 , 0 );
setEffMoveKey( spep_2-2 + 156, ctBaki, 215.8, 363 , 0 );

setEffScaleKey( spep_2-3 + 134, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 134, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 136, ctBaki, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 138, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_2-2 + 140, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_2-2 + 142, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_2-2 + 144, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_2-2 + 146, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_2-2 + 148, ctBaki, 1.96, 1.96 );
setEffScaleKey( spep_2-2 + 150, ctBaki, 1.92, 1.92 );
setEffScaleKey( spep_2-2 + 152, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_2-2 + 154, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_2-2 + 156, ctBaki, 1.78, 1.78 );

setEffRotateKey( spep_2-3 + 134, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 134, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 136, ctBaki, 21.1 );
setEffRotateKey( spep_2-2 + 138, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 140, ctBaki, 43.1 );
setEffRotateKey( spep_2-2 + 142, ctBaki, 34.3 );
setEffRotateKey( spep_2-2 + 144, ctBaki, 23.6 );
setEffRotateKey( spep_2-2 + 146, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 156, ctBaki, 34.5 );

setEffAlphaKey( spep_2-3 + 134, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 134, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 146, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 148, ctBaki, 204 );
setEffAlphaKey( spep_2-2 + 150, ctBaki, 153 );
setEffAlphaKey( spep_2-2 + 152, ctBaki, 102 );
setEffAlphaKey( spep_2-2 + 154, ctBaki, 51 );
setEffAlphaKey( spep_2-2 + 156, ctBaki, 0 );

playSe( spep_2-3 + 134,1011);

--流線(斜め)
rhuusen2 = entryEffectLife( spep_2-3 + 134,  921, 39, 0x80, -1, 0, -0.1, -6.3 );

setEffMoveKey( spep_2-3 + 134, rhuusen2, -0.1, -6.3 , 0 );
setEffMoveKey( spep_2-2 + 134, rhuusen2, -0.1, -6.3 , 0 );
setEffMoveKey( spep_2 + 170, rhuusen2, -0.1, -6.3 , 0 );

setEffScaleKey( spep_2-3 + 134, rhuusen2,  1.5, 1.75 );
setEffScaleKey( spep_2-2 + 134, rhuusen2,  1.5, 1.75 );
setEffScaleKey( spep_2 + 170, rhuusen2,  1.5, 1.75 );

setEffRotateKey( spep_2-3 + 134, rhuusen2, -135 );
setEffRotateKey( spep_2-2 + 134, rhuusen2, -135 );
setEffRotateKey( spep_2 + 170, rhuusen2, -135 );

setEffAlphaKey( spep_2-3 + 134, rhuusen2, 255 );
setEffAlphaKey( spep_2-2 + 134, rhuusen2, 255 );
setEffAlphaKey( spep_2 + 170, rhuusen2, 255 );

------------------------------------------------------
--気溜め
------------------------------------------------------
spep_3 = spep_2+168;

entryFadeBg(spep_3,0,98,0,10,10,10,200);
entryFade(spep_3,0,2,8,255,255,255,255);
entryFade(spep_3+92,4,4,4,255,255,255,255);

Kidame = entryEffectLife(  spep_3+2,  SP_03,96,  0x100,  -1,  0,  0,  0);  --高速移動

setEffScaleKey(  spep_3+2,  Kidame,  1.0,  1.0);
setEffScaleKey(  spep_3+98,  Kidame,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  Kidame,  0,  0);
setEffMoveKey(  spep_3+98,  Kidame,  0,  0);
setEffRotateKey(  spep_3+2,  Kidame,  0);
setEffRotateKey(  spep_3+98,  Kidame,  0);

--顔カットインセット spep_3+40;
ctgogo = entryEffectLife( spep_3+50, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_3+50, ctgogo, 70, 8);
setEffScaleKey(spep_3+50, ctgogo, 0.7, 0.7);

speff = entryEffect(  spep_3+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.55, 1.55 );
setEffScaleKey( spep_3 + 98, shuchusen3, 1.55, 1.55 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 98, shuchusen3, 180 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen3, 255 );

playSe(spep_3,SE_01);
playSe(spep_3+50,SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_4 = spep_3+98;

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+85, 3, 6,  3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 手伸ばし
------------------------------------------------------
spep_5 = spep_4+90;

entryFadeBg(spep_5,0,70,0,10,10,10,200);
--entryFade(spep_5+26,0,2,6,255,255,255,255); 抜いてみる
entryFade(spep_5+60,8,2,2,255,255,255,255);

--書き文字
ctgyun = entryEffectLife( spep_5 + 28,  10007, 40, 0x100, -1, 0, 81.5, -305.9 );--ギュンッ

setEffMoveKey( spep_5 + 28, ctgyun, 81.5, -305.9 , 0 );
setEffMoveKey( spep_5 + 30, ctgyun, 77.5, -344.1 , 0 );
setEffMoveKey( spep_5 + 32, ctgyun, 68.5, -323.2 , 0 );
setEffMoveKey( spep_5 + 34, ctgyun, 64.2, -358 , 0 );
setEffMoveKey( spep_5 + 36, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 38, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 40, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 42, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 44, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 46, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 48, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 50, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 52, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 54, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 56, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 58, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 60, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 62, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 64, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 66, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 68, ctgyun, 55.5, -340.5 , 0 );

setEffScaleKey( spep_5 + 28, ctgyun, 3.52, 3.52 );
setEffScaleKey( spep_5 + 30, ctgyun, 3.32, 3.32 );
setEffScaleKey( spep_5 + 32, ctgyun, 3.13, 3.13 );
setEffScaleKey( spep_5 + 34, ctgyun, 2.94, 2.94 );
setEffScaleKey( spep_5 + 36, ctgyun, 2.75, 2.75 );
setEffScaleKey( spep_5 + 68, ctgyun, 2.75, 2.75 );

setEffRotateKey( spep_5 + 28, ctgyun, -20.2 );
setEffRotateKey( spep_5 + 68, ctgyun, -20.2 );

setEffAlphaKey( spep_5 + 28, ctgyun, 255 );
setEffAlphaKey( spep_5 + 68, ctgyun, 255 );


--流線(斜め)
rhuusen5 = entryEffectLife( spep_5 + 2,  921, 66, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_5 + 2, rhuusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, rhuusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 2, rhuusen5, 1.53, 1.75 );
setEffScaleKey( spep_5 + 68, rhuusen5, 1.53, 1.75 );

setEffRotateKey( spep_5 + 2, rhuusen5, -135 );
setEffRotateKey( spep_5 + 68, rhuuse5, -135 );

setEffAlphaKey( spep_5 + 2, rhuusen5, 255 );
setEffAlphaKey( spep_5 + 68, rhuusen5, 255 );

playSe(spep_5+28,44);

Tenobe = entryEffectLife(  spep_5+2, SP_04, 66, 0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_5+2,  Tenobe,  1.0,  1.0);
setEffScaleKey(  spep_5+68,  Tenobe,  1.0,  1.0);
setEffMoveKey(  spep_5+2,  Tenobe,  0,  0);
setEffMoveKey(  spep_5+68,  Tenobe,  0,  0);
setEffRotateKey(  spep_5+2,  Tenobe,  0);
setEffRotateKey(  spep_5+68,  Tenobe,  0);
------------------------------------------------------s
-- 手伸ばし(地面)
------------------------------------------------------
spep_6 = spep_5+70;

entryFadeBg(spep_6,0,78,0,10,10,10,200);

--白フェイド抜け
--entryFade(spep_6+4,2,6,2,255,255,255,255); --抜いてみる
--entryFade(spep_6+70,8,2,0,255,255,255,255); --抜いてみる
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 22, 1, 0)

changeAnime( spep_6 + 0, 1, 108 );
setMoveKey( spep_6 + 0, 1, 28.1, -17.5 , 0 );
setMoveKey( spep_6 + 2, 1, 40.8, -32.3 , 0 );
setMoveKey( spep_6 + 4, 1, 53.5, -47.1 , 0 );
setMoveKey( spep_6 + 6, 1, 66.2, -61.9 , 0 );
setMoveKey( spep_6 + 8, 1, 78.9, -76.8 , 0 );
setMoveKey( spep_6 + 10, 1, 91.6, -91.6 , 0 );
setMoveKey( spep_6 + 12, 1, 294.2, -111.7 , 0 );
setMoveKey( spep_6 + 14, 1, 414.4, -79.4 , 0 );
setMoveKey( spep_6 + 16, 1, 506.6, -50.3 , 0 );
setMoveKey( spep_6 + 18, 1, 571.4, -24.7 , 0 );
setMoveKey( spep_6 + 20, 1, 609.1, -3.1 , 0 );
setMoveKey( spep_6 + 22, 1, 708.1, 16.5 , 0 );
setMoveKey( spep_6 + 24, 1, 805.4, 36.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.38, 2.38 );
setScaleKey( spep_6 + 2, 1, 2.42, 2.42 );
setScaleKey( spep_6 + 4, 1, 2.47, 2.47 );
setScaleKey( spep_6 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 8, 1, 2.57, 2.57 );
setScaleKey( spep_6 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 12, 1, 4.03, 4.03 );
setScaleKey( spep_6 + 14, 1, 3.79, 3.79 );
setScaleKey( spep_6 + 16, 1, 3.53, 3.53 );
setScaleKey( spep_6 + 18, 1, 3.25, 3.25 );
setScaleKey( spep_6 + 20, 1, 2.96, 2.96 );
setScaleKey( spep_6 + 22, 1, 3.03, 3.03 );
setScaleKey( spep_6 + 24, 1, 3.09, 3.09 );

setRotateKey( spep_6 + 0, 1, 40.1 );
setRotateKey( spep_6 + 10, 1, 40.1 );
setRotateKey( spep_6 + 12, 1, 34.5 );
setRotateKey( spep_6 + 14, 1, 28.9 );
setRotateKey( spep_6 + 16, 1, 23.3 );
setRotateKey( spep_6 + 18, 1, 17.6 );
setRotateKey( spep_6 + 20, 1, 12 );
setRotateKey( spep_6 + 22, 1, 6.4 );
setRotateKey( spep_6 + 24, 1, 0.8 );

--書き文字
--ドン
ctDon = entryEffectLife( spep_6-6 + 12,  10019, 20, 0x100, -1, 0, 33.1, 280.7 );
setEffMoveKey( spep_6-6 + 12, ctDon, 33.1, 280.7 , 0 );
setEffMoveKey( spep_6-6 + 14, ctDon, 13.3, 282.3 , 0 );
setEffMoveKey( spep_6-6 + 16, ctDon, 22.9, 275.1 , 0 );
setEffMoveKey( spep_6-6 + 18, ctDon, 10.9, 256 , 0 );
setEffMoveKey( spep_6-6 + 20, ctDon, 22.4, 219.1 , 0 );
setEffMoveKey( spep_6-6 + 22, ctDon, 10.3, 218.2 , 0 );
setEffMoveKey( spep_6-6 + 24, ctDon, 16.6, 225.9 , 0 );
setEffMoveKey( spep_6-6+ 26, ctDon, 16.8, 213.4 , 0 );
setEffMoveKey( spep_6-6 + 28, ctDon, 12.7, 227 , 0 );
setEffMoveKey( spep_6-6 + 30, ctDon, 17.8, 217.7 , 0 );
setEffMoveKey( spep_6-6 + 32, ctDon, 17.8, 217.7 , 0 );

setEffScaleKey( spep_6-6 + 12, ctDon, 1.93, 1.93 );
setEffScaleKey( spep_6-6 + 14, ctDon, 2.24, 2.24 );
setEffScaleKey( spep_6-6 + 16, ctDon, 2.48, 2.48 );
setEffScaleKey( spep_6-6 + 18, ctDon, 2.25, 2.25 );
setEffScaleKey( spep_6-6 + 20, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_6-6 + 22, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_6-6 + 24, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_6-6 + 26, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_6-6 + 28, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_6-6 + 30, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_6-6 + 32, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_6-6 + 12, ctDon, -0.8 );
setEffRotateKey( spep_6-6 + 14, ctDon, -0.2 );
setEffRotateKey( spep_6-6 + 16, ctDon, 0.3 );
setEffRotateKey( spep_6-6 + 32, ctDon, 0.3 );

setEffAlphaKey( spep_6-6 + 12, ctDon, 255 );
setEffAlphaKey( spep_6-6 + 22, ctDon, 255 );
setEffAlphaKey( spep_6-6 + 24, ctDon, 204 );
setEffAlphaKey( spep_6-6 + 26, ctDon, 153 );
setEffAlphaKey( spep_6-6 + 28, ctDon, 102 );
setEffAlphaKey( spep_6-6 + 30, ctDon, 51 );
setEffAlphaKey( spep_6-6 + 32, ctDon, 0 );

playSe(spep_6+12,1009);

Hiteffect = entryEffectLife(  spep_6, SP_09, 38, 0x100,  -1,  0,  0,  0); 

setEffScaleKey(  spep_6,  Hiteffect,  1.0,  1.0);
setEffScaleKey(  spep_6+38,  Hiteffect,  1.0,  1.0);
setEffMoveKey(  spep_6,  Hiteffect,  0,  0);
setEffMoveKey(  spep_6+38,  Hiteffect,  0,  0);
setEffRotateKey(  spep_6,  Hiteffect,  0);
setEffRotateKey(  spep_6+38,  Hiteffect,  0);

--流線(斜め)
rhuusen6 = entryEffectLife( spep_6 + 0,  921, 78, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_6 + 0, rhuusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, rhuusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, rhuusen6, 1.53, 1.75 );
setEffScaleKey( spep_6 + 78, rhuusen6, 1.53, 1.75 );

setEffRotateKey( spep_6 + 0, rhuusen6, -135 );
setEffRotateKey( spep_6 + 78, rhuusen6, -135 );

setEffAlphaKey( spep_6 + 0, rhuusen6, 255 );
setEffAlphaKey( spep_6 + 78, rhuusen6, 255 );

Tenobag = entryEffectLife(  spep_6, SP_05, 78, 0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_6,  Tenobag,  1.0,  1.0);
setEffScaleKey(  spep_6+78,  Tenobag,  1.0,  1.0);
setEffMoveKey(  spep_6,  Tenobag,  0,  0);
setEffMoveKey(  spep_6+78,  Tenobag,  0,  0);
setEffRotateKey(  spep_6,  Tenobag,  0);
setEffRotateKey(  spep_6+78,  Tenobag,  0);

--entryFade(spep_6+54,2,4,0,255,255,255,255);　--抜いてみる
--ズボ
ctZubo = entryEffectLife( spep_6 + 60,  10035, 18, 0x100, -1, 0, -29.4, -358.9 );
setEffMoveKey( spep_6 + 60, ctZubo, -29.4, -358.9 , 0 );
setEffMoveKey( spep_6 + 62, ctZubo, -53.7, -336.3 , 0 );
setEffMoveKey( spep_6 + 64, ctZubo, 12.3, -358.1 , 0 );
setEffMoveKey( spep_6 + 66, ctZubo, -19.2, -294.7 , 0 );
setEffMoveKey( spep_6 + 68, ctZubo, -7, -293.4 , 0 );
setEffMoveKey( spep_6 + 70, ctZubo, -17.1, -290 , 0 );
setEffMoveKey( spep_6 + 72, ctZubo, -12.2, -286.8 , 0 );
setEffMoveKey( spep_6 + 74, ctZubo, -13.9, -301 , 0 );
setEffMoveKey( spep_6 + 76, ctZubo, -19.9, -289 , 0 );
setEffMoveKey( spep_6 + 78, ctZubo, -21.8, -290.7 , 0 );

setEffScaleKey( spep_6 + 60, ctZubo, 1.45, 1.45 );
setEffScaleKey( spep_6 + 62, ctZubo, 1.74, 1.74 );
setEffScaleKey( spep_6 + 64, ctZubo, 2.14, 2.14 );
setEffScaleKey( spep_6 + 66, ctZubo, 2.04, 2.04 );
setEffScaleKey( spep_6 + 68, ctZubo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 70, ctZubo, 2.04, 2.04 );
setEffScaleKey( spep_6 + 72, ctZubo, 2.05, 2.05 );
setEffScaleKey( spep_6 + 74, ctZubo, 2.05, 2.05 );
setEffScaleKey( spep_6 + 76, ctZubo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 78, ctZubo, 2.07, 2.07 );

setEffRotateKey( spep_6 + 60, ctZubo, -0.8 );
setEffRotateKey( spep_6 + 62, ctZubo, -0.2 );
setEffRotateKey( spep_6 + 64, ctZubo, 0.3 );
setEffRotateKey( spep_6 + 78, ctZubo, 0.3 );

setEffAlphaKey( spep_6 + 60, ctZubo, 255 );
setEffAlphaKey( spep_6 + 70, ctZubo, 255 );
setEffAlphaKey( spep_6 + 72, ctZubo, 191 );
setEffAlphaKey( spep_6 + 74, ctZubo, 128 );
setEffAlphaKey( spep_6 + 76, ctZubo, 64 );
setEffAlphaKey( spep_6 + 78, ctZubo, 0 );

Seid=playSe(spep_6+60,1044);
------------------------------------------------------
-- 手伸ばし　奥へ
------------------------------------------------------
spep_7 = spep_6+78;

entryFadeBg(spep_7,0,68,0,10,10,10,200);
entryFade(spep_7+60,8,4,0,255,255,255,255);
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, 66.9, 309.5 , 0 );
setMoveKey( spep_7 + 2, 1, 65.7, 310 , 0 );
setMoveKey( spep_7 + 4, 1, 64.8, 310.4 , 0 );
setMoveKey( spep_7 + 6, 1, 64.1, 310.7 , 0 );
setMoveKey( spep_7 + 8, 1, 63.6, 310.9 , 0 );
setMoveKey( spep_7 + 10, 1, 63.3, 311 , 0 );
setMoveKey( spep_7 + 12, 1, 63.2, 311.1 , 0 );
setMoveKey( spep_7 + 14, 1, 62.5, 308.5 , 0 );
setMoveKey( spep_7 + 16, 1, 61.7, 305.9 , 0 );
setMoveKey( spep_7 + 18, 1, 61, 303.3 , 0 );
setMoveKey( spep_7 + 20, 1, 60.3, 300.8 , 0 );
setMoveKey( spep_7 + 22, 1, 59.6, 298.2 , 0 );
setMoveKey( spep_7 + 24, 1, 58.8, 295.6 , 0 );
setMoveKey( spep_7 + 26, 1, 58.1, 293 , 0 );
setMoveKey( spep_7 + 28, 1, 57.4, 290.5 , 0 );
setMoveKey( spep_7 + 30, 1, 56.7, 287.9 , 0 );
setMoveKey( spep_7 + 32, 1, 55.7, 284.8 , 0 );
setMoveKey( spep_7 + 34, 1, 54.8, 281.8 , 0 );
setMoveKey( spep_7 + 36, 1, 53.8, 278.8 , 0 );
setMoveKey( spep_7 + 38, 1, 52.9, 275.7 , 0 );
setMoveKey( spep_7 + 40, 1, 52, 272.7 , 0 );
setMoveKey( spep_7 + 42, 1, 51.9, 267.3 , 0 );
setMoveKey( spep_7 + 44, 1, 51.9, 262 , 0 );
setMoveKey( spep_7 + 46, 1, 51.9, 256.6 , 0 );
setMoveKey( spep_7 + 48, 1, 51.8, 251.2 , 0 );
setMoveKey( spep_7 + 50, 1, 51.8, 245.9 , 0 );
setMoveKey( spep_7 + 52, 1, 51.7, 240.5 , 0 );
setMoveKey( spep_7 + 54, 1, 51.7, 235.1 , 0 );
setMoveKey( spep_7 + 56, 1, 51.7, 226.6 , 0 );
setMoveKey( spep_7 + 58, 1, 51.6, 218.1 , 0 );
setMoveKey( spep_7 + 60, 1, 51.6, 209.6 , 0 );
setMoveKey( spep_7 + 62, 1, 51.6, 201.1 , 0 );
setMoveKey( spep_7 + 64, 1, 51.5, 192.6 , 0 );
setMoveKey( spep_7 + 66, 1, 51.5, 184.1 , 0 );
setMoveKey( spep_7 + 68, 1, 51.4, 175.6 , 0 );

setScaleKey( spep_7 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_7 + 2, 1, 2.26, 2.26 );
setScaleKey( spep_7 + 4, 1, 2.18, 2.18 );
setScaleKey( spep_7 + 6, 1, 2.13, 2.13 );
setScaleKey( spep_7 + 8, 1, 2.08, 2.08 );
setScaleKey( spep_7 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_7 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_7 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_7 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_7 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 20, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_7 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_7 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_7 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_7 + 30, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 32, 1, 1.72, 1.72 );
setScaleKey( spep_7 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_7 + 36, 1, 1.66, 1.66 );
setScaleKey( spep_7 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_7 + 40, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_7 + 44, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_7 + 48, 1, 1.51, 1.51 );
setScaleKey( spep_7 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_7 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 56, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_7 + 60, 1, 1.39, 1.39 );
setScaleKey( spep_7 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 64, 1, 1.34, 1.34 );
setScaleKey( spep_7 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_7 + 68, 1, 1.3, 1.3 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 68, 1, 0 );

Tenobaoku = entryEffectLife(  spep_7,  SP_06, 68,0x100,  -1,  0,  0,  0);  --フリーザ激突

setEffScaleKey(  spep_7,  Tenobaoku,  1.0,  1.0);
setEffScaleKey(  spep_7+68,  Tenobaoku,  1.0,  1.0);
setEffMoveKey(  spep_7,  Tenobaoku,  0,  0);
setEffMoveKey(  spep_7+68,  Tenobaoku,  0,  0);
setEffRotateKey(  spep_7,  Tenobaoku,  0);
setEffRotateKey(  spep_7+68,  Tenobaoku,  0);
setEffAlphaKey(  spep_7,  Tenobaoku,  255);
setEffAlphaKey(  spep_7+68,  Tenobaoku,  255);

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 68, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.4, 1.75 );
setEffScaleKey( spep_7 + 68, shuchusen7, 1.4, 1.75 );

setEffRotateKey( spep_7 + 0, shuchusen7, 0 );
setEffRotateKey( spep_7 + 68, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 68, shuchusen7, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_7 + 22,  10014, 32, 0x100, -1, 0, 24.7, -261.7 );--ズドドドッ

setEffMoveKey( spep_7 + 22, ctzudododo, 24.7, -261.7 , 0 );
setEffMoveKey( spep_7 + 24, ctzudododo, 23.9, -240.8 , 0 );
setEffMoveKey( spep_7 + 26, ctzudododo, 23.7, -251 , 0 );
setEffMoveKey( spep_7 + 28, ctzudododo, 22.9, -230 , 0 );
setEffMoveKey( spep_7 + 30, ctzudododo, 22.7, -240.4 , 0 );
setEffMoveKey( spep_7 + 32, ctzudododo, 21.9, -219.3 , 0 );
setEffMoveKey( spep_7 + 34, ctzudododo, 21.7, -229.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzudododo, 20.8, -208.5 , 0 );
setEffMoveKey( spep_7 + 38, ctzudododo, 20.7, -219.1 , 0 );
setEffMoveKey( spep_7 + 40, ctzudododo, 19.8, -197.7 , 0 );
setEffMoveKey( spep_7 + 42, ctzudododo, 19.7, -208.4 , 0 );
setEffMoveKey( spep_7 + 44, ctzudododo, 18.8, -187 , 0 );
setEffMoveKey( spep_7 + 46, ctzudododo, 18.7, -197.8 , 0 );
setEffMoveKey( spep_7 + 48, ctzudododo, 17.8, -176.2 , 0 );
setEffMoveKey( spep_7 + 50, ctzudododo, 17.7, -187.1 , 0 );
setEffMoveKey( spep_7 + 52, ctzudododo, 16.8, -165.4 , 0 );
setEffMoveKey( spep_7 + 54, ctzudododo, 16.6, -176.5 , 0 );
--setEffMoveKey( spep_7 + 56, ctzudododo, 16.1, -171.1 , 0 );

setEffScaleKey( spep_7 + 22, ctzudododo, 2.74, 2.74 );
setEffScaleKey( spep_7 + 24, ctzudododo, 2.75, 2.75 );
setEffScaleKey( spep_7 + 26, ctzudododo, 2.76, 2.76 );
setEffScaleKey( spep_7 + 28, ctzudododo, 2.77, 2.77 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.77, 2.77 );

setEffScaleKey( spep_7 + 30, ctzudododo, 2.78, 2.78 );
setEffScaleKey( spep_7 + 32, ctzudododo, 2.79, 2.79 );
setEffScaleKey( spep_7 + 34, ctzudododo, 2.8, 2.8 );
setEffScaleKey( spep_7 + 36, ctzudododo, 2.81, 2.81 );
setEffScaleKey( spep_7 + 38, ctzudododo, 2.82, 2.82 );
setEffScaleKey( spep_7 + 40, ctzudododo, 2.83, 2.83 );
setEffScaleKey( spep_7 + 42, ctzudododo, 2.84, 2.84 );
setEffScaleKey( spep_7 + 44, ctzudododo, 2.85, 2.85 );
setEffScaleKey( spep_7 + 46, ctzudododo, 2.86, 2.86 );
setEffScaleKey( spep_7 + 48, ctzudododo, 2.87, 2.87 );
setEffScaleKey( spep_7 + 50, ctzudododo, 2.88, 2.88 );
setEffScaleKey( spep_7 + 52, ctzudododo, 2.89, 2.89 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.9, 2.9 );
--setEffScaleKey( spep_7 + 56, ctzudododo, 2.91, 2.91 );

setEffRotateKey( spep_7 + 22, ctzudododo, 16.4 );
setEffRotateKey( spep_7 + 54, ctzudododo, 16.4 );
--setEffRotateKey( spep_7 + 56, ctzudododo, 16.4 );

setEffAlphaKey( spep_7 + 22, ctzudododo, 14 );
setEffAlphaKey( spep_7 + 24, ctzudododo, 28 );
setEffAlphaKey( spep_7 + 26, ctzudododo, 43 );
setEffAlphaKey( spep_7 + 28, ctzudododo, 57 );
setEffAlphaKey( spep_7 + 30, ctzudododo, 71 );
setEffAlphaKey( spep_7 + 32, ctzudododo, 85 );
setEffAlphaKey( spep_7 + 34, ctzudododo, 99 );
setEffAlphaKey( spep_7 + 36, ctzudododo, 113 );
setEffAlphaKey( spep_7 + 38, ctzudododo, 128 );
setEffAlphaKey( spep_7 + 40, ctzudododo, 142 );
setEffAlphaKey( spep_7 + 42, ctzudododo, 156 );
setEffAlphaKey( spep_7 + 44, ctzudododo, 170 );
setEffAlphaKey( spep_7 + 46, ctzudododo, 184 );
setEffAlphaKey( spep_7 + 48, ctzudododo, 198 );
setEffAlphaKey( spep_7 + 50, ctzudododo, 213 );
setEffAlphaKey( spep_7 + 52, ctzudododo, 227 );
setEffAlphaKey( spep_7 + 54, ctzudododo, 241 );
--setEffAlphaKey( spep_7 + 56, ctzudododo, 255 );

--文字エントリー
ctzan = entryEffectLife( spep_7 + 55,  10010, 13, 0x100, -1, 0, 27.7, -246.9 );--ザンッ
setEffMoveKey( spep_7 + 55, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 56, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 58, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 60, ctzan, 16.7, -233.6 , 0 );
setEffMoveKey( spep_7 + 62, ctzan, 30.7, -229.6 , 0 );
setEffMoveKey( spep_7 + 64, ctzan, 19.4, -225.3 , 0 );
setEffMoveKey( spep_7 + 66, ctzan, 23.2, -208 , 0 );
setEffMoveKey( spep_7 + 68, ctzan, 26.8, -211.3 , 0 );

setEffScaleKey( spep_7 + 55, ctzan, 2, 2 );
setEffScaleKey( spep_7 + 68, ctzan, 2, 2 );

setEffRotateKey( spep_7 + 55, ctzan, -16 );
setEffRotateKey( spep_7 + 68, ctzan, -16 );

setEffAlphaKey( spep_7 + 55, ctzan, 255 );
setEffAlphaKey( spep_7 + 68, ctzan, 255 );

stopSe(spep_7+56,Seid,0);
------------------------------------------------------
-- 手伸ばし(左右)
------------------------------------------------------
spep_8 = spep_7+68;

entryFadeBg(spep_8,0,48,0,10,10,10,200);
entryFade(spep_8+1,0,0,8,255,255,255,230);
entryFade(spep_8+40,8,4,8,255,255,255,255);

setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 48, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 + 20, 1, 105 );

--敵の動き
setMoveKey( spep_8 + 0, 1, -155.9, 234.1 , 0 );
setMoveKey( spep_8 + 2, 1, -124.4, 213.5 , 0 );
setMoveKey( spep_8 + 4, 1, -92.8, 192.8 , 0 );
setMoveKey( spep_8 + 6, 1, -61, 172 , 0 );
setMoveKey( spep_8 + 8, 1, -29.1, 151 , 0 );
setMoveKey( spep_8 + 10, 1, 2.9, 129.8 , 0 );
setMoveKey( spep_8 + 12, 1, 35.1, 108.5 , 0 );
setMoveKey( spep_8 + 14, 1, 67.3, 87 , 0 );
setMoveKey( spep_8 + 16, 1, 99.7, 65.4 , 0 );
setMoveKey( spep_8 + 19, 1, 170.6, 56.5 , 0 );
setMoveKey( spep_8 + 20, 1, 330.5, 14.3 , 0 );
setMoveKey( spep_8 + 22, 1, 319.6, 84.6 , 0 );
setMoveKey( spep_8 + 24, 1, 308.4, 148.6 , 0 );
setMoveKey( spep_8 + 26, 1, 297.1, 205.9 , 0 );
setMoveKey( spep_8 + 28, 1, 296.8, 206.9 , 0 );
setMoveKey( spep_8 + 30, 1, 313.6, 220 , 0 );
setMoveKey( spep_8 + 32, 1, 331.1, 233.4 , 0 );
setMoveKey( spep_8 + 34, 1, 332.4, 232.1 , 0 );
setMoveKey( spep_8 + 36, 1, 333.7, 230.8 , 0 );
setMoveKey( spep_8 + 38, 1, 335, 229.5 , 0 );
setMoveKey( spep_8 + 40, 1, 336.4, 228.2 , 0 );
setMoveKey( spep_8 + 42, 1, 337.8, 227 , 0 );
setMoveKey( spep_8 + 44, 1, 339.3, 225.8 , 0 );
setMoveKey( spep_8 + 46, 1, 340.8, 224.6 , 0 );
setMoveKey( spep_8 + 48, 1, 342.4, 223.4 , 0 );

setScaleKey( spep_8 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_8 + 2, 1, 1.78, 1.78 );
setScaleKey( spep_8 + 4, 1, 1.85, 1.85 );
setScaleKey( spep_8 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_8 + 8, 1, 2, 2 );
setScaleKey( spep_8 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 12, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_8 + 16, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 19, 1, 3.09, 3.09 );
setScaleKey( spep_8 + 20, 1, 2.48, 2.48 );
setScaleKey( spep_8 + 22, 1, 2.16, 2.16 );
setScaleKey( spep_8 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_8 + 26, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 32, 1, 1, 1 );
setScaleKey( spep_8 + 34, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_8 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 40, 1, 0.9, 0.9 );
setScaleKey( spep_8 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_8 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_8 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 48, 1, 0.8, 0.8 );

setRotateKey( spep_8 + 0, 1, 30 );
setRotateKey( spep_8 + 2, 1, 32.9 );
setRotateKey( spep_8 + 4, 1, 35.7 );
setRotateKey( spep_8 + 6, 1, 38.6 );
setRotateKey( spep_8 + 8, 1, 41.5 );
setRotateKey( spep_8 + 10, 1, 44.3 );
setRotateKey( spep_8 + 12, 1, 47.2 );
setRotateKey( spep_8 + 14, 1, 50.1 );
setRotateKey( spep_8 + 16, 1, 52.9 );
setRotateKey( spep_8 + 19, 1, 55.8 );
setRotateKey( spep_8 + 20, 1, 77 );
setRotateKey( spep_8 + 22, 1, 86 );
setRotateKey( spep_8 + 24, 1, 95 );
setRotateKey( spep_8 + 26, 1, 104 );
setRotateKey( spep_8 + 28, 1, 113.7 );
setRotateKey( spep_8 + 30, 1, 123.3 );
setRotateKey( spep_8 + 32, 1, 133 );
setRotateKey( spep_8 + 34, 1, 136.5 );
setRotateKey( spep_8 + 36, 1, 140 );
setRotateKey( spep_8 + 38, 1, 143.5 );
setRotateKey( spep_8 + 40, 1, 147 );
setRotateKey( spep_8 + 42, 1, 150.5 );
setRotateKey( spep_8 + 44, 1, 154 );
setRotateKey( spep_8 + 46, 1, 157.5 );
setRotateKey( spep_8 + 48, 1, 161 );

TenobaRight = entryEffectLife(  spep_8+2,  SP_07, 48,0x100,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8+2,  TenobaRight,  1.0,  1.0);
setEffScaleKey(  spep_8+2+48,  TenobaRight,  1.0,  1.0);
setEffMoveKey(  spep_8+2,  TenobaRight,  0,  0);
setEffMoveKey(  spep_8+2+48,  TenobaRight,  0,  0);
setEffRotateKey(  spep_8+2,  TenobaRight,  0);
setEffRotateKey(  spep_8+2+48,  TenobaRight,  0);
setEffAlphaKey(  spep_8+2,  TenobaRight,  255);
setEffAlphaKey(  spep_8+2+48,  TenobaRight,  255);

TenobaLeft = entryEffectLife(  spep_8+2,  SP_08, 48,0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8+2,  TenobaLeft,  1.0,  1.0);
setEffScaleKey(  spep_8+2+48,  TenobaLeft,  1.0,  1.0);
setEffMoveKey(  spep_8+2,  TenobaLeft,  0,  0);
setEffMoveKey(  spep_8+2+48,  TenobaLeft,  0,  0);
setEffRotateKey(  spep_8+2,  TenobaLeft,  0);
setEffRotateKey(  spep_8+2+48,  TenobaLeft,  0);
setEffAlphaKey(  spep_8+2,  TenobaLeft,  255);
setEffAlphaKey(  spep_8+2+48,  TenobaLeft,  255);

--entryFade(spep_8-2+16,2,4,2,255,255,255,255);

--文字エントリー
ctdogon = entryEffectLife( spep_8-2 + 18,  10018, 20, 0x100, -1, 0, -7.3, 99 );--ドゴォンッ

setEffMoveKey( spep_8-2 + 18, ctdogon, -7.3, 99 , 0 );
setEffMoveKey( spep_8-2 + 20, ctdogon, -20.6, 133 , 0 );
setEffMoveKey( spep_8-2 + 22, ctdogon, -10.9, 163.5 , 0 );
setEffMoveKey( spep_8-2 + 24, ctdogon, -30.3, 183.7 , 0 );
setEffMoveKey( spep_8-2 + 26, ctdogon, -25.8, 186.1 , 0 );
setEffMoveKey( spep_8-2 + 28, ctdogon, -28.7, 196.6 , 0 );
setEffMoveKey( spep_8-2 + 30, ctdogon, -51.9, 200.3 , 0 );
setEffMoveKey( spep_8-2 + 32, ctdogon, -62.2, 181.8 , 0 );
setEffMoveKey( spep_8-2 + 34, ctdogon, -76.9, 191.4 , 0 );
setEffMoveKey( spep_8-2 + 36, ctdogon, -82, 176.9 , 0 );
setEffMoveKey( spep_8-2 + 38, ctdogon, -92.4, 172 , 0 );

setEffScaleKey( spep_8-2 + 18, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_8-2 + 20, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_8-2 + 22, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_8-2 + 24, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_8-2 + 26, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_8-2 + 28, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_8-2 + 30, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_8-2 + 32, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_8-2 + 34, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_8-2 + 36, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_8-2 + 38, ctdogon, 2.69, 2.69 );

setEffRotateKey( spep_8-2 + 18, ctdogon, -27.8 );
setEffRotateKey( spep_8-2 + 20, ctdogon, -27.2 );
setEffRotateKey( spep_8-2 + 22, ctdogon, -26.7 );
setEffRotateKey( spep_8-2 + 38, ctdogon, -26.7 );

setEffAlphaKey( spep_8-2 + 18, ctdogon, 255 );
setEffAlphaKey( spep_8-2 + 28, ctdogon, 255 );

setEffAlphaKey( spep_8-2 + 30, ctdogon, 204 );
setEffAlphaKey( spep_8-2 + 32, ctdogon, 153 );
setEffAlphaKey( spep_8-2 + 34, ctdogon, 102 );
setEffAlphaKey( spep_8-2 + 36, ctdogon, 51 );
setEffAlphaKey( spep_8-2 + 38, ctdogon, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_8 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_8 + 48, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen8, 1.4, 1.75 );
setEffScaleKey( spep_8 + 48, shuchusen8, 1.4, 1.75 );

setEffRotateKey( spep_8 + 0, shuchusen8, 0 );
setEffRotateKey( spep_8 + 48, shuchusen8, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen8, 255 );
setEffAlphaKey( spep_8 + 48, shuchusen8, 255 );

playSe(spep_8+20,1010);
------------------------------------------------------
-- LAST
------------------------------------------------------
spep_9=spep_8+50;

--敵の動き--
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_9 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_9 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_9 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_9 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_9 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_9 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_9 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_9 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 2, 1, 105 );
setRotateKey( spep_9 + 4, 1, 240 );
setRotateKey( spep_9 + 6, 1, 405 );
setRotateKey( spep_9 + 8, 1, 600 );
setRotateKey( spep_9 + 10, 1, 825 );
setRotateKey( spep_9 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setDamage( spep_9 +16, 1, 0);  -- ダメージ振動等
setShake(spep_9+8,6,15);
setShake(spep_9+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_9 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_9 + 14, ctGa, 30, 10);

setEffMoveKey( spep_9 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_9+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_9+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_9 + 14, ctGa, -40 );
setEffRotateKey( spep_9 + 16, ctGa, -31 );
setEffRotateKey( spep_9 + 18, ctGa, -40 );
setEffRotateKey( spep_9 + 20, ctGa, -31 );
setEffRotateKey( spep_9 + 22, ctGa, -40 );
setEffRotateKey( spep_9 + 24, ctGa, -31);
setEffRotateKey( spep_9 + 26, ctGa, -40 );
setEffRotateKey( spep_9 + 28, ctGa, -31);
setEffRotateKey( spep_9 + 30, ctGa, -40 );

setEffAlphaKey( spep_9 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_9+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_9+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_9+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_9+2, SE_11);
-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+110);

else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
spep_1 = 0;

entryFadeBg(spep_1,0,68,0,10,10,10,200);

--entryFade(spep_1,0,0,10,255,255,255,255);　いらない
entryFade(spep_1+48,20,2,0,255,255,255,255);

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, shuchusen1,0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.13, 1.61 );
setEffScaleKey( spep_1 + 68, shuchusen1, 1.13, 1.61 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 + 68, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 68, shuchusen1, 255 );

--***エフェクト***
Tossin = entryEffectLife(  spep_1,  SP_01, 68, 0x100,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  Tossin,  1.0,  1.0);
setEffScaleKey(  spep_1+68,  Tossin,  1.0,  1.0);
setEffMoveKey(  spep_1,  Tossin,  0,  0);
setEffMoveKey(  spep_1+68,  Tossin,  0,  0);
setEffRotateKey(  spep_1,  Tossin,  0);
setEffRotateKey(  spep_1+68,  Tossin,  0);

playSe(spep_1,SE_04);

------------------------------------------------------
-- 岩山に吹き飛ぶ
------------------------------------------------------
spep_2 = spep_1+68;

entryFadeBg(spep_2,0,168,0,10,10,10,200);

entryFade(spep_2,0,0,10,255,255,255,255);
--entryFade(spep_2+42,0,2,8,255,255,255,255);
--entryFade(spep_2+84,0,2,8,255,255,255,255);
--entryFade(spep_2+132,0,2,8,255,255,255,255);

--敵の動き(書き出し不能)
setDisp(spep_2+12,1,1);

changeAnime(spep_2+12,1,101);

setMoveKey( spep_2 + 12, 1, 519.4, 13 , 0 );
setMoveKey( spep_2 + 14, 1, 486.4, 13 , 0 );
setMoveKey( spep_2 + 16, 1, 431.3, 13 , 0 );
setMoveKey( spep_2 + 18, 1, 354.2, 13 , 0 );
setMoveKey( spep_2 + 20, 1, 255.1, 13 , 0 );
setMoveKey( spep_2 + 22, 1, 133.9, 13 , 0 );
setMoveKey( spep_2 + 24, 1, -9.3, 13 , 0 );

setScaleKey( spep_2 + 12, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 35, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 12, 1, 5.2 );
setRotateKey( spep_2 + 35, 1, 5.2 );

Kakutou = entryEffectLife(  spep_2,  SP_02,168,  0x100,  -1,  0,  0,  0);  --岩山背景

setEffScaleKey(  spep_2,  Kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+168,  Kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  Kakutou,  0,  0);
setEffMoveKey(  spep_2+168,  Kakutou,  0,  0);
setEffRotateKey(  spep_2,  Kakutou,  0);
setEffRotateKey(  spep_2+168,  Kakutou,  0);
setEffAlphaKey(  spep_2,  Kakutou,  255);
setEffAlphaKey(  spep_2+168,  Kakutou,  255);

--流線(横)
ryusen1 = entryEffectLife( spep_2 + 0,  920, 130, 0x80, -1, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 130, ryusen1, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 130, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 130, ryusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 208, 0x100, -1, 0, 0, 8 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 208, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_2 + 208, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 208, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 208, shuchusen2, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+28 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -9.3, 13 , 0 );
setScaleKey(SP_dodge , 1,1.13, 1.13 );
setRotateKey(SP_dodge,   1, 5.2);

setMoveKey(SP_dodge+8,1, -27.5, 2.6 , 0 );
setScaleKey(SP_dodge+8 , 1,1.13, 1.13 );
setRotateKey(SP_dodge+8,   1, 5.2);

setDisp(SP_dodge+9, 0, 0);

setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );

setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);

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
entryFade(spep_2+160-2,8,4,0,255,255,255,255);

setDisp(spep_2+162-2,1,0);

changeAnime(spep_2-2 +40,1,108);
changeAnime(spep_2-2 +84,1,106);

changeAnime(spep_2-2+134,1,108);
changeAnime(spep_2-2+135,1,108); --131

setMoveKey( spep_2-2  + 40, 1, -27.5, 2.6 , 0 );
setMoveKey( spep_2-2  + 42, 1, 35, 3.9 , 0 );
setMoveKey( spep_2-2  + 44, 1, 24.6, -4.4 , 0 );
setMoveKey( spep_2-2  + 46, 1, 25, 3.3 , 0 );
setMoveKey( spep_2-2  + 48, 1, 6.5, -5 , 0 );
setMoveKey( spep_2-2  + 50, 1, -27.7, 2.6 , 0 );
setMoveKey( spep_2-2  + 52, 1, -42.5, -5.4 , 0 );
setMoveKey( spep_2-2  + 54, 1, -29.6, 1.5 , 0 );
setMoveKey( spep_2-2  + 56, 1, -30.9, -10.9 , 0 );
setMoveKey( spep_2-2  + 58, 1, -18.7, -0.6 , 0 );
setMoveKey( spep_2-2  + 60, 1, -20.3, -9.7 , 0 );
setMoveKey( spep_2-2  + 62, 1, -8.2, -2.8 , 0 );
setMoveKey( spep_2-2  + 64, 1, -9.7, -8.8 , 0 );
setMoveKey( spep_2-2  + 66, 1, 2.2, -4.9 , 0 );
setMoveKey( spep_2-2  + 68, 1, 1.4, -15.3 , 0 );
setMoveKey( spep_2-2  + 70, 1, 13.2, -9.6 , 0 );
setMoveKey( spep_2-2  + 72, 1, 13.3, -16.6 , 0 );
setMoveKey( spep_2-2  + 74, 1, 27.4, -12 , 0 );
setMoveKey( spep_2-2  + 76, 1, 36.3, -13.1 , 0 );
setMoveKey( spep_2-2  + 78, 1, 45.2, -14.2 , 0 );
setMoveKey( spep_2-2  + 80, 1, 54.1, -15.3 , 0 );
setMoveKey( spep_2-2  + 82, 1, 63, -16.5 , 0 );
setMoveKey( spep_2-2  + 84, 1, 94.2, 17.1 , 0 );
setMoveKey( spep_2-2  + 86, 1, 109.7, 21.8 , 0 );
setMoveKey( spep_2-2  + 88, 1, 103.3, 10.7 , 0 );
setMoveKey( spep_2-2  + 90, 1, 103.2, 15.6 , 0 );
setMoveKey( spep_2-2  + 92, 1, 107.5, 3.3 , 0 );
setMoveKey( spep_2-2  + 94, 1, 115.8, 15.2 , 0 );
setMoveKey( spep_2-2  + 96, 1, 112.1, 7.1 , 0 );
setMoveKey( spep_2-2  + 98, 1, 124.4, 15 , 0 );
setMoveKey( spep_2-2  + 100, 1, 124.8, 10.8 , 0 );
setMoveKey( spep_2-2  + 102, 1, 133.1, 14.7 , 0 );
setMoveKey( spep_2-2  + 104, 1, 129.4, 6.6 , 0 );
setMoveKey( spep_2-2  + 106, 1, 141.7, 14.5 , 0 );
setMoveKey( spep_2-2  + 108, 1, 142, 6.4 , 0 );
setMoveKey( spep_2-2  + 110, 1, 149.2, 10.3 , 0 );
setMoveKey( spep_2-2  + 112, 1, 149, 6.2 , 0 );
setMoveKey( spep_2-2  + 114, 1, 163.5, 8.9 , 0 );
setMoveKey( spep_2-2  + 116, 1, 168.1, 6.1 , 0 );
setMoveKey( spep_2-2  + 118, 1, 174.4, 6.1 , 0 );
setMoveKey( spep_2-2  + 120, 1, 180.6, 6.1 , 0 );
setMoveKey( spep_2-2  + 122, 1, 186.9, 6 , 0 );
setMoveKey( spep_2-2  + 124, 1, 193.2, 6 , 0 );
setMoveKey( spep_2-2  + 126, 1, 199.5, 5.9 , 0 );
setMoveKey( spep_2-2  + 128, 1, 205.7, 5.9 , 0 );
setMoveKey( spep_2-2  + 130, 1, 212, 5.8 , 0 );
setMoveKey( spep_2-2  + 132, 1, 218.3, 5.8 , 0 );

setMoveKey( spep_2  + 132, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 133, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 134, 1, 209.4, -48.1 , 0 );
setMoveKey( spep_2  + 136, 1, 242.2, -102 , 0 );
setMoveKey( spep_2  + 138, 1, 252.6, -159.3 , 0 );
setMoveKey( spep_2  + 140, 1, 266.2, -176.1 , 0 );
setMoveKey( spep_2  + 142, 1, 257.9, -188.5 , 0 );
setMoveKey( spep_2  + 144, 1, 301.8, -227.9 , 0 );
setMoveKey( spep_2  + 146, 1, 330.5, -288.6 , 0 );
setMoveKey( spep_2  + 148, 1, 374.1, -327.5 , 0 );
setMoveKey( spep_2  + 150, 1, 406.5, -385.3 , 0 );
setMoveKey( spep_2  + 152, 1, 442.6, -435.1 , 0 );
setMoveKey( spep_2  + 154, 1, 478.8, -484.9 , 0 );
setMoveKey( spep_2  + 156, 1, 525.7, -553.9 , 0 );
setMoveKey( spep_2  + 158, 1, 572.6, -622.9 , 0 );
setMoveKey( spep_2  + 160, 1, 619.5, -692 , 0 );
setMoveKey( spep_2  + 162, 1, 666.4, -761 , 0 );

setScaleKey( spep_2-2  + 40, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 42, 1, 1.96, 1.96 );
setScaleKey( spep_2-2  + 44, 1, 1.8, 1.8 );
setScaleKey( spep_2-2  + 46, 1, 1.64, 1.64 );
setScaleKey( spep_2-2  + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2-2  + 50, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 52, 1, 1.31, 1.31 );
setScaleKey( spep_2-2  + 54, 1, 1.3, 1.3 );
setScaleKey( spep_2-2  + 56, 1, 1.29, 1.29 );
setScaleKey( spep_2-2  + 58, 1, 1.27, 1.27 );
setScaleKey( spep_2-2  + 60, 1, 1.26, 1.26 );
setScaleKey( spep_2-2  + 62, 1, 1.25, 1.25 );
setScaleKey( spep_2-2  + 64, 1, 1.24, 1.24 );
setScaleKey( spep_2-2  + 66, 1, 1.23, 1.23 );
setScaleKey( spep_2-2  + 68, 1, 1.21, 1.21 );
setScaleKey( spep_2-2  + 70, 1, 1.2, 1.2 );
setScaleKey( spep_2-2  + 72, 1, 1.19, 1.19 );
setScaleKey( spep_2-2  + 74, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 76, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 78, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 80, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 82, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 84, 1, 1.91, 1.91 );
setScaleKey( spep_2-2  + 86, 1, 1.67, 1.67 );
setScaleKey( spep_2-2  + 88, 1, 1.44, 1.44 );
setScaleKey( spep_2-2  + 90, 1, 1.21, 1.21 );
setScaleKey( spep_2-2  + 92, 1, 1.19, 1.19 );
setScaleKey( spep_2-2  + 94, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 96, 1, 1.18, 1.18 );
setScaleKey( spep_2-2  + 98, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 100, 1, 1.17, 1.17 );
setScaleKey( spep_2-2  + 102, 1, 1.16, 1.16 );
setScaleKey( spep_2-2  + 104, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 106, 1, 1.15, 1.15 );
setScaleKey( spep_2-2  + 108, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 110, 1, 1.14, 1.14 );
setScaleKey( spep_2-2  + 112, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 116, 1, 1.13, 1.13 );
setScaleKey( spep_2-2  + 118, 1, 1.12, 1.12 );
setScaleKey( spep_2-2  + 124, 1, 1.12, 1.12 );
setScaleKey( spep_2-2  + 126, 1, 1.11, 1.11 );
setScaleKey( spep_2-2  + 132, 1, 1.11, 1.11 );

setScaleKey( spep_2  + 132, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 133, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 133, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 134, 1, 2.23, 2.23 );
setScaleKey( spep_2  + 136, 1, 2.11, 2.11 );
setScaleKey( spep_2  + 138, 1, 1.96, 1.96 );
setScaleKey( spep_2  + 140, 1, 1.78, 1.78 );
setScaleKey( spep_2  + 142, 1, 1.78, 1.78 );
setScaleKey( spep_2  + 144, 1, 1.88, 1.88 );
setScaleKey( spep_2  + 146, 1, 1.98, 1.98 );
setScaleKey( spep_2  + 148, 1, 2.08, 2.08 );
setScaleKey( spep_2  + 150, 1, 2.18, 2.18 );
setScaleKey( spep_2  + 152, 1, 2.28, 2.28 );
setScaleKey( spep_2  + 154, 1, 2.38, 2.38 );
setScaleKey( spep_2  + 156, 1, 2.5, 2.5 );
setScaleKey( spep_2  + 158, 1, 2.62, 2.62 );
setScaleKey( spep_2  + 160, 1, 2.74, 2.74 );
setScaleKey( spep_2  + 162, 1, 2.86, 2.86 );

setRotateKey( spep_2-2  + 40, 1, 0.8 );
setRotateKey( spep_2-2  + 83, 1, 0.8 );
setRotateKey( spep_2-2  + 84, 1, -25 ); --調整
setRotateKey( spep_2-2  + 133, 1, -25 );
--setRotateKey( spep_2-2  + 132, 1, 0.8 );
setRotateKey( spep_2-2  + 134, 1, 38.1 );
setRotateKey( spep_2-2  + 135, 1, 38.1 );
setRotateKey( spep_2+2  + 162, 1, 38.1 );

--書き文字
--ドン
ctDon = entryEffectLife( spep_2-2 + 42,  10019, 16, 0x100, -1, 0, -112.9, 185.9 );
setEffMoveKey( spep_2-2 + 42, ctDon, -112.9, 185.9 , 0 );
setEffMoveKey( spep_2-2 + 44, ctDon, -125.5, 204.3 , 0 );
setEffMoveKey( spep_2-2 + 46, ctDon, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2-2 + 48, ctDon, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2-2 + 50, ctDon, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2-2 + 52, ctDon, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2-2 + 54, ctDon, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2-2 + 56, ctDon, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2-2 + 58, ctDon, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2-2 + 42, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_2-2 + 44, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_2-2 + 46, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_2-2 + 48, ctDon, 2, 2 );
setEffScaleKey( spep_2-2 + 50, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_2-2 + 52, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_2-2 + 54, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_2-2 + 56, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_2-2 + 58, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_2-2 + 42, ctDon, -0.8 );
setEffRotateKey( spep_2-2 + 44, ctDon, -0.2 );
setEffRotateKey( spep_2-2 + 46, ctDon, 0.3 );

setEffAlphaKey( spep_2-2 + 42, ctDon, 255 );
setEffAlphaKey( spep_2-2 + 52, ctDon, 255 );
setEffAlphaKey( spep_2-2 + 54, ctDon, 170 );
setEffAlphaKey( spep_2-2 + 56, ctDon, 85 );
setEffAlphaKey( spep_2-2 + 58, ctDon, 0 );

playSe( spep_2-4 + 42,1009);

--ガ
ctGa = entryEffectLife( spep_2-2 + 84,  10005, 26, 0x100, -1, 0, -62.5, 265.9 );
setEffMoveKey( spep_2-2 + 84, ctGa, -62.5, 265.9 , 0 );
setEffMoveKey( spep_2-2 + 86, ctGa, -62.5, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 88, ctGa, -62.8, 266.1 , 0 );
setEffMoveKey( spep_2-2 + 90, ctGa, -62.8, 266 , 0 );
setEffMoveKey( spep_2-2 + 92, ctGa, -62.7, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 94, ctGa, -62.7, 266.2 , 0 );
setEffMoveKey( spep_2-2 + 96, ctGa, -62.6, 266 , 0 );
setEffMoveKey( spep_2-2 + 98, ctGa, -62.5, 266 , 0 );
setEffMoveKey( spep_2-2 + 104, ctGa, -62.5, 266 , 0 );
setEffMoveKey( spep_2-2 + 106, ctGa, -62.6, 266 , 0 );
setEffMoveKey( spep_2-2 + 110, ctGa, -62.6, 266 , 0 );

setEffScaleKey( spep_2-2 + 84, ctGa, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 86, ctGa, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 88, ctGa, 2.48, 2.48 );
setEffScaleKey( spep_2-2 + 90, ctGa, 2.36, 2.36 );
setEffScaleKey( spep_2-2 + 92, ctGa, 2.24, 2.24 );
setEffScaleKey( spep_2-2 + 94, ctGa, 2.12, 2.12 );
setEffScaleKey( spep_2-2 + 96, ctGa, 2.01, 2.01 );
setEffScaleKey( spep_2-2 + 98, ctGa, 2, 2 );
setEffScaleKey( spep_2-2 + 100, ctGa, 1.99, 1.99 );
setEffScaleKey( spep_2-2 + 102, ctGa, 1.98, 1.98 );
setEffScaleKey( spep_2-2 + 104, ctGa, 1.97, 1.97 );
setEffScaleKey( spep_2-2 + 106, ctGa, 1.96, 1.96 );
setEffScaleKey( spep_2-2 + 108, ctGa, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 110, ctGa, 1.94, 1.94 );

setEffRotateKey( spep_2-2 + 84, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 86, ctGa, -38 );
setEffRotateKey( spep_2-2 + 88, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 90, ctGa, -16.1 );
setEffRotateKey( spep_2-2 + 92, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 94, ctGa, -35.5 );
setEffRotateKey( spep_2-2 + 96, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 98, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 100, ctGa, -24.8 );
setEffRotateKey( spep_2-2 + 102, ctGa, -24.7 );
setEffRotateKey( spep_2-2 + 106, ctGa, -24.7 );
setEffRotateKey( spep_2-2 + 108, ctGa, -24.6 );
setEffRotateKey( spep_2-2 + 110, ctGa, -24.6 );

setEffAlphaKey( spep_2-2 + 84, ctGa, 255 );
setEffAlphaKey( spep_2-2 + 98, ctGa, 255 );
setEffAlphaKey( spep_2-2 + 100, ctGa, 213 );
setEffAlphaKey( spep_2-2 + 102, ctGa, 170 );
setEffAlphaKey( spep_2-2 + 104, ctGa, 128 );
setEffAlphaKey( spep_2-2 + 106, ctGa, 85 );
setEffAlphaKey( spep_2-2 + 108, ctGa, 42 );
setEffAlphaKey( spep_2-2 + 110, ctGa, 0 );

playSe( spep_2-4 + 84,1010);

--ばき
ctBaki = entryEffectLife( spep_2-3 + 134,  10020, 23, 0x100, -1, 0, 229.5, 383 );
setEffMoveKey( spep_2-3 + 134, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_2-2 + 134, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_2-2 + 136, ctBaki, 224.5, 353.2 , 0 );
setEffMoveKey( spep_2-2 + 138, ctBaki, 204.7, 347.2 , 0 );
setEffMoveKey( spep_2-2 + 140, ctBaki, 198.8, 356 , 0 );
setEffMoveKey( spep_2-2 + 142, ctBaki, 208.7, 352.6 , 0 );
setEffMoveKey( spep_2-2 + 144, ctBaki, 220.2, 349.9 , 0 );
setEffMoveKey( spep_2-2 + 146, ctBaki, 212.1, 357.8 , 0 );
setEffMoveKey( spep_2-2 + 148, ctBaki, 212.9, 358.9 , 0 );
setEffMoveKey( spep_2-2 + 150, ctBaki, 213.6, 359.9 , 0 );
setEffMoveKey( spep_2-2 + 152, ctBaki, 214.3, 360.9 , 0 );
setEffMoveKey( spep_2-2 + 154, ctBaki, 215.1, 362 , 0 );
setEffMoveKey( spep_2-2 + 156, ctBaki, 215.8, 363 , 0 );

setEffScaleKey( spep_2-3 + 134, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 134, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_2-2 + 136, ctBaki, 1.95, 1.95 );
setEffScaleKey( spep_2-2 + 138, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_2-2 + 140, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_2-2 + 142, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_2-2 + 144, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_2-2 + 146, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_2-2 + 148, ctBaki, 1.96, 1.96 );
setEffScaleKey( spep_2-2 + 150, ctBaki, 1.92, 1.92 );
setEffScaleKey( spep_2-2 + 152, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_2-2 + 154, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_2-2 + 156, ctBaki, 1.78, 1.78 );

setEffRotateKey( spep_2-3 + 134, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 134, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 136, ctBaki, 21.1 );
setEffRotateKey( spep_2-2 + 138, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 140, ctBaki, 43.1 );
setEffRotateKey( spep_2-2 + 142, ctBaki, 34.3 );
setEffRotateKey( spep_2-2 + 144, ctBaki, 23.6 );
setEffRotateKey( spep_2-2 + 146, ctBaki, 34.5 );
setEffRotateKey( spep_2-2 + 156, ctBaki, 34.5 );

setEffAlphaKey( spep_2-3 + 134, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 134, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 146, ctBaki, 255 );
setEffAlphaKey( spep_2-2 + 148, ctBaki, 204 );
setEffAlphaKey( spep_2-2 + 150, ctBaki, 153 );
setEffAlphaKey( spep_2-2 + 152, ctBaki, 102 );
setEffAlphaKey( spep_2-2 + 154, ctBaki, 51 );
setEffAlphaKey( spep_2-2 + 156, ctBaki, 0 );

playSe( spep_2-3 + 134,1011);

--流線(斜め)
rhuusen2 = entryEffectLife( spep_2-3 + 134,  921, 39, 0x80, -1, 0, -0.1, -6.3 );

setEffMoveKey( spep_2-3 + 134, rhuusen2, -0.1, -6.3 , 0 );
setEffMoveKey( spep_2-2 + 134, rhuusen2, -0.1, -6.3 , 0 );
setEffMoveKey( spep_2 + 170, rhuusen2, -0.1, -6.3 , 0 );

setEffScaleKey( spep_2-3 + 134, rhuusen2,  1.5, 1.75 );
setEffScaleKey( spep_2-2 + 134, rhuusen2,  1.5, 1.75 );
setEffScaleKey( spep_2 + 170, rhuusen2,  1.5, 1.75 );

setEffRotateKey( spep_2-3 + 134, rhuusen2, -135 );
setEffRotateKey( spep_2-2 + 134, rhuusen2, -135 );
setEffRotateKey( spep_2 + 170, rhuusen2, -135 );

setEffAlphaKey( spep_2-3 + 134, rhuusen2, 255 );
setEffAlphaKey( spep_2-2 + 134, rhuusen2, 255 );
setEffAlphaKey( spep_2 + 170, rhuusen2, 255 );

------------------------------------------------------
--気溜め
------------------------------------------------------
spep_3 = spep_2+168;

entryFadeBg(spep_3,0,98,0,10,10,10,200);
entryFade(spep_3,0,2,8,255,255,255,255);
entryFade(spep_3+92,4,4,4,255,255,255,255);

Kidame = entryEffectLife(  spep_3+2,  SP_03,96,  0x100,  -1,  0,  0,  0);  --高速移動

setEffScaleKey(  spep_3+2,  Kidame,  1.0,  1.0);
setEffScaleKey(  spep_3+98,  Kidame,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  Kidame,  0,  0);
setEffMoveKey(  spep_3+98,  Kidame,  0,  0);
setEffRotateKey(  spep_3+2,  Kidame,  0);
setEffRotateKey(  spep_3+98,  Kidame,  0);

--顔カットインセット spep_3+40;
ctgogo = entryEffectLife( spep_3+50, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_3+50, ctgogo, 70, 8);
setEffScaleKey(spep_3+50, ctgogo, -0.7, 0.7);

--speff = entryEffect(  spep_3+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.55, 1.55 );
setEffScaleKey( spep_3 + 98, shuchusen3, 1.55, 1.55 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 98, shuchusen3, 180 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen3, 255 );

playSe(spep_3,SE_01);
playSe(spep_3+50,SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_4 = spep_3+98;

playSe( spep_4, SE_05);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+85, 3, 6,  3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 手伸ばし
------------------------------------------------------
spep_5 = spep_4+90;

entryFadeBg(spep_5,0,70,0,10,10,10,200);
--entryFade(spep_5+26,0,2,6,255,255,255,255); 抜いてみる
entryFade(spep_5+60,8,2,2,255,255,255,255);

--書き文字
ctgyun = entryEffectLife( spep_5 + 28,  10007, 40, 0x100, -1, 0, 81.5, -305.9 );--ギュンッ

setEffMoveKey( spep_5 + 28, ctgyun, 81.5, -305.9 , 0 );
setEffMoveKey( spep_5 + 30, ctgyun, 77.5, -344.1 , 0 );
setEffMoveKey( spep_5 + 32, ctgyun, 68.5, -323.2 , 0 );
setEffMoveKey( spep_5 + 34, ctgyun, 64.2, -358 , 0 );
setEffMoveKey( spep_5 + 36, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 38, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 40, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 42, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 44, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 46, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 48, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 50, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 52, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 54, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 56, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 58, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 60, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 62, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 64, ctgyun, 55.5, -340.5 , 0 );
setEffMoveKey( spep_5 + 66, ctgyun, 57.6, -365 , 0 );
setEffMoveKey( spep_5 + 68, ctgyun, 55.5, -340.5 , 0 );

setEffScaleKey( spep_5 + 28, ctgyun, 3.52, 3.52 );
setEffScaleKey( spep_5 + 30, ctgyun, 3.32, 3.32 );
setEffScaleKey( spep_5 + 32, ctgyun, 3.13, 3.13 );
setEffScaleKey( spep_5 + 34, ctgyun, 2.94, 2.94 );
setEffScaleKey( spep_5 + 36, ctgyun, 2.75, 2.75 );
setEffScaleKey( spep_5 + 68, ctgyun, 2.75, 2.75 );

setEffRotateKey( spep_5 + 28, ctgyun, -20.2 );
setEffRotateKey( spep_5 + 68, ctgyun, -20.2 );

setEffAlphaKey( spep_5 + 28, ctgyun, 255 );
setEffAlphaKey( spep_5 + 68, ctgyun, 255 );


--流線(斜め)
rhuusen5 = entryEffectLife( spep_5 + 2,  921, 66, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_5 + 2, rhuusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, rhuusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 2, rhuusen5, 1.53, 1.75 );
setEffScaleKey( spep_5 + 68, rhuusen5, 1.53, 1.75 );

setEffRotateKey( spep_5 + 2, rhuusen5, -135 );
setEffRotateKey( spep_5 + 68, rhuuse5, -135 );

setEffAlphaKey( spep_5 + 2, rhuusen5, 255 );
setEffAlphaKey( spep_5 + 68, rhuusen5, 255 );

playSe(spep_5+28,44);

Tenobe = entryEffectLife(  spep_5+2, SP_04, 66, 0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_5+2,  Tenobe,  1.0,  1.0);
setEffScaleKey(  spep_5+68,  Tenobe,  1.0,  1.0);
setEffMoveKey(  spep_5+2,  Tenobe,  0,  0);
setEffMoveKey(  spep_5+68,  Tenobe,  0,  0);
setEffRotateKey(  spep_5+2,  Tenobe,  0);
setEffRotateKey(  spep_5+68,  Tenobe,  0);
------------------------------------------------------s
-- 手伸ばし(地面)
------------------------------------------------------
spep_6 = spep_5+70;

entryFadeBg(spep_6,0,78,0,10,10,10,200);

--白フェイド抜け
--entryFade(spep_6+4,2,6,2,255,255,255,255); --抜いてみる
--entryFade(spep_6+70,8,2,0,255,255,255,255); --抜いてみる
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 22, 1, 0)

changeAnime( spep_6 + 0, 1, 108 );
setMoveKey( spep_6 + 0, 1, 28.1, -17.5 , 0 );
setMoveKey( spep_6 + 2, 1, 40.8, -32.3 , 0 );
setMoveKey( spep_6 + 4, 1, 53.5, -47.1 , 0 );
setMoveKey( spep_6 + 6, 1, 66.2, -61.9 , 0 );
setMoveKey( spep_6 + 8, 1, 78.9, -76.8 , 0 );
setMoveKey( spep_6 + 10, 1, 91.6, -91.6 , 0 );
setMoveKey( spep_6 + 12, 1, 294.2, -111.7 , 0 );
setMoveKey( spep_6 + 14, 1, 414.4, -79.4 , 0 );
setMoveKey( spep_6 + 16, 1, 506.6, -50.3 , 0 );
setMoveKey( spep_6 + 18, 1, 571.4, -24.7 , 0 );
setMoveKey( spep_6 + 20, 1, 609.1, -3.1 , 0 );
setMoveKey( spep_6 + 22, 1, 708.1, 16.5 , 0 );
setMoveKey( spep_6 + 24, 1, 805.4, 36.5 , 0 );

setScaleKey( spep_6 + 0, 1, 2.38, 2.38 );
setScaleKey( spep_6 + 2, 1, 2.42, 2.42 );
setScaleKey( spep_6 + 4, 1, 2.47, 2.47 );
setScaleKey( spep_6 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_6 + 8, 1, 2.57, 2.57 );
setScaleKey( spep_6 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 12, 1, 4.03, 4.03 );
setScaleKey( spep_6 + 14, 1, 3.79, 3.79 );
setScaleKey( spep_6 + 16, 1, 3.53, 3.53 );
setScaleKey( spep_6 + 18, 1, 3.25, 3.25 );
setScaleKey( spep_6 + 20, 1, 2.96, 2.96 );
setScaleKey( spep_6 + 22, 1, 3.03, 3.03 );
setScaleKey( spep_6 + 24, 1, 3.09, 3.09 );

setRotateKey( spep_6 + 0, 1, 40.1 );
setRotateKey( spep_6 + 10, 1, 40.1 );
setRotateKey( spep_6 + 12, 1, 34.5 );
setRotateKey( spep_6 + 14, 1, 28.9 );
setRotateKey( spep_6 + 16, 1, 23.3 );
setRotateKey( spep_6 + 18, 1, 17.6 );
setRotateKey( spep_6 + 20, 1, 12 );
setRotateKey( spep_6 + 22, 1, 6.4 );
setRotateKey( spep_6 + 24, 1, 0.8 );

--書き文字
--ドン
ctDon = entryEffectLife( spep_6-6 + 12,  10019, 20, 0x100, -1, 0, 33.1, 280.7 );
setEffMoveKey( spep_6-6 + 12, ctDon, 33.1, 280.7 , 0 );
setEffMoveKey( spep_6-6 + 14, ctDon, 13.3, 282.3 , 0 );
setEffMoveKey( spep_6-6 + 16, ctDon, 22.9, 275.1 , 0 );
setEffMoveKey( spep_6-6 + 18, ctDon, 10.9, 256 , 0 );
setEffMoveKey( spep_6-6 + 20, ctDon, 22.4, 219.1 , 0 );
setEffMoveKey( spep_6-6 + 22, ctDon, 10.3, 218.2 , 0 );
setEffMoveKey( spep_6-6 + 24, ctDon, 16.6, 225.9 , 0 );
setEffMoveKey( spep_6-6+ 26, ctDon, 16.8, 213.4 , 0 );
setEffMoveKey( spep_6-6 + 28, ctDon, 12.7, 227 , 0 );
setEffMoveKey( spep_6-6 + 30, ctDon, 17.8, 217.7 , 0 );
setEffMoveKey( spep_6-6 + 32, ctDon, 17.8, 217.7 , 0 );

setEffScaleKey( spep_6-6 + 12, ctDon, 1.93, 1.93 );
setEffScaleKey( spep_6-6 + 14, ctDon, 2.24, 2.24 );
setEffScaleKey( spep_6-6 + 16, ctDon, 2.48, 2.48 );
setEffScaleKey( spep_6-6 + 18, ctDon, 2.25, 2.25 );
setEffScaleKey( spep_6-6 + 20, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_6-6 + 22, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_6-6 + 24, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_6-6 + 26, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_6-6 + 28, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_6-6 + 30, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_6-6 + 32, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_6-6 + 12, ctDon, -0.8 );
setEffRotateKey( spep_6-6 + 14, ctDon, -0.2 );
setEffRotateKey( spep_6-6 + 16, ctDon, 0.3 );
setEffRotateKey( spep_6-6 + 32, ctDon, 0.3 );

setEffAlphaKey( spep_6-6 + 12, ctDon, 255 );
setEffAlphaKey( spep_6-6 + 22, ctDon, 255 );
setEffAlphaKey( spep_6-6 + 24, ctDon, 204 );
setEffAlphaKey( spep_6-6 + 26, ctDon, 153 );
setEffAlphaKey( spep_6-6 + 28, ctDon, 102 );
setEffAlphaKey( spep_6-6 + 30, ctDon, 51 );
setEffAlphaKey( spep_6-6 + 32, ctDon, 0 );

playSe(spep_6+12,1009);

Hiteffect = entryEffectLife(  spep_6, SP_09, 38, 0x100,  -1,  0,  0,  0); 

setEffScaleKey(  spep_6,  Hiteffect,  1.0,  1.0);
setEffScaleKey(  spep_6+38,  Hiteffect,  1.0,  1.0);
setEffMoveKey(  spep_6,  Hiteffect,  0,  0);
setEffMoveKey(  spep_6+38,  Hiteffect,  0,  0);
setEffRotateKey(  spep_6,  Hiteffect,  0);
setEffRotateKey(  spep_6+38,  Hiteffect,  0);

--流線(斜め)
rhuusen6 = entryEffectLife( spep_6 + 0,  921, 78, 0x80, -1, 0,0, 0 );

setEffMoveKey( spep_6 + 0, rhuusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, rhuusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, rhuusen6, 1.53, 1.75 );
setEffScaleKey( spep_6 + 78, rhuusen6, 1.53, 1.75 );

setEffRotateKey( spep_6 + 0, rhuusen6, -135 );
setEffRotateKey( spep_6 + 78, rhuusen6, -135 );

setEffAlphaKey( spep_6 + 0, rhuusen6, 255 );
setEffAlphaKey( spep_6 + 78, rhuusen6, 255 );

Tenobag = entryEffectLife(  spep_6, SP_05, 78, 0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_6,  Tenobag,  1.0,  1.0);
setEffScaleKey(  spep_6+78,  Tenobag,  1.0,  1.0);
setEffMoveKey(  spep_6,  Tenobag,  0,  0);
setEffMoveKey(  spep_6+78,  Tenobag,  0,  0);
setEffRotateKey(  spep_6,  Tenobag,  0);
setEffRotateKey(  spep_6+78,  Tenobag,  0);

--entryFade(spep_6+54,2,4,0,255,255,255,255);　--抜いてみる
--ズボ
ctZubo = entryEffectLife( spep_6 + 60,  10035, 18, 0x100, -1, 0, -29.4, -358.9 );
setEffMoveKey( spep_6 + 60, ctZubo, -29.4, -358.9 , 0 );
setEffMoveKey( spep_6 + 62, ctZubo, -53.7, -336.3 , 0 );
setEffMoveKey( spep_6 + 64, ctZubo, 12.3, -358.1 , 0 );
setEffMoveKey( spep_6 + 66, ctZubo, -19.2, -294.7 , 0 );
setEffMoveKey( spep_6 + 68, ctZubo, -7, -293.4 , 0 );
setEffMoveKey( spep_6 + 70, ctZubo, -17.1, -290 , 0 );
setEffMoveKey( spep_6 + 72, ctZubo, -12.2, -286.8 , 0 );
setEffMoveKey( spep_6 + 74, ctZubo, -13.9, -301 , 0 );
setEffMoveKey( spep_6 + 76, ctZubo, -19.9, -289 , 0 );
setEffMoveKey( spep_6 + 78, ctZubo, -21.8, -290.7 , 0 );

setEffScaleKey( spep_6 + 60, ctZubo, 1.45, 1.45 );
setEffScaleKey( spep_6 + 62, ctZubo, 1.74, 1.74 );
setEffScaleKey( spep_6 + 64, ctZubo, 2.14, 2.14 );
setEffScaleKey( spep_6 + 66, ctZubo, 2.04, 2.04 );
setEffScaleKey( spep_6 + 68, ctZubo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 70, ctZubo, 2.04, 2.04 );
setEffScaleKey( spep_6 + 72, ctZubo, 2.05, 2.05 );
setEffScaleKey( spep_6 + 74, ctZubo, 2.05, 2.05 );
setEffScaleKey( spep_6 + 76, ctZubo, 2.06, 2.06 );
setEffScaleKey( spep_6 + 78, ctZubo, 2.07, 2.07 );

setEffRotateKey( spep_6 + 60, ctZubo, -0.8 );
setEffRotateKey( spep_6 + 62, ctZubo, -0.2 );
setEffRotateKey( spep_6 + 64, ctZubo, 0.3 );
setEffRotateKey( spep_6 + 78, ctZubo, 0.3 );

setEffAlphaKey( spep_6 + 60, ctZubo, 255 );
setEffAlphaKey( spep_6 + 70, ctZubo, 255 );
setEffAlphaKey( spep_6 + 72, ctZubo, 191 );
setEffAlphaKey( spep_6 + 74, ctZubo, 128 );
setEffAlphaKey( spep_6 + 76, ctZubo, 64 );
setEffAlphaKey( spep_6 + 78, ctZubo, 0 );

Seid=playSe(spep_6+60,1044);
------------------------------------------------------
-- 手伸ばし　奥へ
------------------------------------------------------
spep_7 = spep_6+78;

entryFadeBg(spep_7,0,68,0,10,10,10,200);
entryFade(spep_7+60,8,4,0,255,255,255,255);
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7 + 0, 1, 66.9, 309.5 , 0 );
setMoveKey( spep_7 + 2, 1, 65.7, 310 , 0 );
setMoveKey( spep_7 + 4, 1, 64.8, 310.4 , 0 );
setMoveKey( spep_7 + 6, 1, 64.1, 310.7 , 0 );
setMoveKey( spep_7 + 8, 1, 63.6, 310.9 , 0 );
setMoveKey( spep_7 + 10, 1, 63.3, 311 , 0 );
setMoveKey( spep_7 + 12, 1, 63.2, 311.1 , 0 );
setMoveKey( spep_7 + 14, 1, 62.5, 308.5 , 0 );
setMoveKey( spep_7 + 16, 1, 61.7, 305.9 , 0 );
setMoveKey( spep_7 + 18, 1, 61, 303.3 , 0 );
setMoveKey( spep_7 + 20, 1, 60.3, 300.8 , 0 );
setMoveKey( spep_7 + 22, 1, 59.6, 298.2 , 0 );
setMoveKey( spep_7 + 24, 1, 58.8, 295.6 , 0 );
setMoveKey( spep_7 + 26, 1, 58.1, 293 , 0 );
setMoveKey( spep_7 + 28, 1, 57.4, 290.5 , 0 );
setMoveKey( spep_7 + 30, 1, 56.7, 287.9 , 0 );
setMoveKey( spep_7 + 32, 1, 55.7, 284.8 , 0 );
setMoveKey( spep_7 + 34, 1, 54.8, 281.8 , 0 );
setMoveKey( spep_7 + 36, 1, 53.8, 278.8 , 0 );
setMoveKey( spep_7 + 38, 1, 52.9, 275.7 , 0 );
setMoveKey( spep_7 + 40, 1, 52, 272.7 , 0 );
setMoveKey( spep_7 + 42, 1, 51.9, 267.3 , 0 );
setMoveKey( spep_7 + 44, 1, 51.9, 262 , 0 );
setMoveKey( spep_7 + 46, 1, 51.9, 256.6 , 0 );
setMoveKey( spep_7 + 48, 1, 51.8, 251.2 , 0 );
setMoveKey( spep_7 + 50, 1, 51.8, 245.9 , 0 );
setMoveKey( spep_7 + 52, 1, 51.7, 240.5 , 0 );
setMoveKey( spep_7 + 54, 1, 51.7, 235.1 , 0 );
setMoveKey( spep_7 + 56, 1, 51.7, 226.6 , 0 );
setMoveKey( spep_7 + 58, 1, 51.6, 218.1 , 0 );
setMoveKey( spep_7 + 60, 1, 51.6, 209.6 , 0 );
setMoveKey( spep_7 + 62, 1, 51.6, 201.1 , 0 );
setMoveKey( spep_7 + 64, 1, 51.5, 192.6 , 0 );
setMoveKey( spep_7 + 66, 1, 51.5, 184.1 , 0 );
setMoveKey( spep_7 + 68, 1, 51.4, 175.6 , 0 );

setScaleKey( spep_7 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_7 + 2, 1, 2.26, 2.26 );
setScaleKey( spep_7 + 4, 1, 2.18, 2.18 );
setScaleKey( spep_7 + 6, 1, 2.13, 2.13 );
setScaleKey( spep_7 + 8, 1, 2.08, 2.08 );
setScaleKey( spep_7 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_7 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_7 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_7 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_7 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 20, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_7 + 24, 1, 1.85, 1.85 );
setScaleKey( spep_7 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_7 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_7 + 30, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 32, 1, 1.72, 1.72 );
setScaleKey( spep_7 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_7 + 36, 1, 1.66, 1.66 );
setScaleKey( spep_7 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_7 + 40, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_7 + 44, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_7 + 48, 1, 1.51, 1.51 );
setScaleKey( spep_7 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_7 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 56, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_7 + 60, 1, 1.39, 1.39 );
setScaleKey( spep_7 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 64, 1, 1.34, 1.34 );
setScaleKey( spep_7 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_7 + 68, 1, 1.3, 1.3 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 68, 1, 0 );

Tenobaoku = entryEffectLife(  spep_7,  SP_06, 68,0x100,  -1,  0,  0,  0);  --フリーザ激突

setEffScaleKey(  spep_7,  Tenobaoku,  1.0,  1.0);
setEffScaleKey(  spep_7+68,  Tenobaoku,  1.0,  1.0);
setEffMoveKey(  spep_7,  Tenobaoku,  0,  0);
setEffMoveKey(  spep_7+68,  Tenobaoku,  0,  0);
setEffRotateKey(  spep_7,  Tenobaoku,  0);
setEffRotateKey(  spep_7+68,  Tenobaoku,  0);
setEffAlphaKey(  spep_7,  Tenobaoku,  255);
setEffAlphaKey(  spep_7+68,  Tenobaoku,  255);

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 68, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.4, 1.75 );
setEffScaleKey( spep_7 + 68, shuchusen7, 1.4, 1.75 );

setEffRotateKey( spep_7 + 0, shuchusen7, 0 );
setEffRotateKey( spep_7 + 68, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 68, shuchusen7, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_7 + 22,  10014, 32, 0x100, -1, 0, 24.7, -261.7 );--ズドドドッ

setEffMoveKey( spep_7 + 22, ctzudododo, 24.7, -261.7 , 0 );
setEffMoveKey( spep_7 + 24, ctzudododo, 23.9, -240.8 , 0 );
setEffMoveKey( spep_7 + 26, ctzudododo, 23.7, -251 , 0 );
setEffMoveKey( spep_7 + 28, ctzudododo, 22.9, -230 , 0 );
setEffMoveKey( spep_7 + 30, ctzudododo, 22.7, -240.4 , 0 );
setEffMoveKey( spep_7 + 32, ctzudododo, 21.9, -219.3 , 0 );
setEffMoveKey( spep_7 + 34, ctzudododo, 21.7, -229.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzudododo, 20.8, -208.5 , 0 );
setEffMoveKey( spep_7 + 38, ctzudododo, 20.7, -219.1 , 0 );
setEffMoveKey( spep_7 + 40, ctzudododo, 19.8, -197.7 , 0 );
setEffMoveKey( spep_7 + 42, ctzudododo, 19.7, -208.4 , 0 );
setEffMoveKey( spep_7 + 44, ctzudododo, 18.8, -187 , 0 );
setEffMoveKey( spep_7 + 46, ctzudododo, 18.7, -197.8 , 0 );
setEffMoveKey( spep_7 + 48, ctzudododo, 17.8, -176.2 , 0 );
setEffMoveKey( spep_7 + 50, ctzudododo, 17.7, -187.1 , 0 );
setEffMoveKey( spep_7 + 52, ctzudododo, 16.8, -165.4 , 0 );
setEffMoveKey( spep_7 + 54, ctzudododo, 16.6, -176.5 , 0 );
--setEffMoveKey( spep_7 + 56, ctzudododo, 16.1, -171.1 , 0 );

setEffScaleKey( spep_7 + 22, ctzudododo, 2.74, 2.74 );
setEffScaleKey( spep_7 + 24, ctzudododo, 2.75, 2.75 );
setEffScaleKey( spep_7 + 26, ctzudododo, 2.76, 2.76 );
setEffScaleKey( spep_7 + 28, ctzudododo, 2.77, 2.77 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.77, 2.77 );

setEffScaleKey( spep_7 + 30, ctzudododo, 2.78, 2.78 );
setEffScaleKey( spep_7 + 32, ctzudododo, 2.79, 2.79 );
setEffScaleKey( spep_7 + 34, ctzudododo, 2.8, 2.8 );
setEffScaleKey( spep_7 + 36, ctzudododo, 2.81, 2.81 );
setEffScaleKey( spep_7 + 38, ctzudododo, 2.82, 2.82 );
setEffScaleKey( spep_7 + 40, ctzudododo, 2.83, 2.83 );
setEffScaleKey( spep_7 + 42, ctzudododo, 2.84, 2.84 );
setEffScaleKey( spep_7 + 44, ctzudododo, 2.85, 2.85 );
setEffScaleKey( spep_7 + 46, ctzudododo, 2.86, 2.86 );
setEffScaleKey( spep_7 + 48, ctzudododo, 2.87, 2.87 );
setEffScaleKey( spep_7 + 50, ctzudododo, 2.88, 2.88 );
setEffScaleKey( spep_7 + 52, ctzudododo, 2.89, 2.89 );
setEffScaleKey( spep_7 + 54, ctzudododo, 2.9, 2.9 );
--setEffScaleKey( spep_7 + 56, ctzudododo, 2.91, 2.91 );

setEffRotateKey( spep_7 + 22, ctzudododo, -53.6 );
setEffRotateKey( spep_7 + 54, ctzudododo, -53.6 );
--setEffRotateKey( spep_7 + 56, ctzudododo, 16.4 );

setEffAlphaKey( spep_7 + 22, ctzudododo, 14 );
setEffAlphaKey( spep_7 + 24, ctzudododo, 28 );
setEffAlphaKey( spep_7 + 26, ctzudododo, 43 );
setEffAlphaKey( spep_7 + 28, ctzudododo, 57 );
setEffAlphaKey( spep_7 + 30, ctzudododo, 71 );
setEffAlphaKey( spep_7 + 32, ctzudododo, 85 );
setEffAlphaKey( spep_7 + 34, ctzudododo, 99 );
setEffAlphaKey( spep_7 + 36, ctzudododo, 113 );
setEffAlphaKey( spep_7 + 38, ctzudododo, 128 );
setEffAlphaKey( spep_7 + 40, ctzudododo, 142 );
setEffAlphaKey( spep_7 + 42, ctzudododo, 156 );
setEffAlphaKey( spep_7 + 44, ctzudododo, 170 );
setEffAlphaKey( spep_7 + 46, ctzudododo, 184 );
setEffAlphaKey( spep_7 + 48, ctzudododo, 198 );
setEffAlphaKey( spep_7 + 50, ctzudododo, 213 );
setEffAlphaKey( spep_7 + 52, ctzudododo, 227 );
setEffAlphaKey( spep_7 + 54, ctzudododo, 241 );
--setEffAlphaKey( spep_7 + 56, ctzudododo, 255 );

--文字エントリー
ctzan = entryEffectLife( spep_7 + 55,  10010, 13, 0x100, -1, 0, 27.7, -246.9 );--ザンッ
setEffMoveKey( spep_7 + 55, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 56, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 58, ctzan, 27.7, -246.9 , 0 );
setEffMoveKey( spep_7 + 60, ctzan, 16.7, -233.6 , 0 );
setEffMoveKey( spep_7 + 62, ctzan, 30.7, -229.6 , 0 );
setEffMoveKey( spep_7 + 64, ctzan, 19.4, -225.3 , 0 );
setEffMoveKey( spep_7 + 66, ctzan, 23.2, -208 , 0 );
setEffMoveKey( spep_7 + 68, ctzan, 26.8, -211.3 , 0 );

setEffScaleKey( spep_7 + 55, ctzan, 2, 2 );
setEffScaleKey( spep_7 + 68, ctzan, 2, 2 );

setEffRotateKey( spep_7 + 55, ctzan, -16 );
setEffRotateKey( spep_7 + 68, ctzan, -16 );

setEffAlphaKey( spep_7 + 55, ctzan, 255 );
setEffAlphaKey( spep_7 + 68, ctzan, 255 );

stopSe(spep_7+56,Seid,0);
------------------------------------------------------
-- 手伸ばし(左右)
------------------------------------------------------
spep_8 = spep_7+68;

entryFadeBg(spep_8,0,48,0,10,10,10,200);
entryFade(spep_8+1,0,0,8,255,255,255,230);
entryFade(spep_8+40,8,4,8,255,255,255,255);

setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 48, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 + 20, 1, 105 );

--敵の動き
setMoveKey( spep_8 + 0, 1, -155.9, 234.1 , 0 );
setMoveKey( spep_8 + 2, 1, -124.4, 213.5 , 0 );
setMoveKey( spep_8 + 4, 1, -92.8, 192.8 , 0 );
setMoveKey( spep_8 + 6, 1, -61, 172 , 0 );
setMoveKey( spep_8 + 8, 1, -29.1, 151 , 0 );
setMoveKey( spep_8 + 10, 1, 2.9, 129.8 , 0 );
setMoveKey( spep_8 + 12, 1, 35.1, 108.5 , 0 );
setMoveKey( spep_8 + 14, 1, 67.3, 87 , 0 );
setMoveKey( spep_8 + 16, 1, 99.7, 65.4 , 0 );
setMoveKey( spep_8 + 19, 1, 170.6, 56.5 , 0 );
setMoveKey( spep_8 + 20, 1, 330.5, 14.3 , 0 );
setMoveKey( spep_8 + 22, 1, 319.6, 84.6 , 0 );
setMoveKey( spep_8 + 24, 1, 308.4, 148.6 , 0 );
setMoveKey( spep_8 + 26, 1, 297.1, 205.9 , 0 );
setMoveKey( spep_8 + 28, 1, 296.8, 206.9 , 0 );
setMoveKey( spep_8 + 30, 1, 313.6, 220 , 0 );
setMoveKey( spep_8 + 32, 1, 331.1, 233.4 , 0 );
setMoveKey( spep_8 + 34, 1, 332.4, 232.1 , 0 );
setMoveKey( spep_8 + 36, 1, 333.7, 230.8 , 0 );
setMoveKey( spep_8 + 38, 1, 335, 229.5 , 0 );
setMoveKey( spep_8 + 40, 1, 336.4, 228.2 , 0 );
setMoveKey( spep_8 + 42, 1, 337.8, 227 , 0 );
setMoveKey( spep_8 + 44, 1, 339.3, 225.8 , 0 );
setMoveKey( spep_8 + 46, 1, 340.8, 224.6 , 0 );
setMoveKey( spep_8 + 48, 1, 342.4, 223.4 , 0 );

setScaleKey( spep_8 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_8 + 2, 1, 1.78, 1.78 );
setScaleKey( spep_8 + 4, 1, 1.85, 1.85 );
setScaleKey( spep_8 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_8 + 8, 1, 2, 2 );
setScaleKey( spep_8 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 12, 1, 2.15, 2.15 );
setScaleKey( spep_8 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_8 + 16, 1, 2.3, 2.3 );
setScaleKey( spep_8 + 19, 1, 3.09, 3.09 );
setScaleKey( spep_8 + 20, 1, 2.48, 2.48 );
setScaleKey( spep_8 + 22, 1, 2.16, 2.16 );
setScaleKey( spep_8 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_8 + 26, 1, 1.59, 1.59 );
setScaleKey( spep_8 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 32, 1, 1, 1 );
setScaleKey( spep_8 + 34, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_8 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 40, 1, 0.9, 0.9 );
setScaleKey( spep_8 + 42, 1, 0.88, 0.88 );
setScaleKey( spep_8 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_8 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 48, 1, 0.8, 0.8 );

setRotateKey( spep_8 + 0, 1, 30 );
setRotateKey( spep_8 + 2, 1, 32.9 );
setRotateKey( spep_8 + 4, 1, 35.7 );
setRotateKey( spep_8 + 6, 1, 38.6 );
setRotateKey( spep_8 + 8, 1, 41.5 );
setRotateKey( spep_8 + 10, 1, 44.3 );
setRotateKey( spep_8 + 12, 1, 47.2 );
setRotateKey( spep_8 + 14, 1, 50.1 );
setRotateKey( spep_8 + 16, 1, 52.9 );
setRotateKey( spep_8 + 19, 1, 55.8 );
setRotateKey( spep_8 + 20, 1, 77 );
setRotateKey( spep_8 + 22, 1, 86 );
setRotateKey( spep_8 + 24, 1, 95 );
setRotateKey( spep_8 + 26, 1, 104 );
setRotateKey( spep_8 + 28, 1, 113.7 );
setRotateKey( spep_8 + 30, 1, 123.3 );
setRotateKey( spep_8 + 32, 1, 133 );
setRotateKey( spep_8 + 34, 1, 136.5 );
setRotateKey( spep_8 + 36, 1, 140 );
setRotateKey( spep_8 + 38, 1, 143.5 );
setRotateKey( spep_8 + 40, 1, 147 );
setRotateKey( spep_8 + 42, 1, 150.5 );
setRotateKey( spep_8 + 44, 1, 154 );
setRotateKey( spep_8 + 46, 1, 157.5 );
setRotateKey( spep_8 + 48, 1, 161 );

TenobaRight = entryEffectLife(  spep_8+2,  SP_07, 48,0x100,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8+2,  TenobaRight,  1.0,  1.0);
setEffScaleKey(  spep_8+2+48,  TenobaRight,  1.0,  1.0);
setEffMoveKey(  spep_8+2,  TenobaRight,  0,  0);
setEffMoveKey(  spep_8+2+48,  TenobaRight,  0,  0);
setEffRotateKey(  spep_8+2,  TenobaRight,  0);
setEffRotateKey(  spep_8+2+48,  TenobaRight,  0);
setEffAlphaKey(  spep_8+2,  TenobaRight,  255);
setEffAlphaKey(  spep_8+2+48,  TenobaRight,  255);

TenobaLeft = entryEffectLife(  spep_8+2,  SP_08, 48,0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8+2,  TenobaLeft,  1.0,  1.0);
setEffScaleKey(  spep_8+2+48,  TenobaLeft,  1.0,  1.0);
setEffMoveKey(  spep_8+2,  TenobaLeft,  0,  0);
setEffMoveKey(  spep_8+2+48,  TenobaLeft,  0,  0);
setEffRotateKey(  spep_8+2,  TenobaLeft,  0);
setEffRotateKey(  spep_8+2+48,  TenobaLeft,  0);
setEffAlphaKey(  spep_8+2,  TenobaLeft,  255);
setEffAlphaKey(  spep_8+2+48,  TenobaLeft,  255);

--entryFade(spep_8-2+16,2,4,2,255,255,255,255);

--文字エントリー
ctdogon = entryEffectLife( spep_8-2 + 18,  10018, 20, 0x100, -1, 0, -7.3, 99 );--ドゴォンッ

setEffMoveKey( spep_8-2 + 18, ctdogon, -7.3, 99 , 0 );
setEffMoveKey( spep_8-2 + 20, ctdogon, -20.6, 133 , 0 );
setEffMoveKey( spep_8-2 + 22, ctdogon, -10.9, 163.5 , 0 );
setEffMoveKey( spep_8-2 + 24, ctdogon, -30.3, 183.7 , 0 );
setEffMoveKey( spep_8-2 + 26, ctdogon, -25.8, 186.1 , 0 );
setEffMoveKey( spep_8-2 + 28, ctdogon, -28.7, 196.6 , 0 );
setEffMoveKey( spep_8-2 + 30, ctdogon, -51.9, 200.3 , 0 );
setEffMoveKey( spep_8-2 + 32, ctdogon, -62.2, 181.8 , 0 );
setEffMoveKey( spep_8-2 + 34, ctdogon, -76.9, 191.4 , 0 );
setEffMoveKey( spep_8-2 + 36, ctdogon, -82, 176.9 , 0 );
setEffMoveKey( spep_8-2 + 38, ctdogon, -92.4, 172 , 0 );

setEffScaleKey( spep_8-2 + 18, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_8-2 + 20, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_8-2 + 22, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_8-2 + 24, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_8-2 + 26, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_8-2 + 28, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_8-2 + 30, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_8-2 + 32, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_8-2 + 34, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_8-2 + 36, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_8-2 + 38, ctdogon, 2.69, 2.69 );

setEffRotateKey( spep_8-2 + 18, ctdogon, -27.8 );
setEffRotateKey( spep_8-2 + 20, ctdogon, -27.2 );
setEffRotateKey( spep_8-2 + 22, ctdogon, -26.7 );
setEffRotateKey( spep_8-2 + 38, ctdogon, -26.7 );

setEffAlphaKey( spep_8-2 + 18, ctdogon, 255 );
setEffAlphaKey( spep_8-2 + 28, ctdogon, 255 );

setEffAlphaKey( spep_8-2 + 30, ctdogon, 204 );
setEffAlphaKey( spep_8-2 + 32, ctdogon, 153 );
setEffAlphaKey( spep_8-2 + 34, ctdogon, 102 );
setEffAlphaKey( spep_8-2 + 36, ctdogon, 51 );
setEffAlphaKey( spep_8-2 + 38, ctdogon, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_8 + 0,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_8 + 48, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchusen8, 1.4, 1.75 );
setEffScaleKey( spep_8 + 48, shuchusen8, 1.4, 1.75 );

setEffRotateKey( spep_8 + 0, shuchusen8, 0 );
setEffRotateKey( spep_8 + 48, shuchusen8, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen8, 255 );
setEffAlphaKey( spep_8 + 48, shuchusen8, 255 );

playSe(spep_8+20,1010);
------------------------------------------------------
-- LAST
------------------------------------------------------
spep_9=spep_8+50;

--敵の動き--
setDisp( spep_9 + 0, 1, 1 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_9 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_9 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_9 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_9 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_9 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_9 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_9 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_9 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 2, 1, 105 );
setRotateKey( spep_9 + 4, 1, 240 );
setRotateKey( spep_9 + 6, 1, 405 );
setRotateKey( spep_9 + 8, 1, 600 );
setRotateKey( spep_9 + 10, 1, 825 );
setRotateKey( spep_9 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setDamage( spep_9 +16, 1, 0);  -- ダメージ振動等
setShake(spep_9+8,6,15);
setShake(spep_9+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_9 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_9 + 14, ctGa, 30, 10);

setEffMoveKey( spep_9 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_9 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_9+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_9+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_9 + 14, ctGa, -40 );
setEffRotateKey( spep_9 + 16, ctGa, -31 );
setEffRotateKey( spep_9 + 18, ctGa, -40 );
setEffRotateKey( spep_9 + 20, ctGa, -31 );
setEffRotateKey( spep_9 + 22, ctGa, -40 );
setEffRotateKey( spep_9 + 24, ctGa, -31);
setEffRotateKey( spep_9 + 26, ctGa, -40 );
setEffRotateKey( spep_9 + 28, ctGa, -31);
setEffRotateKey( spep_9 + 30, ctGa, -40 );

setEffAlphaKey( spep_9 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_9+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_9+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_9+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_9+2, SE_11);
-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+110);

end