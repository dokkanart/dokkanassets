--　sp0468 悟空（GT）_かめはめ波

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

SP_01 = 151768  --構え
SP_02 = 151769  --ダッシュ
SP_03 = 151770  --放つ
SP_04 = 151771  --構え（敵）
SP_05 = 151772  --ダッシュ（敵）
SP_06 = 151773  --放つ（敵）


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setMoveKey(   20,  0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵

setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setMoveKey(   20,  1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setScaleKey(   20,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);
------------------------------------------------------
-- 構え(140F)
------------------------------------------------------

spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+19,  shuchusen1,  1.54,  1.54);
setEffMoveKey(  spep_1+19,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+19,  shuchusen1,  0);
setEffAlphaKey(  spep_1+19,  shuchusen1,  255);
setEffScaleKey(  spep_1+140,  shuchusen1,  1.54,  1.54);
setEffMoveKey(  spep_1+140,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+140,  shuchusen1,  0);
setEffAlphaKey(  spep_1+140,  shuchusen1,  255);

-- 書き文字エントリー
ctzuzu = entryEffectLife( spep_1+18,  10013, 38, 0x100, -1, 0, 20.1, 249.9 ); --ズズズンッ
setEffShake(  spep_1+18,  ctzuzu,  38,  15);
setEffMoveKey( spep_1+18, ctzuzu, 20.1, 249.9 , 0 );
setEffMoveKey( spep_1+20, ctzuzu, 23.6, 299.4 , 0 );
setEffMoveKey( spep_1+22, ctzuzu, 40.2, 359.5 , 0 );
setEffMoveKey( spep_1+24, ctzuzu, 31.1, 355.3 , 0 );
setEffMoveKey( spep_1+26, ctzuzu, 41, 365.1 , 0 );
setEffMoveKey( spep_1+28, ctzuzu, 31, 354.8 , 0 );
setEffMoveKey( spep_1+30, ctzuzu, 41, 364.8 , 0 );
setEffMoveKey( spep_1+56, ctzuzu, 41, 364.8 , 0 );
setEffScaleKey( spep_1+18, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+20, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+22, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+24, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+56, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+18, ctzuzu, -5 );
setEffRotateKey( spep_1+56, ctzuzu, -5 );
setEffAlphaKey( spep_1+18, ctzuzu, 255 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+40, ctzuzu, 215 );
setEffAlphaKey( spep_1+42, ctzuzu, 164 );
setEffAlphaKey( spep_1+44, ctzuzu, 121 );
setEffAlphaKey( spep_1+46, ctzuzu, 84 );
setEffAlphaKey( spep_1+48, ctzuzu, 54 );
setEffAlphaKey( spep_1+50, ctzuzu, 30 );
setEffAlphaKey( spep_1+51, ctzuzu, 0 );
setEffAlphaKey( spep_1+53, ctzuzu, 0 );
setEffAlphaKey( spep_1+56, ctzuzu, 0 );

kamae = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --構え溜め

setEffScaleKey(  spep_1,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffScaleKey(  spep_1+140,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1+140,  kamae,  0,  0);
setEffRotateKey(  spep_1+140,  kamae,  0);
setEffAlphaKey(  spep_1+140,  kamae,  255);

playSe(  spep_1+21,  SE_01); --気を溜める

-- カットイン
speff = entryEffect(  spep_1+42,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+42,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+54, 190006, 71, 0x100, -1, 0, 80, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+54,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+54,  ctgogo,  80,  510);
setEffRotateKey(  spep_1+54,  ctgogo,  0);
setEffScaleKey(  spep_1+125,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+125,  ctgogo,  80,  510);
setEffRotateKey(  spep_1+125,  ctgogo,  0);

playSe(  spep_1+52,  SE_04);  --カットイン音

entryFadeBg( spep_1, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_1+17, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+126, 12, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ダッシュ(160F)
------------------------------------------------------

spep_2 = spep_1+140;

shuchusen2 = entryEffectLife( spep_2, 906, 160, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.3,  1.7);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+160,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+160,  shuchusen2,  1.3,  1.7);
setEffRotateKey(  spep_2+160,  shuchusen2,  0);
setEffAlphaKey(  spep_2+160,  shuchusen2,  255);

dash = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --ダッシュ

setEffScaleKey(  spep_2,  dash,  1.0,  1.0);
setEffMoveKey(  spep_2,  dash,  0,  0);
setEffRotateKey(  spep_2,  dash,  0);
setEffAlphaKey(  spep_2,  dash,  255);
setEffScaleKey(  spep_2+160,  dash,  1.0,  1.0);
setEffMoveKey(  spep_2+160,  dash,  0,  0);
setEffRotateKey(  spep_2+160,  dash,  0);
setEffAlphaKey(  spep_2+160,  dash,  255);

--playSe(  spep_2,  SE_01);
playSe( spep_2,SE_03); --かめはめ波ため
playSe( spep_2+20,SE_03);
playSe( spep_2+40,SE_03);
playSe( spep_2+60,SE_03);
playSe( spep_2+80,SE_03);
playSe( spep_2+100,SE_03);
playSe( spep_2+120,SE_03);
playSe( spep_2+140,SE_03);

entryFadeBg( spep_2, 0, 160, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_2+149, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_3 = spep_2+160;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+81, 5, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 放つ(110F)
------------------------------------------------------

spep_4 = spep_3+90;

shuchusen4 = entryEffectLife( spep_4, 906, 110, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+110,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+110,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4+110,  shuchusen4,  0);
setEffAlphaKey(  spep_4+110,  shuchusen4,  255);

ryu1 = entryEffectLife( spep_4, 921, 110, 0x80,  -1, 0,  0,  0);  --流線

setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffScaleKey(  spep_4,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4,  ryu1,  -132);
setEffAlphaKey(  spep_4,  ryu1,  0);
setEffMoveKey(  spep_4+34,  ryu1,  0,  0);
setEffScaleKey(  spep_4+34,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4+34,  ryu1,  -132);
setEffAlphaKey(  spep_4+34,  ryu1,  0);
setEffMoveKey(  spep_4+35,  ryu1,  0,  0);
setEffScaleKey(  spep_4+35,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4+35,  ryu1,  -132);
setEffAlphaKey(  spep_4+35,  ryu1,  255);
setEffMoveKey(  spep_4+41,  ryu1,  0,  0);
setEffScaleKey(  spep_4+41,  ryu1,  1.52,  1.4);
setEffRotateKey(  spep_4+41,  ryu1,  -132);
setEffAlphaKey(  spep_4+41,  ryu1,  255);
setEffMoveKey(  spep_4+110,  ryu1,  0,  0);
setEffScaleKey(  spep_4+110,  ryu1,  1.52,  1.4);
setEffRotateKey(  spep_4+110,  ryu1,  -132);
setEffAlphaKey(  spep_4+110,  ryu1,  255);

hanatsu = entryEffect(  spep_4,  SP_03,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffScaleKey(  spep_4+110,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4+110,  hanatsu,  0,  0);
setEffRotateKey(  spep_4+110,  hanatsu,  0);
setEffAlphaKey(  spep_4+110,  hanatsu,  255);

entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 255);          -- 黒　背景

playSe( spep_4+5,SE_03);
playSe(  spep_4+33,  SE_07);

--書き文字エントリー
ctzuo = entryEffectLife( spep_4+33,  10012, 71, 0X100, -1, 0, 78.6, 180.5 );  --ズオッ
setEffShake(  spep_4+33,  ctzuo,  70,  20);
setEffMoveKey( spep_4+33, ctzuo, 78.6, 180.5 , 0 );
setEffMoveKey( spep_4+36, ctzuo, 104.8, 208.5 , 0 );
setEffMoveKey( spep_4+38, ctzuo, 117.6, 249.8 , 0 );
setEffMoveKey( spep_4+40, ctzuo, 153.2, 268.5 , 0 );
setEffMoveKey( spep_4+42, ctzuo, 137.2, 284.5 , 0 );
setEffMoveKey( spep_4+94, ctzuo, 137.2, 284.5 , 0 );
setEffMoveKey( spep_4+96, ctzuo, 172.3, 265.1 , 0 );
setEffMoveKey( spep_4+98, ctzuo, 165.9, 287.3 , 0 );
setEffMoveKey( spep_4+100, ctzuo, 210.6, 258.3 , 0 );
setEffMoveKey( spep_4+102, ctzuo, 194.6, 290 , 0 );
setEffMoveKey( spep_4+104, ctzuo, 209, 291.4 , 0 );
setEffScaleKey( spep_4+33, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4+35, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4+37, ctzuo, 1.95, 1.95 );
setEffScaleKey( spep_4+39, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4+94, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4+96, ctzuo, 3.56, 3.56 );
setEffScaleKey( spep_4+98, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_4+100, ctzuo, 5.2, 5.2 );
setEffScaleKey( spep_4+102, ctzuo, 6.02, 6.02 );
setEffScaleKey( spep_4+104, ctzuo, 6.84, 6.84 );
setEffRotateKey( spep_4+33, ctzuo, 27.2 );
setEffRotateKey( spep_4+104, ctzuo, 27.2 );
setEffAlphaKey( spep_4+33, ctzuo, 255 );
setEffAlphaKey( spep_4+94, ctzuo, 255 );
setEffAlphaKey( spep_4+96, ctzuo, 204 );
setEffAlphaKey( spep_4+98, ctzuo, 153 );
setEffAlphaKey( spep_4+100, ctzuo, 102 );
setEffAlphaKey( spep_4+102, ctzuo, 51 );
setEffAlphaKey( spep_4+104, ctzuo, 0 );


-- 敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 102 );  --構え

setMoveKey( spep_4, 1, 374.4, -300.6 , 0 );
setMoveKey( spep_4+2, 1, 365.1, -295.3 , 0 );
setMoveKey( spep_4+4, 1, 355.7, -289.9 , 0 );
setMoveKey( spep_4+6, 1, 346.4, -284.6 , 0 );
setMoveKey( spep_4+8, 1, 337.1, -279.3 , 0 );
setMoveKey( spep_4+10, 1, 327.7, -273.9 , 0 );
setScaleKey( spep_4, 1, 2.03, 2.03 );
setScaleKey( spep_4+2, 1, 2.02, 2.02 );
setScaleKey( spep_4+4, 1, 2, 2 );
setScaleKey( spep_4+6, 1, 1.99, 1.99 );
setScaleKey( spep_4+8, 1, 1.97, 1.97 );
setScaleKey( spep_4+10, 1, 1.96, 1.96 );
setRotateKey( spep_4, 1, 0 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+10; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge, 0, -2000,  -2000, 0); --味方位置
setMoveKey( SP_dodge+1, 0, -2000, -2000, 0); --味方位置
setMoveKey( SP_dodge+2, 0, -2000, -2000, 0); --味方位置

setMoveKey( SP_dodge, 1, 374.4, -300.6 , 0); --敵位置
setMoveKey( SP_dodge+2, 1, 365.1, -295.3 , 0); --敵位置
setMoveKey( SP_dodge+4, 1, 355.7, -289.9 , 0 ); --敵位置
setMoveKey( SP_dodge+6, 1, 346.4, -284.6 , 0 ); --敵位置
setMoveKey( SP_dodge+8, 1, 337.1, -279.3 , 0 ); --敵位置
setMoveKey( SP_dodge+9, 1, 2000, -2000 , 0 ); --敵位置
setMoveKey( SP_dodge+10, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+11, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+20, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+21, 1, 2000, -2000 , 0 ); --敵位置
setScaleKey( SP_dodge, 1, 2.03, 2.03 );
setScaleKey( SP_dodge+2, 1, 2.02, 2.02 );
setScaleKey( SP_dodge+4, 1, 2, 2 );
setScaleKey( SP_dodge+6, 1, 1.99, 1.99 );
setScaleKey( SP_dodge+8, 1, 1.97, 1.97 );
setScaleKey( SP_dodge+10, 1, 1.96, 1.96 );
setScaleKey( SP_dodge+20, 1, 1.96, 1.96 );


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------

--敵の動きつづき
setMoveKey( spep_4+12, 1, 318.4, -268.6 , 0 );
setMoveKey( spep_4+14, 1, 309.1, -263.3 , 0 );
setMoveKey( spep_4+16, 1, 299.7, -257.9 , 0 );
setMoveKey( spep_4+18, 1, 290.4, -252.6 , 0 );
setMoveKey( spep_4+20, 1, 281.1, -247.3 , 0 );
setMoveKey( spep_4+22, 1, 271.8, -241.9 , 0 );
setMoveKey( spep_4+24, 1, 262.5, -236.6 , 0 );
setMoveKey( spep_4+26, 1, 253.1, -231.3 , 0 );
setMoveKey( spep_4+27, 1, 2000, -2000 , 0 );
setMoveKey( spep_4+110, 1, 2000, -2000 , 0 );
setScaleKey( spep_4+12, 1, 1.94, 1.94 );
setScaleKey( spep_4+14, 1, 1.93, 1.93 );
setScaleKey( spep_4+16, 1, 1.91, 1.91 );
setScaleKey( spep_4+18, 1, 1.9, 1.9 );
setScaleKey( spep_4+20, 1, 1.88, 1.88 );
setScaleKey( spep_4+22, 1, 1.87, 1.87 );
setScaleKey( spep_4+24, 1, 1.85, 1.85 );
setScaleKey( spep_4+26, 1, 1.84, 1.84 );
setScaleKey( spep_4+110, 1, 1.84, 1.84 );
setRotateKey( spep_4+24, 1, 0 );
setRotateKey( spep_4+110, 1, 0 );


entryFade( spep_4+23, 0, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+99, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_5 = spep_4+110;

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ctgyan, 1.8, 1.8);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5+10, ctgyan, 3.8, 3.8);
setEffScaleKey( spep_5+58, ctgyan, 4.3, 4.3);
setEffAlphaKey( spep_5+58, ctgyan, 255);
setEffShake( spep_5, ctgyan, 58, 10);

gayn = entryEffect( spep_5, 190000, 0x80,  -1, 0,  0,  0);   --ギャン（青）

setEffScaleKey(  spep_5,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_5,  gayn,  0,  0);
setEffRotateKey(  spep_5,  gayn,  0);
setEffAlphaKey(  spep_5,  gayn,  255);
setEffScaleKey(  spep_5+60,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_5+60,  gayn,  0,  0);
setEffRotateKey(  spep_5+60,  gayn,  0);
setEffAlphaKey(  spep_5+60,  gayn,  255);

playSe(  spep_5, SE_09);

entryFade( spep_5+20, 38, 6, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発(200F)
------------------------------------------------------

spep_6 = spep_5+60;

bakuhatsu = entryEffect(  spep_6,  1584,  0x80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_6,  bakuhatsu,  0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffScaleKey(  spep_6+200,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_6+200,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_6+200,  bakuhatsu,  0);
setEffAlphaKey(  spep_6+200,  bakuhatsu,  255);

playSe(  spep_6, SE_10);

-- ダメージ表示
dealDamage(spep_6+40);

entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+140);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI(0, 0);

------------------------------------------------------
-- 構え(140F)
------------------------------------------------------

spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+19,  shuchusen1,  1.54,  1.54);
setEffMoveKey(  spep_1+19,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+19,  shuchusen1,  0);
setEffAlphaKey(  spep_1+19,  shuchusen1,  255);
setEffScaleKey(  spep_1+140,  shuchusen1,  1.54,  1.54);
setEffMoveKey(  spep_1+140,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+140,  shuchusen1,  0);
setEffAlphaKey(  spep_1+140,  shuchusen1,  255);

-- 書き文字エントリー
ctzuzu = entryEffectLife( spep_1+18,  10013, 38, 0x100, -1, 0, 20.1, 249.9 ); --ズズズンッ
setEffShake(  spep_1+18,  ctzuzu,  38,  15);
setEffMoveKey( spep_1+18, ctzuzu, 20.1, 249.9 , 0 );
setEffMoveKey( spep_1+20, ctzuzu, 23.6, 299.4 , 0 );
setEffMoveKey( spep_1+22, ctzuzu, 40.2, 359.5 , 0 );
setEffMoveKey( spep_1+24, ctzuzu, 31.1, 355.3 , 0 );
setEffMoveKey( spep_1+26, ctzuzu, 41, 365.1 , 0 );
setEffMoveKey( spep_1+28, ctzuzu, 31, 354.8 , 0 );
setEffMoveKey( spep_1+30, ctzuzu, 41, 364.8 , 0 );
setEffMoveKey( spep_1+56, ctzuzu, 41, 364.8 , 0 );
setEffScaleKey( spep_1+18, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+20, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+22, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+24, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+56, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+18, ctzuzu, -5 );
setEffRotateKey( spep_1+56, ctzuzu, -5 );
setEffAlphaKey( spep_1+18, ctzuzu, 255 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+40, ctzuzu, 215 );
setEffAlphaKey( spep_1+42, ctzuzu, 164 );
setEffAlphaKey( spep_1+44, ctzuzu, 121 );
setEffAlphaKey( spep_1+46, ctzuzu, 84 );
setEffAlphaKey( spep_1+48, ctzuzu, 54 );
setEffAlphaKey( spep_1+50, ctzuzu, 30 );
setEffAlphaKey( spep_1+51, ctzuzu, 0 );
setEffAlphaKey( spep_1+53, ctzuzu, 0 );
setEffAlphaKey( spep_1+56, ctzuzu, 0 );

kamae = entryEffect(  spep_1,  SP_04,  0x80,  -1,  0,  0,  0);  --構え溜め

setEffScaleKey(  spep_1,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1,  kamae,  0,  0);
setEffRotateKey(  spep_1,  kamae,  0);
setEffAlphaKey(  spep_1,  kamae,  255);
setEffScaleKey(  spep_1+140,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_1+140,  kamae,  0,  0);
setEffRotateKey(  spep_1+140,  kamae,  0);
setEffAlphaKey(  spep_1+140,  kamae,  255);

playSe(  spep_1+21,  SE_01); --気を溜める

-- カットイン
--speff = entryEffect(  spep_1+42,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+42,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+54, 190006, 71, 0x100, -1, 0, 80, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+54,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+54,  ctgogo,  80,  510);
setEffRotateKey(  spep_1+54,  ctgogo,  0);
setEffScaleKey(  spep_1+125,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+125,  ctgogo,  80,  510);
setEffRotateKey(  spep_1+125,  ctgogo,  0);

playSe(  spep_1+42,  SE_04);  --カットイン音

entryFadeBg( spep_1, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_1+17, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+126, 12, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ダッシュ(160F)
------------------------------------------------------

spep_2 = spep_1+140;

shuchusen2 = entryEffectLife( spep_2, 906, 160, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.3,  1.7);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+160,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+160,  shuchusen2,  1.3,  1.7);
setEffRotateKey(  spep_2+160,  shuchusen2,  0);
setEffAlphaKey(  spep_2+160,  shuchusen2,  255);

dash = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --ダッシュ

setEffScaleKey(  spep_2,  dash,  -1.0,  1.0);
setEffMoveKey(  spep_2,  dash,  0,  0);
setEffRotateKey(  spep_2,  dash,  0);
setEffAlphaKey(  spep_2,  dash,  255);
setEffScaleKey(  spep_2+160,  dash,  -1.0,  1.0);
setEffMoveKey(  spep_2+160,  dash,  0,  0);
setEffRotateKey(  spep_2+160,  dash,  0);
setEffAlphaKey(  spep_2+160,  dash,  255);

playSe(  spep_2,  SE_01);

entryFadeBg( spep_2, 0, 160, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_2+149, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_3 = spep_2+160;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+81, 5, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 放つ(110F)
------------------------------------------------------

spep_4 = spep_3+90;

shuchusen4 = entryEffectLife( spep_4, 906, 110, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+110,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+110,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4+110,  shuchusen4,  0);
setEffAlphaKey(  spep_4+110,  shuchusen4,  255);

ryu1 = entryEffectLife( spep_4, 921, 110, 0x80,  -1, 0,  0,  0);  --流線

setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffScaleKey(  spep_4,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4,  ryu1,  -132);
setEffAlphaKey(  spep_4,  ryu1,  0);
setEffMoveKey(  spep_4+34,  ryu1,  0,  0);
setEffScaleKey(  spep_4+34,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4+34,  ryu1,  -132);
setEffAlphaKey(  spep_4+34,  ryu1,  0);
setEffMoveKey(  spep_4+35,  ryu1,  0,  0);
setEffScaleKey(  spep_4+35,  ryu1,  3.7,  2.8);
setEffRotateKey(  spep_4+35,  ryu1,  -132);
setEffAlphaKey(  spep_4+35,  ryu1,  255);
setEffMoveKey(  spep_4+41,  ryu1,  0,  0);
setEffScaleKey(  spep_4+41,  ryu1,  1.52,  1.4);
setEffRotateKey(  spep_4+41,  ryu1,  -132);
setEffAlphaKey(  spep_4+41,  ryu1,  255);
setEffMoveKey(  spep_4+110,  ryu1,  0,  0);
setEffScaleKey(  spep_4+110,  ryu1,  1.52,  1.4);
setEffRotateKey(  spep_4+110,  ryu1,  -132);
setEffAlphaKey(  spep_4+110,  ryu1,  255);

hanatsu = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffScaleKey(  spep_4+110,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4+110,  hanatsu,  0,  0);
setEffRotateKey(  spep_4+110,  hanatsu,  0);
setEffAlphaKey(  spep_4+110,  hanatsu,  255);

entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 255);          -- 黒　背景

playSe(  spep_4+33,  SE_07);

--書き文字エントリー
ctzuo = entryEffectLife( spep_4+33,  10012, 71, 0X100, -1, 0, 78.6, 180.5 );  --ズオッ
setEffShake(  spep_4+33,  ctzuo,  70,  20);
setEffMoveKey( spep_4+33, ctzuo, 78.6, 180.5 , 0 );
setEffMoveKey( spep_4+36, ctzuo, 104.8, 208.5 , 0 );
setEffMoveKey( spep_4+38, ctzuo, 117.6, 249.8 , 0 );
setEffMoveKey( spep_4+40, ctzuo, 153.2, 268.5 , 0 );
setEffMoveKey( spep_4+42, ctzuo, 137.2, 284.5 , 0 );
setEffMoveKey( spep_4+94, ctzuo, 137.2, 284.5 , 0 );
setEffMoveKey( spep_4+96, ctzuo, 172.3, 265.1 , 0 );
setEffMoveKey( spep_4+98, ctzuo, 165.9, 287.3 , 0 );
setEffMoveKey( spep_4+100, ctzuo, 210.6, 258.3 , 0 );
setEffMoveKey( spep_4+102, ctzuo, 194.6, 290 , 0 );
setEffMoveKey( spep_4+104, ctzuo, 209, 291.4 , 0 );
setEffScaleKey( spep_4+33, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4+35, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4+37, ctzuo, 1.95, 1.95 );
setEffScaleKey( spep_4+39, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4+94, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4+96, ctzuo, 3.56, 3.56 );
setEffScaleKey( spep_4+98, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_4+100, ctzuo, 5.2, 5.2 );
setEffScaleKey( spep_4+102, ctzuo, 6.02, 6.02 );
setEffScaleKey( spep_4+104, ctzuo, 6.84, 6.84 );
setEffRotateKey( spep_4+33, ctzuo, 27.2 );
setEffRotateKey( spep_4+104, ctzuo, 27.2 );
setEffAlphaKey( spep_4+33, ctzuo, 255 );
setEffAlphaKey( spep_4+94, ctzuo, 255 );
setEffAlphaKey( spep_4+96, ctzuo, 204 );
setEffAlphaKey( spep_4+98, ctzuo, 153 );
setEffAlphaKey( spep_4+100, ctzuo, 102 );
setEffAlphaKey( spep_4+102, ctzuo, 51 );
setEffAlphaKey( spep_4+104, ctzuo, 0 );


-- 敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 102 );  --構え

setMoveKey( spep_4, 1, 374.4, -300.6 , 0 );
setMoveKey( spep_4+2, 1, 365.1, -295.3 , 0 );
setMoveKey( spep_4+4, 1, 355.7, -289.9 , 0 );
setMoveKey( spep_4+6, 1, 346.4, -284.6 , 0 );
setMoveKey( spep_4+8, 1, 337.1, -279.3 , 0 );
setMoveKey( spep_4+10, 1, 327.7, -273.9 , 0 );
setScaleKey( spep_4, 1, 2.03, 2.03 );
setScaleKey( spep_4+2, 1, 2.02, 2.02 );
setScaleKey( spep_4+4, 1, 2, 2 );
setScaleKey( spep_4+6, 1, 1.99, 1.99 );
setScaleKey( spep_4+8, 1, 1.97, 1.97 );
setScaleKey( spep_4+10, 1, 1.96, 1.96 );
setRotateKey( spep_4, 1, 0 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+10; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge, 0, -2000,  -2000, 0); --味方位置
setMoveKey( SP_dodge+1, 0, -2000, -2000, 0); --味方位置
setMoveKey( SP_dodge+2, 0, -2000, -2000, 0); --味方位置

setMoveKey( SP_dodge, 1, 374.4, -300.6 , 0); --敵位置
setMoveKey( SP_dodge+2, 1, 365.1, -295.3 , 0); --敵位置
setMoveKey( SP_dodge+4, 1, 355.7, -289.9 , 0 ); --敵位置
setMoveKey( SP_dodge+6, 1, 346.4, -284.6 , 0 ); --敵位置
setMoveKey( SP_dodge+8, 1, 337.1, -279.3 , 0 ); --敵位置
setMoveKey( SP_dodge+9, 1, 2000, -2000 , 0 ); --敵位置
setMoveKey( SP_dodge+10, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+11, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+20, 1, 2000, -2000 , 0 ); --敵位置
--setMoveKey( SP_dodge+21, 1, 2000, -2000 , 0 ); --敵位置
setScaleKey( SP_dodge, 1, 2.03, 2.03 );
setScaleKey( SP_dodge+2, 1, 2.02, 2.02 );
setScaleKey( SP_dodge+4, 1, 2, 2 );
setScaleKey( SP_dodge+6, 1, 1.99, 1.99 );
setScaleKey( SP_dodge+8, 1, 1.97, 1.97 );
setScaleKey( SP_dodge+10, 1, 1.96, 1.96 );
setScaleKey( SP_dodge+20, 1, 1.96, 1.96 );


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------

--敵の動きつづき
setMoveKey( spep_4+12, 1, 318.4, -268.6 , 0 );
setMoveKey( spep_4+14, 1, 309.1, -263.3 , 0 );
setMoveKey( spep_4+16, 1, 299.7, -257.9 , 0 );
setMoveKey( spep_4+18, 1, 290.4, -252.6 , 0 );
setMoveKey( spep_4+20, 1, 281.1, -247.3 , 0 );
setMoveKey( spep_4+22, 1, 271.8, -241.9 , 0 );
setMoveKey( spep_4+24, 1, 262.5, -236.6 , 0 );
setMoveKey( spep_4+26, 1, 253.1, -231.3 , 0 );
setMoveKey( spep_4+27, 1, 2000, -2000 , 0 );
setMoveKey( spep_4+110, 1, 2000, -2000 , 0 );
setScaleKey( spep_4+12, 1, 1.94, 1.94 );
setScaleKey( spep_4+14, 1, 1.93, 1.93 );
setScaleKey( spep_4+16, 1, 1.91, 1.91 );
setScaleKey( spep_4+18, 1, 1.9, 1.9 );
setScaleKey( spep_4+20, 1, 1.88, 1.88 );
setScaleKey( spep_4+22, 1, 1.87, 1.87 );
setScaleKey( spep_4+24, 1, 1.85, 1.85 );
setScaleKey( spep_4+26, 1, 1.84, 1.84 );
setScaleKey( spep_4+110, 1, 1.84, 1.84 );
setRotateKey( spep_4+24, 1, 0 );
setRotateKey( spep_4+110, 1, 0 );


entryFade( spep_4+23, 0, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+99, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_5 = spep_4+110;

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ctgyan, 1.8, 1.8);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5+10, ctgyan, 3.8, 3.8);
setEffScaleKey( spep_5+58, ctgyan, 4.3, 4.3);
setEffAlphaKey( spep_5+58, ctgyan, 255);
setEffShake( spep_5, ctgyan, 58, 10);

gayn = entryEffect( spep_5, 190000, 0x80,  -1, 0,  0,  0);   --ギャン（青）

setEffScaleKey(  spep_5,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_5,  gayn,  0,  0);
setEffRotateKey(  spep_5,  gayn,  0);
setEffAlphaKey(  spep_5,  gayn,  255);
setEffScaleKey(  spep_5+60,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_5+60,  gayn,  0,  0);
setEffRotateKey(  spep_5+60,  gayn,  0);
setEffAlphaKey(  spep_5+60,  gayn,  255);

playSe(  spep_5, SE_09);

entryFade( spep_5+20, 38, 6, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発(200F)
------------------------------------------------------

spep_6 = spep_5+60;

bakuhatsu = entryEffect(  spep_6,  1584,  0x80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_6,  bakuhatsu,  0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffScaleKey(  spep_6+200,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_6+200,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_6+200,  bakuhatsu,  0);
setEffAlphaKey(  spep_6+200,  bakuhatsu,  255);

playSe(  spep_6, SE_10);

-- ダメージ表示
dealDamage(spep_6+40);

entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+140);

end
