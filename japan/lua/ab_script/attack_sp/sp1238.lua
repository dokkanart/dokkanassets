--sp1238 ヒット_時間の牢獄
--sp_effect_a3_00055--

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
SP_01=152600;
SP_02=152601;
SP_03=152602;
SP_04=152603;
SP_05=152604;
SP_06=152605;
SP_07=152606;
SP_08=152607;
SP_09=152608;

--敵側
SP_01x=	152600;
SP_02x=	152609;
SP_03x=	152602;
SP_04x=	152603;
SP_05x=	152610;
SP_06x=	152605;
SP_07x=	152611;
SP_08x=	152607;
SP_09x=	152608;

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
--Scene01 歩き＆瞬間移動（顔カットインあり）　140F 
------------------------------------------------------
spep_0=0;

--whitefade
entryFade(spep_0,0,0,6,255,255,255,255); --whitefade
entryFade(spep_0+90,0,0,6,255,255,255,180); --whitefade

--エフェクト (138F)
walking=entryEffectLife(spep_0,SP_01,136,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, walking, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, walking, 0, 0 , 0 );
setEffScaleKey(spep_0,walking,1.0,1.0);
setEffScaleKey(spep_0+136,walking,1.0,1.0);
setEffRotateKey(spep_0,walking,0);
setEffRotateKey(spep_0+136,walking,0);
setEffAlphaKey(spep_0,walking,255);
setEffAlphaKey(spep_0+136,walking,255);


ctShun = entryEffectLife( spep_0 ,  10011, 112, 0x100, -1, 0, 16, 380.6 ); --シュンッ
setEffMoveKey( spep_0 , ctShun, 16, 380.6 , 0 );
setEffMoveKey( spep_0 + 90, ctShun, 16, 380.6 , 0 );
setEffMoveKey( spep_0 + 92, ctShun, 16, 380.7 , 0 );
setEffMoveKey( spep_0 + 94, ctShun, 16, 380.7 , 0 );
setEffMoveKey( spep_0 + 96, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 98, ctShun, 16.1, 380.6 , 0 );
setEffMoveKey( spep_0 + 100, ctShun, 16.2, 380.6 , 0 );
setEffMoveKey( spep_0 + 104, ctShun, 16.2, 380.6 , 0 );
setEffMoveKey( spep_0 + 106, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 110, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 112, ctShun, 16, 380.8 , 0 );

setEffScaleKey( spep_0 , ctShun, 1.78, 1.78 );
setEffScaleKey( spep_0 + 90, ctShun, 1.78, 1.78 );
setEffScaleKey( spep_0 + 92, ctShun, 2.69, 2.69 );
setEffScaleKey( spep_0 + 94, ctShun, 2.55, 2.55 );
setEffScaleKey( spep_0 + 96, ctShun, 2.4, 2.4 );
setEffScaleKey( spep_0 + 98, ctShun, 2.26, 2.26 );
setEffScaleKey( spep_0 + 100, ctShun, 2.11, 2.11 );
setEffScaleKey( spep_0 + 102, ctShun, 1.97, 1.97 );
setEffScaleKey( spep_0 + 104, ctShun, 1.94, 1.94 );
setEffScaleKey( spep_0 + 106, ctShun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 108, ctShun, 1.89, 1.89 );
setEffScaleKey( spep_0 + 110, ctShun, 1.87, 1.87 );
setEffScaleKey( spep_0 + 112, ctShun, 1.84, 1.84 );

setEffRotateKey( spep_0 , ctShun, 11.1 );
setEffRotateKey( spep_0 + 112, ctShun, 11.1 );

setEffAlphaKey( spep_0 + 0, ctShun, 0 );
setEffAlphaKey( spep_0 + 96, ctShun, 0 );
setEffAlphaKey( spep_0 + 97, ctShun, 255 );
setEffAlphaKey( spep_0 + 98, ctShun, 255 );
setEffAlphaKey( spep_0 + 102, ctShun, 255 );
setEffAlphaKey( spep_0 + 104, ctShun, 204 );
setEffAlphaKey( spep_0 + 106, ctShun, 153 );
setEffAlphaKey( spep_0 + 108, ctShun, 102 );
setEffAlphaKey( spep_0 + 110, ctShun, 51 );
setEffAlphaKey( spep_0 + 112, ctShun, 0 );
--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+98 ; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge-12, 1042);
pauseAll( SP_dodge, 67);
--敵の位置固定
setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setDisp(SP_dodge+9, 0, 0);

setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);

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
--顔カットイン
speff=entryEffect(spep_0+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+24,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+28,ctgogo,0,520,0);
setEffMoveKey(spep_0+98,ctgogo,0,520,0);

setEffScaleKey(spep_0+28, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+98, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 97, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 0 );

setEffRotateKey(spep_0+28,ctgogo,0);
setEffRotateKey(spep_0+98,ctgogo,0);

--集中線
shuchusen0 = entryEffectLife( spep_0 ,  906, 136, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 , shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, shuchusen0, 0, 0 , 0 );
--
setEffScaleKey( spep_0 , shuchusen0, 1.05, 1.07 );
setEffScaleKey( spep_0 + 136, shuchusen0, 1.05, 1.07 );
--
setEffRotateKey( spep_0, shuchusen0, 180 );
setEffRotateKey( spep_0 + 136, shuchusen0, 180 );

-- 
setEffAlphaKey( spep_0 , shuchusen0, 0 );
setEffAlphaKey( spep_0 + 86, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 87, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 88, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 136, shuchusen0, 255 );
--setEffAlphaKey( spep_0 + 96, shuchusen0, 234 );
--setEffAlphaKey( spep_0 + 98, shuchusen0, 213 );
--setEffAlphaKey( spep_0 + 100, shuchusen0, 191 );
--setEffAlphaKey( spep_0 + 102, shuchusen0, 170 );
--setEffAlphaKey( spep_0 + 104, shuchusen0, 149 );
--setEffAlphaKey( spep_0 + 106, shuchusen0, 128 );
--setEffAlphaKey( spep_0 + 108, shuchusen0, 106 );
--setEffAlphaKey( spep_0 + 110, shuchusen0, 85 );
--setEffAlphaKey( spep_0 + 112, shuchusen0, 64 );
--setEffAlphaKey( spep_0 + 114, shuchusen0, 42 );
--setEffAlphaKey( spep_0 + 116, shuchusen0, 21 );
--setEffAlphaKey( spep_0 + 118, shuchusen0, 0 );

--SE
--playSe(spep_0,1029); --足音 いらない
--playSe(spep_0+26,1029); --足音　いらない
playSe(spep_0+40,SE_04); --ゴゴゴ
playSe(spep_0+90,44); --瞬間移動音
------------------------------------------------------
--Scene05 腹パンチからの敵吹っ飛び (178F) 
------------------------------------------------------
spep_1=spep_0+136;

--whitefade
entryFade(spep_1,0,0,6,255,255,255,255); --whitefade
entryFade(spep_1+130,0,0,8,255,255,255,180); --whitefade
entryFade(spep_1+174,4,2,0,255,255,255,180); --whitefade

--敵の動き--
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 + 60, 1, 108 );
changeAnime( spep_1 + 126, 1, 5 );

setMoveKey( spep_1 + 0, 1, -35.6, -263.4 , 0 );
setMoveKey( spep_1 + 2, 1, -21.7, -250.5 , 0 );
setMoveKey( spep_1 + 4, 1, -46.4, -170.3 , 0 );
setMoveKey( spep_1 + 6, 1, -38, -164.8 , 0 );
setMoveKey( spep_1 + 8, 1, -46.4, -134.7 , 0 );
setMoveKey( spep_1 + 10, 1, -29.3, -146.9 , 0 );
setMoveKey( spep_1 + 12, 1, -32.6, -119.5 , 0 );
setMoveKey( spep_1 + 14, 1, -20.6, -126.8 , 0 );
setMoveKey( spep_1 + 16, 1, -18.9, -104.3 , 0 );
setMoveKey( spep_1 + 18, 1, -3.9, -110.8 , 0 );
setMoveKey( spep_1 + 20, 1, -5.1, -89.1 , 0 );
setMoveKey( spep_1 + 22, 1, 4.8, -98.7 , 0 );
setMoveKey( spep_1 + 24, 1, 8.7, -73.9 , 0 );
setMoveKey( spep_1 + 26, 1, 21.5, -78.6 , 0 );
setMoveKey( spep_1 + 28, 1, 22.5, -58.7 , 0 );
setMoveKey( spep_1 + 30, 1, 30.2, -66.5 , 0 );
setMoveKey( spep_1 + 32, 1, 31.4, -41.9 , 0 );
setMoveKey( spep_1 + 34, 1, 37.6, -43.6 , 0 );
setMoveKey( spep_1 + 36, 1, 35.4, -23.6 , 0 );
setMoveKey( spep_1 + 38, 1, 36.9, -24.7 , 0 );
setMoveKey( spep_1 + 40, 1, 39.5, -5.4 , 0 );
setMoveKey( spep_1 + 42, 1, 44.2, -9.8 , 0 );
setMoveKey( spep_1 + 44, 1, 43.5, 12.9 , 0 );
setMoveKey( spep_1 + 46, 1, 47.5, 13.1 , 0 );
setMoveKey( spep_1 + 48, 1, 47.6, 31.2 , 0 );
setMoveKey( spep_1 + 50, 1, 46.8, 28.1 , 0 );
setMoveKey( spep_1 + 52, 1, 51.6, 49.5 , 0 );
setMoveKey( spep_1 + 54, 1, 54.1, 51 , 0 );
setMoveKey( spep_1 + 56, 1, 55.7, 67.8 , 0 );
setMoveKey( spep_1 + 59, 1, 53.4, 65.9 , 0 );
setMoveKey( spep_1 + 60, 1, 68.2, 87.6 , 0 );
setMoveKey( spep_1 + 62, 1, 45.1, 84.6 , 0 );
setMoveKey( spep_1 + 64, 1, 33.2, 90.1 , 0 );
setMoveKey( spep_1 + 66, 1, 12.1, 84.9 , 0 );
setMoveKey( spep_1 + 68, 1, 9.7, 97.7 , 0 );
setMoveKey( spep_1 + 70, 1, 1.7, 105.4 , 0 );
setMoveKey( spep_1 + 72, 1, 9.7, 114.9 , 0 );
setMoveKey( spep_1 + 74, 1, 18.2, 124.6 , 0 );
setMoveKey( spep_1 + 76, 1, 26.4, 134 , 0 );
setMoveKey( spep_1 + 78, 1, 34.4, 143 , 0 );
setMoveKey( spep_1 + 80, 1, 42.1, 151.7 , 0 );
setMoveKey( spep_1 + 82, 1, 49.5, 160.1 , 0 );
setMoveKey( spep_1 + 84, 1, 56.7, 168.1 , 0 );
setMoveKey( spep_1 + 86, 1, 63.6, 175.8 , 0 );
setMoveKey( spep_1 + 88, 1, 70.3, 183.1 , 0 );
setMoveKey( spep_1 + 90, 1, 76.7, 190.2 , 0 );
setMoveKey( spep_1 + 92, 1, 82.8, 196.8 , 0 );
setMoveKey( spep_1 + 94, 1, 88.7, 203.2 , 0 );
setMoveKey( spep_1 + 96, 1, 89.2, 202.2 , 0 );
setMoveKey( spep_1 + 98, 1, 89.8, 201.3 , 0 );
setMoveKey( spep_1 + 100, 1, 90.5, 200.5 , 0 );
setMoveKey( spep_1 + 102, 1, 91.2, 199.7 , 0 );
setMoveKey( spep_1 + 104, 1, 92.1, 199 , 0 );
setMoveKey( spep_1 + 106, 1, 93, 198.4 , 0 );
setMoveKey( spep_1 + 108, 1, 94, 197.8 , 0 );
setMoveKey( spep_1 + 110, 1, 95.2, 197.4 , 0 );
setMoveKey( spep_1 + 112, 1, 96.4, 196.9 , 0 );
setMoveKey( spep_1 + 114, 1, 97.7, 196.6 , 0 );
setMoveKey( spep_1 + 116, 1, 99.1, 196.3 , 0 );
setMoveKey( spep_1 + 118, 1, 100.5, 196.1 , 0 );
setMoveKey( spep_1 + 120, 1, 102.1, 196 , 0 );
setMoveKey( spep_1 + 122, 1, 103.8, 195.9 , 0 );
setMoveKey( spep_1 + 125, 1, 105.5, 195.9 , 0 );
setMoveKey( spep_1 + 126, 1, 66.4, 186.8 , 0 );
setMoveKey( spep_1 + 128, 1, 72.5, 201.4 , 0 );
setMoveKey( spep_1 + 130, 1, 67.1, 205.5 , 0 );
setMoveKey( spep_1 + 132, 1, 78.1, 219.4 , 0 );
setMoveKey( spep_1 + 134, 1, 77.7, 227 , 0 );
setMoveKey( spep_1 + 136, 1, 85.9, 244.1 , 0 );
setMoveKey( spep_1 + 138, 1, 82.4, 250.8 , 0 );
setMoveKey( spep_1 + 140, 1, 95.5, 275.3 , 0 );
setMoveKey( spep_1 + 142, 1, 101.6, 281.4 , 0 );
setMoveKey( spep_1 + 144, 1, 115.1, 302.6 , 0 );
setMoveKey( spep_1 + 146, 1, 116, 311 , 0 );
setMoveKey( spep_1 + 148, 1, 132.3, 326.6 , 0 );
setMoveKey( spep_1 + 150, 1, 136.1, 333.4 , 0 );
setMoveKey( spep_1 + 152, 1, 147.2, 347.3 , 0 );
setMoveKey( spep_1 + 154, 1, 145.7, 348.3 , 0 );
setMoveKey( spep_1 + 156, 1, 159.6, 364.6 , 0 );
setMoveKey( spep_1 + 158, 1, 160.9, 368 , 0 );
setMoveKey( spep_1 + 160, 1, 166, 370.1 , 0 );
setMoveKey( spep_1 + 162, 1, 159.2, 360 , 0 );
setMoveKey( spep_1 + 164, 1, 168.6, 365.5 , 0 );
setMoveKey( spep_1 + 166, 1, 166.2, 358.6 , 0 );
setMoveKey( spep_1 + 168, 1, 172, 359.5 , 0 );
setMoveKey( spep_1 + 170, 1, 173.9, 356 , 0 );
setMoveKey( spep_1 + 172, 1, 176.1, 352.1 , 0 );
setMoveKey( spep_1 + 174, 1, 178.5, 348 , 0 );
setMoveKey( spep_1 + 176, 1, 181, 343.5 , 0 );
setMoveKey( spep_1 + 178, 1, 183.7, 338.6 , 0 );

setScaleKey( spep_1 + 0, 1, 18.18, 18.18 );
setScaleKey( spep_1 + 2, 1, 14.18, 14.18 );
setScaleKey( spep_1 + 4, 1, 11.14, 11.14 );
setScaleKey( spep_1 + 6, 1, 9.05, 9.05 );
setScaleKey( spep_1 + 8, 1, 7.93, 7.93 );
setScaleKey( spep_1 + 10, 1, 7.65, 7.65 );
setScaleKey( spep_1 + 12, 1, 7.36, 7.36 );
setScaleKey( spep_1 + 14, 1, 7.08, 7.08 );
setScaleKey( spep_1 + 16, 1, 6.79, 6.79 );
setScaleKey( spep_1 + 18, 1, 6.51, 6.51 );
setScaleKey( spep_1 + 20, 1, 6.22, 6.22 );
setScaleKey( spep_1 + 22, 1, 5.94, 5.94 );
setScaleKey( spep_1 + 24, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 26, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 28, 1, 5.08, 5.08 );
setScaleKey( spep_1 + 30, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 32, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 34, 1, 4.39, 4.39 );
setScaleKey( spep_1 + 36, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 38, 1, 3.99, 3.99 );
setScaleKey( spep_1 + 40, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 42, 1, 3.59, 3.59 );
setScaleKey( spep_1 + 44, 1, 3.39, 3.39 );
setScaleKey( spep_1 + 46, 1, 3.19, 3.19 );
setScaleKey( spep_1 + 48, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 50, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 52, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 54, 1, 2.39, 2.39 );
setScaleKey( spep_1 + 56, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 59, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 60, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 62, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 64, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 68, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 72, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 74, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 78, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 80, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 82, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 84, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 88, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 90, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 92, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 98, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 100, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 104, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 106, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 108, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 110, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 112, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 114, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 120, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 122, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 125, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 126, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 130, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 132, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 138, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 140, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 142, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 144, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 146, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 148, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 150, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 152, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 154, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 156, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 158, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 160, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 162, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 164, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 166, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 168, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 170, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 172, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 174, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 176, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 178, 1, 0.23, 0.23 );

setRotateKey( spep_1 + 0, 1, -77.9 );
setRotateKey( spep_1 + 2, 1, -78.7 );
setRotateKey( spep_1 + 4, 1, -79.3 );
setRotateKey( spep_1 + 6, 1, -79.7 );
setRotateKey( spep_1 + 8, 1, -79.9 );
setRotateKey( spep_1 + 59, 1, -79.9 );
setRotateKey( spep_1 + 60, 1, 5.5 );
setRotateKey( spep_1 + 62, 1, 4.4 );
setRotateKey( spep_1 + 64, 1, 3.3 );
setRotateKey( spep_1 + 66, 1, 2.2 );
setRotateKey( spep_1 + 68, 1, 1.1 );
setRotateKey( spep_1 + 70, 1, 0 );
setRotateKey( spep_1 + 72, 1, 0.7 );
setRotateKey( spep_1 + 74, 1, 1.4 );
setRotateKey( spep_1 + 76, 1, 2.1 );
setRotateKey( spep_1 + 78, 1, 2.8 );
setRotateKey( spep_1 + 80, 1, 3.4 );
setRotateKey( spep_1 + 82, 1, 4 );
setRotateKey( spep_1 + 84, 1, 4.6 );
setRotateKey( spep_1 + 86, 1, 5.2 );
setRotateKey( spep_1 + 88, 1, 5.7 );
setRotateKey( spep_1 + 90, 1, 6.3 );
setRotateKey( spep_1 + 92, 1, 6.8 );
setRotateKey( spep_1 + 94, 1, 7.3 );
setRotateKey( spep_1 + 96, 1, 7.5 );
setRotateKey( spep_1 + 98, 1, 7.8 );
setRotateKey( spep_1 + 100, 1, 8 );
setRotateKey( spep_1 + 102, 1, 8.3 );
setRotateKey( spep_1 + 104, 1, 8.6 );
setRotateKey( spep_1 + 106, 1, 9 );
setRotateKey( spep_1 + 108, 1, 9.4 );
setRotateKey( spep_1 + 110, 1, 9.8 );
setRotateKey( spep_1 + 112, 1, 10.2 );
setRotateKey( spep_1 + 114, 1, 10.6 );
setRotateKey( spep_1 + 116, 1, 11.1 );
setRotateKey( spep_1 + 118, 1, 11.6 );
setRotateKey( spep_1 + 120, 1, 12.2 );
setRotateKey( spep_1 + 122, 1, 12.7 );
setRotateKey( spep_1 + 125, 1, 13.3 );
setRotateKey( spep_1 + 126, 1, 36.9 );
setRotateKey( spep_1 + 128, 1, 37.2 );
setRotateKey( spep_1 + 130, 1, 37.7 );
setRotateKey( spep_1 + 132, 1, 38.2 );
setRotateKey( spep_1 + 134, 1, 38.8 );
setRotateKey( spep_1 + 136, 1, 39.5 );
setRotateKey( spep_1 + 138, 1, 40.3 );
setRotateKey( spep_1 + 140, 1, 41.2 );
setRotateKey( spep_1 + 142, 1, 41.8 );
setRotateKey( spep_1 + 144, 1, 42.4 );
setRotateKey( spep_1 + 146, 1, 42.9 );
setRotateKey( spep_1 + 148, 1, 43.4 );
setRotateKey( spep_1 + 150, 1, 43.9 );
setRotateKey( spep_1 + 152, 1, 44.3 );
setRotateKey( spep_1 + 154, 1, 44.7 );
setRotateKey( spep_1 + 156, 1, 45.1 );
setRotateKey( spep_1 + 158, 1, 45.4 );
setRotateKey( spep_1 + 160, 1, 45.9 );
setRotateKey( spep_1 + 162, 1, 46.6 );
setRotateKey( spep_1 + 164, 1, 47.4 );
setRotateKey( spep_1 + 166, 1, 48.2 );
setRotateKey( spep_1 + 168, 1, 49.2 );
setRotateKey( spep_1 + 170, 1, 50.2 );
setRotateKey( spep_1 + 172, 1, 51.4 );
setRotateKey( spep_1 + 174, 1, 52.6 );
setRotateKey( spep_1 + 176, 1, 54 );
setRotateKey( spep_1 + 178, 1, 55.4 );

--エフェクト--
harapan=entryEffectLife(spep_1+2,SP_02,172,0x100,-1,0,0,0);

setEffMoveKey( spep_1+2 + 0, harapan, 0, 0 , 0 );
setEffMoveKey( spep_1+176, harapan, 0, 0 , 0 );
setEffScaleKey(spep_1+2,harapan,1.0,1.0);
setEffScaleKey(spep_1+176,harapan,1.0,1.0);
setEffRotateKey(spep_1+2,harapan,0);
setEffRotateKey(spep_1+176,harapan,0);
setEffAlphaKey(spep_1+2,harapan,255);
setEffAlphaKey(spep_1+176,harapan,255);

--エフェクト--
harapanr=entryEffectLife(spep_1+2,SP_03,174,0x80,-1,0,0,0);

setEffMoveKey( spep_1+2 + 0, harapanr, 0, 0 , 0 );
setEffMoveKey( spep_1+176, harapanr, 0, 0 , 0 );
setEffScaleKey(spep_1+2,harapanr,1.0,1.0);
setEffScaleKey(spep_1+176,harapanr,1.0,1.0);
setEffRotateKey(spep_1+2,harapanr,0);
setEffRotateKey(spep_1+176,harapanr,0);
setEffAlphaKey(spep_1+2,harapanr,255);
setEffAlphaKey(spep_1+176,harapanr,255);

--書き文字エントリー
--ズンッ(10016)
ctZun = entryEffectLife( spep_1 + 6,  10016, 50, 0x100, -1, 0, -87.9, 358.4 );
setEffMoveKey( spep_1 + 6, ctZun, -87.9, 358.4 , 0 );
setEffMoveKey( spep_1 + 8, ctZun, -88, 358.4 , 0 );
setEffMoveKey( spep_1 + 10, ctZun, -97, 361.9 , 0 );
setEffMoveKey( spep_1 + 12, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 14, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 16, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 18, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 20, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 22, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 24, ctZun, -88.2, 358.2 , 0 );
setEffMoveKey( spep_1 + 26, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 28, ctZun, -88.2, 358.2 , 0 );
setEffMoveKey( spep_1 + 30, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 32, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 34, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 36, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 38, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 40, ctZun, -88.1, 358.1 , 0 );
setEffMoveKey( spep_1 + 42, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 44, ctZun, -88.1, 358.1 , 0 );
setEffMoveKey( spep_1 + 46, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 48, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 50, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 52, ctZun, -95.6, 361.2 , 0 );
setEffMoveKey( spep_1 + 54, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 56, ctZun, -88.3, 358.4 , 0 );

setEffScaleKey( spep_1 + 6, ctZun, 1.86, 1.86 );
setEffScaleKey( spep_1 + 8, ctZun, 3.8, 3.8 );
setEffScaleKey( spep_1 + 10, ctZun, 3.23, 3.23 );
setEffScaleKey( spep_1 + 12, ctZun, 2.66, 2.66 );
setEffScaleKey( spep_1 + 28, ctZun, 2.66, 2.66 );
setEffScaleKey( spep_1 + 30, ctZun, 2.67, 2.67 );
setEffScaleKey( spep_1 + 48, ctZun, 2.67, 2.67 );
setEffScaleKey( spep_1 + 50, ctZun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 52, ctZun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 54, ctZun, 2.69, 2.69 );
setEffScaleKey( spep_1 + 56, ctZun, 2.69, 2.69 );

setEffRotateKey( spep_1 + 6, ctZun, -20.3 );
setEffRotateKey( spep_1 + 30, ctZun, -20.3 );
setEffRotateKey( spep_1 + 32, ctZun, -20.4 );
setEffRotateKey( spep_1 + 50, ctZun, -20.4 );
setEffRotateKey( spep_1 + 52, ctZun, -20.3 );
setEffRotateKey( spep_1 + 56, ctZun, -20.3 );

setEffAlphaKey( spep_1 + 6, ctZun, 255 );
setEffAlphaKey( spep_1 + 48, ctZun, 255 );
setEffAlphaKey( spep_1 + 50, ctZun, 195 );
setEffAlphaKey( spep_1 + 52, ctZun, 134 );
setEffAlphaKey( spep_1 + 54, ctZun, 74 );
setEffAlphaKey( spep_1 + 56, ctZun, 13 );

--ドゴォン(10018)
ctDogown = entryEffectLife( spep_1 + 130,  10018, 36, 0x100, -1, 0, -66.6, 416.9 );
setEffMoveKey( spep_1 + 130,  ctDogown, -66.6, 416.9 , 0 );
setEffMoveKey( spep_1+ 132,  ctDogown, -66.4, 414.8 , 0 );
setEffMoveKey( spep_1+ 134,  ctDogown, -65.4, 412.3 , 0 );
setEffMoveKey( spep_1+ 136,  ctDogown, -69, 413.9 , 0 );
setEffMoveKey( spep_1+ 138,  ctDogown, -65.7, 413 , 0 );
setEffMoveKey( spep_1+ 140,  ctDogown, -67, 414.3 , 0 );
setEffMoveKey( spep_1+ 142,  ctDogown, -65.7, 413.6 , 0 );
setEffMoveKey( spep_1+ 144,  ctDogown, -67.8, 414.5 , 0 );
setEffMoveKey( spep_1+ 146,  ctDogown, -65.7, 413.7 , 0 );
setEffMoveKey( spep_1+ 148,  ctDogown, -67.8, 414.6 , 0 );
setEffMoveKey( spep_1+ 150,  ctDogown, -65.8, 413.8 , 0 );
setEffMoveKey( spep_1+ 152,  ctDogown, -67.8, 414.7 , 0 );
setEffMoveKey( spep_1+ 154,  ctDogown, -65.8, 413.9 , 0 );
setEffMoveKey( spep_1+ 156,  ctDogown, -67.8, 414.8 , 0 );
setEffMoveKey( spep_1+ 158,  ctDogown, -65.8, 414 , 0 );
setEffMoveKey( spep_1+ 160,  ctDogown, -67.8, 414.8 , 0 );
setEffMoveKey( spep_1+ 162,  ctDogown, -65.9, 414.1 , 0 );
setEffMoveKey( spep_1+ 164,  ctDogown, -67.8, 414.9 , 0 );
setEffMoveKey( spep_1+ 166,  ctDogown, -65.9, 414.2 , 0 );

setEffScaleKey( spep_1+ 130,  ctDogown, 1.2, 1.2 );
setEffScaleKey( spep_1+ 132,  ctDogown, 2.56, 2.56 );
setEffScaleKey( spep_1+ 134,  ctDogown, 3.25, 3.25 );
setEffScaleKey( spep_1+ 136,  ctDogown, 3.09, 3.09 );
setEffScaleKey( spep_1+ 138,  ctDogown, 2.94, 2.94 );
setEffScaleKey( spep_1+ 140,  ctDogown, 2.78, 2.78 );
setEffScaleKey( spep_1+ 142,  ctDogown, 2.63, 2.63 );
setEffScaleKey( spep_1+ 144,  ctDogown, 2.6, 2.6 );
setEffScaleKey( spep_1+ 146,  ctDogown, 2.58, 2.58 );
setEffScaleKey( spep_1+ 148,  ctDogown, 2.55, 2.55 );
setEffScaleKey( spep_1+ 150,  ctDogown, 2.53, 2.53 );
setEffScaleKey( spep_1+ 152,  ctDogown, 2.5, 2.5 );
setEffScaleKey( spep_1+ 154,  ctDogown, 2.47, 2.47 );
setEffScaleKey( spep_1+ 156,  ctDogown, 2.45, 2.45 );
setEffScaleKey( spep_1+ 158,  ctDogown, 2.42, 2.42 );
setEffScaleKey( spep_1+ 160,  ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_1+ 162,  ctDogown, 2.4, 2.4 );
setEffScaleKey( spep_1+ 164,  ctDogown, 2.39, 2.39 );
setEffScaleKey( spep_1+ 166,  ctDogown, 2.38, 2.38 );

setEffRotateKey( spep_1+ 130,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 132,  ctDogown, -27.3 );
setEffRotateKey( spep_1+ 134,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 136,  ctDogown, -5.4 );
setEffRotateKey( spep_1+ 138,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 140,  ctDogown, -24.8 );
setEffRotateKey( spep_1+ 142,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 146,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 148,  ctDogown, -14 );
setEffRotateKey( spep_1+ 154,  ctDogown, -14 );
setEffRotateKey( spep_1+ 156,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 158,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 160,  ctDogown, -14 );
setEffRotateKey( spep_1+ 162,  ctDogown, -14 );
setEffRotateKey( spep_1+ 164,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 166,  ctDogown, -13.9 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 64, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 +64, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.34, 1.9 );
setEffScaleKey( spep_1 + 64, shuchusen1, 1.34, 1.9 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 64, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 60, shuchusen1, 170 );
setEffAlphaKey( spep_1 + 62, shuchusen1, 85 );
setEffAlphaKey( spep_1 + 64, shuchusen1, 0 );

--SE
playSe(spep_1+2,1060);
playSe(spep_1+70,44);
playSe(spep_1+130,1023);
------------------------------------------------------
--Scene03 サイドステップ(110F)
------------------------------------------------------
spep_2=spep_1+178;
--white--
entryFade(spep_2,0,0,8,255,255,255,255); --whitefade

--shuchu--
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
--shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, -367.2, 89.8 );
--setEffMoveKey( spep_2 + 0, shuchusen2, -367.2, 89.8 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.55, 1.9 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.55, 1.9 );

setEffRotateKey( spep_2 + 0, shuchusen2, 18 );
setEffRotateKey( spep_2 + 2, shuchusen2, 198 );
setEffRotateKey( spep_2 + 4, shuchusen2, 18 );
setEffRotateKey( spep_2 + 6, shuchusen2, 198 );
setEffRotateKey( spep_2 + 8, shuchusen2, 18 );
setEffRotateKey( spep_2 + 10, shuchusen2, 198 );
setEffRotateKey( spep_2 + 12, shuchusen2, 18 );
setEffRotateKey( spep_2 + 14, shuchusen2, 198 );
setEffRotateKey( spep_2 + 16, shuchusen2, 18 );
setEffRotateKey( spep_2 + 18, shuchusen2, 198 );
setEffRotateKey( spep_2 + 20, shuchusen2, 18 );
setEffRotateKey( spep_2 + 22, shuchusen2, 198 );
setEffRotateKey( spep_2 + 24, shuchusen2, 18 );
setEffRotateKey( spep_2 + 26, shuchusen2, 198 );
setEffRotateKey( spep_2 + 28, shuchusen2, 18 );
setEffRotateKey( spep_2 + 30, shuchusen2, 198 );
setEffRotateKey( spep_2 + 32, shuchusen2, 18 );
setEffRotateKey( spep_2 + 34, shuchusen2, 198 );
setEffRotateKey( spep_2 + 36, shuchusen2, 18 );
setEffRotateKey( spep_2 + 38, shuchusen2, 198 );
setEffRotateKey( spep_2 + 40, shuchusen2, 18 );
setEffRotateKey( spep_2 + 42, shuchusen2, 198 );
setEffRotateKey( spep_2 + 44, shuchusen2, 18 );
setEffRotateKey( spep_2 + 46, shuchusen2, 198 );
setEffRotateKey( spep_2 + 48, shuchusen2, 18 );
setEffRotateKey( spep_2 + 50, shuchusen2, 198 );
setEffRotateKey( spep_2 + 52, shuchusen2, 18 );
setEffRotateKey( spep_2 + 54, shuchusen2, 198 );
setEffRotateKey( spep_2 + 56, shuchusen2, 18 );
setEffRotateKey( spep_2 + 58, shuchusen2, 198 );
setEffRotateKey( spep_2 + 60, shuchusen2, 18 );
setEffRotateKey( spep_2 + 62, shuchusen2, 198 );
setEffRotateKey( spep_2 + 64, shuchusen2, 18 );
setEffRotateKey( spep_2 + 66, shuchusen2, 198 );
setEffRotateKey( spep_2 + 68, shuchusen2, 18 );
setEffRotateKey( spep_2 + 70, shuchusen2, 198 );
setEffRotateKey( spep_2 + 72, shuchusen2, 18 );
setEffRotateKey( spep_2 + 74, shuchusen2, 198 );
setEffRotateKey( spep_2 + 76, shuchusen2, 18 );
setEffRotateKey( spep_2 + 78, shuchusen2, 198 );
setEffRotateKey( spep_2 + 80, shuchusen2, 18 );
setEffRotateKey( spep_2 + 82, shuchusen2, 198 );
setEffRotateKey( spep_2 + 84, shuchusen2, 18 );
setEffRotateKey( spep_2 + 86, shuchusen2, 198 );
setEffRotateKey( spep_2 + 88, shuchusen2, 18 );
setEffRotateKey( spep_2 + 90, shuchusen2, 198 );
setEffRotateKey( spep_2 + 92, shuchusen2, 18 );
setEffRotateKey( spep_2 + 94, shuchusen2, 198 );
setEffRotateKey( spep_2 + 96, shuchusen2, 18 );
setEffRotateKey( spep_2 + 98, shuchusen2, 198 );
setEffRotateKey( spep_2 + 100, shuchusen2, 18 );
setEffRotateKey( spep_2 + 102, shuchusen2, 198 );
setEffRotateKey( spep_2 + 104, shuchusen2, 18 );
setEffRotateKey( spep_2 + 106, shuchusen2, 198 );
setEffRotateKey( spep_2 + 108, shuchusen2, 18 );

-- shuchusen2
setEffAlphaKey( spep_2 + 0, shuchusen2, 77 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 77 );

--ef_006--
navimove=entryEffectLife(spep_2,SP_04,108,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, navimove, 0, 0 , 0 );
setEffMoveKey( spep_2+108, navimove, 0, 0 , 0 );
setEffScaleKey(spep_2,navimove,1.0,1.0);
setEffScaleKey(spep_2+108,navimove,1.0,1.0);
setEffRotateKey(spep_2,navimove,0);
setEffRotateKey(spep_2+108,navimove,0);
setEffAlphaKey(spep_2,navimove,255);
setEffAlphaKey(spep_2+108,navimove,255);

--playSe( spep_2+14,4); --いらない
--playSe( spep_2+42,4); --いらない
--playSe( spep_2+70,4); --いらない
playSe( spep_2+14,1026);
------------------------------------------------------
--Scene07 連続攻撃(360F)
------------------------------------------------------
spep_3=spep_2+108;

--white--
entryFade(spep_3,0,0,4,255,255,255,255); --whitefade

--書き文字エントリー
CtGa = entryEffectLife( spep_3 + 6,  10005, 10, 0x100, -1, 0, 2.8, 428.1 );
setEffMoveKey( spep_3 + 6, CtGa, 2.8, 428.1 , 0 );
setEffMoveKey( spep_3 + 8, CtGa, -9.2, 432.8 , 0 );
setEffMoveKey( spep_3 + 10, CtGa, 2.8, 427.9 , 0 );
setEffMoveKey( spep_3 + 12, CtGa, -6.4, 431.8 , 0 );
setEffMoveKey( spep_3 + 14, CtGa, 2.9, 428 , 0 );
setEffMoveKey( spep_3 + 16, CtGa, 2.9, 428 , 0 );

CtGa2 = entryEffectLife( spep_3 + 42,  10005, 10, 0x100, -1, 0, -119.2, 404.6 );
setEffMoveKey( spep_3 + 42, CtGa2, -119.2, 404.6 , 0 );
setEffMoveKey( spep_3 + 44, CtGa2, -131, 410.4 , 0 );
setEffMoveKey( spep_3 + 46, CtGa2, -119.3, 404.5 , 0 );
setEffMoveKey( spep_3 + 48, CtGa2, -128.3, 409.2 , 0 );
setEffMoveKey( spep_3 + 50, CtGa2, -119.3, 404.6 , 0 );
setEffMoveKey( spep_3 + 52, CtGa2, -119.3, 404.6 , 0 );

setEffScaleKey( spep_3 + 6, CtGa, 1.54, 1.54 );
setEffScaleKey( spep_3 + 8, CtGa, 2.3, 2.3 );
setEffScaleKey( spep_3 + 10, CtGa, 2.04, 2.04 );
setEffScaleKey( spep_3 + 12, CtGa, 1.78, 1.78 );
setEffScaleKey( spep_3 + 16, CtGa, 1.78, 1.78 );

setEffScaleKey( spep_3 + 42, CtGa2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 44, CtGa2, 2.3, 2.3 );
setEffScaleKey( spep_3 + 46, CtGa2, 2.04, 2.04 );
setEffScaleKey( spep_3 + 48, CtGa2, 1.78, 1.78 );
setEffScaleKey( spep_3 + 52, CtGa2, 1.78, 1.78 );

setEffRotateKey( spep_3 + 6, CtGa, -22.7 );
setEffRotateKey( spep_3 + 16, CtGa, -22.7 );

setEffRotateKey( spep_3 + 42, CtGa2, -17.9 );
setEffRotateKey( spep_3 + 52, CtGa2, -17.9 );

setEffAlphaKey( spep_3 + 6, CtGa, 255 );
setEffAlphaKey( spep_3 + 12, CtGa, 255 );
setEffAlphaKey( spep_3 + 14, CtGa, 159 );
setEffAlphaKey( spep_3 + 16, CtGa, 64 );

setEffAlphaKey( spep_3 + 42, CtGa2, 255 );
setEffAlphaKey( spep_3 + 48, CtGa2, 255 );
setEffAlphaKey( spep_3 + 50, CtGa2, 159 );
setEffAlphaKey( spep_3 + 52, CtGa2, 64 );

ctDogaga = entryEffectLife( spep_3 + 104,  10017, 212, 0x100, -1, 0, 12.1, 382.4 );--ドガガッ
setEffMoveKey( spep_3 + 104, ctDogaga, 12.1, 382.4 , 0 );
setEffMoveKey( spep_3 + 106, ctDogaga, 6.3, 389.4 , 0 );
setEffMoveKey( spep_3 + 108, ctDogaga, 11.9, 383.5 , 0 );
setEffMoveKey( spep_3 + 110, ctDogaga, 5, 391.2 , 0 );
setEffMoveKey( spep_3 + 112, ctDogaga, 11.8, 383.1 , 0 );
setEffMoveKey( spep_3 + 114, ctDogaga, 11.8, 382.9 , 0 );
setEffMoveKey( spep_3 + 116, ctDogaga, 6.3, 389.4 , 0 );
setEffMoveKey( spep_3 + 118, ctDogaga, 11.8, 383.5 , 0 );
setEffMoveKey( spep_3 + 120, ctDogaga, 6.3, 390 , 0 );
setEffMoveKey( spep_3 + 122, ctDogaga, 11.8, 384 , 0 );
setEffMoveKey( spep_3 + 124, ctDogaga, 6.2, 390.6 , 0 );
setEffMoveKey( spep_3 + 126, ctDogaga, 11.8, 384.5 , 0 );
setEffMoveKey( spep_3 + 128, ctDogaga, 6.2, 391.2 , 0 );
setEffMoveKey( spep_3 + 130, ctDogaga, 11.8, 385 , 0 );
setEffMoveKey( spep_3 + 132, ctDogaga, 6.1, 391.7 , 0 );
setEffMoveKey( spep_3 + 134, ctDogaga, 11.8, 385.5 , 0 );
setEffMoveKey( spep_3 + 136, ctDogaga, 6.1, 392.3 , 0 );
setEffMoveKey( spep_3 + 138, ctDogaga, 11.8, 386 , 0 );
setEffMoveKey( spep_3 + 140, ctDogaga, 6, 392.9 , 0 );
setEffMoveKey( spep_3 + 142, ctDogaga, 11.8, 386.5 , 0 );
setEffMoveKey( spep_3 + 144, ctDogaga, 5.9, 393.5 , 0 );
setEffMoveKey( spep_3 + 146, ctDogaga, 11.8, 387 , 0 );
setEffMoveKey( spep_3 + 148, ctDogaga, 5.9, 394.1 , 0 );
setEffMoveKey( spep_3 + 150, ctDogaga, 11.8, 387.5 , 0 );
setEffMoveKey( spep_3 + 152, ctDogaga, 5.8, 394.6 , 0 );
setEffMoveKey( spep_3 + 154, ctDogaga, 11.8, 388 , 0 );
setEffMoveKey( spep_3 + 156, ctDogaga, 5.8, 395.2 , 0 );
setEffMoveKey( spep_3 + 158, ctDogaga, 11.8, 388.5 , 0 );
setEffMoveKey( spep_3 + 160, ctDogaga, 5.7, 395.8 , 0 );
setEffMoveKey( spep_3 + 162, ctDogaga, 11.8, 389.1 , 0 );
setEffMoveKey( spep_3 + 164, ctDogaga, 5.7, 396.4 , 0 );
setEffMoveKey( spep_3 + 166, ctDogaga, 11.8, 389.6 , 0 );
setEffMoveKey( spep_3 + 168, ctDogaga, 5.6, 396.9 , 0 );
setEffMoveKey( spep_3 + 170, ctDogaga, 11.8, 390.1 , 0 );
setEffMoveKey( spep_3 + 172, ctDogaga, 5.5, 397.5 , 0 );
setEffMoveKey( spep_3 + 174, ctDogaga, 11.8, 390.6 , 0 );
setEffMoveKey( spep_3 + 176, ctDogaga, 5.5, 398.1 , 0 );
setEffMoveKey( spep_3 + 178, ctDogaga, 11.8, 391.1 , 0 );
setEffMoveKey( spep_3 + 180, ctDogaga, 5.4, 398.7 , 0 );
setEffMoveKey( spep_3 + 182, ctDogaga, 11.8, 391.6 , 0 );
setEffMoveKey( spep_3 + 184, ctDogaga, 5.4, 399.2 , 0 );
setEffMoveKey( spep_3 + 186, ctDogaga, 11.8, 392.1 , 0 );
setEffMoveKey( spep_3 + 188, ctDogaga, 5.3, 399.8 , 0 );
setEffMoveKey( spep_3 + 190, ctDogaga, 11.8, 392.6 , 0 );
setEffMoveKey( spep_3 + 192, ctDogaga, 5.3, 400.4 , 0 );
setEffMoveKey( spep_3 + 194, ctDogaga, 11.8, 393.1 , 0 );
setEffMoveKey( spep_3 + 196, ctDogaga, 5.2, 401 , 0 );
setEffMoveKey( spep_3 + 198, ctDogaga, 11.8, 393.6 , 0 );
setEffMoveKey( spep_3 + 200, ctDogaga, 5.2, 401.5 , 0 );
setEffMoveKey( spep_3 + 202, ctDogaga, 11.8, 394.1 , 0 );
setEffMoveKey( spep_3 + 204, ctDogaga, 5.1, 402.1 , 0 );
setEffMoveKey( spep_3 + 206, ctDogaga, 11.8, 394.7 , 0 );
setEffMoveKey( spep_3 + 208, ctDogaga, 5, 402.7 , 0 );
setEffMoveKey( spep_3 + 210, ctDogaga, 11.8, 395.2 , 0 );
setEffMoveKey( spep_3 + 212, ctDogaga, 5, 403.3 , 0 );
setEffMoveKey( spep_3 + 214, ctDogaga, 11.8, 395.7 , 0 );
setEffMoveKey( spep_3 + 216, ctDogaga, 4.9, 403.8 , 0 );
setEffMoveKey( spep_3 + 218, ctDogaga, 11.8, 396.2 , 0 );
setEffMoveKey( spep_3 + 220, ctDogaga, 4.9, 404.4 , 0 );
setEffMoveKey( spep_3 + 222, ctDogaga, 11.8, 396.7 , 0 );
setEffMoveKey( spep_3 + 224, ctDogaga, 4.8, 405 , 0 );
setEffMoveKey( spep_3 + 226, ctDogaga, 11.8, 397.2 , 0 );
setEffMoveKey( spep_3 + 228, ctDogaga, 4.8, 405.6 , 0 );
setEffMoveKey( spep_3 + 230, ctDogaga, 11.8, 397.7 , 0 );
setEffMoveKey( spep_3 + 232, ctDogaga, 4.7, 406.1 , 0 );
setEffMoveKey( spep_3 + 234, ctDogaga, 11.8, 398.2 , 0 );
setEffMoveKey( spep_3 + 236, ctDogaga, 4.6, 406.7 , 0 );
setEffMoveKey( spep_3 + 238, ctDogaga, 11.8, 398.7 , 0 );
setEffMoveKey( spep_3 + 240, ctDogaga, 4.6, 407.3 , 0 );
setEffMoveKey( spep_3 + 242, ctDogaga, 11.8, 399.2 , 0 );
setEffMoveKey( spep_3 + 244, ctDogaga, 4.5, 407.9 , 0 );
setEffMoveKey( spep_3 + 246, ctDogaga, 11.8, 399.7 , 0 );
setEffMoveKey( spep_3 + 248, ctDogaga, 4.5, 408.4 , 0 );
setEffMoveKey( spep_3 + 250, ctDogaga, 11.8, 400.3 , 0 );
setEffMoveKey( spep_3 + 252, ctDogaga, 4.4, 409 , 0 );
setEffMoveKey( spep_3 + 254, ctDogaga, 11.8, 400.8 , 0 );
setEffMoveKey( spep_3 + 256, ctDogaga, 4.4, 409.6 , 0 );
setEffMoveKey( spep_3 + 258, ctDogaga, 11.8, 401.3 , 0 );
setEffMoveKey( spep_3 + 260, ctDogaga, 4.3, 410.2 , 0 );
setEffMoveKey( spep_3 + 262, ctDogaga, 11.8, 401.8 , 0 );
setEffMoveKey( spep_3 + 264, ctDogaga, 4.3, 410.7 , 0 );
setEffMoveKey( spep_3 + 266, ctDogaga, 11.8, 402.3 , 0 );
setEffMoveKey( spep_3 + 268, ctDogaga, 4.2, 411.3 , 0 );
setEffMoveKey( spep_3 + 270, ctDogaga, 11.8, 402.8 , 0 );
setEffMoveKey( spep_3 + 272, ctDogaga, 4.1, 411.9 , 0 );
setEffMoveKey( spep_3 + 274, ctDogaga, 11.8, 403.3 , 0 );
setEffMoveKey( spep_3 + 276, ctDogaga, 4.1, 412.5 , 0 );
setEffMoveKey( spep_3 + 278, ctDogaga, 11.8, 403.8 , 0 );
setEffMoveKey( spep_3 + 280, ctDogaga, 4, 413.1 , 0 );
setEffMoveKey( spep_3 + 282, ctDogaga, 11.8, 404.3 , 0 );
setEffMoveKey( spep_3 + 284, ctDogaga, 4, 413.6 , 0 );
setEffMoveKey( spep_3 + 286, ctDogaga, 11.8, 404.8 , 0 );
setEffMoveKey( spep_3 + 288, ctDogaga, 3.9, 414.2 , 0 );
setEffMoveKey( spep_3 + 290, ctDogaga, 11.8, 405.4 , 0 );
setEffMoveKey( spep_3 + 292, ctDogaga, 3.9, 414.8 , 0 );
setEffMoveKey( spep_3 + 294, ctDogaga, 11.8, 405.9 , 0 );
setEffMoveKey( spep_3 + 296, ctDogaga, 3.8, 415.4 , 0 );
setEffMoveKey( spep_3 + 298, ctDogaga, 11.8, 406.4 , 0 );
setEffMoveKey( spep_3 + 300, ctDogaga, 3.8, 415.9 , 0 );
setEffMoveKey( spep_3 + 302, ctDogaga, 11.8, 406.9 , 0 );
setEffMoveKey( spep_3 + 304, ctDogaga, 3.7, 416.5 , 0 );
setEffMoveKey( spep_3 + 306, ctDogaga, 11.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 308, ctDogaga, 3.6, 417.1 , 0 );
setEffMoveKey( spep_3 + 310, ctDogaga, 11.8, 408 , 0 );
setEffMoveKey( spep_3 + 312, ctDogaga, 1.5, 420.2 , 0 );
setEffMoveKey( spep_3 + 314, ctDogaga, 11.8, 408.6 , 0 );
setEffMoveKey( spep_3 + 316, ctDogaga, 11.8, 408.9 , 0 );

setEffScaleKey( spep_3 + 104, ctDogaga, 1.43, 1.43 );
setEffScaleKey( spep_3 + 106, ctDogaga, 2.2, 2.2 );
setEffScaleKey( spep_3 + 108, ctDogaga, 2.97, 2.97 );
setEffScaleKey( spep_3 + 110, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_3 + 112, ctDogaga, 2.4, 2.4 );
setEffScaleKey( spep_3 + 114, ctDogaga, 2.12, 2.12 );
setEffScaleKey( spep_3 + 116, ctDogaga, 2.13, 2.13 );
setEffScaleKey( spep_3 + 118, ctDogaga, 2.14, 2.14 );
setEffScaleKey( spep_3 + 120, ctDogaga, 2.15, 2.15 );
setEffScaleKey( spep_3 + 122, ctDogaga, 2.17, 2.17 );
setEffScaleKey( spep_3 + 124, ctDogaga, 2.18, 2.18 );
setEffScaleKey( spep_3 + 126, ctDogaga, 2.19, 2.19 );
setEffScaleKey( spep_3 + 128, ctDogaga, 2.2, 2.2 );
setEffScaleKey( spep_3 + 130, ctDogaga, 2.21, 2.21 );
setEffScaleKey( spep_3 + 132, ctDogaga, 2.22, 2.22 );
setEffScaleKey( spep_3 + 134, ctDogaga, 2.23, 2.23 );
setEffScaleKey( spep_3 + 136, ctDogaga, 2.24, 2.24 );
setEffScaleKey( spep_3 + 138, ctDogaga, 2.26, 2.26 );
setEffScaleKey( spep_3 + 140, ctDogaga, 2.27, 2.27 );
setEffScaleKey( spep_3 + 142, ctDogaga, 2.28, 2.28 );
setEffScaleKey( spep_3 + 144, ctDogaga, 2.29, 2.29 );
setEffScaleKey( spep_3 + 146, ctDogaga, 2.3, 2.3 );
setEffScaleKey( spep_3 + 148, ctDogaga, 2.31, 2.31 );
setEffScaleKey( spep_3 + 150, ctDogaga, 2.32, 2.32 );
setEffScaleKey( spep_3 + 152, ctDogaga, 2.34, 2.34 );
setEffScaleKey( spep_3 + 154, ctDogaga, 2.35, 2.35 );
setEffScaleKey( spep_3 + 156, ctDogaga, 2.36, 2.36 );
setEffScaleKey( spep_3 + 158, ctDogaga, 2.37, 2.37 );
setEffScaleKey( spep_3 + 160, ctDogaga, 2.38, 2.38 );
setEffScaleKey( spep_3 + 162, ctDogaga, 2.39, 2.39 );
setEffScaleKey( spep_3 + 164, ctDogaga, 2.4, 2.4 );
setEffScaleKey( spep_3 + 166, ctDogaga, 2.41, 2.41 );
setEffScaleKey( spep_3 + 168, ctDogaga, 2.43, 2.43 );
setEffScaleKey( spep_3 + 170, ctDogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 172, ctDogaga, 2.45, 2.45 );
setEffScaleKey( spep_3 + 174, ctDogaga, 2.46, 2.46 );
setEffScaleKey( spep_3 + 176, ctDogaga, 2.47, 2.47 );
setEffScaleKey( spep_3 + 178, ctDogaga, 2.48, 2.48 );
setEffScaleKey( spep_3 + 180, ctDogaga, 2.49, 2.49 );
setEffScaleKey( spep_3 + 182, ctDogaga, 2.51, 2.51 );
setEffScaleKey( spep_3 + 184, ctDogaga, 2.52, 2.52 );
setEffScaleKey( spep_3 + 186, ctDogaga, 2.53, 2.53 );
setEffScaleKey( spep_3 + 188, ctDogaga, 2.54, 2.54 );
setEffScaleKey( spep_3 + 190, ctDogaga, 2.55, 2.55 );
setEffScaleKey( spep_3 + 192, ctDogaga, 2.56, 2.56 );
setEffScaleKey( spep_3 + 194, ctDogaga, 2.57, 2.57 );
setEffScaleKey( spep_3 + 196, ctDogaga, 2.58, 2.58 );
setEffScaleKey( spep_3 + 198, ctDogaga, 2.6, 2.6 );
setEffScaleKey( spep_3 + 200, ctDogaga, 2.61, 2.61 );
setEffScaleKey( spep_3 + 202, ctDogaga, 2.62, 2.62 );
setEffScaleKey( spep_3 + 204, ctDogaga, 2.63, 2.63 );
setEffScaleKey( spep_3 + 206, ctDogaga, 2.64, 2.64 );
setEffScaleKey( spep_3 + 208, ctDogaga, 2.65, 2.65 );
setEffScaleKey( spep_3 + 210, ctDogaga, 2.66, 2.66 );
setEffScaleKey( spep_3 + 212, ctDogaga, 2.68, 2.68 );
setEffScaleKey( spep_3 + 214, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_3 + 216, ctDogaga, 2.7, 2.7 );
setEffScaleKey( spep_3 + 218, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 220, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 222, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 224, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 226, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 228, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 230, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 232, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 234, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 236, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 238, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 240, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 242, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 244, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 246, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 248, ctDogaga, 2.88, 2.88 );
setEffScaleKey( spep_3 + 250, ctDogaga, 2.89, 2.89 );
setEffScaleKey( spep_3 + 252, ctDogaga, 2.9, 2.9 );
setEffScaleKey( spep_3 + 254, ctDogaga, 2.91, 2.91 );
setEffScaleKey( spep_3 + 256, ctDogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 + 258, ctDogaga, 2.94, 2.94 );
setEffScaleKey( spep_3 + 260, ctDogaga, 2.95, 2.95 );
setEffScaleKey( spep_3 + 262, ctDogaga, 2.96, 2.96 );
setEffScaleKey( spep_3 + 264, ctDogaga, 2.97, 2.97 );
setEffScaleKey( spep_3 + 266, ctDogaga, 2.98, 2.98 );
setEffScaleKey( spep_3 + 268, ctDogaga, 2.99, 2.99 );
setEffScaleKey( spep_3 + 270, ctDogaga, 3, 3 );
setEffScaleKey( spep_3 + 272, ctDogaga, 3.02, 3.02 );
setEffScaleKey( spep_3 + 274, ctDogaga, 3.03, 3.03 );
setEffScaleKey( spep_3 + 276, ctDogaga, 3.04, 3.04 );
setEffScaleKey( spep_3 + 278, ctDogaga, 3.05, 3.05 );
setEffScaleKey( spep_3 + 280, ctDogaga, 3.06, 3.06 );
setEffScaleKey( spep_3 + 282, ctDogaga, 3.07, 3.07 );
setEffScaleKey( spep_3 + 284, ctDogaga, 3.08, 3.08 );
setEffScaleKey( spep_3 + 286, ctDogaga, 3.1, 3.1 );
setEffScaleKey( spep_3 + 288, ctDogaga, 3.11, 3.11 );
setEffScaleKey( spep_3 + 290, ctDogaga, 3.12, 3.12 );
setEffScaleKey( spep_3 + 292, ctDogaga, 3.13, 3.13 );
setEffScaleKey( spep_3 + 294, ctDogaga, 3.14, 3.14 );
setEffScaleKey( spep_3 + 296, ctDogaga, 3.15, 3.15 );
setEffScaleKey( spep_3 + 298, ctDogaga, 3.16, 3.16 );
setEffScaleKey( spep_3 + 300, ctDogaga, 3.17, 3.17 );
setEffScaleKey( spep_3 + 302, ctDogaga, 3.19, 3.19 );
setEffScaleKey( spep_3 + 304, ctDogaga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 306, ctDogaga, 3.21, 3.21 );
setEffScaleKey( spep_3 + 308, ctDogaga, 3.22, 3.22 );
setEffScaleKey( spep_3 + 310, ctDogaga, 3.64, 3.64 );
setEffScaleKey( spep_3 + 312, ctDogaga, 4.07, 4.07 );
setEffScaleKey( spep_3 + 314, ctDogaga, 4.49, 4.49 );
setEffScaleKey( spep_3 + 316, ctDogaga, 4.91, 4.91 );

setEffRotateKey( spep_3 + 104, ctDogaga, 14.5 );

setEffAlphaKey( spep_3 + 104, ctDogaga, 64 );
setEffAlphaKey( spep_3 + 106, ctDogaga, 159 );
setEffAlphaKey( spep_3 + 108, ctDogaga, 255 );
setEffAlphaKey( spep_3 + 308, ctDogaga, 255 );
setEffAlphaKey( spep_3 + 310, ctDogaga, 191 );
setEffAlphaKey( spep_3 + 312, ctDogaga, 128 );
setEffAlphaKey( spep_3 + 314, ctDogaga, 64 );
setEffAlphaKey( spep_3 + 316, ctDogaga, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 358, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_3 + 102, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_3 + 104, shuchusen3, 1.17, 1.59 );
setEffScaleKey( spep_3 + 358, shuchusen3, 1.17, 1.59 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 358, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 20, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 22, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 24, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 26, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 64, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 66, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 68, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 70, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 106, shuchusen3, 43 );
setEffAlphaKey( spep_3 + 108, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 110, shuchusen3, 128 );
setEffAlphaKey( spep_3 + 112, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 114, shuchusen3, 213 );
setEffAlphaKey( spep_3 + 116, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 358, shuchusen3, 255 );

--eff_04
combo=entryEffectLife(spep_3,SP_05,358,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, combo, 0, 0 , 0 );
setEffMoveKey( spep_3+358, combo, 0, 0 , 0 );
setEffScaleKey(spep_3,combo,1.0,1.0);
setEffScaleKey(spep_3+358,combo,1.0,1.0);
setEffRotateKey(spep_3,combo,0);
setEffRotateKey(spep_3+358,combo,0);
setEffAlphaKey(spep_3,combo,255);
setEffAlphaKey(spep_3+358,combo,255);
--eff_05
combor=entryEffectLife(spep_3,SP_06,358,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, combor, 0, 0 , 0 );
setEffMoveKey( spep_3+358, combor, 0, 0 , 0 );
setEffScaleKey(spep_3,combor,1.0,1.0);
setEffScaleKey(spep_3+358,combor,1.0,1.0);
setEffRotateKey(spep_3,combor,0);
setEffRotateKey(spep_3+358,combor,0);
setEffAlphaKey(spep_3,combor,255);
setEffAlphaKey(spep_3+358,combor,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 358, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 + 42, 1, 106 );

setMoveKey( spep_3 + 0, 1, -64.4, -56.2 , 0 );
setMoveKey( spep_3 + 2, 1, 33.3, 23.3 , 0 );
setMoveKey( spep_3 + 4, 1, 113.8, 119.5 , 0 );
setMoveKey( spep_3 + 6, 1, 154.7, 167.2 , 0 );
setMoveKey( spep_3 + 8, 1, 194.7, 199.6 , 0 );
setMoveKey( spep_3 + 10, 1, 191.6, 189.9 , 0 );
setMoveKey( spep_3 + 12, 1, 196.4, 204.2 , 0 );
setMoveKey( spep_3 + 14, 1, 185.2, 198.6 , 0 );
setMoveKey( spep_3 + 16, 1, 198.1, 208.9 , 0 );
setMoveKey( spep_3 + 18, 1, 194.9, 207.2 , 0 );
setMoveKey( spep_3 + 20, 1, 199.7, 213.6 , 0 );
setMoveKey( spep_3 + 22, 1, 196.5, 211.9 , 0 );
setMoveKey( spep_3 + 24, 1, 201.3, 218.3 , 0 );
setMoveKey( spep_3 + 26, 1, 202.1, 220.6 , 0 );
setMoveKey( spep_3 + 28, 1, 202.9, 223 , 0 );
setMoveKey( spep_3 + 30, 1, 203.7, 225.3 , 0 );
setMoveKey( spep_3 + 32, 1, 204.5, 227.7 , 0 );
setMoveKey( spep_3 + 34, 1, 205.3, 230 , 0 );
setMoveKey( spep_3 + 36, 1, 45.2, 165.6 , 0 );
setMoveKey( spep_3 + 38, 1, -114.9, 100.8 , 0 );
setMoveKey( spep_3 + 41, 1, -117.8, 98.7 , 0 );
setMoveKey( spep_3 + 42, 1, -182.5, 78.4 , 0 );
setMoveKey( spep_3 + 44, 1, -186.6, 88.9 , 0 );
setMoveKey( spep_3 + 46, 1, -203.6, 75.8 , 0 );
setMoveKey( spep_3 + 48, 1, -199.2, 78.1 , 0 );
setMoveKey( spep_3 + 50, 1, -209.4, 57.3 , 0 );
setMoveKey( spep_3 + 52, 1, -214.2, 67.6 , 0 );
setMoveKey( spep_3 + 54, 1, -232.1, 55.1 , 0 );
setMoveKey( spep_3 + 56, 1, -228.5, 57.6 , 0 );
setMoveKey( spep_3 + 58, 1, -238, 45.3 , 0 );
setMoveKey( spep_3 + 60, 1, -224.3, 53.4 , 0 );
setMoveKey( spep_3 + 62, 1, -219.9, 42.8 , 0 );
setMoveKey( spep_3 + 64, 1, -202, 55.2 , 0 );
setMoveKey( spep_3 + 66, 1, -189.1, 53.1 , 0 );
setMoveKey( spep_3 + 68, 1, -170.8, 66 , 0 );
setMoveKey( spep_3 + 70, 1, -157.9, 64.3 , 0 );
setMoveKey( spep_3 + 72, 1, -139.6, 77.7 , 0 );
setMoveKey( spep_3 + 74, 1, -122.8, 80.7 , 0 );
setMoveKey( spep_3 + 76, 1, -108.7, 90.9 , 0 );
setMoveKey( spep_3 + 78, 1, -99.5, 92.1 , 0 );
setMoveKey( spep_3 + 80, 1, -92.9, 99.9 , 0 );
setMoveKey( spep_3 + 82, 1, -83.9, 101.9 , 0 );
setMoveKey( spep_3 + 84, 1, -77.4, 110.2 , 0 );
setMoveKey( spep_3 + 86, 1, -75.8, 109.5 , 0 );
setMoveKey( spep_3 + 88, 1, -76.8, 114.6 , 0 );
setMoveKey( spep_3 + 90, 1, -75.1, 114.5 , 0 );
setMoveKey( spep_3 + 92, 1, -75.9, 119.7 , 0 );
setMoveKey( spep_3 + 94, 1, -74.1, 120.1 , 0 );
setMoveKey( spep_3 + 96, 1, -74.8, 125.4 , 0 );
setMoveKey( spep_3 + 98, 1, -72.8, 126.5 , 0 );
setMoveKey( spep_3 + 100, 1, -68.3, 128.5 , 0 );
setMoveKey( spep_3 + 102, 1, -61.7, 126.1 , 0 );
setMoveKey( spep_3 + 104, 1, -57.1, 127.3 , 0 );
setMoveKey( spep_3 + 106, 1, -50.5, 123.4 , 0 );
setMoveKey( spep_3 + 108, 1, -45.7, 123 , 0 );
setMoveKey( spep_3 + 110, 1, -39.4, 118.9 , 0 );
setMoveKey( spep_3 + 112, 1, -43.2, 111 , 0 );
setMoveKey( spep_3 + 114, 1, -38.4, 112.8 , 0 );
setMoveKey( spep_3 + 116, 1, -46.7, 109.6 , 0 );
setMoveKey( spep_3 + 118, 1, -37.9, 111.4 , 0 );
setMoveKey( spep_3 + 120, 1, -42.3, 108.2 , 0 );
setMoveKey( spep_3 + 122, 1, -37.4, 110 , 0 );
setMoveKey( spep_3 + 124, 1, -41.8, 102.8 , 0 );
setMoveKey( spep_3 + 126, 1, -37, 108.7 , 0 );
setMoveKey( spep_3 + 128, 1, -41.3, 105.5 , 0 );
setMoveKey( spep_3 + 130, 1, -36.6, 107.4 , 0 );
setMoveKey( spep_3 + 132, 1, -44.9, 100.3 , 0 );
setMoveKey( spep_3 + 134, 1, -36.1, 106.2 , 0 );
setMoveKey( spep_3 + 136, 1, -40.5, 103.1 , 0 );
setMoveKey( spep_3 + 138, 1, -35.7, 105 , 0 );
setMoveKey( spep_3 + 140, 1, -44.1, 98 , 0 );
setMoveKey( spep_3 + 142, 1, -35.3, 103.8 , 0 );
setMoveKey( spep_3 + 144, 1, -43.7, 100.9 , 0 );
setMoveKey( spep_3 + 146, 1, -35, 102.7 , 0 );
setMoveKey( spep_3 + 148, 1, -39.3, 95.8 , 0 );
setMoveKey( spep_3 + 150, 1, -34.6, 101.7 , 0 );
setMoveKey( spep_3 + 152, 1, -39, 98.8 , 0 );
setMoveKey( spep_3 + 154, 1, -34.3, 100.7 , 0 );
setMoveKey( spep_3 + 156, 1, -42.6, 93.8 , 0 );
setMoveKey( spep_3 + 158, 1, -33.9, 99.7 , 0 );
setMoveKey( spep_3 + 160, 1, -38.3, 96.9 , 0 );
setMoveKey( spep_3 + 162, 1, -33.6, 98.8 , 0 );
setMoveKey( spep_3 + 164, 1, -42, 96.1 , 0 );
setMoveKey( spep_3 + 166, 1, -33.3, 98 , 0 );
setMoveKey( spep_3 + 168, 1, -37.6, 91.2 , 0 );
setMoveKey( spep_3 + 170, 1, -33, 97.1 , 0 );
setMoveKey( spep_3 + 172, 1, -37.3, 94.4 , 0 );
setMoveKey( spep_3 + 174, 1, -32.7, 96.3 , 0 );
setMoveKey( spep_3 + 176, 1, -41, 89.7 , 0 );
setMoveKey( spep_3 + 178, 1, -32.4, 95.6 , 0 );
setMoveKey( spep_3 + 180, 1, -36.7, 93 , 0 );
setMoveKey( spep_3 + 182, 1, -32.1, 94.9 , 0 );
setMoveKey( spep_3 + 184, 1, -40.5, 92.3 , 0 );
setMoveKey( spep_3 + 186, 1, -31.9, 94.2 , 0 );
setMoveKey( spep_3 + 188, 1, -36.2, 87.7 , 0 );
setMoveKey( spep_3 + 190, 1, -31.6, 93.6 , 0 );
setMoveKey( spep_3 + 192, 1, -39.9, 87.1 , 0 );
setMoveKey( spep_3 + 194, 1, -31.4, 93 , 0 );
setMoveKey( spep_3 + 196, 1, -35.7, 90.6 , 0 );
setMoveKey( spep_3 + 198, 1, -31.1, 92.5 , 0 );
setMoveKey( spep_3 + 200, 1, -35.4, 90 , 0 );
setMoveKey( spep_3 + 202, 1, -30.9, 91.9 , 0 );
setMoveKey( spep_3 + 204, 1, -39.2, 85.6 , 0 );
setMoveKey( spep_3 + 206, 1, -30.6, 91.5 , 0 );
setMoveKey( spep_3 + 208, 1, -34.9, 89.1 , 0 );
setMoveKey( spep_3 + 210, 1, -30.4, 91 , 0 );
setMoveKey( spep_3 + 212, 1, -34.7, 88.7 , 0 );
setMoveKey( spep_3 + 214, 1, -30.2, 90.6 , 0 );
setMoveKey( spep_3 + 216, 1, -38.5, 88.3 , 0 );
setMoveKey( spep_3 + 218, 1, -30, 90.2 , 0 );
setMoveKey( spep_3 + 220, 1, -34.2, 88 , 0 );
setMoveKey( spep_3 + 222, 1, -29.8, 89.9 , 0 );
setMoveKey( spep_3 + 224, 1, -34, 87.9 , 0 );
setMoveKey( spep_3 + 226, 1, -29.4, 90 , 0 );
setMoveKey( spep_3 + 228, 1, -29.6, 91.9 , 0 );
setMoveKey( spep_3 + 230, 1, -33, 82 , 0 );
setMoveKey( spep_3 + 232, 1, -29.1, 91.8 , 0 );
setMoveKey( spep_3 + 234, 1, -36.5, 85.7 , 0 );
setMoveKey( spep_3 + 236, 1, -28.5, 91.8 , 0 );
setMoveKey( spep_3 + 238, 1, -31.7, 85.6 , 0 );
setMoveKey( spep_3 + 240, 1, -27.7, 91.5 , 0 );
setMoveKey( spep_3 + 242, 1, -34.9, 81.1 , 0 );
setMoveKey( spep_3 + 244, 1, -26.8, 90.9 , 0 );
setMoveKey( spep_3 + 246, 1, -34, 84.8 , 0 );
setMoveKey( spep_3 + 248, 1, -25.7, 90.4 , 0 );
setMoveKey( spep_3 + 250, 1, -28.9, 79.9 , 0 );
setMoveKey( spep_3 + 252, 1, -24.6, 89.5 , 0 );
setMoveKey( spep_3 + 254, 1, -27.7, 83.2 , 0 );
setMoveKey( spep_3 + 256, 1, -23.3, 88.8 , 0 );
setMoveKey( spep_3 + 258, 1, -30.3, 78.4 , 0 );
setMoveKey( spep_3 + 260, 1, -21.9, 87.8 , 0 );
setMoveKey( spep_3 + 262, 1, -25, 81.1 , 0 );
setMoveKey( spep_3 + 264, 1, -20.4, 86.8 , 0 );
setMoveKey( spep_3 + 266, 1, -27.3, 79.9 , 0 );
setMoveKey( spep_3 + 268, 1, -18.7, 85.5 , 0 );
setMoveKey( spep_3 + 270, 1, -21.7, 74.5 , 0 );
setMoveKey( spep_3 + 272, 1, -16.9, 84.1 , 0 );
setMoveKey( spep_3 + 274, 1, -19.9, 77 , 0 );
setMoveKey( spep_3 + 276, 1, -15.2, 82.5 , 0 );
setMoveKey( spep_3 + 278, 1, -22, 71.5 , 0 );
setMoveKey( spep_3 + 280, 1, -13.1, 80.8 , 0 );
setMoveKey( spep_3 + 282, 1, -15.8, 73.7 , 0 );
setMoveKey( spep_3 + 284, 1, -11.1, 78.9 , 0 );
setMoveKey( spep_3 + 286, 1, -17.7, 67.7 , 0 );
setMoveKey( spep_3 + 288, 1, -8.8, 77.1 , 0 );
setMoveKey( spep_3 + 290, 1, -11.6, 65.8 , 0 );
setMoveKey( spep_3 + 292, 1, -6.6, 74.9 , 0 );
setMoveKey( spep_3 + 294, 1, -13.2, 67.3 , 0 );
setMoveKey( spep_3 + 296, 1, -4.2, 72.8 , 0 );
setMoveKey( spep_3 + 298, 1, -6.8, 61.1 , 0 );
setMoveKey( spep_3 + 300, 1, -1.7, 70.1 , 0 );
setMoveKey( spep_3 + 302, 1, -8.2, 62.4 , 0 );
setMoveKey( spep_3 + 304, 1, 0.9, 67.6 , 0 );
setMoveKey( spep_3 + 306, 1, -1.7, 59.8 , 0 );
setMoveKey( spep_3 + 308, 1, 3.7, 65 , 0 );
setMoveKey( spep_3 + 310, 1, 9.5, 58 , 0 );
setMoveKey( spep_3 + 312, 1, 42.8, 63.3 , 0 );
setMoveKey( spep_3 + 314, 1, 91.7, 57.5 , 0 );
setMoveKey( spep_3 + 316, 1, 159.9, 55.8 , 0 );
setMoveKey( spep_3 + 318, 1, 247.8, 46.3 , 0 );
setMoveKey( spep_3 + 320, 1, 354.9, 41.5 , 0 );
setMoveKey( spep_3 + 322, 1, 372.8, 37.6 , 0 );
setMoveKey( spep_3 + 324, 1, 390.5, 40.2 , 0 );
setMoveKey( spep_3 + 326, 1, 408.4, 36 , 0 );
setMoveKey( spep_3 + 328, 1, 426.1, 38.6 , 0 );
setMoveKey( spep_3 + 330, 1, 444, 34.1 , 0 );
setMoveKey( spep_3 + 332, 1, 461.7, 36.8 , 0 );
setMoveKey( spep_3 + 334, 1, 470, 33 , 0 );
setMoveKey( spep_3 + 336, 1, 479.5, 37.3 , 0 );
setMoveKey( spep_3 + 338, 1, 490.2, 33.8 , 0 );
setMoveKey( spep_3 + 340, 1, 502.1, 38.3 , 0 );
setMoveKey( spep_3 + 342, 1, 515, 34.6 , 0 );
setMoveKey( spep_3 + 344, 1, 529.3, 39.7 , 0 );
setMoveKey( spep_3 + 346, 1, 544.8, 36.2 , 0 );
setMoveKey( spep_3 + 348, 1, 561.4, 41 , 0 );
setMoveKey( spep_3 + 350, 1, 579.3, 37.8 , 0 );
setMoveKey( spep_3 + 352, 1, 598.3, 43.2 , 0 );
setMoveKey( spep_3 + 354, 1, 618.5, 39.3 , 0 );
setMoveKey( spep_3 + 356, 1, 640, 45.2 , 0 );
setMoveKey( spep_3 + 358, 1, 662.6, 41.3 , 0 );

setScaleKey( spep_3 + 0, 1, 5.04, 5.04 );
setScaleKey( spep_3 + 2, 1, 3.72, 3.72 );
setScaleKey( spep_3 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_3 + 6, 1, 2.02, 2.02 );
setScaleKey( spep_3 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 22, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 24, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 26, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 34, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 38, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 41, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 50, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 60, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 76, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 84, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 92, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 94, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 96, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 98, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 100, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 102, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 104, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 106, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 108, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 110, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 114, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 116, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 122, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 128, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 130, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 134, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 136, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 140, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 142, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 146, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 152, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 154, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 160, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 166, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 170, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 172, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 176, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 178, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 184, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 190, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 192, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 196, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 198, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 202, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 204, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 208, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 210, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 214, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 216, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 220, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 222, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 234, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 236, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 244, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 246, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 252, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 254, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 256, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 258, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 264, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 266, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 268, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 270, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 272, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 274, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 276, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 278, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 280, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 282, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 284, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 286, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 288, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 290, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 292, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 294, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 296, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 298, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 300, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 302, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 304, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 306, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 308, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 310, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 312, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 314, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 316, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 318, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 320, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 322, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 324, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 326, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 328, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 330, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 332, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 334, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 336, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 338, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 340, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 342, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 344, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 346, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 348, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 350, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 352, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 354, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 356, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 358, 1, 2.04, 2.04 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 0 );
setRotateKey( spep_3 + 4, 1, -0.1 );
setRotateKey( spep_3 + 6, 1, -0.1 );
setRotateKey( spep_3 + 8, 1, -0.2 );
setRotateKey( spep_3 + 10, 1, -0.2 );
setRotateKey( spep_3 + 12, 1, -0.3 );
setRotateKey( spep_3 + 14, 1, -0.3 );
setRotateKey( spep_3 + 16, 1, -0.4 );
setRotateKey( spep_3 + 18, 1, -0.4 );
setRotateKey( spep_3 + 20, 1, -0.5 );
setRotateKey( spep_3 + 22, 1, -0.5 );
setRotateKey( spep_3 + 24, 1, -0.6 );
setRotateKey( spep_3 + 26, 1, -0.6 );
setRotateKey( spep_3 + 28, 1, -0.7 );
setRotateKey( spep_3 + 30, 1, -0.7 );
setRotateKey( spep_3 + 32, 1, -0.8 );
setRotateKey( spep_3 + 34, 1, -0.8 );
setRotateKey( spep_3 + 36, 1, -0.9 );
setRotateKey( spep_3 + 38, 1, -0.9 );
setRotateKey( spep_3 + 41, 1, -1 );
setRotateKey( spep_3 + 42, 1, -50.8 );
setRotateKey( spep_3 + 56, 1, -50.8 );
setRotateKey( spep_3 + 58, 1, -50.7 );
setRotateKey( spep_3 + 62, 1, -50.7 );
setRotateKey( spep_3 + 64, 1, -50.6 );
setRotateKey( spep_3 + 68, 1, -50.6 );
setRotateKey( spep_3 + 70, 1, -50.8 );
setRotateKey( spep_3 + 72, 1, -51 );
setRotateKey( spep_3 + 74, 1, -51.2 );
setRotateKey( spep_3 + 76, 1, -51.6 );
setRotateKey( spep_3 + 78, 1, -51.9 );
setRotateKey( spep_3 + 80, 1, -52.4 );
setRotateKey( spep_3 + 82, 1, -52.9 );
setRotateKey( spep_3 + 84, 1, -53.5 );
setRotateKey( spep_3 + 86, 1, -54.2 );
setRotateKey( spep_3 + 88, 1, -54.9 );
setRotateKey( spep_3 + 90, 1, -55.7 );
setRotateKey( spep_3 + 92, 1, -56.6 );
setRotateKey( spep_3 + 94, 1, -57.5 );
setRotateKey( spep_3 + 96, 1, -58.5 );
setRotateKey( spep_3 + 98, 1, -59.6 );
setRotateKey( spep_3 + 100, 1, -59.4 );
setRotateKey( spep_3 + 102, 1, -59.1 );
setRotateKey( spep_3 + 104, 1, -58.9 );
setRotateKey( spep_3 + 106, 1, -53.2 );
setRotateKey( spep_3 + 110, 1, -53.2 );
setRotateKey( spep_3 + 112, 1, -52.9 );
setRotateKey( spep_3 + 114, 1, -52.7 );
setRotateKey( spep_3 + 116, 1, -52.4 );
setRotateKey( spep_3 + 118, 1, -52.2 );
setRotateKey( spep_3 + 120, 1, -51.9 );
setRotateKey( spep_3 + 122, 1, -51.7 );
setRotateKey( spep_3 + 124, 1, -51.4 );
setRotateKey( spep_3 + 126, 1, -51.2 );
setRotateKey( spep_3 + 128, 1, -50.9 );
setRotateKey( spep_3 + 130, 1, -50.7 );
setRotateKey( spep_3 + 132, 1, -50.4 );
setRotateKey( spep_3 + 134, 1, -50.2 );
setRotateKey( spep_3 + 136, 1, -49.9 );
setRotateKey( spep_3 + 138, 1, -49.7 );
setRotateKey( spep_3 + 140, 1, -49.4 );
setRotateKey( spep_3 + 142, 1, -49.2 );
setRotateKey( spep_3 + 144, 1, -48.9 );
setRotateKey( spep_3 + 146, 1, -48.7 );
setRotateKey( spep_3 + 148, 1, -48.5 );
setRotateKey( spep_3 + 150, 1, -48.2 );
setRotateKey( spep_3 + 152, 1, -48 );
setRotateKey( spep_3 + 154, 1, -47.7 );
setRotateKey( spep_3 + 156, 1, -47.5 );
setRotateKey( spep_3 + 158, 1, -47.3 );
setRotateKey( spep_3 + 160, 1, -47 );
setRotateKey( spep_3 + 162, 1, -46.8 );
setRotateKey( spep_3 + 164, 1, -46.6 );
setRotateKey( spep_3 + 166, 1, -46.3 );
setRotateKey( spep_3 + 168, 1, -46.1 );
setRotateKey( spep_3 + 170, 1, -45.9 );
setRotateKey( spep_3 + 172, 1, -45.6 );
setRotateKey( spep_3 + 174, 1, -45.4 );
setRotateKey( spep_3 + 176, 1, -45.2 );
setRotateKey( spep_3 + 178, 1, -45 );
setRotateKey( spep_3 + 180, 1, -44.7 );
setRotateKey( spep_3 + 182, 1, -44.5 );
setRotateKey( spep_3 + 184, 1, -44.3 );
setRotateKey( spep_3 + 186, 1, -44.1 );
setRotateKey( spep_3 + 188, 1, -43.8 );
setRotateKey( spep_3 + 190, 1, -43.6 );
setRotateKey( spep_3 + 192, 1, -43.4 );
setRotateKey( spep_3 + 194, 1, -43.2 );
setRotateKey( spep_3 + 196, 1, -43 );
setRotateKey( spep_3 + 198, 1, -42.7 );
setRotateKey( spep_3 + 200, 1, -42.5 );
setRotateKey( spep_3 + 202, 1, -42.3 );
setRotateKey( spep_3 + 204, 1, -42.1 );
setRotateKey( spep_3 + 206, 1, -41.9 );
setRotateKey( spep_3 + 208, 1, -41.7 );
setRotateKey( spep_3 + 210, 1, -41.5 );
setRotateKey( spep_3 + 212, 1, -41.2 );
setRotateKey( spep_3 + 214, 1, -41 );
setRotateKey( spep_3 + 216, 1, -40.8 );
setRotateKey( spep_3 + 218, 1, -40.6 );
setRotateKey( spep_3 + 220, 1, -40.4 );
setRotateKey( spep_3 + 222, 1, -40.2 );
setRotateKey( spep_3 + 224, 1, -40 );
setRotateKey( spep_3 + 226, 1, -39.8 );
setRotateKey( spep_3 + 228, 1, -39.6 );
setRotateKey( spep_3 + 230, 1, -39.4 );
setRotateKey( spep_3 + 232, 1, -39.2 );
setRotateKey( spep_3 + 234, 1, -39 );
setRotateKey( spep_3 + 236, 1, -38.8 );
setRotateKey( spep_3 + 238, 1, -38.6 );
setRotateKey( spep_3 + 240, 1, -38.4 );
setRotateKey( spep_3 + 242, 1, -38.2 );
setRotateKey( spep_3 + 244, 1, -38 );
setRotateKey( spep_3 + 246, 1, -37.8 );
setRotateKey( spep_3 + 248, 1, -37.6 );
setRotateKey( spep_3 + 250, 1, -37.4 );
setRotateKey( spep_3 + 252, 1, -37.2 );
setRotateKey( spep_3 + 254, 1, -37 );
setRotateKey( spep_3 + 256, 1, -36.9 );
setRotateKey( spep_3 + 258, 1, -36.7 );
setRotateKey( spep_3 + 260, 1, -36.5 );
setRotateKey( spep_3 + 262, 1, -36.3 );
setRotateKey( spep_3 + 264, 1, -36.1 );
setRotateKey( spep_3 + 266, 1, -35.9 );
setRotateKey( spep_3 + 268, 1, -35.7 );
setRotateKey( spep_3 + 270, 1, -35.5 );
setRotateKey( spep_3 + 272, 1, -35.4 );
setRotateKey( spep_3 + 274, 1, -35.2 );
setRotateKey( spep_3 + 276, 1, -35 );
setRotateKey( spep_3 + 278, 1, -34.8 );
setRotateKey( spep_3 + 280, 1, -34.6 );
setRotateKey( spep_3 + 282, 1, -34.5 );
setRotateKey( spep_3 + 284, 1, -34.3 );
setRotateKey( spep_3 + 286, 1, -34.1 );
setRotateKey( spep_3 + 288, 1, -33.9 );
setRotateKey( spep_3 + 290, 1, -33.8 );
setRotateKey( spep_3 + 292, 1, -33.6 );
setRotateKey( spep_3 + 294, 1, -33.4 );
setRotateKey( spep_3 + 296, 1, -33.2 );
setRotateKey( spep_3 + 298, 1, -33.1 );
setRotateKey( spep_3 + 300, 1, -32.9 );
setRotateKey( spep_3 + 302, 1, -32.7 );
setRotateKey( spep_3 + 304, 1, -32.6 );
setRotateKey( spep_3 + 306, 1, -32.4 );
setRotateKey( spep_3 + 308, 1, -32.2 );
setRotateKey( spep_3 + 310, 1, -32.1 );
setRotateKey( spep_3 + 312, 1, -31.9 );
setRotateKey( spep_3 + 314, 1, -31.7 );
setRotateKey( spep_3 + 316, 1, -31.6 );
setRotateKey( spep_3 + 318, 1, -31.4 );
setRotateKey( spep_3 + 320, 1, -31.3 );
setRotateKey( spep_3 + 322, 1, -31.1 );
setRotateKey( spep_3 + 324, 1, -30.9 );
setRotateKey( spep_3 + 326, 1, -30.8 );
setRotateKey( spep_3 + 328, 1, -30.6 );
setRotateKey( spep_3 + 330, 1, -30.5 );
setRotateKey( spep_3 + 332, 1, -30.3 );
setRotateKey( spep_3 + 334, 1, -30.2 );
setRotateKey( spep_3 + 336, 1, -30 );
setRotateKey( spep_3 + 338, 1, -29.9 );
setRotateKey( spep_3 + 340, 1, -29.7 );
setRotateKey( spep_3 + 342, 1, -29.6 );
setRotateKey( spep_3 + 344, 1, -29.4 );
setRotateKey( spep_3 + 346, 1, -29.3 );
setRotateKey( spep_3 + 348, 1, -29.1 );
setRotateKey( spep_3 + 350, 1, -29 );
setRotateKey( spep_3 + 352, 1, -28.8 );
setRotateKey( spep_3 + 354, 1, -28.7 );
setRotateKey( spep_3 + 356, 1, -28.5 );
setRotateKey( spep_3 + 358, 1, -28.4 );

playSe(spep_3+6,1061);
playSe(spep_3+42,1061);

playSe(spep_3+60,8);
playSe(spep_3+90,1007);
playSe(spep_3+100,1029);

playSe(spep_3+106,1004);
playSe(spep_3+110,1007);
playSe(spep_3+116,1009);
playSe(spep_3+129,1008);
playSe(spep_3+140,1007);
playSe(spep_3+150,1008);
playSe(spep_3+158,1015);
playSe(spep_3+164,1000);
playSe(spep_3+172,1001);
playSe(spep_3+178,1016);
playSe(spep_3+184,1000);
playSe(spep_3+194,1008);
playSe(spep_3+198,1001);
playSe(spep_3+202,1015);
playSe(spep_3+208,1004);
playSe(spep_3+216,4);
playSe(spep_3+220,1016);
playSe(spep_3+224,44);
playSe(spep_3+230,4);
playSe(spep_3+236,1008);
playSe(spep_3+240,1000);
playSe(spep_3+242,4);
playSe(spep_3+248,1010);
playSe(spep_3+252,1016);
playSe(spep_3+258,4);
playSe(spep_3+260,1000);
playSe(spep_3+266,44);
playSe(spep_3+272,1007);
playSe(spep_3+276,44);
playSe(spep_3+282,4);
playSe(spep_3+286,1015);
playSe(spep_3+290,1008);
playSe(spep_3+294,44);
playSe(spep_3+298,1016);
playSe(spep_3+302,4);
playSe(spep_3+310,1008);
playSe(spep_3+314,1015);

playSe(spep_3+318,44);

entryFade(spep_3+360 -6 -10,8,4,0,255,255,255,255); --whitefade

------------------------------------------------------
--Scene02 カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+360 -6;

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+72, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--Scene06 ナビ演出から最後(410F)
------------------------------------------------------
spep_5=spep_4+90;

--white--
entryFade(spep_5,0,0,6,255,255,255,255); --whitefade
entryFade(spep_5+116,12,2,10,255,255,255,255); --whitefade
entryFade(spep_5+178,6,2,8,255,255,255,255); --whitefade

entryFadeBg(spep_5,0,320,0,255,255,255,255);
--敵の動き

setDisp( spep_5 + 130, 1, 1 );
changeAnime( spep_5 + 130, 1, 106 );

setMoveKey( spep_5 + 130, 1, 406.6, -48 , 0 );
setMoveKey( spep_5 + 132, 1, 385, -54.5 , 0 );
setMoveKey( spep_5 + 134, 1, 357.8, -22.8 , 0 );
setMoveKey( spep_5 + 136, 1, 303.3, -8.7 , 0 );
setMoveKey( spep_5 + 138, 1, 265.4, 10.4 , 0 );
setMoveKey( spep_5 + 140, 1, 230.1, 25.5 , 0 );
setMoveKey( spep_5 + 142, 1, 207.1, 60.7 , 0 );
setMoveKey( spep_5 + 144, 1, 172.7, 76.1 , 0 );
setMoveKey( spep_5 + 146, 1, 166.8, 95.6 , 0 );
setMoveKey( spep_5 + 148, 1, 149.3, 99.2 , 0 );
setMoveKey( spep_5 + 150, 1, 152.3, 106.5 , 0 );
setMoveKey( spep_5 + 152, 1, 143.3, 93.8 , 0 );
setMoveKey( spep_5 + 154, 1, 150.3, 105 , 0 );
setMoveKey( spep_5 + 156, 1, 145.3, 100.3 , 0 );
setMoveKey( spep_5 + 158, 1, 148.3, 103.6 , 0 );
setMoveKey( spep_5 + 160, 1, 139.3, 94.9 , 0 );
setMoveKey( spep_5 + 162, 1, 146.2, 102.2 , 0 );
setMoveKey( spep_5 + 164, 1, 145.8, 101.9 , 0 );
setMoveKey( spep_5 + 166, 1, 145.5, 101.7 , 0 );
setMoveKey( spep_5 + 168, 1, 145.1, 101.4 , 0 );
setMoveKey( spep_5 + 170, 1, 144.7, 101.1 , 0 );
setMoveKey( spep_5 + 172, 1, 144.3, 100.9 , 0 );
setMoveKey( spep_5 + 174, 1, 143.9, 100.6 , 0 );
setMoveKey( spep_5 + 176, 1, 143.5, 100.3 , 0 );
setMoveKey( spep_5 + 178, 1, 143.1, 100 , 0 );
setMoveKey( spep_5 + 180, 1, 142.8, 99.8 , 0 );
setMoveKey( spep_5 + 182, 1, 142.4, 99.5 , 0 );
setMoveKey( spep_5 + 184, 1, 142, 99.2 , 0 );
setMoveKey( spep_5 + 186, 1, 115.9, 122.5 , 0 );
setMoveKey( spep_5 + 188, 1, 120.4, 137.5 , 0 );
setMoveKey( spep_5 + 190, 1, 112.6, 137.3 , 0 );
setMoveKey( spep_5 + 192, 1, 121.1, 140.4 , 0 );
setMoveKey( spep_5 + 194, 1, 113.2, 136.2 , 0 );
setMoveKey( spep_5 + 196, 1, 121.8, 143.3 , 0 );
setMoveKey( spep_5 + 198, 1, 117.9, 143.1 , 0 );
setMoveKey( spep_5 + 200, 1, 122.4, 146.1 , 0 );
setMoveKey( spep_5 + 202, 1, 114.6, 141.9 , 0 );
setMoveKey( spep_5 + 204, 1, 123.1, 149 , 0 );
setMoveKey( spep_5 + 206, 1, 119.2, 148.8 , 0 );
setMoveKey( spep_5 + 208, 1, 123.7, 151.9 , 0 );
setMoveKey( spep_5 + 210, 1, 115.9, 147.7 , 0 );
setMoveKey( spep_5 + 212, 1, 124.4, 154.8 , 0 );
setMoveKey( spep_5 + 214, 1, 124.6, 158.6 , 0 );
setMoveKey( spep_5 + 216, 1, 125.1, 157.7 , 0 );
setMoveKey( spep_5 + 218, 1, 125.2, 161.4 , 0 );
setMoveKey( spep_5 + 220, 1, 125.7, 160.6 , 0 );
setMoveKey( spep_5 + 222, 1, 125.9, 164.3 , 0 );
setMoveKey( spep_5 + 224, 1, 126.4, 163.5 , 0 );
setMoveKey( spep_5 + 226, 1, 126.6, 167.2 , 0 );
setMoveKey( spep_5 + 228, 1, 127, 166.3 , 0 );
setMoveKey( spep_5 + 230, 1, 127.2, 170.1 , 0 );
setMoveKey( spep_5 + 232, 1, 127.7, 169.2 , 0 );
setMoveKey( spep_5 + 234, 1, 127.9, 172.9 , 0 );
setMoveKey( spep_5 + 236, 1, 128.3, 172.1 , 0 );
setMoveKey( spep_5 + 238, 1, 128.6, 175.8 , 0 );
setMoveKey( spep_5 + 240, 1, 129, 175 , 0 );
setMoveKey( spep_5 + 242, 1, 129.2, 178.7 , 0 );
setMoveKey( spep_5 + 244, 1, 129.7, 177.9 , 0 );
setMoveKey( spep_5 + 246, 1, 129.9, 181.6 , 0 );
setMoveKey( spep_5 + 248, 1, 130.3, 180.8 , 0 );
setMoveKey( spep_5 + 250, 1, 130.6, 184.4 , 0 );
setMoveKey( spep_5 + 252, 1, 131, 183.7 , 0 );
setMoveKey( spep_5 + 254, 1, 131.2, 187.3 , 0 );
setMoveKey( spep_5 + 256, 1, 131.6, 186.5 , 0 );
setMoveKey( spep_5 + 258, 1, 131.9, 190.2 , 0 );
setMoveKey( spep_5 + 260, 1, 132.3, 189.4 , 0 );
setMoveKey( spep_5 + 262, 1, 132.6, 193 , 0 );
setMoveKey( spep_5 + 264, 1, 132.9, 192.3 , 0 );
setMoveKey( spep_5 + 266, 1, 133.2, 195.9 , 0 );
setMoveKey( spep_5 + 268, 1, 133.6, 195.2 , 0 );
setMoveKey( spep_5 + 270, 1, 133.9, 198.8 , 0 );
setMoveKey( spep_5 + 272, 1, 134.3, 198.1 , 0 );
setMoveKey( spep_5 + 274, 1, 134.6, 201.7 , 0 );
setMoveKey( spep_5 + 276, 1, 134.9, 201 , 0 );
setMoveKey( spep_5 + 278, 1, 135.2, 204.5 , 0 );
setMoveKey( spep_5 + 280, 1, 135.6, 203.9 , 0 );
setMoveKey( spep_5 + 282, 1, 135.9, 207.4 , 0 );
setMoveKey( spep_5 + 284, 1, 136.2, 206.7 , 0 );
setMoveKey( spep_5 + 286, 1, 136.5, 210.3 , 0 );
setMoveKey( spep_5 + 288, 1, 136.9, 209.6 , 0 );
setMoveKey( spep_5 + 290, 1, 137.2, 213.2 , 0 );
setMoveKey( spep_5 + 292, 1, 137.5, 212.5 , 0 );
setMoveKey( spep_5 + 294, 1, 137.9, 216 , 0 );
setMoveKey( spep_5 + 296, 1, 138.2, 215.4 , 0 );
setMoveKey( spep_5 + 298, 1, 138.5, 218.9 , 0 );
setMoveKey( spep_5 + 300, 1, 138.9, 218.3 , 0 );
setMoveKey( spep_5 + 302, 1, 139.2, 221.8 , 0 );
setMoveKey( spep_5 + 304, 1, 139.5, 221.2 , 0 );
setMoveKey( spep_5 + 306, 1, 139.9, 224.6 , 0 );
setMoveKey( spep_5 + 308, 1, 140.2, 226.1 , 0 );

-- 1
setScaleKey( spep_5 + 130, 1, 25.11, 25.11 );
setScaleKey( spep_5 + 132, 1, 23.33, 23.33 );
setScaleKey( spep_5 + 134, 1, 20.01, 20.01 );
setScaleKey( spep_5 + 136, 1, 15.17, 15.17 );
setScaleKey( spep_5 + 138, 1, 8.79, 8.79 );
setScaleKey( spep_5 + 140, 1, 6.71, 6.71 );
setScaleKey( spep_5 + 142, 1, 4.93, 4.93 );
setScaleKey( spep_5 + 144, 1, 3.44, 3.44 );
setScaleKey( spep_5 + 146, 1, 2.25, 2.25 );
setScaleKey( spep_5 + 148, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 150, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 152, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 156, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 162, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 166, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 168, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 172, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 174, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 178, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 180, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 184, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 186, 1, 1, 1 );
setScaleKey( spep_5 + 188, 1, 1, 1 );
setScaleKey( spep_5 + 190, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 196, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 198, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 204, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 206, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 212, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 214, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 220, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 222, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 226, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 228, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 234, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 236, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 242, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 244, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 250, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 252, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 258, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 260, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 266, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 268, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 272, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 274, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 280, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 282, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 288, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 290, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 296, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 298, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 304, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 306, 1, 0.84, 0.84 );

-- 1
setRotateKey( spep_5 + 130, 1, -33.5 );
setRotateKey( spep_5 + 132, 1, -33.6 );
setRotateKey( spep_5 + 134, 1, -33.8 );
setRotateKey( spep_5 + 136, 1, -34.1 );
setRotateKey( spep_5 + 138, 1, -34.5 );
setRotateKey( spep_5 + 186, 1, -34.5 );
setRotateKey( spep_5 + 188, 1, -34.4 );
setRotateKey( spep_5 + 190, 1, -34.3 );
setRotateKey( spep_5 + 192, 1, -34.2 );
setRotateKey( spep_5 + 194, 1, -34.2 );
setRotateKey( spep_5 + 196, 1, -34.1 );
setRotateKey( spep_5 + 198, 1, -34 );
setRotateKey( spep_5 + 200, 1, -33.9 );
setRotateKey( spep_5 + 202, 1, -33.8 );
setRotateKey( spep_5 + 204, 1, -33.7 );
setRotateKey( spep_5 + 206, 1, -33.6 );
setRotateKey( spep_5 + 208, 1, -33.6 );
setRotateKey( spep_5 + 210, 1, -33.5 );
setRotateKey( spep_5 + 212, 1, -33.4 );
setRotateKey( spep_5 + 214, 1, -33.3 );
setRotateKey( spep_5 + 216, 1, -33.2 );
setRotateKey( spep_5 + 218, 1, -33.1 );
setRotateKey( spep_5 + 220, 1, -33.1 );
setRotateKey( spep_5 + 222, 1, -33 );
setRotateKey( spep_5 + 224, 1, -32.9 );
setRotateKey( spep_5 + 226, 1, -32.8 );
setRotateKey( spep_5 + 228, 1, -32.7 );
setRotateKey( spep_5 + 230, 1, -32.6 );
setRotateKey( spep_5 + 232, 1, -32.5 );
setRotateKey( spep_5 + 234, 1, -32.5 );
setRotateKey( spep_5 + 236, 1, -32.4 );
setRotateKey( spep_5 + 238, 1, -32.3 );
setRotateKey( spep_5 + 240, 1, -32.2 );
setRotateKey( spep_5 + 242, 1, -32.1 );
setRotateKey( spep_5 + 244, 1, -32 );
setRotateKey( spep_5 + 246, 1, -31.9 );
setRotateKey( spep_5 + 248, 1, -31.9 );
setRotateKey( spep_5 + 250, 1, -31.8 );
setRotateKey( spep_5 + 252, 1, -31.7 );
setRotateKey( spep_5 + 254, 1, -31.6 );
setRotateKey( spep_5 + 256, 1, -31.5 );
setRotateKey( spep_5 + 258, 1, -31.4 );
setRotateKey( spep_5 + 260, 1, -31.3 );
setRotateKey( spep_5 + 262, 1, -31.3 );
setRotateKey( spep_5 + 264, 1, -31.2 );
setRotateKey( spep_5 + 266, 1, -31.1 );
setRotateKey( spep_5 + 268, 1, -31 );
setRotateKey( spep_5 + 270, 1, -30.9 );
setRotateKey( spep_5 + 272, 1, -30.8 );
setRotateKey( spep_5 + 274, 1, -30.7 );
setRotateKey( spep_5 + 276, 1, -30.7 );
setRotateKey( spep_5 + 278, 1, -30.6 );
setRotateKey( spep_5 + 280, 1, -30.5 );
setRotateKey( spep_5 + 282, 1, -30.4 );
setRotateKey( spep_5 + 284, 1, -30.3 );
setRotateKey( spep_5 + 286, 1, -30.2 );
setRotateKey( spep_5 + 288, 1, -30.2 );
setRotateKey( spep_5 + 290, 1, -30.1 );
setRotateKey( spep_5 + 292, 1, -30 );
setRotateKey( spep_5 + 294, 1, -29.9 );
setRotateKey( spep_5 + 296, 1, -29.8 );
setRotateKey( spep_5 + 298, 1, -29.7 );
setRotateKey( spep_5 + 300, 1, -29.6 );
setRotateKey( spep_5 + 302, 1, -29.6 );
setRotateKey( spep_5 + 304, 1, -29.5 );
setRotateKey( spep_5 + 306, 1, -29.4 );
setRotateKey( spep_5 + 308, 1, -29.3 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 46,  906, 182, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 228, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 46, shuchusen5, 1.16, 1.37 );
setEffScaleKey( spep_5 + 70, shuchusen5, 1.16, 1.37 );
setEffScaleKey( spep_5 + 72, shuchusen5, 1.16, 1.47 );
setEffScaleKey( spep_5 + 228, shuchusen5, 1.16, 1.47 );

setEffRotateKey( spep_5 + 46, shuchusen5, 0 );
setEffRotateKey( spep_5 + 228, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 46, shuchusen5, 64 );
setEffAlphaKey( spep_5 + 48, shuchusen5, 128 );
setEffAlphaKey( spep_5 + 50, shuchusen5, 191 );
setEffAlphaKey( spep_5 + 52, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 162, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 164, shuchusen5, 219 );
setEffAlphaKey( spep_5 + 166, shuchusen5, 182 );
setEffAlphaKey( spep_5 + 168, shuchusen5, 146 );
setEffAlphaKey( spep_5 + 170, shuchusen5, 109 );
setEffAlphaKey( spep_5 + 172, shuchusen5, 73 );
setEffAlphaKey( spep_5 + 174, shuchusen5, 36 );
setEffAlphaKey( spep_5 + 176, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 184, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 186, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 210, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 212, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 214, shuchusen5, 198 );
setEffAlphaKey( spep_5 + 216, shuchusen5, 170 );
setEffAlphaKey( spep_5 + 218, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 220, shuchusen5, 113 );
setEffAlphaKey( spep_5 + 222, shuchusen5, 85 );
setEffAlphaKey( spep_5 + 224, shuchusen5, 57 );
setEffAlphaKey( spep_5 + 226, shuchusen5, 28 );
setEffAlphaKey( spep_5 + 228, shuchusen5, 0 );

--eff06
navipunch=entryEffectLife(spep_5,SP_07,128,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, navipunch, 0, 0 , 0 );
setEffMoveKey( spep_5+128, navipunch, 0, 0 , 0 );
setEffScaleKey(spep_5,navipunch,1.0,1.0);
setEffScaleKey(spep_5+128,navipunch,1.0,1.0);
setEffRotateKey(spep_5,navipunch,0);
setEffRotateKey(spep_5+128,navipunch,0);
setEffAlphaKey(spep_5,navipunch,255);
setEffAlphaKey(spep_5+128,navipunch,255);

finish=entryEffect(spep_5+130,SP_08,0x100,-1,0,0,0);

setEffMoveKey( spep_5+130, finish, 0, 0 , 0 );
setEffMoveKey( spep_5+310, finish, 0, 0 , 0 );
setEffScaleKey(spep_5+130,finish,1.0,1.0);
setEffScaleKey(spep_5+310,finish,1.0,1.0);
setEffRotateKey(spep_5+130,finish,0);
setEffRotateKey(spep_5+310,finish,0);
setEffAlphaKey(spep_5+130,finish,255);
setEffAlphaKey(spep_5+310,finish,255);

finishr=entryEffect(spep_5+130,SP_09,0x80,-1,0,0,0);

setEffMoveKey( spep_5+130, finishr, 0, 0 , 0 );
setEffMoveKey( spep_5+310, finishr, 0, 0 , 0 );
setEffScaleKey(spep_5+130,finishr,1.0,1.0);
setEffScaleKey(spep_5+310,finishr,1.0,1.0);
setEffRotateKey(spep_5+130,finishr,0);
setEffRotateKey(spep_5+310,finishr,0);
setEffAlphaKey(spep_5+130,finishr,255);
setEffAlphaKey(spep_5+310,finishr,255);

--SE
playSe(spep_5,SE_04);
playSe(spep_5+78,SE_06);
playSe(spep_5+130,1023);
playSe(spep_5+186,62);
playSe(spep_5+196,1003);
playSe(spep_5+242,1003); --いらない
playSe(spep_5+290,1003); --いらない

-- ダメージ表示
dealDamage(spep_5+194);
entryFade( spep_5+290, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+300);
--最後の部分を伸ばしてもらい戻らないようにする。

else

------------------------------------------------------
--Scene01 歩き＆瞬間移動（顔カットインあり）　140F 
------------------------------------------------------
spep_0=0;

--whitefade
entryFade(spep_0,0,0,6,255,255,255,255); --whitefade
entryFade(spep_0+90,0,0,6,255,255,255,180); --whitefade

--エフェクト (138F)
walking=entryEffectLife(spep_0,SP_01x,136,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, walking, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, walking, 0, 0 , 0 );
setEffScaleKey(spep_0,walking,-1.0,1.0);
setEffScaleKey(spep_0+136,walking,-1.0,1.0);
setEffRotateKey(spep_0,walking,0);
setEffRotateKey(spep_0+136,walking,0);
setEffAlphaKey(spep_0,walking,255);
setEffAlphaKey(spep_0+136,walking,255);

ctShun = entryEffectLife( spep_0 + 90,  10011, 22, 0x100, -1, 0, 16, 380.6 ); --シュンッ
--setEffMoveKey( spep_0 + 90, ctShun, 16, 380.6 , 0 );
--setEffMoveKey( spep_0 + 92, ctShun, 16, 380.7 , 0 );
--setEffMoveKey( spep_0 + 94, ctShun, 16, 380.7 , 0 );
setEffMoveKey( spep_0 + 96, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 98, ctShun, 16.1, 380.6 , 0 );
setEffMoveKey( spep_0 + 100, ctShun, 16.2, 380.6 , 0 );
setEffMoveKey( spep_0 + 104, ctShun, 16.2, 380.6 , 0 );
setEffMoveKey( spep_0 + 106, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 110, ctShun, 16.1, 380.7 , 0 );
setEffMoveKey( spep_0 + 112, ctShun, 16, 380.8 , 0 );

--setEffScaleKey( spep_0 + 90, ctShun, 1.78, 1.78 );
--setEffScaleKey( spep_0 + 92, ctShun, 2.69, 2.69 );
--setEffScaleKey( spep_0 + 94, ctShun, 2.55, 2.55 );
setEffScaleKey( spep_0 + 96, ctShun, 2.4, 2.4 );
setEffScaleKey( spep_0 + 98, ctShun, 2.26, 2.26 );
setEffScaleKey( spep_0 + 100, ctShun, 2.11, 2.11 );
setEffScaleKey( spep_0 + 102, ctShun, 1.97, 1.97 );
setEffScaleKey( spep_0 + 104, ctShun, 1.94, 1.94 );
setEffScaleKey( spep_0 + 106, ctShun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 108, ctShun, 1.89, 1.89 );
setEffScaleKey( spep_0 + 110, ctShun, 1.87, 1.87 );
setEffScaleKey( spep_0 + 112, ctShun, 1.84, 1.84 );

setEffRotateKey( spep_0 + 96, ctShun, 11.1 );
setEffRotateKey( spep_0 + 112, ctShun, 11.1 );

setEffAlphaKey( spep_0 + 96, ctShun, 0 );
setEffAlphaKey( spep_0 + 97, ctShun, 255 );
setEffAlphaKey( spep_0 + 98, ctShun, 255 );
setEffAlphaKey( spep_0 + 102, ctShun, 255 );
setEffAlphaKey( spep_0 + 104, ctShun, 204 );
setEffAlphaKey( spep_0 + 106, ctShun, 153 );
setEffAlphaKey( spep_0 + 108, ctShun, 102 );
setEffAlphaKey( spep_0 + 110, ctShun, 51 );
setEffAlphaKey( spep_0 + 112, ctShun, 0 );
--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+98 ; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge-12, 1042);
pauseAll( SP_dodge, 67);
--敵の位置固定
setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setDisp(SP_dodge+9, 0, 0);

setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);

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
--顔カットイン
--speff=entryEffect(spep_0+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+28,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+28,ctgogo,0,520,0);
setEffMoveKey(spep_0+98,ctgogo,0,520,0);

setEffScaleKey(spep_0+28, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+98, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 97, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 0 );

setEffRotateKey(spep_0+28,ctgogo,0);
setEffRotateKey(spep_0+98,ctgogo,0);

--集中線
shuchusen0 = entryEffectLife( spep_0 + 88,  906, 30, 0x100, -1, 0, 223.9, 0 );
setEffMoveKey( spep_0 + 88, shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen0, 0, 0 , 0 );
--
setEffScaleKey( spep_0 + 88, shuchusen0, 1.05, 1.07 );
setEffScaleKey( spep_0 + 118, shuchusen0, 1.05, 1.07 );
--
setEffRotateKey( spep_0 + 88, shuchusen0, 180 );
setEffRotateKey( spep_0 + 118, shuchusen0, 180 );
--
setEffRotateKey( spep_0 + 88, shuchusen0, 0 );
setEffRotateKey( spep_0 + 118, shuchusen0, 0 );
-- 
setEffAlphaKey( spep_0 + 88, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 94, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen0, 234 );
setEffAlphaKey( spep_0 + 98, shuchusen0, 213 );
setEffAlphaKey( spep_0 + 100, shuchusen0, 191 );
setEffAlphaKey( spep_0 + 102, shuchusen0, 170 );
setEffAlphaKey( spep_0 + 104, shuchusen0, 149 );
setEffAlphaKey( spep_0 + 106, shuchusen0, 128 );
setEffAlphaKey( spep_0 + 108, shuchusen0, 106 );
setEffAlphaKey( spep_0 + 110, shuchusen0, 85 );
setEffAlphaKey( spep_0 + 112, shuchusen0, 64 );
setEffAlphaKey( spep_0 + 114, shuchusen0, 42 );
setEffAlphaKey( spep_0 + 116, shuchusen0, 21 );
setEffAlphaKey( spep_0 + 118, shuchusen0, 0 );

--SE
--playSe(spep_0,1029); --足音 いらない
--playSe(spep_0+26,1029); --足音　いらない
playSe(spep_0+40,SE_04); --ゴゴゴ
playSe(spep_0+90,44); --瞬間移動音
------------------------------------------------------
--Scene05 腹パンチからの敵吹っ飛び (178F) 
------------------------------------------------------
spep_1=spep_0+136;

--whitefade
entryFade(spep_1,0,0,6,255,255,255,255); --whitefade
entryFade(spep_1+130,0,0,8,255,255,255,180); --whitefade
entryFade(spep_1+174,4,2,0,255,255,255,180); --whitefade

--敵の動き--
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 + 60, 1, 108 );
changeAnime( spep_1 + 126, 1, 5 );

setMoveKey( spep_1 + 0, 1, -35.6, -263.4 , 0 );
setMoveKey( spep_1 + 2, 1, -21.7, -250.5 , 0 );
setMoveKey( spep_1 + 4, 1, -46.4, -170.3 , 0 );
setMoveKey( spep_1 + 6, 1, -38, -164.8 , 0 );
setMoveKey( spep_1 + 8, 1, -46.4, -134.7 , 0 );
setMoveKey( spep_1 + 10, 1, -29.3, -146.9 , 0 );
setMoveKey( spep_1 + 12, 1, -32.6, -119.5 , 0 );
setMoveKey( spep_1 + 14, 1, -20.6, -126.8 , 0 );
setMoveKey( spep_1 + 16, 1, -18.9, -104.3 , 0 );
setMoveKey( spep_1 + 18, 1, -3.9, -110.8 , 0 );
setMoveKey( spep_1 + 20, 1, -5.1, -89.1 , 0 );
setMoveKey( spep_1 + 22, 1, 4.8, -98.7 , 0 );
setMoveKey( spep_1 + 24, 1, 8.7, -73.9 , 0 );
setMoveKey( spep_1 + 26, 1, 21.5, -78.6 , 0 );
setMoveKey( spep_1 + 28, 1, 22.5, -58.7 , 0 );
setMoveKey( spep_1 + 30, 1, 30.2, -66.5 , 0 );
setMoveKey( spep_1 + 32, 1, 31.4, -41.9 , 0 );
setMoveKey( spep_1 + 34, 1, 37.6, -43.6 , 0 );
setMoveKey( spep_1 + 36, 1, 35.4, -23.6 , 0 );
setMoveKey( spep_1 + 38, 1, 36.9, -24.7 , 0 );
setMoveKey( spep_1 + 40, 1, 39.5, -5.4 , 0 );
setMoveKey( spep_1 + 42, 1, 44.2, -9.8 , 0 );
setMoveKey( spep_1 + 44, 1, 43.5, 12.9 , 0 );
setMoveKey( spep_1 + 46, 1, 47.5, 13.1 , 0 );
setMoveKey( spep_1 + 48, 1, 47.6, 31.2 , 0 );
setMoveKey( spep_1 + 50, 1, 46.8, 28.1 , 0 );
setMoveKey( spep_1 + 52, 1, 51.6, 49.5 , 0 );
setMoveKey( spep_1 + 54, 1, 54.1, 51 , 0 );
setMoveKey( spep_1 + 56, 1, 55.7, 67.8 , 0 );
setMoveKey( spep_1 + 59, 1, 53.4, 65.9 , 0 );
setMoveKey( spep_1 + 60, 1, 68.2, 87.6 , 0 );
setMoveKey( spep_1 + 62, 1, 45.1, 84.6 , 0 );
setMoveKey( spep_1 + 64, 1, 33.2, 90.1 , 0 );
setMoveKey( spep_1 + 66, 1, 12.1, 84.9 , 0 );
setMoveKey( spep_1 + 68, 1, 9.7, 97.7 , 0 );
setMoveKey( spep_1 + 70, 1, 1.7, 105.4 , 0 );
setMoveKey( spep_1 + 72, 1, 9.7, 114.9 , 0 );
setMoveKey( spep_1 + 74, 1, 18.2, 124.6 , 0 );
setMoveKey( spep_1 + 76, 1, 26.4, 134 , 0 );
setMoveKey( spep_1 + 78, 1, 34.4, 143 , 0 );
setMoveKey( spep_1 + 80, 1, 42.1, 151.7 , 0 );
setMoveKey( spep_1 + 82, 1, 49.5, 160.1 , 0 );
setMoveKey( spep_1 + 84, 1, 56.7, 168.1 , 0 );
setMoveKey( spep_1 + 86, 1, 63.6, 175.8 , 0 );
setMoveKey( spep_1 + 88, 1, 70.3, 183.1 , 0 );
setMoveKey( spep_1 + 90, 1, 76.7, 190.2 , 0 );
setMoveKey( spep_1 + 92, 1, 82.8, 196.8 , 0 );
setMoveKey( spep_1 + 94, 1, 88.7, 203.2 , 0 );
setMoveKey( spep_1 + 96, 1, 89.2, 202.2 , 0 );
setMoveKey( spep_1 + 98, 1, 89.8, 201.3 , 0 );
setMoveKey( spep_1 + 100, 1, 90.5, 200.5 , 0 );
setMoveKey( spep_1 + 102, 1, 91.2, 199.7 , 0 );
setMoveKey( spep_1 + 104, 1, 92.1, 199 , 0 );
setMoveKey( spep_1 + 106, 1, 93, 198.4 , 0 );
setMoveKey( spep_1 + 108, 1, 94, 197.8 , 0 );
setMoveKey( spep_1 + 110, 1, 95.2, 197.4 , 0 );
setMoveKey( spep_1 + 112, 1, 96.4, 196.9 , 0 );
setMoveKey( spep_1 + 114, 1, 97.7, 196.6 , 0 );
setMoveKey( spep_1 + 116, 1, 99.1, 196.3 , 0 );
setMoveKey( spep_1 + 118, 1, 100.5, 196.1 , 0 );
setMoveKey( spep_1 + 120, 1, 102.1, 196 , 0 );
setMoveKey( spep_1 + 122, 1, 103.8, 195.9 , 0 );
setMoveKey( spep_1 + 125, 1, 105.5, 195.9 , 0 );
setMoveKey( spep_1 + 126, 1, 66.4, 186.8 , 0 );
setMoveKey( spep_1 + 128, 1, 72.5, 201.4 , 0 );
setMoveKey( spep_1 + 130, 1, 67.1, 205.5 , 0 );
setMoveKey( spep_1 + 132, 1, 78.1, 219.4 , 0 );
setMoveKey( spep_1 + 134, 1, 77.7, 227 , 0 );
setMoveKey( spep_1 + 136, 1, 85.9, 244.1 , 0 );
setMoveKey( spep_1 + 138, 1, 82.4, 250.8 , 0 );
setMoveKey( spep_1 + 140, 1, 95.5, 275.3 , 0 );
setMoveKey( spep_1 + 142, 1, 101.6, 281.4 , 0 );
setMoveKey( spep_1 + 144, 1, 115.1, 302.6 , 0 );
setMoveKey( spep_1 + 146, 1, 116, 311 , 0 );
setMoveKey( spep_1 + 148, 1, 132.3, 326.6 , 0 );
setMoveKey( spep_1 + 150, 1, 136.1, 333.4 , 0 );
setMoveKey( spep_1 + 152, 1, 147.2, 347.3 , 0 );
setMoveKey( spep_1 + 154, 1, 145.7, 348.3 , 0 );
setMoveKey( spep_1 + 156, 1, 159.6, 364.6 , 0 );
setMoveKey( spep_1 + 158, 1, 160.9, 368 , 0 );
setMoveKey( spep_1 + 160, 1, 166, 370.1 , 0 );
setMoveKey( spep_1 + 162, 1, 159.2, 360 , 0 );
setMoveKey( spep_1 + 164, 1, 168.6, 365.5 , 0 );
setMoveKey( spep_1 + 166, 1, 166.2, 358.6 , 0 );
setMoveKey( spep_1 + 168, 1, 172, 359.5 , 0 );
setMoveKey( spep_1 + 170, 1, 173.9, 356 , 0 );
setMoveKey( spep_1 + 172, 1, 176.1, 352.1 , 0 );
setMoveKey( spep_1 + 174, 1, 178.5, 348 , 0 );
setMoveKey( spep_1 + 176, 1, 181, 343.5 , 0 );
setMoveKey( spep_1 + 178, 1, 183.7, 338.6 , 0 );

setScaleKey( spep_1 + 0, 1, 18.18, 18.18 );
setScaleKey( spep_1 + 2, 1, 14.18, 14.18 );
setScaleKey( spep_1 + 4, 1, 11.14, 11.14 );
setScaleKey( spep_1 + 6, 1, 9.05, 9.05 );
setScaleKey( spep_1 + 8, 1, 7.93, 7.93 );
setScaleKey( spep_1 + 10, 1, 7.65, 7.65 );
setScaleKey( spep_1 + 12, 1, 7.36, 7.36 );
setScaleKey( spep_1 + 14, 1, 7.08, 7.08 );
setScaleKey( spep_1 + 16, 1, 6.79, 6.79 );
setScaleKey( spep_1 + 18, 1, 6.51, 6.51 );
setScaleKey( spep_1 + 20, 1, 6.22, 6.22 );
setScaleKey( spep_1 + 22, 1, 5.94, 5.94 );
setScaleKey( spep_1 + 24, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 26, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 28, 1, 5.08, 5.08 );
setScaleKey( spep_1 + 30, 1, 4.79, 4.79 );
setScaleKey( spep_1 + 32, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 34, 1, 4.39, 4.39 );
setScaleKey( spep_1 + 36, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 38, 1, 3.99, 3.99 );
setScaleKey( spep_1 + 40, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 42, 1, 3.59, 3.59 );
setScaleKey( spep_1 + 44, 1, 3.39, 3.39 );
setScaleKey( spep_1 + 46, 1, 3.19, 3.19 );
setScaleKey( spep_1 + 48, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 50, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 52, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 54, 1, 2.39, 2.39 );
setScaleKey( spep_1 + 56, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 59, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 60, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 62, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 64, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 68, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 72, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 74, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 78, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 80, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 82, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 84, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 88, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 90, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 92, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 98, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 100, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 102, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 104, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 106, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 108, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 110, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 112, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 114, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 120, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 122, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 125, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 126, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 130, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 132, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 138, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 140, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 142, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 144, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 146, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 148, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 150, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 152, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 154, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 156, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 158, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 160, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 162, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 164, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 166, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 168, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 170, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 172, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 174, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 176, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 178, 1, 0.23, 0.23 );

setRotateKey( spep_1 + 0, 1, -77.9 );
setRotateKey( spep_1 + 2, 1, -78.7 );
setRotateKey( spep_1 + 4, 1, -79.3 );
setRotateKey( spep_1 + 6, 1, -79.7 );
setRotateKey( spep_1 + 8, 1, -79.9 );
setRotateKey( spep_1 + 59, 1, -79.9 );
setRotateKey( spep_1 + 60, 1, 5.5 );
setRotateKey( spep_1 + 62, 1, 4.4 );
setRotateKey( spep_1 + 64, 1, 3.3 );
setRotateKey( spep_1 + 66, 1, 2.2 );
setRotateKey( spep_1 + 68, 1, 1.1 );
setRotateKey( spep_1 + 70, 1, 0 );
setRotateKey( spep_1 + 72, 1, 0.7 );
setRotateKey( spep_1 + 74, 1, 1.4 );
setRotateKey( spep_1 + 76, 1, 2.1 );
setRotateKey( spep_1 + 78, 1, 2.8 );
setRotateKey( spep_1 + 80, 1, 3.4 );
setRotateKey( spep_1 + 82, 1, 4 );
setRotateKey( spep_1 + 84, 1, 4.6 );
setRotateKey( spep_1 + 86, 1, 5.2 );
setRotateKey( spep_1 + 88, 1, 5.7 );
setRotateKey( spep_1 + 90, 1, 6.3 );
setRotateKey( spep_1 + 92, 1, 6.8 );
setRotateKey( spep_1 + 94, 1, 7.3 );
setRotateKey( spep_1 + 96, 1, 7.5 );
setRotateKey( spep_1 + 98, 1, 7.8 );
setRotateKey( spep_1 + 100, 1, 8 );
setRotateKey( spep_1 + 102, 1, 8.3 );
setRotateKey( spep_1 + 104, 1, 8.6 );
setRotateKey( spep_1 + 106, 1, 9 );
setRotateKey( spep_1 + 108, 1, 9.4 );
setRotateKey( spep_1 + 110, 1, 9.8 );
setRotateKey( spep_1 + 112, 1, 10.2 );
setRotateKey( spep_1 + 114, 1, 10.6 );
setRotateKey( spep_1 + 116, 1, 11.1 );
setRotateKey( spep_1 + 118, 1, 11.6 );
setRotateKey( spep_1 + 120, 1, 12.2 );
setRotateKey( spep_1 + 122, 1, 12.7 );
setRotateKey( spep_1 + 125, 1, 13.3 );
setRotateKey( spep_1 + 126, 1, 36.9 );
setRotateKey( spep_1 + 128, 1, 37.2 );
setRotateKey( spep_1 + 130, 1, 37.7 );
setRotateKey( spep_1 + 132, 1, 38.2 );
setRotateKey( spep_1 + 134, 1, 38.8 );
setRotateKey( spep_1 + 136, 1, 39.5 );
setRotateKey( spep_1 + 138, 1, 40.3 );
setRotateKey( spep_1 + 140, 1, 41.2 );
setRotateKey( spep_1 + 142, 1, 41.8 );
setRotateKey( spep_1 + 144, 1, 42.4 );
setRotateKey( spep_1 + 146, 1, 42.9 );
setRotateKey( spep_1 + 148, 1, 43.4 );
setRotateKey( spep_1 + 150, 1, 43.9 );
setRotateKey( spep_1 + 152, 1, 44.3 );
setRotateKey( spep_1 + 154, 1, 44.7 );
setRotateKey( spep_1 + 156, 1, 45.1 );
setRotateKey( spep_1 + 158, 1, 45.4 );
setRotateKey( spep_1 + 160, 1, 45.9 );
setRotateKey( spep_1 + 162, 1, 46.6 );
setRotateKey( spep_1 + 164, 1, 47.4 );
setRotateKey( spep_1 + 166, 1, 48.2 );
setRotateKey( spep_1 + 168, 1, 49.2 );
setRotateKey( spep_1 + 170, 1, 50.2 );
setRotateKey( spep_1 + 172, 1, 51.4 );
setRotateKey( spep_1 + 174, 1, 52.6 );
setRotateKey( spep_1 + 176, 1, 54 );
setRotateKey( spep_1 + 178, 1, 55.4 );

--エフェクト--
harapan=entryEffectLife(spep_1+2,SP_02x,174,0x100,-1,0,0,0);

setEffMoveKey( spep_1+4 + 0, harapan, 0, 0 , 0 );
setEffMoveKey( spep_1+176, harapan, 0, 0 , 0 );
setEffScaleKey(spep_1+2,harapan,1.0,1.0);
setEffScaleKey(spep_1+176,harapan,1.0,1.0);
setEffRotateKey(spep_1+2,harapan,0);
setEffRotateKey(spep_1+176,harapan,0);
setEffAlphaKey(spep_1+2,harapan,255);
setEffAlphaKey(spep_1+176,harapan,255);

--エフェクト--
harapanr=entryEffectLife(spep_1+2,SP_03x,174,0x80,-1,0,0,0);

setEffMoveKey( spep_1+2 + 0, harapanr, 0, 0 , 0 );
setEffMoveKey( spep_1+176, harapanr, 0, 0 , 0 );
setEffScaleKey(spep_1+2,harapanr,1.0,1.0);
setEffScaleKey(spep_1+176,harapanr,1.0,1.0);
setEffRotateKey(spep_1+2,harapanr,0);
setEffRotateKey(spep_1+176,harapanr,0);
setEffAlphaKey(spep_1+2,harapanr,255);
setEffAlphaKey(spep_1+176,harapanr,255);

--書き文字エントリー
--ズンッ(10016)
ctZun = entryEffectLife( spep_1 + 6,  10016, 50, 0x100, -1, 0, -87.9, 358.4 );
setEffMoveKey( spep_1 + 6, ctZun, -87.9, 358.4 , 0 );
setEffMoveKey( spep_1 + 8, ctZun, -88, 358.4 , 0 );
setEffMoveKey( spep_1 + 10, ctZun, -97, 361.9 , 0 );
setEffMoveKey( spep_1 + 12, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 14, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 16, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 18, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 20, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 22, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 24, ctZun, -88.2, 358.2 , 0 );
setEffMoveKey( spep_1 + 26, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 28, ctZun, -88.2, 358.2 , 0 );
setEffMoveKey( spep_1 + 30, ctZun, -95.5, 361.2 , 0 );
setEffMoveKey( spep_1 + 32, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 34, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 36, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 38, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 40, ctZun, -88.1, 358.1 , 0 );
setEffMoveKey( spep_1 + 42, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 44, ctZun, -88.1, 358.1 , 0 );
setEffMoveKey( spep_1 + 46, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 48, ctZun, -95.5, 361.1 , 0 );
setEffMoveKey( spep_1 + 50, ctZun, -88.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 52, ctZun, -95.6, 361.2 , 0 );
setEffMoveKey( spep_1 + 54, ctZun, -88.2, 358.3 , 0 );
setEffMoveKey( spep_1 + 56, ctZun, -88.3, 358.4 , 0 );

setEffScaleKey( spep_1 + 6, ctZun, 1.86, 1.86 );
setEffScaleKey( spep_1 + 8, ctZun, 3.8, 3.8 );
setEffScaleKey( spep_1 + 10, ctZun, 3.23, 3.23 );
setEffScaleKey( spep_1 + 12, ctZun, 2.66, 2.66 );
setEffScaleKey( spep_1 + 28, ctZun, 2.66, 2.66 );
setEffScaleKey( spep_1 + 30, ctZun, 2.67, 2.67 );
setEffScaleKey( spep_1 + 48, ctZun, 2.67, 2.67 );
setEffScaleKey( spep_1 + 50, ctZun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 52, ctZun, 2.68, 2.68 );
setEffScaleKey( spep_1 + 54, ctZun, 2.69, 2.69 );
setEffScaleKey( spep_1 + 56, ctZun, 2.69, 2.69 );

setEffRotateKey( spep_1 + 6, ctZun, -20.3 );
setEffRotateKey( spep_1 + 30, ctZun, -20.3 );
setEffRotateKey( spep_1 + 32, ctZun, -20.4 );
setEffRotateKey( spep_1 + 50, ctZun, -20.4 );
setEffRotateKey( spep_1 + 52, ctZun, -20.3 );
setEffRotateKey( spep_1 + 56, ctZun, -20.3 );

setEffAlphaKey( spep_1 + 6, ctZun, 255 );
setEffAlphaKey( spep_1 + 48, ctZun, 255 );
setEffAlphaKey( spep_1 + 50, ctZun, 195 );
setEffAlphaKey( spep_1 + 52, ctZun, 134 );
setEffAlphaKey( spep_1 + 54, ctZun, 74 );
setEffAlphaKey( spep_1 + 56, ctZun, 13 );

--ドゴォン(10018)
ctDogown = entryEffectLife( spep_1 + 130,  10018, 36, 0x100, -1, 0, -66.6, 416.9 );
setEffMoveKey( spep_1 + 130,  ctDogown, -66.6, 416.9 , 0 );
setEffMoveKey( spep_1+ 132,  ctDogown, -66.4, 414.8 , 0 );
setEffMoveKey( spep_1+ 134,  ctDogown, -65.4, 412.3 , 0 );
setEffMoveKey( spep_1+ 136,  ctDogown, -69, 413.9 , 0 );
setEffMoveKey( spep_1+ 138,  ctDogown, -65.7, 413 , 0 );
setEffMoveKey( spep_1+ 140,  ctDogown, -67, 414.3 , 0 );
setEffMoveKey( spep_1+ 142,  ctDogown, -65.7, 413.6 , 0 );
setEffMoveKey( spep_1+ 144,  ctDogown, -67.8, 414.5 , 0 );
setEffMoveKey( spep_1+ 146,  ctDogown, -65.7, 413.7 , 0 );
setEffMoveKey( spep_1+ 148,  ctDogown, -67.8, 414.6 , 0 );
setEffMoveKey( spep_1+ 150,  ctDogown, -65.8, 413.8 , 0 );
setEffMoveKey( spep_1+ 152,  ctDogown, -67.8, 414.7 , 0 );
setEffMoveKey( spep_1+ 154,  ctDogown, -65.8, 413.9 , 0 );
setEffMoveKey( spep_1+ 156,  ctDogown, -67.8, 414.8 , 0 );
setEffMoveKey( spep_1+ 158,  ctDogown, -65.8, 414 , 0 );
setEffMoveKey( spep_1+ 160,  ctDogown, -67.8, 414.8 , 0 );
setEffMoveKey( spep_1+ 162,  ctDogown, -65.9, 414.1 , 0 );
setEffMoveKey( spep_1+ 164,  ctDogown, -67.8, 414.9 , 0 );
setEffMoveKey( spep_1+ 166,  ctDogown, -65.9, 414.2 , 0 );

setEffScaleKey( spep_1+ 130,  ctDogown, 1.2, 1.2 );
setEffScaleKey( spep_1+ 132,  ctDogown, 2.56, 2.56 );
setEffScaleKey( spep_1+ 134,  ctDogown, 3.25, 3.25 );
setEffScaleKey( spep_1+ 136,  ctDogown, 3.09, 3.09 );
setEffScaleKey( spep_1+ 138,  ctDogown, 2.94, 2.94 );
setEffScaleKey( spep_1+ 140,  ctDogown, 2.78, 2.78 );
setEffScaleKey( spep_1+ 142,  ctDogown, 2.63, 2.63 );
setEffScaleKey( spep_1+ 144,  ctDogown, 2.6, 2.6 );
setEffScaleKey( spep_1+ 146,  ctDogown, 2.58, 2.58 );
setEffScaleKey( spep_1+ 148,  ctDogown, 2.55, 2.55 );
setEffScaleKey( spep_1+ 150,  ctDogown, 2.53, 2.53 );
setEffScaleKey( spep_1+ 152,  ctDogown, 2.5, 2.5 );
setEffScaleKey( spep_1+ 154,  ctDogown, 2.47, 2.47 );
setEffScaleKey( spep_1+ 156,  ctDogown, 2.45, 2.45 );
setEffScaleKey( spep_1+ 158,  ctDogown, 2.42, 2.42 );
setEffScaleKey( spep_1+ 160,  ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_1+ 162,  ctDogown, 2.4, 2.4 );
setEffScaleKey( spep_1+ 164,  ctDogown, 2.39, 2.39 );
setEffScaleKey( spep_1+ 166,  ctDogown, 2.38, 2.38 );

setEffRotateKey( spep_1+ 130,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 132,  ctDogown, -27.3 );
setEffRotateKey( spep_1+ 134,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 136,  ctDogown, -5.4 );
setEffRotateKey( spep_1+ 138,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 140,  ctDogown, -24.8 );
setEffRotateKey( spep_1+ 142,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 146,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 148,  ctDogown, -14 );
setEffRotateKey( spep_1+ 154,  ctDogown, -14 );
setEffRotateKey( spep_1+ 156,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 158,  ctDogown, -14.1 );
setEffRotateKey( spep_1+ 160,  ctDogown, -14 );
setEffRotateKey( spep_1+ 162,  ctDogown, -14 );
setEffRotateKey( spep_1+ 164,  ctDogown, -13.9 );
setEffRotateKey( spep_1+ 166,  ctDogown, -13.9 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 64, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 +64, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.34, 1.9 );
setEffScaleKey( spep_1 + 64, shuchusen1, 1.34, 1.9 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 64, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 60, shuchusen1, 170 );
setEffAlphaKey( spep_1 + 62, shuchusen1, 85 );
setEffAlphaKey( spep_1 + 64, shuchusen1, 0 );

--SE
playSe(spep_1+2,1060);
playSe(spep_1+70,44);
playSe(spep_1+130,1023);
------------------------------------------------------
--Scene03 サイドステップ(110F)
------------------------------------------------------
spep_2=spep_1+178;
--white--
entryFade(spep_2,0,0,8,255,255,255,255); --whitefade

--shuchu--
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
--shuchusen2 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, -367.2, 89.8 );
--setEffMoveKey( spep_2 + 0, shuchusen2, -367.2, 89.8 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.55, 1.9 );
setEffScaleKey( spep_2 + 108, shuchusen2, 1.55, 1.9 );

setEffRotateKey( spep_2 + 0, shuchusen2, 18 );
setEffRotateKey( spep_2 + 2, shuchusen2, 198 );
setEffRotateKey( spep_2 + 4, shuchusen2, 18 );
setEffRotateKey( spep_2 + 6, shuchusen2, 198 );
setEffRotateKey( spep_2 + 8, shuchusen2, 18 );
setEffRotateKey( spep_2 + 10, shuchusen2, 198 );
setEffRotateKey( spep_2 + 12, shuchusen2, 18 );
setEffRotateKey( spep_2 + 14, shuchusen2, 198 );
setEffRotateKey( spep_2 + 16, shuchusen2, 18 );
setEffRotateKey( spep_2 + 18, shuchusen2, 198 );
setEffRotateKey( spep_2 + 20, shuchusen2, 18 );
setEffRotateKey( spep_2 + 22, shuchusen2, 198 );
setEffRotateKey( spep_2 + 24, shuchusen2, 18 );
setEffRotateKey( spep_2 + 26, shuchusen2, 198 );
setEffRotateKey( spep_2 + 28, shuchusen2, 18 );
setEffRotateKey( spep_2 + 30, shuchusen2, 198 );
setEffRotateKey( spep_2 + 32, shuchusen2, 18 );
setEffRotateKey( spep_2 + 34, shuchusen2, 198 );
setEffRotateKey( spep_2 + 36, shuchusen2, 18 );
setEffRotateKey( spep_2 + 38, shuchusen2, 198 );
setEffRotateKey( spep_2 + 40, shuchusen2, 18 );
setEffRotateKey( spep_2 + 42, shuchusen2, 198 );
setEffRotateKey( spep_2 + 44, shuchusen2, 18 );
setEffRotateKey( spep_2 + 46, shuchusen2, 198 );
setEffRotateKey( spep_2 + 48, shuchusen2, 18 );
setEffRotateKey( spep_2 + 50, shuchusen2, 198 );
setEffRotateKey( spep_2 + 52, shuchusen2, 18 );
setEffRotateKey( spep_2 + 54, shuchusen2, 198 );
setEffRotateKey( spep_2 + 56, shuchusen2, 18 );
setEffRotateKey( spep_2 + 58, shuchusen2, 198 );
setEffRotateKey( spep_2 + 60, shuchusen2, 18 );
setEffRotateKey( spep_2 + 62, shuchusen2, 198 );
setEffRotateKey( spep_2 + 64, shuchusen2, 18 );
setEffRotateKey( spep_2 + 66, shuchusen2, 198 );
setEffRotateKey( spep_2 + 68, shuchusen2, 18 );
setEffRotateKey( spep_2 + 70, shuchusen2, 198 );
setEffRotateKey( spep_2 + 72, shuchusen2, 18 );
setEffRotateKey( spep_2 + 74, shuchusen2, 198 );
setEffRotateKey( spep_2 + 76, shuchusen2, 18 );
setEffRotateKey( spep_2 + 78, shuchusen2, 198 );
setEffRotateKey( spep_2 + 80, shuchusen2, 18 );
setEffRotateKey( spep_2 + 82, shuchusen2, 198 );
setEffRotateKey( spep_2 + 84, shuchusen2, 18 );
setEffRotateKey( spep_2 + 86, shuchusen2, 198 );
setEffRotateKey( spep_2 + 88, shuchusen2, 18 );
setEffRotateKey( spep_2 + 90, shuchusen2, 198 );
setEffRotateKey( spep_2 + 92, shuchusen2, 18 );
setEffRotateKey( spep_2 + 94, shuchusen2, 198 );
setEffRotateKey( spep_2 + 96, shuchusen2, 18 );
setEffRotateKey( spep_2 + 98, shuchusen2, 198 );
setEffRotateKey( spep_2 + 100, shuchusen2, 18 );
setEffRotateKey( spep_2 + 102, shuchusen2, 198 );
setEffRotateKey( spep_2 + 104, shuchusen2, 18 );
setEffRotateKey( spep_2 + 106, shuchusen2, 198 );
setEffRotateKey( spep_2 + 108, shuchusen2, 18 );

-- shuchusen2
setEffAlphaKey( spep_2 + 0, shuchusen2, 77 );
setEffAlphaKey( spep_2 + 108, shuchusen2, 77 );

--ef_006--
navimove=entryEffectLife(spep_2,SP_04x,108,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, navimove, 0, 0 , 0 );
setEffMoveKey( spep_2+108, navimove, 0, 0 , 0 );
setEffScaleKey(spep_2,navimove,-1.0,1.0);
setEffScaleKey(spep_2+108,navimove,-1.0,1.0);
setEffRotateKey(spep_2,navimove,0);
setEffRotateKey(spep_2+108,navimove,0);
setEffAlphaKey(spep_2,navimove,255);
setEffAlphaKey(spep_2+108,navimove,255);

--playSe( spep_2+14,4); --いらない
--playSe( spep_2+42,4); --いらない
--playSe( spep_2+70,4); --いらない
playSe( spep_2+14,1026);
------------------------------------------------------
--Scene07 連続攻撃(360F)
------------------------------------------------------
spep_3=spep_2+108;

--white--
entryFade(spep_3,0,0,4,255,255,255,255); --whitefade

--書き文字エントリー
CtGa = entryEffectLife( spep_3 + 6,  10005, 10, 0x100, -1, 0, 2.8, 428.1 );
setEffMoveKey( spep_3 + 6, CtGa, 2.8, 428.1 , 0 );
setEffMoveKey( spep_3 + 8, CtGa, -9.2, 432.8 , 0 );
setEffMoveKey( spep_3 + 10, CtGa, 2.8, 427.9 , 0 );
setEffMoveKey( spep_3 + 12, CtGa, -6.4, 431.8 , 0 );
setEffMoveKey( spep_3 + 14, CtGa, 2.9, 428 , 0 );
setEffMoveKey( spep_3 + 16, CtGa, 2.9, 428 , 0 );

CtGa2 = entryEffectLife( spep_3 + 42,  10005, 10, 0x100, -1, 0, -119.2, 404.6 );
setEffMoveKey( spep_3 + 42, CtGa2, -119.2, 404.6 , 0 );
setEffMoveKey( spep_3 + 44, CtGa2, -131, 410.4 , 0 );
setEffMoveKey( spep_3 + 46, CtGa2, -119.3, 404.5 , 0 );
setEffMoveKey( spep_3 + 48, CtGa2, -128.3, 409.2 , 0 );
setEffMoveKey( spep_3 + 50, CtGa2, -119.3, 404.6 , 0 );
setEffMoveKey( spep_3 + 52, CtGa2, -119.3, 404.6 , 0 );

setEffScaleKey( spep_3 + 6, CtGa, 1.54, 1.54 );
setEffScaleKey( spep_3 + 8, CtGa, 2.3, 2.3 );
setEffScaleKey( spep_3 + 10, CtGa, 2.04, 2.04 );
setEffScaleKey( spep_3 + 12, CtGa, 1.78, 1.78 );
setEffScaleKey( spep_3 + 16, CtGa, 1.78, 1.78 );

setEffScaleKey( spep_3 + 42, CtGa2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 44, CtGa2, 2.3, 2.3 );
setEffScaleKey( spep_3 + 46, CtGa2, 2.04, 2.04 );
setEffScaleKey( spep_3 + 48, CtGa2, 1.78, 1.78 );
setEffScaleKey( spep_3 + 52, CtGa2, 1.78, 1.78 );

setEffRotateKey( spep_3 + 6, CtGa, -22.7 );
setEffRotateKey( spep_3 + 16, CtGa, -22.7 );

setEffRotateKey( spep_3 + 42, CtGa2, -17.9 );
setEffRotateKey( spep_3 + 52, CtGa2, -17.9 );

setEffAlphaKey( spep_3 + 6, CtGa, 255 );
setEffAlphaKey( spep_3 + 12, CtGa, 255 );
setEffAlphaKey( spep_3 + 14, CtGa, 159 );
setEffAlphaKey( spep_3 + 16, CtGa, 64 );

setEffAlphaKey( spep_3 + 42, CtGa2, 255 );
setEffAlphaKey( spep_3 + 48, CtGa2, 255 );
setEffAlphaKey( spep_3 + 50, CtGa2, 159 );
setEffAlphaKey( spep_3 + 52, CtGa2, 64 );

ctDogaga = entryEffectLife( spep_3 + 104,  10017, 212, 0x100, -1, 0, 12.1, 382.4 );--ドガガッ
setEffMoveKey( spep_3 + 104, ctDogaga, 12.1, 382.4 , 0 );
setEffMoveKey( spep_3 + 106, ctDogaga, 6.3, 389.4 , 0 );
setEffMoveKey( spep_3 + 108, ctDogaga, 11.9, 383.5 , 0 );
setEffMoveKey( spep_3 + 110, ctDogaga, 5, 391.2 , 0 );
setEffMoveKey( spep_3 + 112, ctDogaga, 11.8, 383.1 , 0 );
setEffMoveKey( spep_3 + 114, ctDogaga, 11.8, 382.9 , 0 );
setEffMoveKey( spep_3 + 116, ctDogaga, 6.3, 389.4 , 0 );
setEffMoveKey( spep_3 + 118, ctDogaga, 11.8, 383.5 , 0 );
setEffMoveKey( spep_3 + 120, ctDogaga, 6.3, 390 , 0 );
setEffMoveKey( spep_3 + 122, ctDogaga, 11.8, 384 , 0 );
setEffMoveKey( spep_3 + 124, ctDogaga, 6.2, 390.6 , 0 );
setEffMoveKey( spep_3 + 126, ctDogaga, 11.8, 384.5 , 0 );
setEffMoveKey( spep_3 + 128, ctDogaga, 6.2, 391.2 , 0 );
setEffMoveKey( spep_3 + 130, ctDogaga, 11.8, 385 , 0 );
setEffMoveKey( spep_3 + 132, ctDogaga, 6.1, 391.7 , 0 );
setEffMoveKey( spep_3 + 134, ctDogaga, 11.8, 385.5 , 0 );
setEffMoveKey( spep_3 + 136, ctDogaga, 6.1, 392.3 , 0 );
setEffMoveKey( spep_3 + 138, ctDogaga, 11.8, 386 , 0 );
setEffMoveKey( spep_3 + 140, ctDogaga, 6, 392.9 , 0 );
setEffMoveKey( spep_3 + 142, ctDogaga, 11.8, 386.5 , 0 );
setEffMoveKey( spep_3 + 144, ctDogaga, 5.9, 393.5 , 0 );
setEffMoveKey( spep_3 + 146, ctDogaga, 11.8, 387 , 0 );
setEffMoveKey( spep_3 + 148, ctDogaga, 5.9, 394.1 , 0 );
setEffMoveKey( spep_3 + 150, ctDogaga, 11.8, 387.5 , 0 );
setEffMoveKey( spep_3 + 152, ctDogaga, 5.8, 394.6 , 0 );
setEffMoveKey( spep_3 + 154, ctDogaga, 11.8, 388 , 0 );
setEffMoveKey( spep_3 + 156, ctDogaga, 5.8, 395.2 , 0 );
setEffMoveKey( spep_3 + 158, ctDogaga, 11.8, 388.5 , 0 );
setEffMoveKey( spep_3 + 160, ctDogaga, 5.7, 395.8 , 0 );
setEffMoveKey( spep_3 + 162, ctDogaga, 11.8, 389.1 , 0 );
setEffMoveKey( spep_3 + 164, ctDogaga, 5.7, 396.4 , 0 );
setEffMoveKey( spep_3 + 166, ctDogaga, 11.8, 389.6 , 0 );
setEffMoveKey( spep_3 + 168, ctDogaga, 5.6, 396.9 , 0 );
setEffMoveKey( spep_3 + 170, ctDogaga, 11.8, 390.1 , 0 );
setEffMoveKey( spep_3 + 172, ctDogaga, 5.5, 397.5 , 0 );
setEffMoveKey( spep_3 + 174, ctDogaga, 11.8, 390.6 , 0 );
setEffMoveKey( spep_3 + 176, ctDogaga, 5.5, 398.1 , 0 );
setEffMoveKey( spep_3 + 178, ctDogaga, 11.8, 391.1 , 0 );
setEffMoveKey( spep_3 + 180, ctDogaga, 5.4, 398.7 , 0 );
setEffMoveKey( spep_3 + 182, ctDogaga, 11.8, 391.6 , 0 );
setEffMoveKey( spep_3 + 184, ctDogaga, 5.4, 399.2 , 0 );
setEffMoveKey( spep_3 + 186, ctDogaga, 11.8, 392.1 , 0 );
setEffMoveKey( spep_3 + 188, ctDogaga, 5.3, 399.8 , 0 );
setEffMoveKey( spep_3 + 190, ctDogaga, 11.8, 392.6 , 0 );
setEffMoveKey( spep_3 + 192, ctDogaga, 5.3, 400.4 , 0 );
setEffMoveKey( spep_3 + 194, ctDogaga, 11.8, 393.1 , 0 );
setEffMoveKey( spep_3 + 196, ctDogaga, 5.2, 401 , 0 );
setEffMoveKey( spep_3 + 198, ctDogaga, 11.8, 393.6 , 0 );
setEffMoveKey( spep_3 + 200, ctDogaga, 5.2, 401.5 , 0 );
setEffMoveKey( spep_3 + 202, ctDogaga, 11.8, 394.1 , 0 );
setEffMoveKey( spep_3 + 204, ctDogaga, 5.1, 402.1 , 0 );
setEffMoveKey( spep_3 + 206, ctDogaga, 11.8, 394.7 , 0 );
setEffMoveKey( spep_3 + 208, ctDogaga, 5, 402.7 , 0 );
setEffMoveKey( spep_3 + 210, ctDogaga, 11.8, 395.2 , 0 );
setEffMoveKey( spep_3 + 212, ctDogaga, 5, 403.3 , 0 );
setEffMoveKey( spep_3 + 214, ctDogaga, 11.8, 395.7 , 0 );
setEffMoveKey( spep_3 + 216, ctDogaga, 4.9, 403.8 , 0 );
setEffMoveKey( spep_3 + 218, ctDogaga, 11.8, 396.2 , 0 );
setEffMoveKey( spep_3 + 220, ctDogaga, 4.9, 404.4 , 0 );
setEffMoveKey( spep_3 + 222, ctDogaga, 11.8, 396.7 , 0 );
setEffMoveKey( spep_3 + 224, ctDogaga, 4.8, 405 , 0 );
setEffMoveKey( spep_3 + 226, ctDogaga, 11.8, 397.2 , 0 );
setEffMoveKey( spep_3 + 228, ctDogaga, 4.8, 405.6 , 0 );
setEffMoveKey( spep_3 + 230, ctDogaga, 11.8, 397.7 , 0 );
setEffMoveKey( spep_3 + 232, ctDogaga, 4.7, 406.1 , 0 );
setEffMoveKey( spep_3 + 234, ctDogaga, 11.8, 398.2 , 0 );
setEffMoveKey( spep_3 + 236, ctDogaga, 4.6, 406.7 , 0 );
setEffMoveKey( spep_3 + 238, ctDogaga, 11.8, 398.7 , 0 );
setEffMoveKey( spep_3 + 240, ctDogaga, 4.6, 407.3 , 0 );
setEffMoveKey( spep_3 + 242, ctDogaga, 11.8, 399.2 , 0 );
setEffMoveKey( spep_3 + 244, ctDogaga, 4.5, 407.9 , 0 );
setEffMoveKey( spep_3 + 246, ctDogaga, 11.8, 399.7 , 0 );
setEffMoveKey( spep_3 + 248, ctDogaga, 4.5, 408.4 , 0 );
setEffMoveKey( spep_3 + 250, ctDogaga, 11.8, 400.3 , 0 );
setEffMoveKey( spep_3 + 252, ctDogaga, 4.4, 409 , 0 );
setEffMoveKey( spep_3 + 254, ctDogaga, 11.8, 400.8 , 0 );
setEffMoveKey( spep_3 + 256, ctDogaga, 4.4, 409.6 , 0 );
setEffMoveKey( spep_3 + 258, ctDogaga, 11.8, 401.3 , 0 );
setEffMoveKey( spep_3 + 260, ctDogaga, 4.3, 410.2 , 0 );
setEffMoveKey( spep_3 + 262, ctDogaga, 11.8, 401.8 , 0 );
setEffMoveKey( spep_3 + 264, ctDogaga, 4.3, 410.7 , 0 );
setEffMoveKey( spep_3 + 266, ctDogaga, 11.8, 402.3 , 0 );
setEffMoveKey( spep_3 + 268, ctDogaga, 4.2, 411.3 , 0 );
setEffMoveKey( spep_3 + 270, ctDogaga, 11.8, 402.8 , 0 );
setEffMoveKey( spep_3 + 272, ctDogaga, 4.1, 411.9 , 0 );
setEffMoveKey( spep_3 + 274, ctDogaga, 11.8, 403.3 , 0 );
setEffMoveKey( spep_3 + 276, ctDogaga, 4.1, 412.5 , 0 );
setEffMoveKey( spep_3 + 278, ctDogaga, 11.8, 403.8 , 0 );
setEffMoveKey( spep_3 + 280, ctDogaga, 4, 413.1 , 0 );
setEffMoveKey( spep_3 + 282, ctDogaga, 11.8, 404.3 , 0 );
setEffMoveKey( spep_3 + 284, ctDogaga, 4, 413.6 , 0 );
setEffMoveKey( spep_3 + 286, ctDogaga, 11.8, 404.8 , 0 );
setEffMoveKey( spep_3 + 288, ctDogaga, 3.9, 414.2 , 0 );
setEffMoveKey( spep_3 + 290, ctDogaga, 11.8, 405.4 , 0 );
setEffMoveKey( spep_3 + 292, ctDogaga, 3.9, 414.8 , 0 );
setEffMoveKey( spep_3 + 294, ctDogaga, 11.8, 405.9 , 0 );
setEffMoveKey( spep_3 + 296, ctDogaga, 3.8, 415.4 , 0 );
setEffMoveKey( spep_3 + 298, ctDogaga, 11.8, 406.4 , 0 );
setEffMoveKey( spep_3 + 300, ctDogaga, 3.8, 415.9 , 0 );
setEffMoveKey( spep_3 + 302, ctDogaga, 11.8, 406.9 , 0 );
setEffMoveKey( spep_3 + 304, ctDogaga, 3.7, 416.5 , 0 );
setEffMoveKey( spep_3 + 306, ctDogaga, 11.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 308, ctDogaga, 3.6, 417.1 , 0 );
setEffMoveKey( spep_3 + 310, ctDogaga, 11.8, 408 , 0 );
setEffMoveKey( spep_3 + 312, ctDogaga, 1.5, 420.2 , 0 );
setEffMoveKey( spep_3 + 314, ctDogaga, 11.8, 408.6 , 0 );
setEffMoveKey( spep_3 + 316, ctDogaga, 11.8, 408.9 , 0 );

setEffScaleKey( spep_3 + 104, ctDogaga, 1.43, 1.43 );
setEffScaleKey( spep_3 + 106, ctDogaga, 2.2, 2.2 );
setEffScaleKey( spep_3 + 108, ctDogaga, 2.97, 2.97 );
setEffScaleKey( spep_3 + 110, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_3 + 112, ctDogaga, 2.4, 2.4 );
setEffScaleKey( spep_3 + 114, ctDogaga, 2.12, 2.12 );
setEffScaleKey( spep_3 + 116, ctDogaga, 2.13, 2.13 );
setEffScaleKey( spep_3 + 118, ctDogaga, 2.14, 2.14 );
setEffScaleKey( spep_3 + 120, ctDogaga, 2.15, 2.15 );
setEffScaleKey( spep_3 + 122, ctDogaga, 2.17, 2.17 );
setEffScaleKey( spep_3 + 124, ctDogaga, 2.18, 2.18 );
setEffScaleKey( spep_3 + 126, ctDogaga, 2.19, 2.19 );
setEffScaleKey( spep_3 + 128, ctDogaga, 2.2, 2.2 );
setEffScaleKey( spep_3 + 130, ctDogaga, 2.21, 2.21 );
setEffScaleKey( spep_3 + 132, ctDogaga, 2.22, 2.22 );
setEffScaleKey( spep_3 + 134, ctDogaga, 2.23, 2.23 );
setEffScaleKey( spep_3 + 136, ctDogaga, 2.24, 2.24 );
setEffScaleKey( spep_3 + 138, ctDogaga, 2.26, 2.26 );
setEffScaleKey( spep_3 + 140, ctDogaga, 2.27, 2.27 );
setEffScaleKey( spep_3 + 142, ctDogaga, 2.28, 2.28 );
setEffScaleKey( spep_3 + 144, ctDogaga, 2.29, 2.29 );
setEffScaleKey( spep_3 + 146, ctDogaga, 2.3, 2.3 );
setEffScaleKey( spep_3 + 148, ctDogaga, 2.31, 2.31 );
setEffScaleKey( spep_3 + 150, ctDogaga, 2.32, 2.32 );
setEffScaleKey( spep_3 + 152, ctDogaga, 2.34, 2.34 );
setEffScaleKey( spep_3 + 154, ctDogaga, 2.35, 2.35 );
setEffScaleKey( spep_3 + 156, ctDogaga, 2.36, 2.36 );
setEffScaleKey( spep_3 + 158, ctDogaga, 2.37, 2.37 );
setEffScaleKey( spep_3 + 160, ctDogaga, 2.38, 2.38 );
setEffScaleKey( spep_3 + 162, ctDogaga, 2.39, 2.39 );
setEffScaleKey( spep_3 + 164, ctDogaga, 2.4, 2.4 );
setEffScaleKey( spep_3 + 166, ctDogaga, 2.41, 2.41 );
setEffScaleKey( spep_3 + 168, ctDogaga, 2.43, 2.43 );
setEffScaleKey( spep_3 + 170, ctDogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 172, ctDogaga, 2.45, 2.45 );
setEffScaleKey( spep_3 + 174, ctDogaga, 2.46, 2.46 );
setEffScaleKey( spep_3 + 176, ctDogaga, 2.47, 2.47 );
setEffScaleKey( spep_3 + 178, ctDogaga, 2.48, 2.48 );
setEffScaleKey( spep_3 + 180, ctDogaga, 2.49, 2.49 );
setEffScaleKey( spep_3 + 182, ctDogaga, 2.51, 2.51 );
setEffScaleKey( spep_3 + 184, ctDogaga, 2.52, 2.52 );
setEffScaleKey( spep_3 + 186, ctDogaga, 2.53, 2.53 );
setEffScaleKey( spep_3 + 188, ctDogaga, 2.54, 2.54 );
setEffScaleKey( spep_3 + 190, ctDogaga, 2.55, 2.55 );
setEffScaleKey( spep_3 + 192, ctDogaga, 2.56, 2.56 );
setEffScaleKey( spep_3 + 194, ctDogaga, 2.57, 2.57 );
setEffScaleKey( spep_3 + 196, ctDogaga, 2.58, 2.58 );
setEffScaleKey( spep_3 + 198, ctDogaga, 2.6, 2.6 );
setEffScaleKey( spep_3 + 200, ctDogaga, 2.61, 2.61 );
setEffScaleKey( spep_3 + 202, ctDogaga, 2.62, 2.62 );
setEffScaleKey( spep_3 + 204, ctDogaga, 2.63, 2.63 );
setEffScaleKey( spep_3 + 206, ctDogaga, 2.64, 2.64 );
setEffScaleKey( spep_3 + 208, ctDogaga, 2.65, 2.65 );
setEffScaleKey( spep_3 + 210, ctDogaga, 2.66, 2.66 );
setEffScaleKey( spep_3 + 212, ctDogaga, 2.68, 2.68 );
setEffScaleKey( spep_3 + 214, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_3 + 216, ctDogaga, 2.7, 2.7 );
setEffScaleKey( spep_3 + 218, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 220, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 222, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 224, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 226, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 228, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 230, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 232, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 234, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 236, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 238, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 240, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 242, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 244, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 246, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 248, ctDogaga, 2.88, 2.88 );
setEffScaleKey( spep_3 + 250, ctDogaga, 2.89, 2.89 );
setEffScaleKey( spep_3 + 252, ctDogaga, 2.9, 2.9 );
setEffScaleKey( spep_3 + 254, ctDogaga, 2.91, 2.91 );
setEffScaleKey( spep_3 + 256, ctDogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 + 258, ctDogaga, 2.94, 2.94 );
setEffScaleKey( spep_3 + 260, ctDogaga, 2.95, 2.95 );
setEffScaleKey( spep_3 + 262, ctDogaga, 2.96, 2.96 );
setEffScaleKey( spep_3 + 264, ctDogaga, 2.97, 2.97 );
setEffScaleKey( spep_3 + 266, ctDogaga, 2.98, 2.98 );
setEffScaleKey( spep_3 + 268, ctDogaga, 2.99, 2.99 );
setEffScaleKey( spep_3 + 270, ctDogaga, 3, 3 );
setEffScaleKey( spep_3 + 272, ctDogaga, 3.02, 3.02 );
setEffScaleKey( spep_3 + 274, ctDogaga, 3.03, 3.03 );
setEffScaleKey( spep_3 + 276, ctDogaga, 3.04, 3.04 );
setEffScaleKey( spep_3 + 278, ctDogaga, 3.05, 3.05 );
setEffScaleKey( spep_3 + 280, ctDogaga, 3.06, 3.06 );
setEffScaleKey( spep_3 + 282, ctDogaga, 3.07, 3.07 );
setEffScaleKey( spep_3 + 284, ctDogaga, 3.08, 3.08 );
setEffScaleKey( spep_3 + 286, ctDogaga, 3.1, 3.1 );
setEffScaleKey( spep_3 + 288, ctDogaga, 3.11, 3.11 );
setEffScaleKey( spep_3 + 290, ctDogaga, 3.12, 3.12 );
setEffScaleKey( spep_3 + 292, ctDogaga, 3.13, 3.13 );
setEffScaleKey( spep_3 + 294, ctDogaga, 3.14, 3.14 );
setEffScaleKey( spep_3 + 296, ctDogaga, 3.15, 3.15 );
setEffScaleKey( spep_3 + 298, ctDogaga, 3.16, 3.16 );
setEffScaleKey( spep_3 + 300, ctDogaga, 3.17, 3.17 );
setEffScaleKey( spep_3 + 302, ctDogaga, 3.19, 3.19 );
setEffScaleKey( spep_3 + 304, ctDogaga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 306, ctDogaga, 3.21, 3.21 );
setEffScaleKey( spep_3 + 308, ctDogaga, 3.22, 3.22 );
setEffScaleKey( spep_3 + 310, ctDogaga, 3.64, 3.64 );
setEffScaleKey( spep_3 + 312, ctDogaga, 4.07, 4.07 );
setEffScaleKey( spep_3 + 314, ctDogaga, 4.49, 4.49 );
setEffScaleKey( spep_3 + 316, ctDogaga, 4.91, 4.91 );

setEffRotateKey( spep_3 + 104, ctDogaga, 14.5 );

setEffAlphaKey( spep_3 + 104, ctDogaga, 64 );
setEffAlphaKey( spep_3 + 106, ctDogaga, 159 );
setEffAlphaKey( spep_3 + 108, ctDogaga, 255 );
setEffAlphaKey( spep_3 + 308, ctDogaga, 255 );
setEffAlphaKey( spep_3 + 310, ctDogaga, 191 );
setEffAlphaKey( spep_3 + 312, ctDogaga, 128 );
setEffAlphaKey( spep_3 + 314, ctDogaga, 64 );
setEffAlphaKey( spep_3 + 316, ctDogaga, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 358, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_3 + 102, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_3 + 104, shuchusen3, 1.17, 1.59 );
setEffScaleKey( spep_3 + 358, shuchusen3, 1.17, 1.59 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 358, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 20, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 22, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 24, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 26, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 64, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 66, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 68, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 70, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 106, shuchusen3, 43 );
setEffAlphaKey( spep_3 + 108, shuchusen3, 85 );
setEffAlphaKey( spep_3 + 110, shuchusen3, 128 );
setEffAlphaKey( spep_3 + 112, shuchusen3, 170 );
setEffAlphaKey( spep_3 + 114, shuchusen3, 213 );
setEffAlphaKey( spep_3 + 116, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 358, shuchusen3, 255 );

--eff_04
combo=entryEffectLife(spep_3,SP_05x,358,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, combo, 0, 0 , 0 );
setEffMoveKey( spep_3+358, combo, 0, 0 , 0 );
setEffScaleKey(spep_3,combo,1.0,1.0);
setEffScaleKey(spep_3+358,combo,1.0,1.0);
setEffRotateKey(spep_3,combo,0);
setEffRotateKey(spep_3+358,combo,0);
setEffAlphaKey(spep_3,combo,255);
setEffAlphaKey(spep_3+358,combo,255);
--eff_05
combor=entryEffectLife(spep_3,SP_06x,358,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, combor, 0, 0 , 0 );
setEffMoveKey( spep_3+358, combor, 0, 0 , 0 );
setEffScaleKey(spep_3,combor,1.0,1.0);
setEffScaleKey(spep_3+358,combor,1.0,1.0);
setEffRotateKey(spep_3,combor,0);
setEffRotateKey(spep_3+358,combor,0);
setEffAlphaKey(spep_3,combor,255);
setEffAlphaKey(spep_3+358,combor,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 358, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 + 42, 1, 106 );

setMoveKey( spep_3 + 0, 1, -64.4, -56.2 , 0 );
setMoveKey( spep_3 + 2, 1, 33.3, 23.3 , 0 );
setMoveKey( spep_3 + 4, 1, 113.8, 119.5 , 0 );
setMoveKey( spep_3 + 6, 1, 154.7, 167.2 , 0 );
setMoveKey( spep_3 + 8, 1, 194.7, 199.6 , 0 );
setMoveKey( spep_3 + 10, 1, 191.6, 189.9 , 0 );
setMoveKey( spep_3 + 12, 1, 196.4, 204.2 , 0 );
setMoveKey( spep_3 + 14, 1, 185.2, 198.6 , 0 );
setMoveKey( spep_3 + 16, 1, 198.1, 208.9 , 0 );
setMoveKey( spep_3 + 18, 1, 194.9, 207.2 , 0 );
setMoveKey( spep_3 + 20, 1, 199.7, 213.6 , 0 );
setMoveKey( spep_3 + 22, 1, 196.5, 211.9 , 0 );
setMoveKey( spep_3 + 24, 1, 201.3, 218.3 , 0 );
setMoveKey( spep_3 + 26, 1, 202.1, 220.6 , 0 );
setMoveKey( spep_3 + 28, 1, 202.9, 223 , 0 );
setMoveKey( spep_3 + 30, 1, 203.7, 225.3 , 0 );
setMoveKey( spep_3 + 32, 1, 204.5, 227.7 , 0 );
setMoveKey( spep_3 + 34, 1, 205.3, 230 , 0 );
setMoveKey( spep_3 + 36, 1, 45.2, 165.6 , 0 );
setMoveKey( spep_3 + 38, 1, -114.9, 100.8 , 0 );
setMoveKey( spep_3 + 41, 1, -117.8, 98.7 , 0 );
setMoveKey( spep_3 + 42, 1, -182.5, 78.4 , 0 );
setMoveKey( spep_3 + 44, 1, -186.6, 88.9 , 0 );
setMoveKey( spep_3 + 46, 1, -203.6, 75.8 , 0 );
setMoveKey( spep_3 + 48, 1, -199.2, 78.1 , 0 );
setMoveKey( spep_3 + 50, 1, -209.4, 57.3 , 0 );
setMoveKey( spep_3 + 52, 1, -214.2, 67.6 , 0 );
setMoveKey( spep_3 + 54, 1, -232.1, 55.1 , 0 );
setMoveKey( spep_3 + 56, 1, -228.5, 57.6 , 0 );
setMoveKey( spep_3 + 58, 1, -238, 45.3 , 0 );
setMoveKey( spep_3 + 60, 1, -224.3, 53.4 , 0 );
setMoveKey( spep_3 + 62, 1, -219.9, 42.8 , 0 );
setMoveKey( spep_3 + 64, 1, -202, 55.2 , 0 );
setMoveKey( spep_3 + 66, 1, -189.1, 53.1 , 0 );
setMoveKey( spep_3 + 68, 1, -170.8, 66 , 0 );
setMoveKey( spep_3 + 70, 1, -157.9, 64.3 , 0 );
setMoveKey( spep_3 + 72, 1, -139.6, 77.7 , 0 );
setMoveKey( spep_3 + 74, 1, -122.8, 80.7 , 0 );
setMoveKey( spep_3 + 76, 1, -108.7, 90.9 , 0 );
setMoveKey( spep_3 + 78, 1, -99.5, 92.1 , 0 );
setMoveKey( spep_3 + 80, 1, -92.9, 99.9 , 0 );
setMoveKey( spep_3 + 82, 1, -83.9, 101.9 , 0 );
setMoveKey( spep_3 + 84, 1, -77.4, 110.2 , 0 );
setMoveKey( spep_3 + 86, 1, -75.8, 109.5 , 0 );
setMoveKey( spep_3 + 88, 1, -76.8, 114.6 , 0 );
setMoveKey( spep_3 + 90, 1, -75.1, 114.5 , 0 );
setMoveKey( spep_3 + 92, 1, -75.9, 119.7 , 0 );
setMoveKey( spep_3 + 94, 1, -74.1, 120.1 , 0 );
setMoveKey( spep_3 + 96, 1, -74.8, 125.4 , 0 );
setMoveKey( spep_3 + 98, 1, -72.8, 126.5 , 0 );
setMoveKey( spep_3 + 100, 1, -68.3, 128.5 , 0 );
setMoveKey( spep_3 + 102, 1, -61.7, 126.1 , 0 );
setMoveKey( spep_3 + 104, 1, -57.1, 127.3 , 0 );
setMoveKey( spep_3 + 106, 1, -50.5, 123.4 , 0 );
setMoveKey( spep_3 + 108, 1, -45.7, 123 , 0 );
setMoveKey( spep_3 + 110, 1, -39.4, 118.9 , 0 );
setMoveKey( spep_3 + 112, 1, -43.2, 111 , 0 );
setMoveKey( spep_3 + 114, 1, -38.4, 112.8 , 0 );
setMoveKey( spep_3 + 116, 1, -46.7, 109.6 , 0 );
setMoveKey( spep_3 + 118, 1, -37.9, 111.4 , 0 );
setMoveKey( spep_3 + 120, 1, -42.3, 108.2 , 0 );
setMoveKey( spep_3 + 122, 1, -37.4, 110 , 0 );
setMoveKey( spep_3 + 124, 1, -41.8, 102.8 , 0 );
setMoveKey( spep_3 + 126, 1, -37, 108.7 , 0 );
setMoveKey( spep_3 + 128, 1, -41.3, 105.5 , 0 );
setMoveKey( spep_3 + 130, 1, -36.6, 107.4 , 0 );
setMoveKey( spep_3 + 132, 1, -44.9, 100.3 , 0 );
setMoveKey( spep_3 + 134, 1, -36.1, 106.2 , 0 );
setMoveKey( spep_3 + 136, 1, -40.5, 103.1 , 0 );
setMoveKey( spep_3 + 138, 1, -35.7, 105 , 0 );
setMoveKey( spep_3 + 140, 1, -44.1, 98 , 0 );
setMoveKey( spep_3 + 142, 1, -35.3, 103.8 , 0 );
setMoveKey( spep_3 + 144, 1, -43.7, 100.9 , 0 );
setMoveKey( spep_3 + 146, 1, -35, 102.7 , 0 );
setMoveKey( spep_3 + 148, 1, -39.3, 95.8 , 0 );
setMoveKey( spep_3 + 150, 1, -34.6, 101.7 , 0 );
setMoveKey( spep_3 + 152, 1, -39, 98.8 , 0 );
setMoveKey( spep_3 + 154, 1, -34.3, 100.7 , 0 );
setMoveKey( spep_3 + 156, 1, -42.6, 93.8 , 0 );
setMoveKey( spep_3 + 158, 1, -33.9, 99.7 , 0 );
setMoveKey( spep_3 + 160, 1, -38.3, 96.9 , 0 );
setMoveKey( spep_3 + 162, 1, -33.6, 98.8 , 0 );
setMoveKey( spep_3 + 164, 1, -42, 96.1 , 0 );
setMoveKey( spep_3 + 166, 1, -33.3, 98 , 0 );
setMoveKey( spep_3 + 168, 1, -37.6, 91.2 , 0 );
setMoveKey( spep_3 + 170, 1, -33, 97.1 , 0 );
setMoveKey( spep_3 + 172, 1, -37.3, 94.4 , 0 );
setMoveKey( spep_3 + 174, 1, -32.7, 96.3 , 0 );
setMoveKey( spep_3 + 176, 1, -41, 89.7 , 0 );
setMoveKey( spep_3 + 178, 1, -32.4, 95.6 , 0 );
setMoveKey( spep_3 + 180, 1, -36.7, 93 , 0 );
setMoveKey( spep_3 + 182, 1, -32.1, 94.9 , 0 );
setMoveKey( spep_3 + 184, 1, -40.5, 92.3 , 0 );
setMoveKey( spep_3 + 186, 1, -31.9, 94.2 , 0 );
setMoveKey( spep_3 + 188, 1, -36.2, 87.7 , 0 );
setMoveKey( spep_3 + 190, 1, -31.6, 93.6 , 0 );
setMoveKey( spep_3 + 192, 1, -39.9, 87.1 , 0 );
setMoveKey( spep_3 + 194, 1, -31.4, 93 , 0 );
setMoveKey( spep_3 + 196, 1, -35.7, 90.6 , 0 );
setMoveKey( spep_3 + 198, 1, -31.1, 92.5 , 0 );
setMoveKey( spep_3 + 200, 1, -35.4, 90 , 0 );
setMoveKey( spep_3 + 202, 1, -30.9, 91.9 , 0 );
setMoveKey( spep_3 + 204, 1, -39.2, 85.6 , 0 );
setMoveKey( spep_3 + 206, 1, -30.6, 91.5 , 0 );
setMoveKey( spep_3 + 208, 1, -34.9, 89.1 , 0 );
setMoveKey( spep_3 + 210, 1, -30.4, 91 , 0 );
setMoveKey( spep_3 + 212, 1, -34.7, 88.7 , 0 );
setMoveKey( spep_3 + 214, 1, -30.2, 90.6 , 0 );
setMoveKey( spep_3 + 216, 1, -38.5, 88.3 , 0 );
setMoveKey( spep_3 + 218, 1, -30, 90.2 , 0 );
setMoveKey( spep_3 + 220, 1, -34.2, 88 , 0 );
setMoveKey( spep_3 + 222, 1, -29.8, 89.9 , 0 );
setMoveKey( spep_3 + 224, 1, -34, 87.9 , 0 );
setMoveKey( spep_3 + 226, 1, -29.4, 90 , 0 );
setMoveKey( spep_3 + 228, 1, -29.6, 91.9 , 0 );
setMoveKey( spep_3 + 230, 1, -33, 82 , 0 );
setMoveKey( spep_3 + 232, 1, -29.1, 91.8 , 0 );
setMoveKey( spep_3 + 234, 1, -36.5, 85.7 , 0 );
setMoveKey( spep_3 + 236, 1, -28.5, 91.8 , 0 );
setMoveKey( spep_3 + 238, 1, -31.7, 85.6 , 0 );
setMoveKey( spep_3 + 240, 1, -27.7, 91.5 , 0 );
setMoveKey( spep_3 + 242, 1, -34.9, 81.1 , 0 );
setMoveKey( spep_3 + 244, 1, -26.8, 90.9 , 0 );
setMoveKey( spep_3 + 246, 1, -34, 84.8 , 0 );
setMoveKey( spep_3 + 248, 1, -25.7, 90.4 , 0 );
setMoveKey( spep_3 + 250, 1, -28.9, 79.9 , 0 );
setMoveKey( spep_3 + 252, 1, -24.6, 89.5 , 0 );
setMoveKey( spep_3 + 254, 1, -27.7, 83.2 , 0 );
setMoveKey( spep_3 + 256, 1, -23.3, 88.8 , 0 );
setMoveKey( spep_3 + 258, 1, -30.3, 78.4 , 0 );
setMoveKey( spep_3 + 260, 1, -21.9, 87.8 , 0 );
setMoveKey( spep_3 + 262, 1, -25, 81.1 , 0 );
setMoveKey( spep_3 + 264, 1, -20.4, 86.8 , 0 );
setMoveKey( spep_3 + 266, 1, -27.3, 79.9 , 0 );
setMoveKey( spep_3 + 268, 1, -18.7, 85.5 , 0 );
setMoveKey( spep_3 + 270, 1, -21.7, 74.5 , 0 );
setMoveKey( spep_3 + 272, 1, -16.9, 84.1 , 0 );
setMoveKey( spep_3 + 274, 1, -19.9, 77 , 0 );
setMoveKey( spep_3 + 276, 1, -15.2, 82.5 , 0 );
setMoveKey( spep_3 + 278, 1, -22, 71.5 , 0 );
setMoveKey( spep_3 + 280, 1, -13.1, 80.8 , 0 );
setMoveKey( spep_3 + 282, 1, -15.8, 73.7 , 0 );
setMoveKey( spep_3 + 284, 1, -11.1, 78.9 , 0 );
setMoveKey( spep_3 + 286, 1, -17.7, 67.7 , 0 );
setMoveKey( spep_3 + 288, 1, -8.8, 77.1 , 0 );
setMoveKey( spep_3 + 290, 1, -11.6, 65.8 , 0 );
setMoveKey( spep_3 + 292, 1, -6.6, 74.9 , 0 );
setMoveKey( spep_3 + 294, 1, -13.2, 67.3 , 0 );
setMoveKey( spep_3 + 296, 1, -4.2, 72.8 , 0 );
setMoveKey( spep_3 + 298, 1, -6.8, 61.1 , 0 );
setMoveKey( spep_3 + 300, 1, -1.7, 70.1 , 0 );
setMoveKey( spep_3 + 302, 1, -8.2, 62.4 , 0 );
setMoveKey( spep_3 + 304, 1, 0.9, 67.6 , 0 );
setMoveKey( spep_3 + 306, 1, -1.7, 59.8 , 0 );
setMoveKey( spep_3 + 308, 1, 3.7, 65 , 0 );
setMoveKey( spep_3 + 310, 1, 9.5, 58 , 0 );
setMoveKey( spep_3 + 312, 1, 42.8, 63.3 , 0 );
setMoveKey( spep_3 + 314, 1, 91.7, 57.5 , 0 );
setMoveKey( spep_3 + 316, 1, 159.9, 55.8 , 0 );
setMoveKey( spep_3 + 318, 1, 247.8, 46.3 , 0 );
setMoveKey( spep_3 + 320, 1, 354.9, 41.5 , 0 );
setMoveKey( spep_3 + 322, 1, 372.8, 37.6 , 0 );
setMoveKey( spep_3 + 324, 1, 390.5, 40.2 , 0 );
setMoveKey( spep_3 + 326, 1, 408.4, 36 , 0 );
setMoveKey( spep_3 + 328, 1, 426.1, 38.6 , 0 );
setMoveKey( spep_3 + 330, 1, 444, 34.1 , 0 );
setMoveKey( spep_3 + 332, 1, 461.7, 36.8 , 0 );
setMoveKey( spep_3 + 334, 1, 470, 33 , 0 );
setMoveKey( spep_3 + 336, 1, 479.5, 37.3 , 0 );
setMoveKey( spep_3 + 338, 1, 490.2, 33.8 , 0 );
setMoveKey( spep_3 + 340, 1, 502.1, 38.3 , 0 );
setMoveKey( spep_3 + 342, 1, 515, 34.6 , 0 );
setMoveKey( spep_3 + 344, 1, 529.3, 39.7 , 0 );
setMoveKey( spep_3 + 346, 1, 544.8, 36.2 , 0 );
setMoveKey( spep_3 + 348, 1, 561.4, 41 , 0 );
setMoveKey( spep_3 + 350, 1, 579.3, 37.8 , 0 );
setMoveKey( spep_3 + 352, 1, 598.3, 43.2 , 0 );
setMoveKey( spep_3 + 354, 1, 618.5, 39.3 , 0 );
setMoveKey( spep_3 + 356, 1, 640, 45.2 , 0 );
setMoveKey( spep_3 + 358, 1, 662.6, 41.3 , 0 );

setScaleKey( spep_3 + 0, 1, 5.04, 5.04 );
setScaleKey( spep_3 + 2, 1, 3.72, 3.72 );
setScaleKey( spep_3 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_3 + 6, 1, 2.02, 2.02 );
setScaleKey( spep_3 + 8, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 10, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 22, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 24, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 26, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 34, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 38, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 41, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 50, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 56, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 60, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 70, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 76, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 78, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 84, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 86, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 88, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 92, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 94, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 96, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 98, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 100, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 102, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 104, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 106, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 108, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 110, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 114, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 116, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 122, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 128, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 130, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 134, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 136, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 140, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 142, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 146, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 152, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 154, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 160, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 164, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 166, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 170, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 172, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 176, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 178, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 184, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 190, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 192, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 196, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 198, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 202, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 204, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 208, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 210, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 214, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 216, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 220, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 222, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 234, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 236, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 244, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 246, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 252, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 254, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 256, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 258, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 264, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 266, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 268, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 270, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 272, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 274, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 276, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 278, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 280, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 282, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 284, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 286, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 288, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 290, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 292, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 294, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 296, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 298, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 300, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 302, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 304, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 306, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 308, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 310, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 312, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 314, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 316, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 318, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 320, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 322, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 324, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 326, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 328, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 330, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 332, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 334, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 336, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 338, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 340, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 342, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 344, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 346, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 348, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 350, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 352, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 354, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 356, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 358, 1, 2.04, 2.04 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 0 );
setRotateKey( spep_3 + 4, 1, -0.1 );
setRotateKey( spep_3 + 6, 1, -0.1 );
setRotateKey( spep_3 + 8, 1, -0.2 );
setRotateKey( spep_3 + 10, 1, -0.2 );
setRotateKey( spep_3 + 12, 1, -0.3 );
setRotateKey( spep_3 + 14, 1, -0.3 );
setRotateKey( spep_3 + 16, 1, -0.4 );
setRotateKey( spep_3 + 18, 1, -0.4 );
setRotateKey( spep_3 + 20, 1, -0.5 );
setRotateKey( spep_3 + 22, 1, -0.5 );
setRotateKey( spep_3 + 24, 1, -0.6 );
setRotateKey( spep_3 + 26, 1, -0.6 );
setRotateKey( spep_3 + 28, 1, -0.7 );
setRotateKey( spep_3 + 30, 1, -0.7 );
setRotateKey( spep_3 + 32, 1, -0.8 );
setRotateKey( spep_3 + 34, 1, -0.8 );
setRotateKey( spep_3 + 36, 1, -0.9 );
setRotateKey( spep_3 + 38, 1, -0.9 );
setRotateKey( spep_3 + 41, 1, -1 );
setRotateKey( spep_3 + 42, 1, -50.8 );
setRotateKey( spep_3 + 56, 1, -50.8 );
setRotateKey( spep_3 + 58, 1, -50.7 );
setRotateKey( spep_3 + 62, 1, -50.7 );
setRotateKey( spep_3 + 64, 1, -50.6 );
setRotateKey( spep_3 + 68, 1, -50.6 );
setRotateKey( spep_3 + 70, 1, -50.8 );
setRotateKey( spep_3 + 72, 1, -51 );
setRotateKey( spep_3 + 74, 1, -51.2 );
setRotateKey( spep_3 + 76, 1, -51.6 );
setRotateKey( spep_3 + 78, 1, -51.9 );
setRotateKey( spep_3 + 80, 1, -52.4 );
setRotateKey( spep_3 + 82, 1, -52.9 );
setRotateKey( spep_3 + 84, 1, -53.5 );
setRotateKey( spep_3 + 86, 1, -54.2 );
setRotateKey( spep_3 + 88, 1, -54.9 );
setRotateKey( spep_3 + 90, 1, -55.7 );
setRotateKey( spep_3 + 92, 1, -56.6 );
setRotateKey( spep_3 + 94, 1, -57.5 );
setRotateKey( spep_3 + 96, 1, -58.5 );
setRotateKey( spep_3 + 98, 1, -59.6 );
setRotateKey( spep_3 + 100, 1, -59.4 );
setRotateKey( spep_3 + 102, 1, -59.1 );
setRotateKey( spep_3 + 104, 1, -58.9 );
setRotateKey( spep_3 + 106, 1, -53.2 );
setRotateKey( spep_3 + 110, 1, -53.2 );
setRotateKey( spep_3 + 112, 1, -52.9 );
setRotateKey( spep_3 + 114, 1, -52.7 );
setRotateKey( spep_3 + 116, 1, -52.4 );
setRotateKey( spep_3 + 118, 1, -52.2 );
setRotateKey( spep_3 + 120, 1, -51.9 );
setRotateKey( spep_3 + 122, 1, -51.7 );
setRotateKey( spep_3 + 124, 1, -51.4 );
setRotateKey( spep_3 + 126, 1, -51.2 );
setRotateKey( spep_3 + 128, 1, -50.9 );
setRotateKey( spep_3 + 130, 1, -50.7 );
setRotateKey( spep_3 + 132, 1, -50.4 );
setRotateKey( spep_3 + 134, 1, -50.2 );
setRotateKey( spep_3 + 136, 1, -49.9 );
setRotateKey( spep_3 + 138, 1, -49.7 );
setRotateKey( spep_3 + 140, 1, -49.4 );
setRotateKey( spep_3 + 142, 1, -49.2 );
setRotateKey( spep_3 + 144, 1, -48.9 );
setRotateKey( spep_3 + 146, 1, -48.7 );
setRotateKey( spep_3 + 148, 1, -48.5 );
setRotateKey( spep_3 + 150, 1, -48.2 );
setRotateKey( spep_3 + 152, 1, -48 );
setRotateKey( spep_3 + 154, 1, -47.7 );
setRotateKey( spep_3 + 156, 1, -47.5 );
setRotateKey( spep_3 + 158, 1, -47.3 );
setRotateKey( spep_3 + 160, 1, -47 );
setRotateKey( spep_3 + 162, 1, -46.8 );
setRotateKey( spep_3 + 164, 1, -46.6 );
setRotateKey( spep_3 + 166, 1, -46.3 );
setRotateKey( spep_3 + 168, 1, -46.1 );
setRotateKey( spep_3 + 170, 1, -45.9 );
setRotateKey( spep_3 + 172, 1, -45.6 );
setRotateKey( spep_3 + 174, 1, -45.4 );
setRotateKey( spep_3 + 176, 1, -45.2 );
setRotateKey( spep_3 + 178, 1, -45 );
setRotateKey( spep_3 + 180, 1, -44.7 );
setRotateKey( spep_3 + 182, 1, -44.5 );
setRotateKey( spep_3 + 184, 1, -44.3 );
setRotateKey( spep_3 + 186, 1, -44.1 );
setRotateKey( spep_3 + 188, 1, -43.8 );
setRotateKey( spep_3 + 190, 1, -43.6 );
setRotateKey( spep_3 + 192, 1, -43.4 );
setRotateKey( spep_3 + 194, 1, -43.2 );
setRotateKey( spep_3 + 196, 1, -43 );
setRotateKey( spep_3 + 198, 1, -42.7 );
setRotateKey( spep_3 + 200, 1, -42.5 );
setRotateKey( spep_3 + 202, 1, -42.3 );
setRotateKey( spep_3 + 204, 1, -42.1 );
setRotateKey( spep_3 + 206, 1, -41.9 );
setRotateKey( spep_3 + 208, 1, -41.7 );
setRotateKey( spep_3 + 210, 1, -41.5 );
setRotateKey( spep_3 + 212, 1, -41.2 );
setRotateKey( spep_3 + 214, 1, -41 );
setRotateKey( spep_3 + 216, 1, -40.8 );
setRotateKey( spep_3 + 218, 1, -40.6 );
setRotateKey( spep_3 + 220, 1, -40.4 );
setRotateKey( spep_3 + 222, 1, -40.2 );
setRotateKey( spep_3 + 224, 1, -40 );
setRotateKey( spep_3 + 226, 1, -39.8 );
setRotateKey( spep_3 + 228, 1, -39.6 );
setRotateKey( spep_3 + 230, 1, -39.4 );
setRotateKey( spep_3 + 232, 1, -39.2 );
setRotateKey( spep_3 + 234, 1, -39 );
setRotateKey( spep_3 + 236, 1, -38.8 );
setRotateKey( spep_3 + 238, 1, -38.6 );
setRotateKey( spep_3 + 240, 1, -38.4 );
setRotateKey( spep_3 + 242, 1, -38.2 );
setRotateKey( spep_3 + 244, 1, -38 );
setRotateKey( spep_3 + 246, 1, -37.8 );
setRotateKey( spep_3 + 248, 1, -37.6 );
setRotateKey( spep_3 + 250, 1, -37.4 );
setRotateKey( spep_3 + 252, 1, -37.2 );
setRotateKey( spep_3 + 254, 1, -37 );
setRotateKey( spep_3 + 256, 1, -36.9 );
setRotateKey( spep_3 + 258, 1, -36.7 );
setRotateKey( spep_3 + 260, 1, -36.5 );
setRotateKey( spep_3 + 262, 1, -36.3 );
setRotateKey( spep_3 + 264, 1, -36.1 );
setRotateKey( spep_3 + 266, 1, -35.9 );
setRotateKey( spep_3 + 268, 1, -35.7 );
setRotateKey( spep_3 + 270, 1, -35.5 );
setRotateKey( spep_3 + 272, 1, -35.4 );
setRotateKey( spep_3 + 274, 1, -35.2 );
setRotateKey( spep_3 + 276, 1, -35 );
setRotateKey( spep_3 + 278, 1, -34.8 );
setRotateKey( spep_3 + 280, 1, -34.6 );
setRotateKey( spep_3 + 282, 1, -34.5 );
setRotateKey( spep_3 + 284, 1, -34.3 );
setRotateKey( spep_3 + 286, 1, -34.1 );
setRotateKey( spep_3 + 288, 1, -33.9 );
setRotateKey( spep_3 + 290, 1, -33.8 );
setRotateKey( spep_3 + 292, 1, -33.6 );
setRotateKey( spep_3 + 294, 1, -33.4 );
setRotateKey( spep_3 + 296, 1, -33.2 );
setRotateKey( spep_3 + 298, 1, -33.1 );
setRotateKey( spep_3 + 300, 1, -32.9 );
setRotateKey( spep_3 + 302, 1, -32.7 );
setRotateKey( spep_3 + 304, 1, -32.6 );
setRotateKey( spep_3 + 306, 1, -32.4 );
setRotateKey( spep_3 + 308, 1, -32.2 );
setRotateKey( spep_3 + 310, 1, -32.1 );
setRotateKey( spep_3 + 312, 1, -31.9 );
setRotateKey( spep_3 + 314, 1, -31.7 );
setRotateKey( spep_3 + 316, 1, -31.6 );
setRotateKey( spep_3 + 318, 1, -31.4 );
setRotateKey( spep_3 + 320, 1, -31.3 );
setRotateKey( spep_3 + 322, 1, -31.1 );
setRotateKey( spep_3 + 324, 1, -30.9 );
setRotateKey( spep_3 + 326, 1, -30.8 );
setRotateKey( spep_3 + 328, 1, -30.6 );
setRotateKey( spep_3 + 330, 1, -30.5 );
setRotateKey( spep_3 + 332, 1, -30.3 );
setRotateKey( spep_3 + 334, 1, -30.2 );
setRotateKey( spep_3 + 336, 1, -30 );
setRotateKey( spep_3 + 338, 1, -29.9 );
setRotateKey( spep_3 + 340, 1, -29.7 );
setRotateKey( spep_3 + 342, 1, -29.6 );
setRotateKey( spep_3 + 344, 1, -29.4 );
setRotateKey( spep_3 + 346, 1, -29.3 );
setRotateKey( spep_3 + 348, 1, -29.1 );
setRotateKey( spep_3 + 350, 1, -29 );
setRotateKey( spep_3 + 352, 1, -28.8 );
setRotateKey( spep_3 + 354, 1, -28.7 );
setRotateKey( spep_3 + 356, 1, -28.5 );
setRotateKey( spep_3 + 358, 1, -28.4 );

playSe(spep_3+6,1061);	playSe(spep_3+6,1010);
playSe(spep_3+42,1061);	playSe(spep_3+42,1009);
playSe(spep_3+60,8);	
playSe(spep_3+90,1007);	playSe(spep_3+80,1048);
playSe(spep_3+100,1029);	playSe(spep_3+100,4);
playSe(spep_3+106,1004);	playSe(spep_3+106,1004);
playSe(spep_3+110,1007);	playSe(spep_3+110,1007);
playSe(spep_3+116,1009);	playSe(spep_3+116,1009);
playSe(spep_3+129,1008);	playSe(spep_3+129,1008);
playSe(spep_3+140,1007);	playSe(spep_3+140,1007);
playSe(spep_3+150,1008);	playSe(spep_3+150,1008);
playSe(spep_3+158,1015);	playSe(spep_3+158,1007);
playSe(spep_3+164,1000);	playSe(spep_3+164,1000);
playSe(spep_3+172,1001);	playSe(spep_3+172,1001);
playSe(spep_3+178,1016);	playSe(spep_3+178,1000);
playSe(spep_3+184,1000);	playSe(spep_3+184,1000);
playSe(spep_3+194,1008);	playSe(spep_3+194,1008);
playSe(spep_3+198,1001);	playSe(spep_3+198,1001);
playSe(spep_3+202,1015);	playSe(spep_3+202,1000);
playSe(spep_3+208,1004);	playSe(spep_3+208,1004);
playSe(spep_3+216,4);	playSe(spep_3+216,4);
playSe(spep_3+220,1016);	playSe(spep_3+220,1000);
playSe(spep_3+224,44);	playSe(spep_3+224,4);
playSe(spep_3+230,4);	playSe(spep_3+230,4);
playSe(spep_3+236,1008);	playSe(spep_3+236,1008);
playSe(spep_3+240,1000);	playSe(spep_3+242,4);
playSe(spep_3+242,4);	
playSe(spep_3+248,1010);	playSe(spep_3+248,1010);
playSe(spep_3+252,1016);	playSe(spep_3+258,4);
playSe(spep_3+258,4);	
playSe(spep_3+260,1000);	playSe(spep_3+266,4);
playSe(spep_3+266,44);	
playSe(spep_3+272,1007);	playSe(spep_3+272,1007);
playSe(spep_3+276,44);	playSe(spep_3+282,4);
playSe(spep_3+282,4);	
playSe(spep_3+286,1015);	playSe(spep_3+290,1008);
playSe(spep_3+290,1008);	
playSe(spep_3+294,44);	playSe(spep_3+294,4);
playSe(spep_3+298,1016);	
playSe(spep_3+302,4);	playSe(spep_3+302,4);
playSe(spep_3+310,1008);	playSe(spep_3+310,1008);
playSe(spep_3+314,1015);	playSe(spep_3+314,1000);
playSe(spep_3+318,44);

entryFade(spep_3+360 -6 -10,8,4,0,255,255,255,255); --whitefade

------------------------------------------------------
--Scene02 カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+360 -6;

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+72, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--Scene06 ナビ演出から最後(410F)
------------------------------------------------------
spep_5=spep_4+90;

--white--
entryFade(spep_5,0,0,6,255,255,255,255); --whitefade
entryFade(spep_5+116,12,2,10,255,255,255,255); --whitefade
--entryFade(spep_5+178,6,2,8,255,255,255,255); --whitefade

entryFadeBg(spep_5,0,320,0,255,255,255,255);
--敵の動き

setDisp( spep_5-56 + 130, 1, 1 );
changeAnime( spep_5-56 + 130, 1, 106 );

setMoveKey( spep_5-56 + 130, 1, 406.6, -48 , 0 );
setMoveKey( spep_5-56 + 132, 1, 385, -54.5 , 0 );
setMoveKey( spep_5-56 + 134, 1, 357.8, -22.8 , 0 );
setMoveKey( spep_5-56 + 136, 1, 303.3, -8.7 , 0 );
setMoveKey( spep_5-56 + 138, 1, 265.4, 10.4 , 0 );
setMoveKey( spep_5-56 + 140, 1, 230.1, 25.5 , 0 );
setMoveKey( spep_5-56 + 142, 1, 207.1, 60.7 , 0 );
setMoveKey( spep_5-56 + 144, 1, 172.7, 76.1 , 0 );
setMoveKey( spep_5-56 + 146, 1, 166.8, 95.6 , 0 );
setMoveKey( spep_5-56 + 148, 1, 149.3, 99.2 , 0 );
setMoveKey( spep_5-56 + 150, 1, 152.3, 106.5 , 0 );
setMoveKey( spep_5-56 + 152, 1, 143.3, 93.8 , 0 );
setMoveKey( spep_5-56 + 154, 1, 150.3, 105 , 0 );
setMoveKey( spep_5-56 + 156, 1, 145.3, 100.3 , 0 );
setMoveKey( spep_5-56 + 158, 1, 148.3, 103.6 , 0 );
setMoveKey( spep_5-56 + 160, 1, 139.3, 94.9 , 0 );
setMoveKey( spep_5-56 + 162, 1, 146.2, 102.2 , 0 );
setMoveKey( spep_5-56 + 164, 1, 145.8, 101.9 , 0 );
setMoveKey( spep_5-56 + 166, 1, 145.5, 101.7 , 0 );
setMoveKey( spep_5-56 + 168, 1, 145.1, 101.4 , 0 );
setMoveKey( spep_5-56 + 170, 1, 144.7, 101.1 , 0 );
setMoveKey( spep_5-56 + 172, 1, 144.3, 100.9 , 0 );
setMoveKey( spep_5-56 + 174, 1, 143.9, 100.6 , 0 );
setMoveKey( spep_5-56 + 176, 1, 143.5, 100.3 , 0 );
setMoveKey( spep_5-56 + 178, 1, 143.1, 100 , 0 );
setMoveKey( spep_5-56 + 180, 1, 142.8, 99.8 , 0 );
setMoveKey( spep_5-56 + 182, 1, 142.4, 99.5 , 0 );
setMoveKey( spep_5-56 + 184, 1, 142, 99.2 , 0 );
setMoveKey( spep_5-56 + 186, 1, 115.9, 122.5 , 0 );
setMoveKey( spep_5-56 + 188, 1, 120.4, 137.5 , 0 );
setMoveKey( spep_5-56 + 190, 1, 112.6, 137.3 , 0 );
setMoveKey( spep_5-56 + 192, 1, 121.1, 140.4 , 0 );
setMoveKey( spep_5-56 + 194, 1, 113.2, 136.2 , 0 );
setMoveKey( spep_5-56 + 196, 1, 121.8, 143.3 , 0 );
setMoveKey( spep_5-56 + 198, 1, 117.9, 143.1 , 0 );
setMoveKey( spep_5-56 + 200, 1, 122.4, 146.1 , 0 );
setMoveKey( spep_5-56 + 202, 1, 114.6, 141.9 , 0 );
setMoveKey( spep_5-56 + 204, 1, 123.1, 149 , 0 );
setMoveKey( spep_5-56 + 206, 1, 119.2, 148.8 , 0 );
setMoveKey( spep_5-56 + 208, 1, 123.7, 151.9 , 0 );
setMoveKey( spep_5-56 + 210, 1, 115.9, 147.7 , 0 );
setMoveKey( spep_5-56 + 212, 1, 124.4, 154.8 , 0 );
setMoveKey( spep_5-56 + 214, 1, 124.6, 158.6 , 0 );
setMoveKey( spep_5-56 + 216, 1, 125.1, 157.7 , 0 );
setMoveKey( spep_5-56 + 218, 1, 125.2, 161.4 , 0 );
setMoveKey( spep_5-56 + 220, 1, 125.7, 160.6 , 0 );
setMoveKey( spep_5-56 + 222, 1, 125.9, 164.3 , 0 );
setMoveKey( spep_5-56 + 224, 1, 126.4, 163.5 , 0 );
setMoveKey( spep_5-56 + 226, 1, 126.6, 167.2 , 0 );
setMoveKey( spep_5-56 + 228, 1, 127, 166.3 , 0 );
setMoveKey( spep_5-56 + 230, 1, 127.2, 170.1 , 0 );
setMoveKey( spep_5-56 + 232, 1, 127.7, 169.2 , 0 );
setMoveKey( spep_5-56 + 234, 1, 127.9, 172.9 , 0 );
setMoveKey( spep_5-56 + 236, 1, 128.3, 172.1 , 0 );
setMoveKey( spep_5-56 + 238, 1, 128.6, 175.8 , 0 );
setMoveKey( spep_5-56 + 240, 1, 129, 175 , 0 );
setMoveKey( spep_5-56 + 242, 1, 129.2, 178.7 , 0 );
setMoveKey( spep_5-56 + 244, 1, 129.7, 177.9 , 0 );
setMoveKey( spep_5-56 + 246, 1, 129.9, 181.6 , 0 );
setMoveKey( spep_5-56 + 248, 1, 130.3, 180.8 , 0 );
setMoveKey( spep_5-56 + 250, 1, 130.6, 184.4 , 0 );
setMoveKey( spep_5-56 + 252, 1, 131, 183.7 , 0 );
setMoveKey( spep_5-56 + 254, 1, 131.2, 187.3 , 0 );
setMoveKey( spep_5-56 + 256, 1, 131.6, 186.5 , 0 );
setMoveKey( spep_5-56 + 258, 1, 131.9, 190.2 , 0 );
setMoveKey( spep_5-56 + 260, 1, 132.3, 189.4 , 0 );
setMoveKey( spep_5-56 + 262, 1, 132.6, 193 , 0 );
setMoveKey( spep_5-56 + 264, 1, 132.9, 192.3 , 0 );
setMoveKey( spep_5-56 + 266, 1, 133.2, 195.9 , 0 );
setMoveKey( spep_5-56 + 268, 1, 133.6, 195.2 , 0 );
setMoveKey( spep_5-56 + 270, 1, 133.9, 198.8 , 0 );
setMoveKey( spep_5-56 + 272, 1, 134.3, 198.1 , 0 );
setMoveKey( spep_5-56 + 274, 1, 134.6, 201.7 , 0 );
setMoveKey( spep_5-56 + 276, 1, 134.9, 201 , 0 );
setMoveKey( spep_5-56 + 278, 1, 135.2, 204.5 , 0 );
setMoveKey( spep_5-56 + 280, 1, 135.6, 203.9 , 0 );
setMoveKey( spep_5-56 + 282, 1, 135.9, 207.4 , 0 );
setMoveKey( spep_5-56 + 284, 1, 136.2, 206.7 , 0 );
setMoveKey( spep_5-56 + 286, 1, 136.5, 210.3 , 0 );
setMoveKey( spep_5-56 + 288, 1, 136.9, 209.6 , 0 );
setMoveKey( spep_5-56 + 290, 1, 137.2, 213.2 , 0 );
setMoveKey( spep_5-56 + 292, 1, 137.5, 212.5 , 0 );
setMoveKey( spep_5-56 + 294, 1, 137.9, 216 , 0 );
setMoveKey( spep_5-56 + 296, 1, 138.2, 215.4 , 0 );
setMoveKey( spep_5-56 + 298, 1, 138.5, 218.9 , 0 );
setMoveKey( spep_5-56 + 300, 1, 138.9, 218.3 , 0 );
setMoveKey( spep_5-56 + 302, 1, 139.2, 221.8 , 0 );
setMoveKey( spep_5-56 + 304, 1, 139.5, 221.2 , 0 );
setMoveKey( spep_5-56 + 306, 1, 139.9, 224.6 , 0 );
setMoveKey( spep_5-56 + 308, 1, 140.2, 226.1 , 0 );

-- 1
setScaleKey( spep_5-56 + 130, 1, 25.11, 25.11 );
setScaleKey( spep_5-56 + 132, 1, 23.33, 23.33 );
setScaleKey( spep_5-56 + 134, 1, 20.01, 20.01 );
setScaleKey( spep_5-56 + 136, 1, 15.17, 15.17 );
setScaleKey( spep_5-56 + 138, 1, 8.79, 8.79 );
setScaleKey( spep_5-56 + 140, 1, 6.71, 6.71 );
setScaleKey( spep_5-56 + 142, 1, 4.93, 4.93 );
setScaleKey( spep_5-56 + 144, 1, 3.44, 3.44 );
setScaleKey( spep_5-56 + 146, 1, 2.25, 2.25 );
setScaleKey( spep_5-56 + 148, 1, 1.36, 1.36 );
setScaleKey( spep_5-56 + 150, 1, 1.35, 1.35 );
setScaleKey( spep_5-56 + 152, 1, 1.34, 1.34 );
setScaleKey( spep_5-56 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_5-56 + 156, 1, 1.32, 1.32 );
setScaleKey( spep_5-56 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_5-56 + 160, 1, 1.3, 1.3 );
setScaleKey( spep_5-56 + 162, 1, 1.29, 1.29 );
setScaleKey( spep_5-56 + 166, 1, 1.29, 1.29 );
setScaleKey( spep_5-56 + 168, 1, 1.28, 1.28 );
setScaleKey( spep_5-56 + 172, 1, 1.28, 1.28 );
setScaleKey( spep_5-56 + 174, 1, 1.27, 1.27 );
setScaleKey( spep_5-56 + 178, 1, 1.27, 1.27 );
setScaleKey( spep_5-56 + 180, 1, 1.26, 1.26 );
setScaleKey( spep_5-56 + 184, 1, 1.26, 1.26 );
setScaleKey( spep_5-56 + 186, 1, 1, 1 );
setScaleKey( spep_5-56 + 188, 1, 1, 1 );
setScaleKey( spep_5-56 + 190, 1, 0.99, 0.99 );
setScaleKey( spep_5-56 + 196, 1, 0.99, 0.99 );
setScaleKey( spep_5-56 + 198, 1, 0.98, 0.98 );
setScaleKey( spep_5-56 + 204, 1, 0.98, 0.98 );
setScaleKey( spep_5-56 + 206, 1, 0.97, 0.97 );
setScaleKey( spep_5-56 + 212, 1, 0.97, 0.97 );
setScaleKey( spep_5-56 + 214, 1, 0.96, 0.96 );
setScaleKey( spep_5-56 + 220, 1, 0.96, 0.96 );
setScaleKey( spep_5-56 + 222, 1, 0.95, 0.95 );
setScaleKey( spep_5-56 + 226, 1, 0.95, 0.95 );
setScaleKey( spep_5-56 + 228, 1, 0.94, 0.94 );
setScaleKey( spep_5-56 + 234, 1, 0.94, 0.94 );
setScaleKey( spep_5-56 + 236, 1, 0.93, 0.93 );
setScaleKey( spep_5-56 + 242, 1, 0.93, 0.93 );
setScaleKey( spep_5-56 + 244, 1, 0.92, 0.92 );
setScaleKey( spep_5-56 + 250, 1, 0.92, 0.92 );
setScaleKey( spep_5-56 + 252, 1, 0.91, 0.91 );
setScaleKey( spep_5-56 + 258, 1, 0.91, 0.91 );
setScaleKey( spep_5-56 + 260, 1, 0.9, 0.9 );
setScaleKey( spep_5-56 + 266, 1, 0.9, 0.9 );
setScaleKey( spep_5-56 + 268, 1, 0.89, 0.89 );
setScaleKey( spep_5-56 + 272, 1, 0.89, 0.89 );
setScaleKey( spep_5-56 + 274, 1, 0.88, 0.88 );
setScaleKey( spep_5-56 + 280, 1, 0.88, 0.88 );
setScaleKey( spep_5-56 + 282, 1, 0.87, 0.87 );
setScaleKey( spep_5-56 + 288, 1, 0.87, 0.87 );
setScaleKey( spep_5-56 + 290, 1, 0.86, 0.86 );
setScaleKey( spep_5-56 + 296, 1, 0.86, 0.86 );
setScaleKey( spep_5-56 + 298, 1, 0.85, 0.85 );
setScaleKey( spep_5-56 + 304, 1, 0.85, 0.85 );
setScaleKey( spep_5-56 + 306, 1, 0.84, 0.84 );

-- 1
setRotateKey( spep_5-56 + 130, 1, -33.5 );
setRotateKey( spep_5-56 + 132, 1, -33.6 );
setRotateKey( spep_5-56 + 134, 1, -33.8 );
setRotateKey( spep_5-56 + 136, 1, -34.1 );
setRotateKey( spep_5-56 + 138, 1, -34.5 );
setRotateKey( spep_5-56 + 186, 1, -34.5 );
setRotateKey( spep_5-56 + 188, 1, -34.4 );
setRotateKey( spep_5-56 + 190, 1, -34.3 );
setRotateKey( spep_5-56 + 192, 1, -34.2 );
setRotateKey( spep_5-56 + 194, 1, -34.2 );
setRotateKey( spep_5-56 + 196, 1, -34.1 );
setRotateKey( spep_5-56 + 198, 1, -34 );
setRotateKey( spep_5-56 + 200, 1, -33.9 );
setRotateKey( spep_5-56 + 202, 1, -33.8 );
setRotateKey( spep_5-56 + 204, 1, -33.7 );
setRotateKey( spep_5-56 + 206, 1, -33.6 );
setRotateKey( spep_5-56 + 208, 1, -33.6 );
setRotateKey( spep_5-56 + 210, 1, -33.5 );
setRotateKey( spep_5-56 + 212, 1, -33.4 );
setRotateKey( spep_5-56 + 214, 1, -33.3 );
setRotateKey( spep_5-56 + 216, 1, -33.2 );
setRotateKey( spep_5-56 + 218, 1, -33.1 );
setRotateKey( spep_5-56 + 220, 1, -33.1 );
setRotateKey( spep_5-56 + 222, 1, -33 );
setRotateKey( spep_5-56 + 224, 1, -32.9 );
setRotateKey( spep_5-56 + 226, 1, -32.8 );
setRotateKey( spep_5-56 + 228, 1, -32.7 );
setRotateKey( spep_5-56 + 230, 1, -32.6 );
setRotateKey( spep_5-56 + 232, 1, -32.5 );
setRotateKey( spep_5-56 + 234, 1, -32.5 );
setRotateKey( spep_5-56 + 236, 1, -32.4 );
setRotateKey( spep_5-56 + 238, 1, -32.3 );
setRotateKey( spep_5-56 + 240, 1, -32.2 );
setRotateKey( spep_5-56 + 242, 1, -32.1 );
setRotateKey( spep_5-56 + 244, 1, -32 );
setRotateKey( spep_5-56 + 246, 1, -31.9 );
setRotateKey( spep_5-56 + 248, 1, -31.9 );
setRotateKey( spep_5-56 + 250, 1, -31.8 );
setRotateKey( spep_5-56 + 252, 1, -31.7 );
setRotateKey( spep_5-56 + 254, 1, -31.6 );
setRotateKey( spep_5-56 + 256, 1, -31.5 );
setRotateKey( spep_5-56 + 258, 1, -31.4 );
setRotateKey( spep_5-56 + 260, 1, -31.3 );
setRotateKey( spep_5-56 + 262, 1, -31.3 );
setRotateKey( spep_5-56 + 264, 1, -31.2 );
setRotateKey( spep_5-56 + 266, 1, -31.1 );
setRotateKey( spep_5-56 + 268, 1, -31 );
setRotateKey( spep_5-56 + 270, 1, -30.9 );
setRotateKey( spep_5-56 + 272, 1, -30.8 );
setRotateKey( spep_5-56 + 274, 1, -30.7 );
setRotateKey( spep_5-56 + 276, 1, -30.7 );
setRotateKey( spep_5-56 + 278, 1, -30.6 );
setRotateKey( spep_5-56 + 280, 1, -30.5 );
setRotateKey( spep_5-56 + 282, 1, -30.4 );
setRotateKey( spep_5-56 + 284, 1, -30.3 );
setRotateKey( spep_5-56 + 286, 1, -30.2 );
setRotateKey( spep_5-56 + 288, 1, -30.2 );
setRotateKey( spep_5-56 + 290, 1, -30.1 );
setRotateKey( spep_5-56 + 292, 1, -30 );
setRotateKey( spep_5-56 + 294, 1, -29.9 );
setRotateKey( spep_5-56 + 296, 1, -29.8 );
setRotateKey( spep_5-56 + 298, 1, -29.7 );
setRotateKey( spep_5-56 + 300, 1, -29.6 );
setRotateKey( spep_5-56 + 302, 1, -29.6 );
setRotateKey( spep_5-56 + 304, 1, -29.5 );
setRotateKey( spep_5-56 + 306, 1, -29.4 );
setRotateKey( spep_5-56 + 308, 1, -29.3 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 46,  906, 126, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 172, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 46, shuchusen5, 1.16, 1.37 );
setEffScaleKey( spep_5 + 70, shuchusen5, 1.16, 1.37 );
setEffScaleKey( spep_5 + 72, shuchusen5, 1.16, 1.47 );
setEffScaleKey( spep_5 + 172, shuchusen5, 1.16, 1.47 );

setEffRotateKey( spep_5 + 46, shuchusen5, 0 );
setEffRotateKey( spep_5 + 172, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 46, shuchusen5, 64 );
setEffAlphaKey( spep_5 + 48, shuchusen5, 128 );
setEffAlphaKey( spep_5 + 50, shuchusen5, 191 );
setEffAlphaKey( spep_5 + 52, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 162, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 164, shuchusen5, 219 );
setEffAlphaKey( spep_5 + 166, shuchusen5, 182 );
setEffAlphaKey( spep_5 + 168, shuchusen5, 146 );
setEffAlphaKey( spep_5 + 170, shuchusen5, 109 );
setEffAlphaKey( spep_5 + 172, shuchusen5, 73 );

--[[
setEffAlphaKey( spep_5 + 174, shuchusen5, 36 );
setEffAlphaKey( spep_5 + 176, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 184, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 186, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 210, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 212, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 214, shuchusen5, 198 );
setEffAlphaKey( spep_5 + 216, shuchusen5, 170 );
setEffAlphaKey( spep_5 + 218, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 220, shuchusen5, 113 );
setEffAlphaKey( spep_5 + 222, shuchusen5, 85 );
setEffAlphaKey( spep_5 + 224, shuchusen5, 57 );
setEffAlphaKey( spep_5 + 226, shuchusen5, 28 );
setEffAlphaKey( spep_5 + 228, shuchusen5, 0 );
]]--

--eff06
navipunch=entryEffectLife(spep_5,SP_07x,74,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, navipunch, 0, 0 , 0 );
setEffMoveKey( spep_5+74, navipunch, 0, 0 , 0 );
setEffScaleKey(spep_5,navipunch,1.0,1.0);
setEffScaleKey(spep_5+74,navipunch,1.0,1.0);
setEffRotateKey(spep_5,navipunch,0);
setEffRotateKey(spep_5+74,navipunch,0);
setEffAlphaKey(spep_5,navipunch,255);
setEffAlphaKey(spep_5+74,navipunch,255);

finish=entryEffect(spep_5+130-56,SP_08x,0x100,-1,0,0,0);

setEffMoveKey( spep_5+130-56, finish, 0, 0 , 0 );
setEffMoveKey( spep_5+310-56, finish, 0, 0 , 0 );
setEffScaleKey(spep_5+130-56,finish,1.0,1.0);
setEffScaleKey(spep_5+310-56,finish,1.0,1.0);
setEffRotateKey(spep_5+130-56,finish,0);
setEffRotateKey(spep_5+310-56,finish,0);
setEffAlphaKey(spep_5+130-56,finish,255);
setEffAlphaKey(spep_5+310-56,finish,255);

finishr=entryEffect(spep_5+130-56,SP_09,0x80,-1,0,0,0);

setEffMoveKey( spep_5+130-56, finishr, 0, 0 , 0 );
setEffMoveKey( spep_5+310-56, finishr, 0, 0 , 0 );
setEffScaleKey(spep_5+130-56,finishr,1.0,1.0);
setEffScaleKey(spep_5+310-56,finishr,1.0,1.0);
setEffRotateKey(spep_5+130-56,finishr,0);
setEffRotateKey(spep_5+310-56,finishr,0);
setEffAlphaKey(spep_5+130-56,finishr,255);
setEffAlphaKey(spep_5+310-56,finishr,255);

playSe(spep_5,SE_04);	playSe(spep_5,SE_04);
playSe(spep_5+78,SE_06);	--playSe(spep_5+78,SE_06);
playSe(spep_5+130-56,1023);	playSe(spep_5+130-56,1023);
playSe(spep_5+186-56,62);	playSe(spep_5+186-56,62);
playSe(spep_5+196-56,1003);	--playSe(spep_5+266-56,1029); --いらない
playSe(spep_5+242-56,1003); --いらない	
playSe(spep_5+290-56,1003); --いらない
-- ダメージ表示
dealDamage(spep_5+138);
entryFade( spep_5+236, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+246);
--最後の部分を伸ばしてもらい戻らないようにする。

end
