--ウーブ かめはめ波

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
SP_01 = 152975;  --気溜め
SP_02 = 152976;  --発射
SP_03 = 152977;  --迫る
SP_04 = 152979;  --迫る背景
SP_05 = 152980;  --ガの背景

--***敵側
SP_01r = 152975;  --気溜め
SP_02r = 152976;  --発射
SP_03r = 152978;  --迫る
SP_04r = 152979;  --迫る背景
SP_05r = 152980;  --ガの背景

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
setScaleKey(   0,  0,  1.5,  1.5);
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
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--  気溜め(100F)
------------------------------------------------------
spep_1 = 0;

shuchusen = entryEffectLife( spep_1,  906, 108, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1+108, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 , shuchusen, 1.09, 1.99 );
setEffScaleKey( spep_1+108 , shuchusen, 1.09, 1.99 );
setEffRotateKey( spep_1  , shuchusen, 0 );
setEffRotateKey( spep_1+108  , shuchusen, 0 );
setEffAlphaKey( spep_1 , shuchusen, 255 );
setEffAlphaKey( spep_1+108 , shuchusen, 255 );

--***気溜め***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+130,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+130,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+130,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+130,  kitame,  255);

--***カットイン***
speff1 = entryEffect(  spep_1+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_1 + 42,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_1+42,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_1 + 42, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_1 + 112, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_1 + 42, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 112, ctgogo, 1.17, 1.17 );
setEffRotateKey(  spep_1 + 42,  ctgogo,  0);
setEffRotateKey(  spep_1 + 112,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 42,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 43,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 102,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 112,  ctgogo,  0);

--***SE***
playSe(  spep_1+10,  SE_03);
playSe(  spep_1 +30,  SE_04);  --カットイン
playSe(  spep_1+50,  SE_03);
playSe(  spep_1+70,  SE_03);
playSe(  spep_1+90,  SE_03);
playSe(  spep_1+110,  SE_03);

entryFade(  spep_1+126,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  カード(0F)
------------------------------------------------------
spep_2 = spep_1 + 130;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade(  spep_2+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--  発射(130F)
------------------------------------------------------
spep_3 = spep_2 + 90;

shuchusen3 = entryEffectLife( spep_3,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3+130, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 , shuchusen3, 1.09, 1.99 );
setEffScaleKey( spep_3+130 , shuchusen3, 1.09, 1.99 );
setEffRotateKey( spep_3  , shuchusen3, 0 );
setEffRotateKey( spep_3+130 , shuchusen3, 0 );
setEffAlphaKey( spep_3 , shuchusen3, 255 );
setEffAlphaKey( spep_3+130, shuchusen3, 255 );

hassya = entryEffect(  spep_3,  SP_02, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3,  hassya,  1.0,  1.0);
setEffScaleKey(  spep_3+130,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_3,  hassya,  0,  0);
setEffMoveKey(  spep_3+130,  hassya,  0,  0);
setEffRotateKey(  spep_3,  hassya,  0);
setEffRotateKey(  spep_3+130,  hassya,  0);
setEffAlphaKey(  spep_3,  hassya,  255);
setEffAlphaKey(  spep_3+130,  hassya,  255);

--***SE***
playSe(  spep_3,  SE_06);

entryFade(  spep_3+126,  2,  4,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  迫る(130F)
------------------------------------------------------
spep_4 = spep_3 + 130;

--***書き文字***
ct_zuo = entryEffectLife( spep_4 + 2,  10012, 56, 0x100, -1, 0, 78.6, 260.5 );  --ズオ

setEffShake(  spep_4 +2,  ct_zuo,  56,  20);  --揺れ
setEffMoveKey( spep_4 + 2, ct_zuo, 78.6, 260.5 , 0 );
setEffMoveKey( spep_4 + 4, ct_zuo, 117.1, 303.7 , 0 );
setEffMoveKey( spep_4 + 6, ct_zuo, 137.5, 364.8 , 0 );
setEffMoveKey( spep_4 + 8, ct_zuo, 153.5, 348.8 , 0 );
setEffMoveKey( spep_4 + 50, ct_zuo, 152, 366.3 , 0 );
setEffMoveKey( spep_4 + 52, ct_zuo, 192, 342.2 , 0 );
setEffMoveKey( spep_4 + 54, ct_zuo, 180.8, 369.2 , 0 );
setEffMoveKey( spep_4 + 56, ct_zuo, 230.5, 335.5 , 0 );
setEffMoveKey( spep_4 + 58, ct_zuo, 249.8, 332.2 , 0 );
setEffScaleKey( spep_4 + 2, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 4, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_4 + 6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 48, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 50, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_4 + 52, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_4 + 54, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_4 + 56, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_4 + 58, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_4 + 2, ct_zuo, 27.2 );
setEffRotateKey( spep_4 + 58, ct_zuo, 27.2 );
setEffAlphaKey( spep_4 + 2, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 48, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 50, ct_zuo, 204 );
setEffAlphaKey( spep_4 + 52, ct_zuo, 153 );
setEffAlphaKey( spep_4 + 54, ct_zuo, 102 );
setEffAlphaKey( spep_4 + 56, ct_zuo, 51 );
setEffAlphaKey( spep_4 + 58, ct_zuo, 0 );

ct_zudodo = entryEffectLife( spep_4 + 64,  10014, 64, 0x100, -1, 0, 53.4, 377.1 );  --ズドド

setEffShake(  spep_4 +64,  ct_zudodo,  64,  20);  --揺れ
setEffMoveKey( spep_4 + 64, ct_zudodo, 53.4, 377.1 , 0 );
setEffMoveKey( spep_4 + 66, ct_zudodo, 45.7, 362.8 , 0 );
setEffMoveKey( spep_4 + 68, ct_zudodo, 56.9, 370.4 , 0 );
setEffMoveKey( spep_4 + 70, ct_zudodo, 58.7, 367.1 , 0 );
setEffMoveKey( spep_4 + 128, ct_zudodo, 42.7, 348.7 , 0 );
setEffScaleKey( spep_4 + 64, ct_zudodo, 1.07, 1.07 );
setEffScaleKey( spep_4 + 66, ct_zudodo, 1.63, 1.63 );
setEffScaleKey( spep_4 + 68, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_4 + 70, ct_zudodo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 128, ct_zudodo, 2.73, 2.73 );
setEffRotateKey( spep_4 + 64, ct_zudodo, 58 );
setEffRotateKey( spep_4 + 128, ct_zudodo, 58 );
setEffAlphaKey( spep_4 + 64, ct_zudodo, 255 );
setEffAlphaKey( spep_4 + 128, ct_zudodo, 255 );

shuchusen4 = entryEffectLife( spep_4 + 0,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen4, 1.16, 1.46 );
setEffScaleKey( spep_4 +66, shuchusen4, 1.16, 1.46 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 66, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 54, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 56, shuchusen4, 213 );  --だんだん薄く
setEffAlphaKey( spep_4 + 58, shuchusen4, 170 );
setEffAlphaKey( spep_4 + 60, shuchusen4, 128 );
setEffAlphaKey( spep_4 + 62, shuchusen4, 85 );
setEffAlphaKey( spep_4 + 64, shuchusen4, 42 );
setEffAlphaKey( spep_4 + 66, shuchusen4, 0 );

semaruBG = entryEffect(  spep_4,  SP_04, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  semaruBG,  0,  0);
setEffMoveKey(  spep_4+130,  semaruBG,  0,  0);
setEffRotateKey(  spep_4,  semaruBG,  0);
setEffRotateKey(  spep_4+130,  semaruBG,  0);
setEffAlphaKey(  spep_4,  semaruBG,  255);
setEffAlphaKey(  spep_4+130,  semaruBG,  255);

--***敵の動き***
setDisp(  spep_4+60,  1,  1);
changeAnime(  spep_4+60,  1,  100);

setMoveKey( spep_4 + 60, 1, 692.4, -124.4 , 0 );
setMoveKey( spep_4 + 62, 1, 573.9, -93.4 , 0 );
setMoveKey( spep_4 + 64, 1, 455.4, -62.4 , 0 );
setMoveKey( spep_4 + 66, 1, 336.9, -31.4 , 0 );
setMoveKey( spep_4 + 68, 1, 218.4, -0.4 , 0 );
setMoveKey( spep_4 + 70, 1, 211, 1.6 , 0 );
setScaleKey( spep_4 + 60, 1, 0.26, 1.26 );
setScaleKey( spep_4 + 62, 1, 0.33, 1.33 );
setScaleKey( spep_4 + 64, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 68, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 70, 1, 0.55, 0.55 );
setRotateKey( spep_4 + 60, 1, 0 );

semaru = entryEffect(  spep_4,  SP_03, 0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_4,  semaru,  0,  0);
setEffMoveKey(  spep_4+130,  semaru,  0,  0);
setEffRotateKey(  spep_4,  semaru,  0);
setEffRotateKey(  spep_4+130,  semaru,  0);
setEffAlphaKey(  spep_4,  semaru,  255);
setEffAlphaKey(  spep_4+130,  semaru,  255);

playSe(  spep_4,  SE_07);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+70 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setMoveKey(  SP_dodge,  1, 455.4, -62.4 , 0 );
setMoveKey(  SP_dodge+1,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+2,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+3,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+4,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+9,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+10,  1, 211, 1.6 , 0 );

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
--***敵の動き***
changeAnime(  spep_4+112,  1,  108);  --くの字
setDisp(  spep_4+128,  1,  0);  --消す

setMoveKey( spep_4 + 72, 1, 203.8, 3.4 , 0 );
setMoveKey( spep_4 + 74, 1, 197, 5.2 , 0 );
setMoveKey( spep_4 + 76, 1, 190.5, 7 , 0 );
setMoveKey( spep_4 + 78, 1, 184.3, 8.6 , 0 );
setMoveKey( spep_4 + 80, 1, 178.4, 10.1 , 0 );
setMoveKey( spep_4 + 82, 1, 172.8, 11.6 , 0 );
setMoveKey( spep_4 + 84, 1, 167.5, 13 , 0 );
setMoveKey( spep_4 + 86, 1, 162.6, 14.3 , 0 );
setMoveKey( spep_4 + 88, 1, 157.9, 15.5 , 0 );
setMoveKey( spep_4 + 90, 1, 153.6, 16.7 , 0 );
setMoveKey( spep_4 + 92, 1, 149.6, 17.7 , 0 );
setMoveKey( spep_4 + 94, 1, 145.8, 18.7 , 0 );
setMoveKey( spep_4 + 96, 1, 142.4, 19.6 , 0 );
setMoveKey( spep_4 + 98, 1, 139.3, 20.4 , 0 );
setMoveKey( spep_4 + 100, 1, 136.5, 21.2 , 0 );
setMoveKey( spep_4 + 102, 1, 134.1, 21.8 , 0 );
setMoveKey( spep_4 + 104, 1, 131.9, 22.4 , 0 );
setMoveKey( spep_4 + 106, 1, 130, 22.9 , 0 );
setMoveKey( spep_4 + 108, 1, 128.5, 23.3 , 0 );
setMoveKey( spep_4 + 110, 1, 127.2, 23.6 , 0 );
setMoveKey( spep_4 + 112, 1, 150.8, 8.1 , 0 );
setMoveKey( spep_4 + 114, 1, 151.8, 5.3 , 0 );
setMoveKey( spep_4 + 116, 1, 153, 1.9 , 0 );
setMoveKey( spep_4 + 118, 1, 154.5, -2 , 0 );
setMoveKey( spep_4 + 120, 1, 156.2, -6.6 , 0 );
setMoveKey( spep_4 + 122, 1, 158.1, -11.8 , 0 );
setMoveKey( spep_4 + 124, 1, 160.2, -17.6 , 0 );
setMoveKey( spep_4 + 126, 1, 162.6, -24 , 0 );
setMoveKey( spep_4 + 128, 1, 165.2, -31 , 0 );

setScaleKey( spep_4 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 80, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 82, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 84, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 88, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 92, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 94, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 100, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 102, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 104, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 106, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 110, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 114, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 118, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 120, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 122, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 124, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 126, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 128, 1, 0.2, 0.2 );
setRotateKey( spep_4 + 110, 1, 0 );
setRotateKey( spep_4 + 128, 1, 0 );

entryFade(  spep_4+124,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  ガッ(110F)
------------------------------------------------------
spep_5 = spep_4 + 130;

bakuhatuBG = entryEffectLife(  spep_5,  SP_05,  110, 0x80,  -1,  0,  0,  0);  --爆発背景

setEffScaleKey(  spep_5,  bakuhatuBG,  1.0,  1.0);
setEffScaleKey(  spep_5+110,  bakuhatuBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuhatuBG,  0,  0);
setEffMoveKey(  spep_5+110,  bakuhatuBG,  0,  0);
setEffRotateKey(  spep_5,  bakuhatuBG,  0);
setEffRotateKey(  spep_5+110,  bakuhatuBG,  0);
setEffAlphaKey(  spep_5,  bakuhatuBG,  255);
setEffAlphaKey(  spep_5+110,  bakuhatuBG,  255);

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+8, SE_10);
playSe( spep_5+12, SE_11);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);



else
------------------------------------------------------
--  敵側(130F)
------------------------------------------------------
------------------------------------------------------
--  気溜め(100F)
------------------------------------------------------
spep_1 = 0;

shuchusen = entryEffectLife( spep_1,  906, 108, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1+108, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 , shuchusen, 1.09, 1.99 );
setEffScaleKey( spep_1+108 , shuchusen, 1.09, 1.99 );
setEffRotateKey( spep_1  , shuchusen, 0 );
setEffRotateKey( spep_1+108  , shuchusen, 0 );
setEffAlphaKey( spep_1 , shuchusen, 255 );
setEffAlphaKey( spep_1+108 , shuchusen, 255 );

--***気溜め***
kitame = entryEffect(  spep_1,  SP_01r,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  -1.0,  1.0);
setEffScaleKey(  spep_1+130,  kitame,  -1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+130,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+130,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+130,  kitame,  255);

--***カットイン***
--speff1 = entryEffect(  spep_1+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_1+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_1 + 42,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_1+42,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_1 + 42, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_1 + 112, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_1 + 42, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 112, ctgogo, -1.17, 1.17 );
setEffRotateKey(  spep_1 + 42,  ctgogo,  0);
setEffRotateKey(  spep_1 + 112,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 42,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 43,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 102,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 112,  ctgogo,  0);

--***SE***
playSe(  spep_1+10,  SE_03);
playSe(  spep_1 +30,  SE_04);  --カットイン
playSe(  spep_1+50,  SE_03);
playSe(  spep_1+70,  SE_03);
playSe(  spep_1+90,  SE_03);
playSe(  spep_1+110,  SE_03);

entryFade(  spep_1+126,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  カード(0F)
------------------------------------------------------
spep_2 = spep_1 + 130;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade(  spep_2+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--  発射(130F)
------------------------------------------------------
spep_3 = spep_2 + 90;

shuchusen3 = entryEffectLife( spep_3,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3+130, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 , shuchusen3, 1.09, 1.99 );
setEffScaleKey( spep_3+130 , shuchusen3, 1.09, 1.99 );
setEffRotateKey( spep_3  , shuchusen3, 0 );
setEffRotateKey( spep_3+130 , shuchusen3, 0 );
setEffAlphaKey( spep_3 , shuchusen3, 255 );
setEffAlphaKey( spep_3+130, shuchusen3, 255 );

hassya = entryEffect(  spep_3,  SP_02r, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3,  hassya,  -1.0,  1.0);
setEffScaleKey(  spep_3+130,  hassya,  -1.0,  1.0);
setEffMoveKey(  spep_3,  hassya,  0,  0);
setEffMoveKey(  spep_3+130,  hassya,  0,  0);
setEffRotateKey(  spep_3,  hassya,  0);
setEffRotateKey(  spep_3+130,  hassya,  0);
setEffAlphaKey(  spep_3,  hassya,  255);
setEffAlphaKey(  spep_3+130,  hassya,  255);

--***SE***
playSe(  spep_3,  SE_06);

entryFade(  spep_3+126,  2,  4,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  迫る(130F)
------------------------------------------------------
spep_4 = spep_3 + 130;

--***書き文字***
ct_zuo = entryEffectLife( spep_4 + 2,  10012, 56, 0x100, -1, 0, 78.6, 260.5 );  --ズオ

setEffShake(  spep_4 +2,  ct_zuo,  56,  20);  --揺れ
setEffMoveKey( spep_4 + 2, ct_zuo, 78.6, 260.5 , 0 );
setEffMoveKey( spep_4 + 4, ct_zuo, 117.1, 303.7 , 0 );
setEffMoveKey( spep_4 + 6, ct_zuo, 137.5, 364.8 , 0 );
setEffMoveKey( spep_4 + 8, ct_zuo, 153.5, 348.8 , 0 );
setEffMoveKey( spep_4 + 50, ct_zuo, 152, 366.3 , 0 );
setEffMoveKey( spep_4 + 52, ct_zuo, 192, 342.2 , 0 );
setEffMoveKey( spep_4 + 54, ct_zuo, 180.8, 369.2 , 0 );
setEffMoveKey( spep_4 + 56, ct_zuo, 230.5, 335.5 , 0 );
setEffMoveKey( spep_4 + 58, ct_zuo, 249.8, 332.2 , 0 );
setEffScaleKey( spep_4 + 2, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 4, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_4 + 6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 48, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 50, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_4 + 52, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_4 + 54, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_4 + 56, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_4 + 58, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_4 + 2, ct_zuo, 27.2 );
setEffRotateKey( spep_4 + 58, ct_zuo, 27.2 );
setEffAlphaKey( spep_4 + 2, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 48, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 50, ct_zuo, 204 );
setEffAlphaKey( spep_4 + 52, ct_zuo, 153 );
setEffAlphaKey( spep_4 + 54, ct_zuo, 102 );
setEffAlphaKey( spep_4 + 56, ct_zuo, 51 );
setEffAlphaKey( spep_4 + 58, ct_zuo, 0 );

ct_zudodo = entryEffectLife( spep_4 + 64,  10014, 64, 0x100, -1, 0, 53.4, 377.1 );  --ズドド

setEffShake(  spep_4 +64,  ct_zudodo,  64,  20);  --揺れ
setEffMoveKey( spep_4 + 64, ct_zudodo, 53.4, 377.1 , 0 );
setEffMoveKey( spep_4 + 66, ct_zudodo, 45.7, 362.8 , 0 );
setEffMoveKey( spep_4 + 68, ct_zudodo, 56.9, 370.4 , 0 );
setEffMoveKey( spep_4 + 70, ct_zudodo, 58.7, 367.1 , 0 );
setEffMoveKey( spep_4 + 128, ct_zudodo, 42.7, 348.7 , 0 );
setEffScaleKey( spep_4 + 64, ct_zudodo, 1.07, 1.07 );
setEffScaleKey( spep_4 + 66, ct_zudodo, 1.63, 1.63 );
setEffScaleKey( spep_4 + 68, ct_zudodo, 2.18, 2.18 );
setEffScaleKey( spep_4 + 70, ct_zudodo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 128, ct_zudodo, 2.73, 2.73 );
setEffRotateKey( spep_4 + 64, ct_zudodo, 0 );
setEffRotateKey( spep_4 + 128, ct_zudodo, 0 );
setEffAlphaKey( spep_4 + 64, ct_zudodo, 255 );
setEffAlphaKey( spep_4 + 128, ct_zudodo, 255 );

shuchusen4 = entryEffectLife( spep_4 + 0,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen4, 1.16, 1.46 );
setEffScaleKey( spep_4 +66, shuchusen4, 1.16, 1.46 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 66, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 54, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 56, shuchusen4, 213 );  --だんだん薄く
setEffAlphaKey( spep_4 + 58, shuchusen4, 170 );
setEffAlphaKey( spep_4 + 60, shuchusen4, 128 );
setEffAlphaKey( spep_4 + 62, shuchusen4, 85 );
setEffAlphaKey( spep_4 + 64, shuchusen4, 42 );
setEffAlphaKey( spep_4 + 66, shuchusen4, 0 );

semaruBG = entryEffect(  spep_4,  SP_04r, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  semaruBG,  0,  0);
setEffMoveKey(  spep_4+130,  semaruBG,  0,  0);
setEffRotateKey(  spep_4,  semaruBG,  0);
setEffRotateKey(  spep_4+130,  semaruBG,  0);
setEffAlphaKey(  spep_4,  semaruBG,  255);
setEffAlphaKey(  spep_4+130,  semaruBG,  255);

--***敵の動き***
setDisp(  spep_4+60,  1,  1);
changeAnime(  spep_4+60,  1,  100);

setMoveKey( spep_4 + 60, 1, 692.4, -124.4 , 0 );
setMoveKey( spep_4 + 62, 1, 573.9, -93.4 , 0 );
setMoveKey( spep_4 + 64, 1, 455.4, -62.4 , 0 );
setMoveKey( spep_4 + 66, 1, 336.9, -31.4 , 0 );
setMoveKey( spep_4 + 68, 1, 218.4, -0.4 , 0 );
setMoveKey( spep_4 + 70, 1, 211, 1.6 , 0 );
setScaleKey( spep_4 + 60, 1, 0.26, 1.26 );
setScaleKey( spep_4 + 62, 1, 0.33, 1.33 );
setScaleKey( spep_4 + 64, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 68, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 70, 1, 0.55, 0.55 );
setRotateKey( spep_4 + 60, 1, 0 );

semaru = entryEffect(  spep_4,  SP_03r, 0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_4,  semaru,  0,  0);
setEffMoveKey(  spep_4+130,  semaru,  0,  0);
setEffRotateKey(  spep_4,  semaru,  0);
setEffRotateKey(  spep_4+130,  semaru,  0);
setEffAlphaKey(  spep_4,  semaru,  255);
setEffAlphaKey(  spep_4+130,  semaru,  255);

playSe(  spep_4,  SE_07);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+70 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setMoveKey(  SP_dodge,  1, 455.4, -62.4 , 0 );
setMoveKey(  SP_dodge+1,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+2,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+3,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+4,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+9,  1, 211, 1.6 , 0 );
setMoveKey(  SP_dodge+10,  1, 211, 1.6 , 0 );

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
--***敵の動き***
changeAnime(  spep_4+112,  1,  108);  --くの字
setDisp(  spep_4+128,  1,  0);  --消す

setMoveKey( spep_4 + 72, 1, 203.8, 3.4 , 0 );
setMoveKey( spep_4 + 74, 1, 197, 5.2 , 0 );
setMoveKey( spep_4 + 76, 1, 190.5, 7 , 0 );
setMoveKey( spep_4 + 78, 1, 184.3, 8.6 , 0 );
setMoveKey( spep_4 + 80, 1, 178.4, 10.1 , 0 );
setMoveKey( spep_4 + 82, 1, 172.8, 11.6 , 0 );
setMoveKey( spep_4 + 84, 1, 167.5, 13 , 0 );
setMoveKey( spep_4 + 86, 1, 162.6, 14.3 , 0 );
setMoveKey( spep_4 + 88, 1, 157.9, 15.5 , 0 );
setMoveKey( spep_4 + 90, 1, 153.6, 16.7 , 0 );
setMoveKey( spep_4 + 92, 1, 149.6, 17.7 , 0 );
setMoveKey( spep_4 + 94, 1, 145.8, 18.7 , 0 );
setMoveKey( spep_4 + 96, 1, 142.4, 19.6 , 0 );
setMoveKey( spep_4 + 98, 1, 139.3, 20.4 , 0 );
setMoveKey( spep_4 + 100, 1, 136.5, 21.2 , 0 );
setMoveKey( spep_4 + 102, 1, 134.1, 21.8 , 0 );
setMoveKey( spep_4 + 104, 1, 131.9, 22.4 , 0 );
setMoveKey( spep_4 + 106, 1, 130, 22.9 , 0 );
setMoveKey( spep_4 + 108, 1, 128.5, 23.3 , 0 );
setMoveKey( spep_4 + 110, 1, 127.2, 23.6 , 0 );
setMoveKey( spep_4 + 112, 1, 150.8, 8.1 , 0 );
setMoveKey( spep_4 + 114, 1, 151.8, 5.3 , 0 );
setMoveKey( spep_4 + 116, 1, 153, 1.9 , 0 );
setMoveKey( spep_4 + 118, 1, 154.5, -2 , 0 );
setMoveKey( spep_4 + 120, 1, 156.2, -6.6 , 0 );
setMoveKey( spep_4 + 122, 1, 158.1, -11.8 , 0 );
setMoveKey( spep_4 + 124, 1, 160.2, -17.6 , 0 );
setMoveKey( spep_4 + 126, 1, 162.6, -24 , 0 );
setMoveKey( spep_4 + 128, 1, 165.2, -31 , 0 );

setScaleKey( spep_4 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 80, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 82, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 84, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 88, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 92, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 94, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 100, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 102, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 104, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 106, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 110, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 114, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 116, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 118, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 120, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 122, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 124, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 126, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 128, 1, 0.2, 0.2 );
setRotateKey( spep_4 + 110, 1, 0 );
setRotateKey( spep_4 + 128, 1, 0 );

entryFade(  spep_4+124,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  ガッ(110F)
------------------------------------------------------
spep_5 = spep_4 + 130;

bakuhatuBG = entryEffectLife(  spep_5,  SP_05r,  110, 0x80,  -1,  0,  0,  0);  --爆発背景

setEffScaleKey(  spep_5,  bakuhatuBG,  1.0,  1.0);
setEffScaleKey(  spep_5+110,  bakuhatuBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuhatuBG,  0,  0);
setEffMoveKey(  spep_5+110,  bakuhatuBG,  0,  0);
setEffRotateKey(  spep_5,  bakuhatuBG,  0);
setEffRotateKey(  spep_5+110,  bakuhatuBG,  0);
setEffAlphaKey(  spep_5,  bakuhatuBG,  255);
setEffAlphaKey(  spep_5+110,  bakuhatuBG,  255);

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+8, SE_10);
playSe( spep_5+12, SE_11);

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);


end
