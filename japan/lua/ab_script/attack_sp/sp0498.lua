--ヒーローズコラボ　超サイヤ人3ベジータ（ゼノ）_アトミックフラッシュ
--sp0498 / 1015500

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
SP_01 =  152436 --構え
SP_02 =  152437 --横向きからのナビ
SP_03 =  152438 --放つ
SP_04 =  152439  --迫る

--***敵側***
SP_01x = 152440
SP_02x = 152441
SP_03x = 152442

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
setScaleKey(  0,  0,  1.5,  1.5);
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
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 構え(80F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.16,  2.21);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.16,  2.21);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  200);--ちょっと薄くする
setEffAlphaKey(  spep_1+80,  shuchusen1,  200);--ちょっと薄くする

--***構え***
kamae = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --構え

setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffMoveKey(  spep_1+80,  kamae,  0,  0);
setEffScaleKey(  spep_1,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_1+80,  kamae,  1.0,  1.0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffRotateKey(  spep_1+80,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffAlphaKey(  spep_1+80,  kamae,  255);

--***SE***
playSe(  spep_1,  17);  --溜め

--***背景と白フェード***
entryFadeBg(  spep_1,  0,  90,  0,  0,  0,  0,  180);          -- ベース暗め　背景
entryFade( spep_1+72, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_2 = spep_1+80;

--***フェードと背景***
entryFade( spep_2-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

--***背景と白フェード***
entryFade( spep_2+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ナビ(210F)
------------------------------------------------------
spep_3 = spep_2+90;

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 210, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.34,  1.87);
setEffScaleKey(  spep_3+210,  shuchusen3,  1.34,  1.87);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+210,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+210,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+210,  shuchusen3,  255);

--***書き文字***
ct_zuzu = entryEffectLife( spep_3+20,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );  --ズズズン

setEffShake(  spep_3+20,  ct_zuzu,  40,  20);  --揺れ
setEffMoveKey( spep_3+20, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_3+22, ct_zuzu, 29.3, 317.5 , 0 );
setEffMoveKey( spep_3+24, ct_zuzu, 51.3, 394.7 , 0 );
setEffMoveKey( spep_3+26, ct_zuzu, 38.4, 377.7 , 0 );
setEffMoveKey( spep_3+28, ct_zuzu, 43.5, 372 , 0 );
setEffMoveKey( spep_3+30, ct_zuzu, 31.1, 354.5 , 0 );
setEffMoveKey( spep_3+60, ct_zuzu, 31.1, 354.5 , 0 );
setEffScaleKey( spep_3+20, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_3+22, ct_zuzu, 1.98, 1.98 );
setEffScaleKey( spep_3+24, ct_zuzu, 2.83, 2.83 );
setEffScaleKey( spep_3+26, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_3+60, ct_zuzu, 2.92, 2.92 );
setEffRotateKey( spep_3+20, ct_zuzu, -5 );
setEffRotateKey( spep_3+60, ct_zuzu, -5 );
setEffAlphaKey( spep_3+20, ct_zuzu, 255 );
setEffAlphaKey( spep_3+38, ct_zuzu, 255 );
setEffAlphaKey( spep_3+40, ct_zuzu, 212 );
setEffAlphaKey( spep_3+42, ct_zuzu, 172 );
setEffAlphaKey( spep_3+44, ct_zuzu, 136 );
setEffAlphaKey( spep_3+46, ct_zuzu, 104 );
setEffAlphaKey( spep_3+48, ct_zuzu, 77 );
setEffAlphaKey( spep_3+50, ct_zuzu, 53 );
setEffAlphaKey( spep_3+52, ct_zuzu, 34 );
setEffAlphaKey( spep_3+54, ct_zuzu, 19 );
setEffAlphaKey( spep_3+56, ct_zuzu, 9 );
setEffAlphaKey( spep_3+58, ct_zuzu, 2 );
setEffAlphaKey( spep_3+60, ct_zuzu, 0 );

--***ナビ***
nabi = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --横の構えからナビ

setEffMoveKey(  spep_3,  nabi,  0,  0);
setEffMoveKey(  spep_3+210,  nabi,  0,  0);
setEffScaleKey(  spep_3,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_3+210,  nabi,  1.0,  1.0);
setEffRotateKey(  spep_3,  nabi,  0);
setEffRotateKey(  spep_3+210,  nabi,  0);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffAlphaKey(  spep_3+210,  nabi,  255);

--***カットイン***32
speff = entryEffect(  spep_3+98,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+98,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+112, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+112, ctgogo, 255 );
setEffAlphaKey( spep_3+170, ctgogo, 255 );
setEffAlphaKey( spep_3+171, ctgogo, 255 );
setEffAlphaKey( spep_3+172, ctgogo, 191 );
setEffAlphaKey( spep_3+174, ctgogo, 128 );
setEffAlphaKey( spep_3+176, ctgogo, 64 );
setEffAlphaKey( spep_3+179, ctgogo, 0 );
setEffRotateKey(  spep_3+112,  ctgogo,  0);
setEffRotateKey(  spep_3+179,  ctgogo,  0);
setEffScaleKey(  spep_3+112,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+170,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_3+179, ctgogo, 1.07, 1.07 );

--***SE***
playSe(  spep_3,  1035);
playSe(  spep_3+20,  1014);
playSe(  spep_3+22,  1035);
playSe(  spep_3+112,  SE_04);

--***背景と白フェード***
entryFadeBg(  spep_3,  0,  20,  0,  0,  0,  0,  180);          -- ベース暗め　背景
entryFadeBg(  spep_3+20,  0,  190,  0,  0,  0,  0,  255);          -- ベース黒　背景
entryFade( spep_3+20, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade　短い
entryFade( spep_3+92, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+190, 18, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ〜迫る(170F)
------------------------------------------------------
spep_4 = spep_3+210;

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 156, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.32,  1.92);
setEffScaleKey(  spep_4+156,  shuchusen4,  1.32,  1.92);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+156,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+156,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+156,  shuchusen4,  255);

--***書き文字***
ct_zuo = entryEffectLife( spep_4+2,  10012, 48, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_4+2,  ct_zuo,  48,  20);  --揺れ
setEffMoveKey( spep_4+2, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4+4, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_4+6, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4+8, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4+42, ct_zuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_4+44, ct_zuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_4+46, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_4+48, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_4+50, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_4+2, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_4+4, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_4+6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4+40, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4+42, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_4+44, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_4+46, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_4+48, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_4+50, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_4+2, ct_zuo, 27.2 );
setEffRotateKey( spep_4+50, ct_zuo, 27.2 );
setEffAlphaKey( spep_4+2, ct_zuo, 255 );
setEffAlphaKey( spep_4+40, ct_zuo, 255 );
setEffAlphaKey( spep_4+42, ct_zuo, 204 );
setEffAlphaKey( spep_4+44, ct_zuo, 153 );
setEffAlphaKey( spep_4+46, ct_zuo, 102 );
setEffAlphaKey( spep_4+48, ct_zuo, 51 );
setEffAlphaKey( spep_4+50, ct_zuo, 0 );

ct_zudo = entryEffectLife( spep_4+110,  10014, 46, 0x100, -1, 0, 67.7, 368.5 );  --ズドド

setEffShake(  spep_4+110,  ct_zudo,  46,  20);  --揺れ
setEffMoveKey( spep_4+110, ct_zudo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_4+156, ct_zudo, 67.7, 351.3 , 0 );
setEffScaleKey( spep_4+110, ct_zudo, 2.58, 2.58 );
setEffScaleKey( spep_4+156, ct_zudo, 2.58, 2.58 );
setEffRotateKey( spep_4+110, ct_zudo, 58.7 );
setEffRotateKey( spep_4+156, ct_zudo, 58.7 );
setEffAlphaKey( spep_4+110, ct_zudo, 255 );
setEffAlphaKey( spep_4+154, ct_zudo, 255 );
setEffAlphaKey( spep_4+155, ct_zudo,  0);
setEffAlphaKey( spep_4+156, ct_zudo, 0 );


--***流線***
ryusen = entryEffectLife( spep_4, 921, 156, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  ryusen,  1.25,  1.15);
setEffScaleKey(  spep_4+156,  ryusen,  1.25,  1.15);
setEffMoveKey(  spep_4,  ryusen,  0,  0);
setEffMoveKey(  spep_4+156,  ryusen,  0,  0);
setEffRotateKey(  spep_4,  ryusen,  5.6);
setEffRotateKey(  spep_4+156,  ryusen,  5.6);
setEffAlphaKey(  spep_4,  ryusen,  255);
setEffAlphaKey(  spep_4+156,  ryusen,  255);

--***迫る***
hanatsu = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --気弾放つ

setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffMoveKey(  spep_4+200,  hanatsu,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_4+200,  hanatsu,  1.0,  1.0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffRotateKey(  spep_4+200,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffAlphaKey(  spep_4+94,  hanatsu,  255);
setEffAlphaKey(  spep_4+95,  hanatsu,  255);
setEffAlphaKey(  spep_4+96,  hanatsu,  0);
setEffAlphaKey(  spep_4+200,  hanatsu,  0);

--***迫る***
kidan = entryEffect(  spep_4+96,  SP_04,  0x100,  -1,  0,  0,  0);  --気弾迫る

setEffMoveKey(  spep_4+96,  kidan,  0,  0);
setEffMoveKey(  spep_4+200,  kidan,  0,  0);
setEffScaleKey(  spep_4+96,  kidan,  1.0,  1.0);
setEffScaleKey(  spep_4+200,  kidan,  1.0,  1.0);
setEffRotateKey(  spep_4+96,  kidan,  0);
setEffRotateKey(  spep_4+200,  kidan,  0);
setEffAlphaKey(  spep_4+96,  kidan,  255);
setEffAlphaKey(  spep_4+156,  kidan,  255);
setEffAlphaKey(  spep_4+157,  kidan,  0);
setEffAlphaKey(  spep_4+158,  kidan,  0);
setEffAlphaKey(  spep_4+200,  kidan,  0);


--***敵迫る***
setDisp(  spep_4+100,  1,  1);
changeAnime(  spep_4+100,  1,  104);  --ガード
setShakeChara(  spep_4+100,  1,  58);

setMoveKey( spep_4+100, 1, 889.6, 25.6 , 0 );
setMoveKey( spep_4+102, 1, 752.8, 29.4 , 0 );
setMoveKey( spep_4+104, 1, 642.8, 33.6 , 0 );
setMoveKey( spep_4+106, 1, 526.2, 28 , 0 );
setMoveKey( spep_4+108, 1, 455.2, 39.6 , 0 );
setMoveKey( spep_4+110, 1, 376.6, 39.5 , 0 );
setScaleKey( spep_4+100, 1, 0.6, 0.6 );
setScaleKey( spep_4+102, 1, 0.74, 0.74 );
setScaleKey( spep_4+104, 1, 0.86, 0.86 );
setScaleKey( spep_4+106, 1, 0.97, 0.97 );
setScaleKey( spep_4+108, 1, 1.06, 1.06 );
setScaleKey( spep_4+110, 1, 1.14, 1.14 );
setRotateKey( spep_4+100, 1, 0 );

--***背景と白フェード***
entryFadeBg(  spep_4,  0,  170,  0,  0,  0,  0,  200);          -- ベース暗め　背景
entryFade( spep_4+88, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_4,  SE_06);
playSe(  spep_4+54,  SE_07);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+110 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 376.6, 39.5 , 0 );
setMoveKey( SP_dodge+2, 1, 326.9, 43.8 , 0 );
setMoveKey( SP_dodge+4, 1, 271.4, 30.9 , 0 );
setMoveKey( SP_dodge+6, 1, 257.8, 46 , 0 );
setMoveKey( SP_dodge+8, 1, 243.5, 48.3 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+2, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+4, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+6, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+8, 1, 1.2, 1.2 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0243.5, 48.3 , 0 );
setMoveKey(  SP_dodge+10,    1,  243.5, 48.3 , 0 );
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setScaleKey( SP_dodge+10,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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
setDisp(  spep_4+154,  1,  0);  --敵消す

setMoveKey( spep_4+112, 1, 326.9, 43.8 , 0 );
setMoveKey( spep_4+114, 1, 271.4, 30.9 , 0 );
setMoveKey( spep_4+116, 1, 257.8, 46 , 0 );
setMoveKey( spep_4+118, 1, 243.5, 48.3 , 0 );
setMoveKey( spep_4+120, 1, 252.2, 46.2 , 0 );
setMoveKey( spep_4+122, 1, 235.5, 31.9 , 0 );
setMoveKey( spep_4+124, 1, 246.5, 46.4 , 0 );
setMoveKey( spep_4+126, 1, 232.2, 44.8 , 0 );
setMoveKey( spep_4+128, 1, 240.9, 46.6 , 0 );
setMoveKey( spep_4+130, 1, 224.1, 36.2 , 0 );
setMoveKey( spep_4+132, 1, 235.2, 46.8 , 0 );
setMoveKey( spep_4+134, 1, 224.9, 49.2 , 0 );
setMoveKey( spep_4+136, 1, 229.6, 47 , 0 );
setMoveKey( spep_4+138, 1, 208.7, 36.5 , 0 );
setMoveKey( spep_4+140, 1, 223.9, 47.1 , 0 );
setMoveKey( spep_4+142, 1, 213.5, 45.7 , 0 );
setMoveKey( spep_4+144, 1, 218.3, 47.3 , 0 );
setMoveKey( spep_4+146, 1, 197.3, 32.8 , 0 );
setMoveKey( spep_4+148, 1, 212.6, 47.5 , 0 );
setMoveKey( spep_4+150, 1, 202.2, 50.1 , 0 );
setMoveKey( spep_4+152, 1, 207, 47.7 , 0 );
setMoveKey( spep_4+154, 1, 185.9, 33.1 , 0 );
--setMoveKey( spep_4+156, 1, 201.3, 47.9 , 0 );
--setMoveKey( spep_4+158, 1, 190.9, 50.6 , 0 );

setScaleKey( spep_4+112, 1, 1.2, 1.2 );
setScaleKey( spep_4+114, 1, 1.24, 1.24 );
setScaleKey( spep_4+116, 1, 1.27, 1.27 );
setScaleKey( spep_4+118, 1, 1.27, 1.27 );
setScaleKey( spep_4+120, 1, 1.28, 1.28 );
setScaleKey( spep_4+124, 1, 1.28, 1.28 );
setScaleKey( spep_4+126, 1, 1.29, 1.29 );
setScaleKey( spep_4+130, 1, 1.29, 1.29 );
setScaleKey( spep_4+132, 1, 1.3, 1.3 );
setScaleKey( spep_4+136, 1, 1.3, 1.3 );
setScaleKey( spep_4+138, 1, 1.31, 1.31 );
setScaleKey( spep_4+142, 1, 1.31, 1.31 );
setScaleKey( spep_4+144, 1, 1.32, 1.32 );
setScaleKey( spep_4+148, 1, 1.32, 1.32 );
setScaleKey( spep_4+150, 1, 1.33, 1.33 );
setScaleKey( spep_4+154, 1, 1.33, 1.33 );
--setScaleKey( spep_4+156, 1, 1.34, 1.34 );
--setScaleKey( spep_4+158, 1, 1.34, 1.34 );

setRotateKey( spep_4+154, 1, 0 );

entryFade( spep_4+148, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン黄(60F)
------------------------------------------------------
spep_5 = spep_4+156;

--***書き文字***
ct_gyan = entryEffectLife( spep_5,  10006, 58, 0x100, -1, 0, 8.8, 313 );  --書き文字

setEffMoveKey( spep_5, ct_gyan, 8.8, 313 , 0 );
setEffMoveKey( spep_5+58, ct_gyan, 10.6, 319.2 , 0 );
setEffScaleKey( spep_5, ct_gyan, 2.11, 2.11 );
setEffScaleKey( spep_5+58, ct_gyan, 4.23, 4.23 );
setEffRotateKey( spep_5, ct_gyan, -5.2 );
setEffRotateKey( spep_5+58, ct_gyan, -5.2 );
setEffAlphaKey( spep_5, ct_gyan, 255 );
setEffAlphaKey( spep_5+58, ct_gyan, 255 );

--***ギャン黄色***
gyan = entryEffectLife( spep_5, 190003, 60, 0x80 , -1, 0, 0, 0);  --ギャン

setEffScaleKey( spep_5,  gyan,  1.0, 1.0);
setEffMoveKey( spep_5,  gyan,  0,  0);
setEffRotateKey( spep_5,  gyan,  0);
setEffAlphaKey( spep_5,  gyan,  255);
setEffScaleKey( spep_5+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_5+60,  gyan,  0,  0);
setEffRotateKey( spep_5+60,  gyan,  0);
setEffAlphaKey( spep_5+60,  gyan,  255);

entryFade( spep_5+26, 30, 4, 18, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_5,  1023);  --ギャン

------------------------------------------------------
-- 爆発(190F)
------------------------------------------------------
spep_6 = spep_5+60;

--***爆発***
bakuhatsu = entryEffect(  spep_6,  1926,  0x80,  -1,  0,  0,  0);  --爆発

setEffMoveKey(  spep_6,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_6+190,  bakuhatsu,  0,  0);
setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_6+190,  bakuhatsu,  1.0,  1.0);
setEffRotateKey(  spep_6,  bakuhatsu,  0);
setEffRotateKey(  spep_6+190,  bakuhatsu,  0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffAlphaKey(  spep_6+190,  bakuhatsu,  255);

--***SE***
playSe(  spep_6,  SE_10);

-- ダメージ表示
dealDamage(spep_6+70);
endPhase(spep_6+170);

else


------------------------------------------------------
-- 構え(80F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.16,  2.21);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.16,  2.21);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  200);--ちょっと薄くする
setEffAlphaKey(  spep_1+80,  shuchusen1,  200);--ちょっと薄くする

--***構え***
kamae = entryEffect(  spep_1,  SP_01x,  0x80,  -1,  0,  0,  0);  --構え

setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffMoveKey(  spep_1+80,  kamae,  0,  0);
setEffScaleKey(  spep_1,  kamae,  -1.0,  1.0);
setEffScaleKey(  spep_1+80,  kamae,  -1.0,  1.0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffRotateKey(  spep_1+80,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffAlphaKey(  spep_1+80,  kamae,  255);

--***SE***
playSe(  spep_1,  17);  --溜め

--***背景と白フェード***
entryFadeBg(  spep_1,  0,  90,  0,  0,  0,  0,  180);          -- ベース暗め　背景
entryFade( spep_1+72, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_2 = spep_1+80;

--***フェードと背景***
entryFade( spep_2-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

--***背景と白フェード***
entryFade( spep_2+80, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ナビ(210F)
------------------------------------------------------
spep_3 = spep_2+90;

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 210, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.34,  1.87);
setEffScaleKey(  spep_3+210,  shuchusen3,  1.34,  1.87);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+210,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+210,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+210,  shuchusen3,  255);

--***書き文字***
ct_zuzu = entryEffectLife( spep_3+20,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );  --ズズズン

setEffShake(  spep_3+20,  ct_zuzu,  40,  20);  --揺れ
setEffMoveKey( spep_3+20, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_3+22, ct_zuzu, 29.3, 317.5 , 0 );
setEffMoveKey( spep_3+24, ct_zuzu, 51.3, 394.7 , 0 );
setEffMoveKey( spep_3+26, ct_zuzu, 38.4, 377.7 , 0 );
setEffMoveKey( spep_3+28, ct_zuzu, 43.5, 372 , 0 );
setEffMoveKey( spep_3+30, ct_zuzu, 31.1, 354.5 , 0 );
setEffMoveKey( spep_3+60, ct_zuzu, 31.1, 354.5 , 0 );
setEffScaleKey( spep_3+20, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_3+22, ct_zuzu, 1.98, 1.98 );
setEffScaleKey( spep_3+24, ct_zuzu, 2.83, 2.83 );
setEffScaleKey( spep_3+26, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_3+60, ct_zuzu, 2.92, 2.92 );
setEffRotateKey( spep_3+20, ct_zuzu, -5 );
setEffRotateKey( spep_3+60, ct_zuzu, -5 );
setEffAlphaKey( spep_3+20, ct_zuzu, 255 );
setEffAlphaKey( spep_3+38, ct_zuzu, 255 );
setEffAlphaKey( spep_3+40, ct_zuzu, 212 );
setEffAlphaKey( spep_3+42, ct_zuzu, 172 );
setEffAlphaKey( spep_3+44, ct_zuzu, 136 );
setEffAlphaKey( spep_3+46, ct_zuzu, 104 );
setEffAlphaKey( spep_3+48, ct_zuzu, 77 );
setEffAlphaKey( spep_3+50, ct_zuzu, 53 );
setEffAlphaKey( spep_3+52, ct_zuzu, 34 );
setEffAlphaKey( spep_3+54, ct_zuzu, 19 );
setEffAlphaKey( spep_3+56, ct_zuzu, 9 );
setEffAlphaKey( spep_3+58, ct_zuzu, 2 );
setEffAlphaKey( spep_3+60, ct_zuzu, 0 );

--***ナビ***
nabi = entryEffect(  spep_3,  SP_02x,  0x80,  -1,  0,  0,  0);  --横の構えからナビ

setEffMoveKey(  spep_3,  nabi,  0,  0);
setEffMoveKey(  spep_3+210,  nabi,  0,  0);
setEffScaleKey(  spep_3,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_3+92,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_3+93,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_3+94,  nabi,  -1.0,  1.0);
setEffScaleKey(  spep_3+210,  nabi,  -1.0,  1.0);
setEffRotateKey(  spep_3,  nabi,  0);
setEffRotateKey(  spep_3+210,  nabi,  0);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffAlphaKey(  spep_3+210,  nabi,  255);

--***カットイン***32
--speff = entryEffect(  spep_3+98,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+98,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+112, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+112, ctgogo, 255 );
setEffAlphaKey( spep_3+170, ctgogo, 255 );
setEffAlphaKey( spep_3+171, ctgogo, 255 );
setEffAlphaKey( spep_3+172, ctgogo, 191 );
setEffAlphaKey( spep_3+174, ctgogo, 128 );
setEffAlphaKey( spep_3+176, ctgogo, 64 );
setEffAlphaKey( spep_3+179, ctgogo, 0 );
setEffRotateKey(  spep_3+112,  ctgogo,  0);
setEffRotateKey(  spep_3+179,  ctgogo,  0);
setEffScaleKey(  spep_3+112,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+170,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_3+179, ctgogo, -1.07, 1.07 );

--***SE***
playSe(  spep_3,  1035);
playSe(  spep_3+20,  1014);
playSe(  spep_3+22,  1035);
playSe(  spep_3+112,  SE_04);

--***背景と白フェード***
entryFadeBg(  spep_3,  0,  20,  0,  0,  0,  0,  180);          -- ベース暗め　背景
entryFadeBg(  spep_3+20,  0,  190,  0,  0,  0,  0,  255);          -- ベース黒　背景
entryFade( spep_3+20, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade　短い
entryFade( spep_3+84, 4, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+190, 18, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 放つ〜迫る(170F)
------------------------------------------------------
spep_4 = spep_3+210;

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 156, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.32,  1.92);
setEffScaleKey(  spep_4+156,  shuchusen4,  1.32,  1.92);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+156,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+156,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+156,  shuchusen4,  255);

--***書き文字***
ct_zuo = entryEffectLife( spep_4+2,  10012, 48, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_4+2,  ct_zuo,  48,  20);  --揺れ
setEffMoveKey( spep_4+2, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4+4, ct_zuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_4+6, ct_zuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4+8, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4+42, ct_zuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_4+44, ct_zuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_4+46, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_4+48, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_4+50, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_4+2, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_4+4, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_4+6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4+40, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_4+42, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_4+44, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_4+46, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_4+48, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_4+50, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_4+2, ct_zuo, 27.2 );
setEffRotateKey( spep_4+50, ct_zuo, 27.2 );
setEffAlphaKey( spep_4+2, ct_zuo, 255 );
setEffAlphaKey( spep_4+40, ct_zuo, 255 );
setEffAlphaKey( spep_4+42, ct_zuo, 204 );
setEffAlphaKey( spep_4+44, ct_zuo, 153 );
setEffAlphaKey( spep_4+46, ct_zuo, 102 );
setEffAlphaKey( spep_4+48, ct_zuo, 51 );
setEffAlphaKey( spep_4+50, ct_zuo, 0 );

ct_zudo = entryEffectLife( spep_4+110,  10014, 46, 0x100, -1, 0, 67.7, 368.5 );  --ズドド

setEffShake(  spep_4+110,  ct_zudo,  46,  20);  --揺れ
setEffMoveKey( spep_4+110, ct_zudo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_4+156, ct_zudo, 67.7, 351.3 , 0 );
setEffScaleKey( spep_4+110, ct_zudo, 2.58, 2.58 );
setEffScaleKey( spep_4+156, ct_zudo, 2.58, 2.58 );
setEffRotateKey( spep_4+110, ct_zudo, 0 );
setEffRotateKey( spep_4+156, ct_zudo, 0 );
setEffAlphaKey( spep_4+110, ct_zudo, 255 );
setEffAlphaKey( spep_4+154, ct_zudo, 255 );
setEffAlphaKey( spep_4+155, ct_zudo, 0 );
setEffAlphaKey( spep_4+156, ct_zudo, 0 );

--***流線***
ryusen = entryEffectLife( spep_4, 921, 156, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  ryusen,  1.25,  1.15);
setEffScaleKey(  spep_4+156,  ryusen,  1.25,  1.15);
setEffMoveKey(  spep_4,  ryusen,  0,  0);
setEffMoveKey(  spep_4+156,  ryusen,  0,  0);
setEffRotateKey(  spep_4,  ryusen,  5.6);
setEffRotateKey(  spep_4+156,  ryusen,  5.6);
setEffAlphaKey(  spep_4,  ryusen,  255);
setEffAlphaKey(  spep_4+156,  ryusen,  255);

--***迫る***
hanatsu = entryEffect(  spep_4,  SP_03x,  0x100,  -1,  0,  0,  0);  --気弾放つ

setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffMoveKey(  spep_4+200,  hanatsu,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_4+200,  hanatsu,  1.0,  1.0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffRotateKey(  spep_4+200,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffAlphaKey(  spep_4+94,  hanatsu,  255);
setEffAlphaKey(  spep_4+95,  hanatsu,  255);
setEffAlphaKey(  spep_4+96,  hanatsu,  0);
setEffAlphaKey(  spep_4+200,  hanatsu,  0);

--***迫る***
kidan = entryEffect(  spep_4+96,  SP_04,  0x100,  -1,  0,  0,  0);  --気弾迫る

setEffMoveKey(  spep_4+96,  kidan,  0,  0);
setEffMoveKey(  spep_4+200,  kidan,  0,  0);
setEffScaleKey(  spep_4+96,  kidan,  1.0,  1.0);
setEffScaleKey(  spep_4+200,  kidan,  1.0,  1.0);
setEffRotateKey(  spep_4+96,  kidan,  0);
setEffRotateKey(  spep_4+200,  kidan,  0);
setEffAlphaKey(  spep_4+96,  kidan,  255);
setEffAlphaKey(  spep_4+156,  kidan,  255);
setEffAlphaKey(  spep_4+157,  kidan,  0);
setEffAlphaKey(  spep_4+158,  kidan,  0);
setEffAlphaKey(  spep_4+200,  kidan,  0);


--***敵迫る***
setDisp(  spep_4+100,  1,  1);
changeAnime(  spep_4+100,  1,  104);  --ガード
setShakeChara(  spep_4+100,  1,  58);

setMoveKey( spep_4+100, 1, 889.6, 25.6 , 0 );
setMoveKey( spep_4+102, 1, 752.8, 29.4 , 0 );
setMoveKey( spep_4+104, 1, 642.8, 33.6 , 0 );
setMoveKey( spep_4+106, 1, 526.2, 28 , 0 );
setMoveKey( spep_4+108, 1, 455.2, 39.6 , 0 );
setMoveKey( spep_4+110, 1, 376.6, 39.5 , 0 );
setScaleKey( spep_4+100, 1, 0.6, 0.6 );
setScaleKey( spep_4+102, 1, 0.74, 0.74 );
setScaleKey( spep_4+104, 1, 0.86, 0.86 );
setScaleKey( spep_4+106, 1, 0.97, 0.97 );
setScaleKey( spep_4+108, 1, 1.06, 1.06 );
setScaleKey( spep_4+110, 1, 1.14, 1.14 );
setRotateKey( spep_4+100, 1, 0 );

--***背景と白フェード***
entryFadeBg(  spep_4,  0,  156,  0,  0,  0,  0,  200);          -- ベース暗め　背景
entryFade( spep_4+88, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_4,  SE_06);
playSe(  spep_4+54,  SE_07);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+110 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 376.6, 39.5 , 0 );
setMoveKey( SP_dodge+2, 1, 326.9, 43.8 , 0 );
setMoveKey( SP_dodge+4, 1, 271.4, 30.9 , 0 );
setMoveKey( SP_dodge+6, 1, 257.8, 46 , 0 );
setMoveKey( SP_dodge+8, 1, 243.5, 48.3 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+2, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+4, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+6, 1, 1.2, 1.2 );
setScaleKey( SP_dodge+8, 1, 1.2, 1.2 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  243.5, 48.3 , 0 );
setMoveKey(  SP_dodge+10,    1,  243.5, 48.3 , 0 );
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setScaleKey( SP_dodge+10,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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
setDisp(  spep_4+154,  1,  0);  --敵消す

setMoveKey( spep_4+112, 1, 326.9, 43.8 , 0 );
setMoveKey( spep_4+114, 1, 271.4, 30.9 , 0 );
setMoveKey( spep_4+116, 1, 257.8, 46 , 0 );
setMoveKey( spep_4+118, 1, 243.5, 48.3 , 0 );
setMoveKey( spep_4+120, 1, 252.2, 46.2 , 0 );
setMoveKey( spep_4+122, 1, 235.5, 31.9 , 0 );
setMoveKey( spep_4+124, 1, 246.5, 46.4 , 0 );
setMoveKey( spep_4+126, 1, 232.2, 44.8 , 0 );
setMoveKey( spep_4+128, 1, 240.9, 46.6 , 0 );
setMoveKey( spep_4+130, 1, 224.1, 36.2 , 0 );
setMoveKey( spep_4+132, 1, 235.2, 46.8 , 0 );
setMoveKey( spep_4+134, 1, 224.9, 49.2 , 0 );
setMoveKey( spep_4+136, 1, 229.6, 47 , 0 );
setMoveKey( spep_4+138, 1, 208.7, 36.5 , 0 );
setMoveKey( spep_4+140, 1, 223.9, 47.1 , 0 );
setMoveKey( spep_4+142, 1, 213.5, 45.7 , 0 );
setMoveKey( spep_4+144, 1, 218.3, 47.3 , 0 );
setMoveKey( spep_4+146, 1, 197.3, 32.8 , 0 );
setMoveKey( spep_4+148, 1, 212.6, 47.5 , 0 );
setMoveKey( spep_4+150, 1, 202.2, 50.1 , 0 );
setMoveKey( spep_4+152, 1, 207, 47.7 , 0 );
setMoveKey( spep_4+154, 1, 185.9, 33.1 , 0 );
--setMoveKey( spep_4+156, 1, 201.3, 47.9 , 0 );
--setMoveKey( spep_4+158, 1, 190.9, 50.6 , 0 );

setScaleKey( spep_4+112, 1, 1.2, 1.2 );
setScaleKey( spep_4+114, 1, 1.24, 1.24 );
setScaleKey( spep_4+116, 1, 1.27, 1.27 );
setScaleKey( spep_4+118, 1, 1.27, 1.27 );
setScaleKey( spep_4+120, 1, 1.28, 1.28 );
setScaleKey( spep_4+124, 1, 1.28, 1.28 );
setScaleKey( spep_4+126, 1, 1.29, 1.29 );
setScaleKey( spep_4+130, 1, 1.29, 1.29 );
setScaleKey( spep_4+132, 1, 1.3, 1.3 );
setScaleKey( spep_4+136, 1, 1.3, 1.3 );
setScaleKey( spep_4+138, 1, 1.31, 1.31 );
setScaleKey( spep_4+142, 1, 1.31, 1.31 );
setScaleKey( spep_4+144, 1, 1.32, 1.32 );
setScaleKey( spep_4+148, 1, 1.32, 1.32 );
setScaleKey( spep_4+150, 1, 1.33, 1.33 );
setScaleKey( spep_4+154, 1, 1.33, 1.33 );
--setScaleKey( spep_4+156, 1, 1.34, 1.34 );
--setScaleKey( spep_4+158, 1, 1.34, 1.34 );

setRotateKey( spep_4+154, 1, 0 );

entryFade( spep_4+148, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------	
-- ギャン黄(60F)
------------------------------------------------------	
spep_5 = spep_4+156;	
--***書き文字***	
ct_gyan = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 8.8, 313 ); --書き文字	
setEffMoveKey( spep_5, ct_gyan, 8.8, 313 , 0 );	
setEffMoveKey( spep_5+58, ct_gyan, 10.6, 319.2 , 0 );	
setEffScaleKey( spep_5, ct_gyan, 2.11, 2.11 );	
setEffScaleKey( spep_5+58, ct_gyan, 4.23, 4.23 );	
setEffRotateKey( spep_5, ct_gyan, -5.2 );	
setEffRotateKey( spep_5+58, ct_gyan, -5.2 );	
setEffAlphaKey( spep_5, ct_gyan, 255 );	
setEffAlphaKey( spep_5+58, ct_gyan, 255 );	
--***ギャン黄色***	
gyan = entryEffectLife( spep_5, 190003, 60, 0x80 , -1, 0, 0, 0); --ギャン	
setEffScaleKey( spep_5, gyan, 1.0, 1.0);	
setEffMoveKey( spep_5, gyan, 0, 0);	
setEffRotateKey( spep_5, gyan, 0);	
setEffAlphaKey( spep_5, gyan, 255);	
setEffScaleKey( spep_5+60, gyan, 1.0, 1.0);	
setEffMoveKey( spep_5+60, gyan, 0, 0);	
setEffRotateKey( spep_5+60, gyan, 0);	
setEffAlphaKey( spep_5+60, gyan, 255);	
entryFade( spep_5+26, 30, 4, 18, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade	
--***SE***	
playSe( spep_5, 1023); --ギャン

------------------------------------------------------
-- 爆発(190F)
------------------------------------------------------
spep_6 = spep_5+60;

--***爆発***
bakuhatsu = entryEffect(  spep_6,  1926,  0x80,  -1,  0,  0,  0);  --爆発

setEffMoveKey(  spep_6,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_6+190,  bakuhatsu,  0,  0);
setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_6+190,  bakuhatsu,  1.0,  1.0);
setEffRotateKey(  spep_6,  bakuhatsu,  0);
setEffRotateKey(  spep_6+190,  bakuhatsu,  0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffAlphaKey(  spep_6+190,  bakuhatsu,  255);

--***SE***
playSe(  spep_6,  SE_10);

-- ダメージ表示
dealDamage(spep_6+70);
endPhase(spep_6+170);
end
