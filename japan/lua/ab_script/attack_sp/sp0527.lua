--七星龍

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
SP_01 = 152923;  --アイドリング
SP_01r = 152924;  --アイドリング
SP_02 = 152925;  --構え
SP_03 = 152926;  --構え背景
SP_04 = 152927;  --発射
SP_05 = 152928;  --発射背景
SP_06 = 152929;  --気弾伸びる 
SP_07 = 152930;  --気弾伸びる背景 
SP_08 = 152931;  --爆破

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
--  アイドリング(30F)
------------------------------------------------------
spep_1 = 0;

--***アイドリング***
idoling = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  idoling,  1.0,  1.0);
setEffScaleKey(  spep_1+30,  idoling,  1.0,  1.0);
setEffMoveKey(  spep_1,  idoling,  0,  0);
setEffMoveKey(  spep_1+30,  idoling,  0,  0);
setEffRotateKey(  spep_1,  idoling,  0);
setEffRotateKey(  spep_1+30,  idoling,  0);
setEffAlphaKey(  spep_1,  idoling,  255);
setEffAlphaKey(  spep_1+30,  idoling,  255);

entryFade(  spep_1+24,  4,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--  構え(100F)
------------------------------------------------------
spep_2 = spep_1+30;

kamaeBG = entryEffectLife(  spep_2,  SP_03, 100, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_2,  kamaeBG,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  kamaeBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  kamaeBG,  0,  0);
setEffMoveKey(  spep_2+100,  kamaeBG,  0,  0);
setEffRotateKey(  spep_2,  kamaeBG,  0);
setEffRotateKey(  spep_2+100,  kamaeBG,  0);
setEffAlphaKey(  spep_2,  kamaeBG,  255);
setEffAlphaKey(  spep_2+100,  kamaeBG,  255);


--***構え***
kamae = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_2,  kamae,  0,  0);
setEffMoveKey(  spep_2+100,  kamae,  0,  0);
setEffRotateKey(  spep_2,  kamae,  0);
setEffRotateKey(  spep_2+100,  kamae,  0);
setEffAlphaKey(  spep_2,  kamae,  255);
setEffAlphaKey(  spep_2+100,  kamae,  255);


--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+100,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+100,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+100,  shuchusen2,  255);

entryFadeBg(  spep_2,  0,  100,  0,  0,  0,  0,  255);  --黒

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

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

--***カットイン***
speff1 = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_2+16,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_2 + 16, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_2 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 70, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 86, ctgogo, 1.17, 1.17 );
setEffRotateKey(  spep_2 + 16,  ctgogo,  0);
setEffRotateKey(  spep_2 + 86,  ctgogo,  0);
setEffAlphaKey(  spep_2 + 16,  ctgogo,  255);
setEffAlphaKey(  spep_2 + 70,  ctgogo,  255);
setEffAlphaKey(  spep_2 + 86,  ctgogo,  0);

--***SE***
playSe(  spep_2,  17); 
setSeVolume(  spep_2,  17,  80);
playSe(  spep_2+16,  SE_04);  --カットイン

entryFade(  spep_2+86,  10,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2 +100;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade(  spep_3+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***
ctzuo = entryEffectLife( spep_4 + 60,  10012, 44, 0x100, -1, 0, 76, 259.9 );  --ズオ

setEffShake(  spep_4 + 60,  ctzuo,  44,  10);  --揺れ
setEffMoveKey( spep_4 + 60, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 + 96, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_4 + 98, ctzuo, 157.5, 334.3 , 0 );
setEffMoveKey( spep_4 + 100, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo, 196, 319.9 , 0 );
setEffScaleKey( spep_4 + 60, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 62, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 + 94, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 + 96, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_4 + 98, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_4 + 100, ctzuo, 4.02, 4.02 );
setEffScaleKey( spep_4 + 102, ctzuo, 4.26, 4.26 );
setEffScaleKey( spep_4 + 104, ctzuo, 4.9, 4.9 );
setEffRotateKey( spep_4 + 60, ctzuo, 20 );
setEffRotateKey( spep_4 + 104, ctzuo, 20 );
setEffAlphaKey( spep_4 + 60, ctzuo, 255 );
setEffAlphaKey( spep_4 + 94, ctzuo, 255 );
setEffAlphaKey( spep_4 + 96, ctzuo, 204 );
setEffAlphaKey( spep_4 + 98, ctzuo, 153 );
setEffAlphaKey( spep_4 + 100, ctzuo, 102 );
setEffAlphaKey( spep_4 + 102, ctzuo, 51 );
setEffAlphaKey( spep_4 + 104, ctzuo, 0 );

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.5,  1.5);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

hassyaBG = entryEffectLife(  spep_4,  SP_05, 120, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  hassyaBG,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  hassyaBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  hassyaBG,  0,  0);
setEffMoveKey(  spep_4+120,  hassyaBG,  0,  0);
setEffRotateKey(  spep_4,  hassyaBG,  0);
setEffRotateKey(  spep_4+120,  hassyaBG,  0);
setEffAlphaKey(  spep_4,  hassyaBG,  50);
setEffAlphaKey(  spep_4+120,  hassyaBG,  50);

--***溜めから発射***
hassya = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  hassya,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_4,  hassya,  0,  0);
setEffMoveKey(  spep_4+120,  hassya,  0,  0);
setEffRotateKey(  spep_4,  hassya,  0);
setEffRotateKey(  spep_4+120,  hassya,  0);
setEffAlphaKey(  spep_4,  hassya,  255);
setEffAlphaKey(  spep_4+120,  hassya,  255);

entryFadeBg(  spep_4,  0,  120,  0,  0,  0,  0,  255);  --黒

SE = playSe(  spep_4,  17);
stopSe(  spep_4+58,  SE,  2);
playSe(  spep_4+60,  SE_06);
setSeVolume(  spep_4,  SE_06,  110);

entryFade(  spep_4+90,  28,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------
spep_5 = spep_4 +120;

--***書き文字***
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 60, 0x100, -1, 0, 98.1, 284 );  --ズドド
setEffShake(  spep_5,  ctzudodo,  60, 20);  --揺れ
setEffMoveKey( spep_5 + 0,  ctzudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_5 + 60,  ctzudodo, 98.1, 284 , 0 );
setEffScaleKey( spep_5 + 0,  ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_5 + 60,  ctzudodo, 3.5, 3.5 );
setEffRotateKey( spep_5 + 0,  ctzudodo, 60.2 );
setEffRotateKey( spep_5 + 60,  ctzudodo, 60.2 );
setEffAlphaKey( spep_5 + 0,  ctzudodo, 255 );
setEffAlphaKey( spep_5 + 60,  ctzudodo, 255 );

--***背景***
semaruBG = entryEffect(  spep_5,  SP_07,  0x80,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+60,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+60,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+60,  semaruBG,  255);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 60, 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5 + 52, 1, 105 );
setShakeChara(  spep_5,  1,  60,  20);  --揺れ

setMoveKey( spep_5 + 0, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_5 + 48, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_5 + 51, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_5 + 52, 1, 42, 41.7 , 0 );
setMoveKey( spep_5 + 54, 1, 36, 43.2 , 0 );
setMoveKey( spep_5 + 56, 1, 30.1, 53 , 0 );
setMoveKey( spep_5 + 58, 1, 24.5, 55 , 0 );
setMoveKey( spep_5 + 60, 1, 19, 65.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 28, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 30, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 36, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 38, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 42, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 48, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 51, 1, 1.66, 1.66 );
setScaleKey( spep_5 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 54, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 58, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 60, 1, 0.33, 0.33 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 60, 1, 0 );


--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.5,  1.5);
setEffScaleKey(  spep_5+60,  shuchusen5,  1.5,  1.5);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+60,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+60,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+60,  shuchusen5,  255);


--***溜めから発射***
semaru = entryEffect(  spep_5,  SP_06,  0x100,  -1,  0,  0,  0);  --発射

setEffScaleKey(  spep_5,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+60,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+60,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+60,  semaru,  255);

playSe(  spep_5,  SE_07)

entryFade(  spep_5+50,  8,  8,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6 = spep_5+60;

gyan = entryEffectLife(  spep_6,  190000, 60, 0x80,  -1,  0,  0,  0);  --青ギャン

setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffMoveKey(  spep_6,  gyan,  0,  0);
setEffMoveKey(  spep_6+60,  gyan,  0,  0);
setEffRotateKey(  spep_6,  gyan,  0);
setEffRotateKey(  spep_6+60,  gyan,  0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


--***書き文字***
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャン

setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 7.1, 306.8 , 0 );
setEffScaleKey( spep_6 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.01, 3.01 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.03, 3.03 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.04, 3.04 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.05, 3.05 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.07, 3.07 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.08, 3.08 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.09, 3.09 );
setEffScaleKey( spep_6 + 32, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 34, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 36, ctgyan, 3.11, 3.11 );
setEffScaleKey( spep_6 + 38, ctgyan, 3.12, 3.12 );
setEffScaleKey( spep_6 + 40, ctgyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 42, ctgyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 44, ctgyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 46, ctgyan, 3.15, 3.15 );
setEffScaleKey( spep_6 + 48, ctgyan, 3.16, 3.16 );
setEffScaleKey( spep_6 + 50, ctgyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 52, ctgyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 56, ctgyan, 3.19, 3.19 );
setEffScaleKey( spep_6 + 58, ctgyan, 3.2, 3.2 );
setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );
setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

playSe(  spep_6,  1023);
setSeVolume(  spep_6,  1023,  110);

entryFade(  spep_6+22,  36,  4,  30,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- 爆発(200F)
------------------------------------------------------
spep_7 = spep_6+60

--***爆発***+
bakuhastu = entryEffect(  spep_7,  SP_08,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_7,  bakuhastu,  1.0,  1.0);
setEffScaleKey(  spep_7+200,  bakuhastu,  1.0,  1.0);
setEffMoveKey(  spep_7,  bakuhastu,  0,  0);
setEffMoveKey(  spep_7+200,  bakuhastu,  0,  0);
setEffRotateKey(  spep_7,  bakuhastu,  0);
setEffRotateKey(  spep_7+200,  bakuhastu,  0);
setEffAlphaKey(  spep_7,  bakuhastu,  255);
setEffAlphaKey(  spep_7+200,  bakuhastu,  255);

playSe(  spep_7,  1024);

-- ダメージ表示
dealDamage(spep_7+70);
endPhase(spep_7+180);

else

------------------------------------------------------
--  アイドリング(30F)
------------------------------------------------------
spep_1 = 0;

--***アイドリング***
idoling = entryEffect(  spep_1,  SP_01r,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  idoling,  -1.0,  1.0);
setEffScaleKey(  spep_1+30,  idoling,  -1.0,  1.0);
setEffMoveKey(  spep_1,  idoling,  0,  0);
setEffMoveKey(  spep_1+30,  idoling,  0,  0);
setEffRotateKey(  spep_1,  idoling,  0);
setEffRotateKey(  spep_1+30,  idoling,  0);
setEffAlphaKey(  spep_1,  idoling,  255);
setEffAlphaKey(  spep_1+30,  idoling,  255);

entryFade(  spep_1+24,  4,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
--  構え(100F)
------------------------------------------------------
spep_2 = spep_1+30;

kamaeBG = entryEffectLife(  spep_2,  SP_03, 100, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_2,  kamaeBG,  -1.0,  1.0);
setEffScaleKey(  spep_2+100,  kamaeBG,  -1.0,  1.0);
setEffMoveKey(  spep_2,  kamaeBG,  0,  0);
setEffMoveKey(  spep_2+100,  kamaeBG,  0,  0);
setEffRotateKey(  spep_2,  kamaeBG,  0);
setEffRotateKey(  spep_2+100,  kamaeBG,  0);
setEffAlphaKey(  spep_2,  kamaeBG,  255);
setEffAlphaKey(  spep_2+100,  kamaeBG,  255);

--***構え***
kamae = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kamae,  -1.0,  1.0);
setEffScaleKey(  spep_2+100,  kamae,  -1.0,  1.0);
setEffMoveKey(  spep_2,  kamae,  0,  0);
setEffMoveKey(  spep_2+100,  kamae,  0,  0);
setEffRotateKey(  spep_2,  kamae,  0);
setEffRotateKey(  spep_2+100,  kamae,  0);
setEffAlphaKey(  spep_2,  kamae,  255);
setEffAlphaKey(  spep_2+100,  kamae,  255);

--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+100,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+100,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+100,  shuchusen2,  255);

entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 255); --黒


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

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

--***カットイン***
--speff1 = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_2+16,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_2 + 16, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_2 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 70, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 86, ctgogo, -1.17, 1.17 );
setEffRotateKey(  spep_2 + 16,  ctgogo,  0);
setEffRotateKey(  spep_2 + 86,  ctgogo,  0);
setEffAlphaKey(  spep_2 + 16,  ctgogo,  255);
setEffAlphaKey(  spep_2 + 70,  ctgogo,  255);
setEffAlphaKey(  spep_2 + 86,  ctgogo,  0);

--***SE***
playSe(  spep_2,  17); 
setSeVolume(  spep_2,  17,  80);
playSe(  spep_2+16,  SE_04);  --カットイン

entryFade(  spep_2+86,  10,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2 +100;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade(  spep_3+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***
ctzuo = entryEffectLife( spep_4 + 60,  10012, 44, 0x100, -1, 0, 76, 259.9 );  --ズオ

setEffShake(  spep_4 + 60,  ctzuo,  44,  10);  --揺れ
setEffMoveKey( spep_4 + 60, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_4 + 96, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_4 + 98, ctzuo, 157.5, 334.3 , 0 );
setEffMoveKey( spep_4 + 100, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo, 196, 319.9 , 0 );
setEffScaleKey( spep_4 + 60, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 62, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 + 94, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 + 96, ctzuo, 3.54, 3.54 );
setEffScaleKey( spep_4 + 98, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_4 + 100, ctzuo, 4.02, 4.02 );
setEffScaleKey( spep_4 + 102, ctzuo, 4.26, 4.26 );
setEffScaleKey( spep_4 + 104, ctzuo, 4.9, 4.9 );
setEffRotateKey( spep_4 + 60, ctzuo, 20 );
setEffRotateKey( spep_4 + 104, ctzuo, 20 );
setEffAlphaKey( spep_4 + 60, ctzuo, 255 );
setEffAlphaKey( spep_4 + 94, ctzuo, 255 );
setEffAlphaKey( spep_4 + 96, ctzuo, 204 );
setEffAlphaKey( spep_4 + 98, ctzuo, 153 );
setEffAlphaKey( spep_4 + 100, ctzuo, 102 );
setEffAlphaKey( spep_4 + 102, ctzuo, 51 );
setEffAlphaKey( spep_4 + 104, ctzuo, 0 );

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.5,  1.5);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

hassyaBG = entryEffectLife(  spep_4,  SP_05, 120, 0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  hassyaBG,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  hassyaBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  hassyaBG,  0,  0);
setEffMoveKey(  spep_4+120,  hassyaBG,  0,  0);
setEffRotateKey(  spep_4,  hassyaBG,  0);
setEffRotateKey(  spep_4+120,  hassyaBG,  0);
setEffAlphaKey(  spep_4,  hassyaBG,  50);
setEffAlphaKey(  spep_4+120,  hassyaBG,  50);

--***溜めから発射***
hassya = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  hassya,  -1.0,  1.0);
setEffScaleKey(  spep_4+120,  hassya,  -1.0,  1.0);
setEffMoveKey(  spep_4,  hassya,  0,  0);
setEffMoveKey(  spep_4+120,  hassya,  0,  0);
setEffRotateKey(  spep_4,  hassya,  0);
setEffRotateKey(  spep_4+120,  hassya,  0);
setEffAlphaKey(  spep_4,  hassya,  255);
setEffAlphaKey(  spep_4+120,  hassya,  255);

entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255); --黒

SE = playSe(  spep_4,  17);
stopSe(  spep_4+58,  SE,  2);
playSe(  spep_4+60,  SE_06);
setSeVolume(  spep_4,  SE_06,  110);

entryFade(  spep_4+90,  28,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------
spep_5 = spep_4 +120;

--***書き文字***
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 60, 0x100, -1, 0, 98.1, 284 );  --ズドド
setEffShake(  spep_5,  ctzudodo,  60,  20);  --揺れ
setEffMoveKey( spep_5 + 0,  ctzudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_5 + 60,  ctzudodo, 98.1, 284 , 0 );
setEffScaleKey( spep_5 + 0,  ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_5 + 60,  ctzudodo, 3.5, 3.5 );
setEffRotateKey( spep_5 + 0,  ctzudodo, 15.2 );
setEffRotateKey( spep_5 + 60,  ctzudodo, 15.2 );
setEffAlphaKey( spep_5 + 0,  ctzudodo, 255 );
setEffAlphaKey( spep_5 + 60,  ctzudodo, 255 );

--***背景***
semaruBG = entryEffect(  spep_5,  SP_07,  0x80,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+60,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+60,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+60,  semaruBG,  255);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 60, 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 117 );
changeAnime( spep_5 + 52, 1, 105 );
setShakeChara(  spep_5,  1,  60,  20);  --揺れ

setMoveKey( spep_5 + 0, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_5 + 48, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_5 + 51, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_5 + 52, 1, 42, 41.7 , 0 );
setMoveKey( spep_5 + 54, 1, 36, 43.2 , 0 );
setMoveKey( spep_5 + 56, 1, 30.1, 53 , 0 );
setMoveKey( spep_5 + 58, 1, 24.5, 55 , 0 );
setMoveKey( spep_5 + 60, 1, 19, 65.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 12, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 22, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 28, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 30, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 36, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 38, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 42, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 48, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 51, 1, 1.66, 1.66 );
setScaleKey( spep_5 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 54, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 58, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 60, 1, 0.33, 0.33 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 60, 1, 0 );


--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.5,  1.5);
setEffScaleKey(  spep_5+60,  shuchusen5,  1.5,  1.5);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+60,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+60,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+60,  shuchusen5,  255);


--***溜めから発射***
semaru = entryEffect(  spep_5,  SP_06,  0x100,  -1,  0,  0,  0);  --発射

setEffScaleKey(  spep_5,  semaru,  -1.0,  1.0);
setEffScaleKey(  spep_5+60,  semaru,  -1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+60,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+60,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+60,  semaru,  255);

playSe(  spep_5,  SE_07)

entryFade(  spep_5+50,  8,  8,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6 = spep_5+60;

gyan = entryEffectLife(  spep_6,  190000, 60, 0x80,  -1,  0,  0,  0);  --青ギャン

setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffMoveKey(  spep_6,  gyan,  0,  0);
setEffMoveKey(  spep_6+60,  gyan,  0,  0);
setEffRotateKey(  spep_6,  gyan,  0);
setEffRotateKey(  spep_6+60,  gyan,  0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


--***書き文字***
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャン

setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 7.1, 306.8 , 0 );
setEffScaleKey( spep_6 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.01, 3.01 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.03, 3.03 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.04, 3.04 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.05, 3.05 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.07, 3.07 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.08, 3.08 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.09, 3.09 );
setEffScaleKey( spep_6 + 32, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 34, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 36, ctgyan, 3.11, 3.11 );
setEffScaleKey( spep_6 + 38, ctgyan, 3.12, 3.12 );
setEffScaleKey( spep_6 + 40, ctgyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 42, ctgyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 44, ctgyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 46, ctgyan, 3.15, 3.15 );
setEffScaleKey( spep_6 + 48, ctgyan, 3.16, 3.16 );
setEffScaleKey( spep_6 + 50, ctgyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 52, ctgyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctgyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 56, ctgyan, 3.19, 3.19 );
setEffScaleKey( spep_6 + 58, ctgyan, 3.2, 3.2 );
setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );
setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

playSe(  spep_6,  1023);
setSeVolume(  spep_6,  1023,  110);

entryFade(  spep_6+22,  36,  4,  30,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- 爆発(200F)
------------------------------------------------------
spep_7 = spep_6+60

--***爆発***+
bakuhastu = entryEffect(  spep_7,  SP_08,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_7,  bakuhastu,  -1.0,  1.0);
setEffScaleKey(  spep_7+200,  bakuhastu,  -1.0,  1.0);
setEffMoveKey(  spep_7,  bakuhastu,  0,  0);
setEffMoveKey(  spep_7+200,  bakuhastu,  0,  0);
setEffRotateKey(  spep_7,  bakuhastu,  0);
setEffRotateKey(  spep_7+200,  bakuhastu,  0);
setEffAlphaKey(  spep_7,  bakuhastu,  255);
setEffAlphaKey(  spep_7+200,  bakuhastu,  255);

playSe(  spep_7,  1024);

-- ダメージ表示
dealDamage(spep_7+70);
endPhase(spep_7+180);

end
