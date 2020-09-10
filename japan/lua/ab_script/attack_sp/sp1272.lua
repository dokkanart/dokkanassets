--ベジータ_スピリットブレイクキャノン

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
SP_01 = 153186  --気溜め
SP_02 = 153187  --突進から格闘
SP_03 = 153188  --突進真ん中
SP_04 = 153189  --格闘背景（流線）
SP_05 = 153190  --蹴りからの肘鉄
SP_06 = 153191  --蹴り背景（流線）
SP_07 = 153192  --落下手前
SP_08 = 153193  --落下奥



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
-- 気溜め(80F)
------------------------------------------------------
spep_1 = 0;

ct_zuo = entryEffectLife( spep_1 + 0,  10012, 72, 0x100, -1, 0, 68.4, 251.6 );

setEffShake(  spep_1,  ct_zuo,  72,  20);  --揺れ
setEffMoveKey( spep_1 + 0, ct_zuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_1 + 2, ct_zuo, 86.2, 270.7 , 0 );
setEffMoveKey( spep_1 + 4, ct_zuo, 94.9, 299 , 0 );
setEffMoveKey( spep_1 + 6, ct_zuo, 119.2, 311.6 , 0 );
setEffMoveKey( spep_1 + 8, ct_zuo, 108.2, 322.5 , 0 );
setEffMoveKey( spep_1 + 66, ct_zuo, 130.1, 320.3 , 0 );
setEffMoveKey( spep_1 + 68, ct_zuo, 122.4, 347.7 , 0 );
setEffMoveKey( spep_1 + 70, ct_zuo, 152.1, 337.7 , 0 );
setEffMoveKey( spep_1 + 72, ct_zuo, 163.1, 346.3 , 0 );
setEffScaleKey( spep_1 + 0, ct_zuo, 0.23, 0.23 );
setEffScaleKey( spep_1 + 2, ct_zuo, 0.78, 0.78 );
setEffScaleKey( spep_1 + 4, ct_zuo, 1.32, 1.32 );
setEffScaleKey( spep_1 + 6, ct_zuo, 1.87, 1.87 );
setEffScaleKey( spep_1 + 64, ct_zuo, 1.87, 1.87 );
setEffScaleKey( spep_1 + 66, ct_zuo, 2.53, 2.53 );
setEffScaleKey( spep_1 + 68, ct_zuo, 3.19, 3.19 );
setEffScaleKey( spep_1 + 70, ct_zuo, 3.86, 3.86 );
setEffScaleKey( spep_1 + 72, ct_zuo, 4.52, 4.52 );
setEffRotateKey( spep_1 + 0, ct_zuo, 27.2 );
setEffRotateKey( spep_1 + 72, ct_zuo, 27.2 );
setEffAlphaKey( spep_1 + 0, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 64, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 66, ct_zuo, 191 );
setEffAlphaKey( spep_1 + 68, ct_zuo, 128 );
setEffAlphaKey( spep_1 + 70, ct_zuo, 64 );
setEffAlphaKey( spep_1 + 72, ct_zuo, 0 );

--***集中線***--
shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.08,  1.98);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.08,  1.98);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+80,  shuchusen1,  255);

--***気溜め***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+80,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+80,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+80,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+80,  kitame,  255);

entryFadeBg(  spep_1,  40,  40,  0,  0,  0,  0,  200);  --薄暗い黒

--***SE***--
playSe(  spep_1,  1035);  --気溜め

--***エフェクト***--
entryFade(  spep_1+72,  6,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 突進からの格闘(330F)
------------------------------------------------------
spep_2 = spep_1 +80

a = 3
b = 0.5

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  914, 260, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 260, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen1, 11.67, 1.23 );
setEffScaleKey( spep_2 + 260, ryusen1, 11.67, 1.23 );
setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 260, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 38 );
setEffAlphaKey( spep_2 + 2, ryusen1, 60 );
setEffAlphaKey( spep_2 + 4, ryusen1, 82 );
setEffAlphaKey( spep_2 + 6, ryusen1, 104 );
setEffAlphaKey( spep_2 + 8, ryusen1, 126 );
setEffAlphaKey( spep_2 + 10, ryusen1, 147 );
setEffAlphaKey( spep_2 + 12, ryusen1, 169 );
setEffAlphaKey( spep_2 + 14, ryusen1, 191 );
setEffAlphaKey( spep_2 + 242, ryusen1, 191 );
setEffAlphaKey( spep_2 + 244, ryusen1, 170 );
setEffAlphaKey( spep_2 + 246, ryusen1, 149 );
setEffAlphaKey( spep_2 + 248, ryusen1, 128 );
setEffAlphaKey( spep_2 + 250, ryusen1, 106 );
setEffAlphaKey( spep_2 + 252, ryusen1, 85 );
setEffAlphaKey( spep_2 + 254, ryusen1, 64 );
setEffAlphaKey( spep_2 + 256, ryusen1, 42 );
setEffAlphaKey( spep_2 + 258, ryusen1, 21 );
setEffAlphaKey( spep_2 + 260, ryusen1, 0 );


-- ** 書き文字  **  --
ct_ga1 = entryEffectLife( spep_2 + 154 -a ,  10005, 16, 0x100, -1, 0, 1.3, 233.7 );
setEffShake(  spep_2 +154 -a,  ct_ga1,  16,  10);  --揺れ
setEffMoveKey( spep_2 + 154 -a, ct_ga1, 1.3, 233.7 , 0 );
setEffMoveKey( spep_2 + 156 -a, ct_ga1, 1.4, 233.6 , 0 );
setEffMoveKey( spep_2 + 158 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 160 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 162 -a, ct_ga1, 1.3, 233.5 , 0 );
setEffMoveKey( spep_2 + 164 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 170 -a, ct_ga1, 1.3, 233.6 , 0 );

setEffScaleKey( spep_2 + 154 -a, ct_ga1, 0.61 +b, 0.61 +b );
setEffScaleKey( spep_2 + 156 -a, ct_ga1, 0.98 +b, 0.98 +b );
setEffScaleKey( spep_2 + 170 -a, ct_ga1, 0.98 +b, 0.98 +b );

setEffRotateKey( spep_2 + 154 -a, ct_ga1, -10.5 );
setEffRotateKey( spep_2 + 156 -a, ct_ga1, -10.5 );
setEffRotateKey( spep_2 + 158 -a, ct_ga1, -14.7 );
setEffRotateKey( spep_2 + 160 -a, ct_ga1, -5.2 );
setEffRotateKey( spep_2 + 162 -a, ct_ga1, -13.1 );
setEffRotateKey( spep_2 + 164 -a, ct_ga1, -7.4 );
setEffRotateKey( spep_2 + 170 -a, ct_ga1, -7.4 );

setEffAlphaKey( spep_2 + 154 -a, ct_ga1, 255 );
setEffAlphaKey( spep_2 + 164 -a, ct_ga1, 255 );
setEffAlphaKey( spep_2 + 166 -a, ct_ga1, 170 );
setEffAlphaKey( spep_2 + 168 -a, ct_ga1, 85 );
setEffAlphaKey( spep_2 + 170 -a, ct_ga1, 0 );

ct_ga2 = entryEffectLife( spep_2 + 174 -a ,  10005, 16, 0x100, -1, 0, 184.1, 225.6 );
setEffMoveKey( spep_2 + 174 -a , ct_ga2, 184.1, 225.6 , 0 );
setEffMoveKey( spep_2 + 176 -a , ct_ga2, 184.1, 225.6 , 0 );
setEffMoveKey( spep_2 + 178 -a , ct_ga2, 184, 225.5 , 0 );
setEffMoveKey( spep_2 + 180 -a , ct_ga2, 184, 225.6 , 0 );
setEffMoveKey( spep_2 + 182 -a , ct_ga2, 184.1, 225.5 , 0 );
setEffMoveKey( spep_2 + 184 -a , ct_ga2, 184, 225.6 , 0 );
setEffMoveKey( spep_2 + 190 -a , ct_ga2, 184, 225.6 , 0 );

setEffScaleKey( spep_2 + 174 -a , ct_ga2, 0.61 +b, 0.61 +b );
setEffScaleKey( spep_2 + 176 -a , ct_ga2, 0.98 +b, 0.98 +b );
setEffScaleKey( spep_2 + 190 -a , ct_ga2, 0.98 +b, 0.98 +b );

setEffRotateKey( spep_2 + 174 -a , ct_ga2, 17.2 );
setEffRotateKey( spep_2 + 176 -a , ct_ga2, 17.2 );
setEffRotateKey( spep_2 + 178 -a , ct_ga2, 13 );
setEffRotateKey( spep_2 + 180 -a , ct_ga2, 22.5 );
setEffRotateKey( spep_2 + 182 -a , ct_ga2, 14.5 );
setEffRotateKey( spep_2 + 184 -a , ct_ga2, 20.3 );
setEffRotateKey( spep_2 + 190 -a , ct_ga2, 20.3 );

setEffAlphaKey( spep_2 + 174 -a , ct_ga2, 255 );
setEffAlphaKey( spep_2 + 184 -a , ct_ga2, 255 );
setEffAlphaKey( spep_2 + 186 -a , ct_ga2, 170 );
setEffAlphaKey( spep_2 + 188 -a , ct_ga2, 85 );
setEffAlphaKey( spep_2 + 190 -a , ct_ga2, 0 );


ct_ga3 = entryEffectLife( spep_2 + 190 -a ,  10005, 16, 0x100, -1, 0, -14.7, 313.9 );
setEffMoveKey( spep_2 + 190 -a , ct_ga3, -14.7, 313.9 , 0 );
setEffMoveKey( spep_2 + 192 -a , ct_ga3, -14.6, 314 , 0 );
setEffMoveKey( spep_2 + 194 -a , ct_ga3, -14.7, 313.9 , 0 );
setEffMoveKey( spep_2 + 206 -a , ct_ga3, -14.7, 313.9 , 0 );

setEffScaleKey( spep_2 + 190 -a , ct_ga3, 0.7 +b, 0.7 +b );
setEffScaleKey( spep_2 + 192 -a , ct_ga3, 1.14 +b, 1.14 +b );
setEffScaleKey( spep_2 + 206 -a , ct_ga3, 1.14 +b, 1.14 +b );

setEffRotateKey( spep_2 + 190 -a , ct_ga3, -13.1 );
setEffRotateKey( spep_2 + 192 -a , ct_ga3, -13.1 );
setEffRotateKey( spep_2 + 194 -a , ct_ga3, -17.3 );
setEffRotateKey( spep_2 + 196 -a , ct_ga3, -7.8 );
setEffRotateKey( spep_2 + 198 -a , ct_ga3, -15.7 );
setEffRotateKey( spep_2 + 200 -a , ct_ga3, -10 );
setEffRotateKey( spep_2 + 206 -a , ct_ga3, -10 );

setEffAlphaKey( spep_2 + 190 -a , ct_ga3, 255 );
setEffAlphaKey( spep_2 + 200 -a , ct_ga3, 255 );
setEffAlphaKey( spep_2 + 202 -a , ct_ga3, 170 );
setEffAlphaKey( spep_2 + 204 -a , ct_ga3, 85 );
setEffAlphaKey( spep_2 + 206 -a , ct_ga3, 0 );

ct_ga4 = entryEffectLife( spep_2 + 232 -a ,  10005, 16, 0x100, -1, 0, 158, 338.1 );
setEffMoveKey( spep_2 + 232 -a , ct_ga4, 158, 338.1 , 0 );
setEffMoveKey( spep_2 + 234 -a , ct_ga4, 158.2, 338 , 0 );
setEffMoveKey( spep_2 + 236 -a , ct_ga4, 158.2, 338 , 0 );
setEffMoveKey( spep_2 + 238 -a , ct_ga4, 158.1, 338.1 , 0 );
setEffMoveKey( spep_2 + 240 -a , ct_ga4, 158.2, 338.1 , 0 );
setEffMoveKey( spep_2 + 248 -a , ct_ga4, 158.1, 338 , 0 );

setEffScaleKey( spep_2 + 232 -a , ct_ga4, 0.77+b , 0.77+b );
setEffScaleKey( spep_2 + 234 -a , ct_ga4, 1.25+b , 1.25+b  );
setEffScaleKey( spep_2 + 248 -a , ct_ga4, 1.25+b , 1.25+b  );

setEffRotateKey( spep_2 + 232 -a , ct_ga4, 9.2 );
setEffRotateKey( spep_2 + 234 -a , ct_ga4, 9.2 );
setEffRotateKey( spep_2 + 236 -a , ct_ga4, 4.9 );
setEffRotateKey( spep_2 + 238 -a , ct_ga4, 14.4 );
setEffRotateKey( spep_2 + 240 -a , ct_ga4, 6.5 );
setEffRotateKey( spep_2 + 242 -a , ct_ga4, 12.2 );
setEffRotateKey( spep_2 + 248 -a , ct_ga4, 12.2 );

setEffAlphaKey( spep_2 + 232 -a , ct_ga4, 255 );
setEffAlphaKey( spep_2 + 242 -a , ct_ga4, 255 );
setEffAlphaKey( spep_2 + 244 -a , ct_ga4, 170 );
setEffAlphaKey( spep_2 + 246 -a , ct_ga4, 85 );
setEffAlphaKey( spep_2 + 248 -a , ct_ga4, 0 );

ct_baki = entryEffectLife( spep_2 - a + 268,  10020, 26, 0x100, -1, 0, -56.6, 316.5 );
setEffMoveKey( spep_2 - a + 268, ct_baki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 270, ct_baki, -74.8, 333 , 0 );
setEffMoveKey( spep_2 - a + 272, ct_baki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 274, ct_baki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 276, ct_baki, -68.5, 327.3 , 0 );
setEffMoveKey( spep_2 - a + 278, ct_baki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 280, ct_baki, -68.1, 327 , 0 );
setEffMoveKey( spep_2 - a + 282, ct_baki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 284, ct_baki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_2 - a + 286, ct_baki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 288, ct_baki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 290, ct_baki, -67.3, 326.4 , 0 );
setEffMoveKey( spep_2 - a + 292, ct_baki, -56.4, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 294, ct_baki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_2 - a + 268, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2 - a + 270, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2 - a + 272, ct_baki, 2.41, 2.41 );
setEffScaleKey( spep_2 - a + 274, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2 - a + 276, ct_baki, 1.91, 1.91 );
setEffScaleKey( spep_2 - a + 278, ct_baki, 1.88, 1.88 );
setEffScaleKey( spep_2 - a + 280, ct_baki, 1.85, 1.85 );
setEffScaleKey( spep_2 - a + 282, ct_baki, 1.82, 1.82 );
setEffScaleKey( spep_2 - a + 284, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 - a + 286, ct_baki, 1.76, 1.76 );
setEffScaleKey( spep_2 - a + 288, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2 - a + 290, ct_baki, 1.74, 1.74 );
setEffScaleKey( spep_2 - a + 292, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2 - a + 294, ct_baki, 1.76, 1.76 );

setEffRotateKey( spep_2 - a + 268, ct_baki, -2.7 );
setEffRotateKey( spep_2 + 294 -a , ct_baki, -2.7 );

setEffAlphaKey( spep_2 - a + 268, ct_baki, 255 );
setEffAlphaKey( spep_2 - a + 288, ct_baki, 255 );
setEffAlphaKey( spep_2 - a + 290, ct_baki, 174 );
setEffAlphaKey( spep_2 - a + 292, ct_baki, 94 );
setEffAlphaKey( spep_2 - a + 294, ct_baki, 13 );


kakutouBG = entryEffect(  spep_2,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+330,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2,  kakutouBG,  0);
setEffRotateKey(  spep_2+330,  kakutouBG,  0);
setEffAlphaKey(  spep_2,  kakutouBG,  255);
setEffAlphaKey(  spep_2+330,  kakutouBG,  255);

kakutou_m = entryEffect(  spep_2,  SP_03,  0x100,  -1,  0,  0,  0);  --格闘真ん中

setEffScaleKey(  spep_2,  kakutou_m,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou_m,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou_m,  0,  0);
setEffRotateKey(  spep_2,  kakutou_m,  0);
setEffRotateKey(  spep_2+330,  kakutou_m,  0);
setEffAlphaKey(  spep_2,  kakutou_m,  255);
setEffAlphaKey(  spep_2+330,  kakutou_m,  255);

--***突進からの格闘***
kakutou = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffRotateKey(  spep_2+330,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffAlphaKey(  spep_2+330,  kakutou,  255);

--***カットイン***
speff1 = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+22, 190006, 70, 0x100, -1, 0, 100, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 22,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 + 92,  ctgogo,  100,  510);
setEffAlphaKey( spep_2 + 22, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 191 );
setEffAlphaKey( spep_2 + 86, ctgogo, 128 );
setEffAlphaKey( spep_2 + 88, ctgogo, 64 );
setEffAlphaKey( spep_2 + 92, ctgogo, 0 );
setEffRotateKey(  spep_2 + 22,  ctgogo,  0);
setEffRotateKey(  spep_2 + 92,  ctgogo,  0);
setEffScaleKey(  spep_2 + 22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 + 80,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2 + 92, ctgogo, 1.07, 1.07 );

entryFadeBg(  spep_2,  0,  330,  0,  0,  0,  0,  255);  --黒背景

--***敵の動き***--
setDisp(  spep_2 +122,  1,  1);

changeAnime( spep_2 + 122,  1,   104 );

setMoveKey( spep_2 + 122, 1, 945.6, 5.4 , 0 );
setScaleKey( spep_2 + 122, 1, 1.54, 1.54 );
setRotateKey( spep_2 + 122, 1, 0 );

--***SE***--
playSe(  spep_2,  9);  --ダッシュ
playSe(  spep_2+22,  SE_04);  --カットイン

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+122 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+2,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+4,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+6,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+8,  1, 945.6, 5.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 12, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 14, 1, 1.54, 1.54 );
setScaleKey( SP_dodge, 1, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+2, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+4, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+6, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+8, 1, 1.54, 1.54 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1, 945.6, 5.4 , 0 );
setMoveKey(  SP_dodge+10,   1, 945.6, 5.4 , 0 );
setScaleKey( SP_dodge+9,    1, 1.54, 1.54 );
setScaleKey( SP_dodge+10,    1, 1.54, 1.54 );
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


setDisp(  spep_2+328,  1,  0);  --消す
changeAnime( spep_2 + 154 -a ,  1,   108 );
changeAnime( spep_2 + 190 -a ,  1,   106 );
changeAnime( spep_2 + 236 -a ,  1,    6 );
changeAnime( spep_2 + 242 -a ,  1,   106);
changeAnime( spep_2 + 246 -a ,  1,    6 );
changeAnime( spep_2 + 250 -a ,  1,   106 );
changeAnime( spep_2 + 254 -a ,  1,   6 );
changeAnime( spep_2 + 258 -a ,  1,   106 );
changeAnime( spep_2 + 262 -a ,  1,   6 );
changeAnime( spep_2 + 268 -a ,  1,   8 );
changeAnime( spep_2 + 296 -a ,  1,   105 );

setMoveKey( spep_2 + 124, 1, 897, 9.3 , 0 );
setMoveKey( spep_2 + 126, 1, 842, 9.2 , 0 );
setMoveKey( spep_2 + 128, 1, 784.8, 9.1 , 0 );
setMoveKey( spep_2 + 130, 1, 725.6, 8.9 , 0 );
setMoveKey( spep_2 + 132, 1, 664.5, 8.8 , 0 );
setMoveKey( spep_2 + 134, 1, 601.7, 8.7 , 0 );
setMoveKey( spep_2 + 136, 1, 537.4, 8.6 , 0 );
setMoveKey( spep_2 + 138, 1, 471.8, 8.5 , 0 );
setMoveKey( spep_2 + 140, 1, 405.1, 8.3 , 0 );
setMoveKey( spep_2 + 142, 1, 337.6, 8.2 , 0 );
setMoveKey( spep_2 + 144, 1, 269.3, 8 , 0 );
setMoveKey( spep_2 + 146, 1, 200.7, 7.9 , 0 );
setMoveKey( spep_2 + 148, 1, 131.8, 7.8 , 0 );
setMoveKey( spep_2 + 150, 1, 63, 7.6 , 0 );
--setMoveKey( spep_2 + 152, 1, -5.7, 7.6 , 0 );

setMoveKey( spep_2 + 154 -a , 1, 39.1, -10.1 , 0 );
setMoveKey( spep_2 + 156 -a , 1, 48.1, 3.6 , 0 );
setMoveKey( spep_2 + 158 -a , 1, 41.5, 1.2 , 0 );
setMoveKey( spep_2 + 160 -a , 1, 60.3, 6.9 , 0 );
setMoveKey( spep_2 + 162 -a , 1, 59.7, -0.8 , 0 );
setMoveKey( spep_2 + 164 -a , 1, 67.1, 7.4 , 0 );
setMoveKey( spep_2 + 166 -a , 1, 62.5, 3.6 , 0 );
setMoveKey( spep_2 + 168 -a , 1, 73.9, 7.9 , 0 );
setMoveKey( spep_2 + 170 -a , 1, 73.3, 4.1 , 0 );
setMoveKey( spep_2 + 172 -a , 1, 80.7, 8.3 , 0 );
setMoveKey( spep_2 + 174 -a , 1, 98.1, 44.7 , 0 );
setMoveKey( spep_2 + 176 -a , 1, 102.2, 51.6 , 0 );
setMoveKey( spep_2 + 178 -a , 1, 104, 46.9 , 0 );
setMoveKey( spep_2 + 180 -a , 1, 108, 61.8 , 0 );
setMoveKey( spep_2 + 182 -a , 1, 104, 60.8 , 0 );
setMoveKey( spep_2 + 184 -a , 1, 125.3, 73.2 , 0 );
setMoveKey( spep_2 + 186 -a , 1, 119.6, 65.6 , 0 );
setMoveKey( spep_2 + 188 -a , 1, 124, 67.1 , 0 );

setMoveKey( spep_2 + 190 -a , 1, 65.5, 101.7 , 0 );
setMoveKey( spep_2 + 192 -a , 1, 78.1, 108.6 , 0 );
setMoveKey( spep_2 + 194 -a , 1, 78.6, 107.4 , 0 );
setMoveKey( spep_2 + 196 -a , 1, 87.2, 114.3 , 0 );
setMoveKey( spep_2 + 198 -a , 1, 87.8, 113.1 , 0 );
setMoveKey( spep_2 + 200 -a , 1, 96.3, 120 , 0 );
setMoveKey( spep_2 + 202 -a , 1, 95.7, 110.8 , 0 );
setMoveKey( spep_2 + 204 -a , 1, 103.2, 117.7 , 0 );
setMoveKey( spep_2 + 206 -a , 1, 98.6, 112.5 , 0 );
setMoveKey( spep_2 + 208 -a , 1, 106.4, 116.8 , 0 );
setMoveKey( spep_2 + 210 -a , 1, 102.2, 109.1 , 0 );
setMoveKey( spep_2 + 212 -a , 1, 106, 117.4 , 0 );
setMoveKey( spep_2 + 214 -a , 1, 105.7, 117.7 , 0 );
setMoveKey( spep_2 + 216 -a , 1, 105.5, 118 , 0 );
setMoveKey( spep_2 + 218 -a , 1, 105.3, 118.3 , 0 );
setMoveKey( spep_2 + 220 -a , 1, 105.1, 118.6 , 0 );
setMoveKey( spep_2 + 222 -a , 1, 104.9, 118.9 , 0 );
setMoveKey( spep_2 + 224 -a , 1, 104.7, 119.2 , 0 );
setMoveKey( spep_2 + 226 -a , 1, 104.5, 119.4 , 0 );
setMoveKey( spep_2 + 228 -a , 1, 104.3, 119.7 , 0 );
setMoveKey( spep_2 + 230 -a , 1, 66.6, 89.4 , 0 );

setMoveKey( spep_2 + 232 -a , 1, 37, 118.8 , 0 );
setMoveKey( spep_2 + 234 -a , 1, -3.4, 144.9 , 0 );

setMoveKey( spep_2 + 236 -a , 1, 27, 140.4 , 0 );
setMoveKey( spep_2 + 238 -a , 1, -9.9, 154.1 , 0 );
setMoveKey( spep_2 + 240 -a , 1, -40.1, 188.8 , 0 );

setMoveKey( spep_2 + 242 -a , 1, -86.1, 220 , 0 );
setMoveKey( spep_2 + 244 -a , 1, -80.2, 226.4 , 0 );

setMoveKey( spep_2 + 246 -a , 1, -46.9, 191.3 , 0 );
setMoveKey( spep_2 + 248 -a , 1, -30.9, 196.9 , 0 );

setMoveKey( spep_2 + 250 -a , 1, -69, 232 , 0 );
setMoveKey( spep_2 + 252 -a , 1, -64.4, 233.4 , 0 );

setMoveKey( spep_2 + 254 -a , 1, -19.1, 201.4 , 0 );
setMoveKey( spep_2 + 256 -a , 1, -15.2, 202.9 , 0 );

setMoveKey( spep_2 + 258 -a , 1, -51.8, 237.8 , 0 );
setMoveKey( spep_2 + 260 -a , 1, -48.3, 239.3 , 0 );

setMoveKey( spep_2 + 262 -a , 1, -4.7, 205.4 , 0 );
setMoveKey( spep_2 + 264 -a , 1, -1.5, 205.7 , 0 );
setMoveKey( spep_2 + 266 -a , 1, 1.8, 206.1 , 0 );
setMoveKey( spep_2 + 268 -a , 1, -86.1, 48.2 , 0 );
setMoveKey( spep_2 + 268 -a , 1, -86.1, 48.2 , 0 );
setMoveKey( spep_2 + 270 -a , 1, -74.4, 72.6 , 0 );
setMoveKey( spep_2 + 272 -a , 1, -78.3, 76.6 , 0 );
setMoveKey( spep_2 + 274 -a , 1, -57.9, 88.2 , 0 );
setMoveKey( spep_2 + 276 -a , 1, -62.5, 73.3 , 0 );
setMoveKey( spep_2 + 278 -a , 1, -59.1, 90.3 , 0 );
setMoveKey( spep_2 + 280 -a , 1, -71.7, 87.4 , 0 );
setMoveKey( spep_2 + 282 -a , 1, -60.3, 92.4 , 0 );
setMoveKey( spep_2 + 284 -a , 1, -64.8, 89.4 , 0 );
setMoveKey( spep_2 + 286 -a , 1, -61.4, 94.4 , 0 );
setMoveKey( spep_2 + 288 -a , 1, -65.9, 79.4 , 0 );
setMoveKey( spep_2 + 290 -a , 1, -62.4, 96.3 , 0 );
setMoveKey( spep_2 + 292 -a , 1, -70.9, 93.3 , 0 );
setMoveKey( spep_2 + 294 -a , 1, -63.4, 98.2 , 0 );

setMoveKey( spep_2 + 296 -a , 1, -65.1, 190.3 , 0 );
setMoveKey( spep_2 + 298 -a , 1, -97.6, 223.7 , 0 );
setMoveKey( spep_2 + 300 -a , 1, -133.7, 246.6 , 0 );
setMoveKey( spep_2 + 302 -a , 1, -157, 273.9 , 0 );
setMoveKey( spep_2 + 304 -a , 1, -178.9, 292.8 , 0 );
setMoveKey( spep_2 + 306 -a , 1, -195.1, 306.5 , 0 );
setMoveKey( spep_2 + 308 -a , 1, -196, 305 , 0 );
setMoveKey( spep_2 + 310 -a , 1, -196.9, 303.5 , 0 );
setMoveKey( spep_2 + 312 -a , 1, -197.7, 302 , 0 );
setMoveKey( spep_2 + 314 -a , 1, -198.6, 300.4 , 0 );
setMoveKey( spep_2 + 316 -a , 1, -199.4, 298.8 , 0 );
setMoveKey( spep_2 + 318 -a , 1, -200.2, 297.2 , 0 );
setMoveKey( spep_2 + 320 -a , 1, -200.8, 295.5 , 0 );
setMoveKey( spep_2 + 322 -a , 1, -201.5, 293.7 , 0 );
setMoveKey( spep_2 + 324 -a , 1, -202.2, 292 , 0 );
setMoveKey( spep_2 + 326 -a , 1, -202.8, 290.2 , 0 );
setMoveKey( spep_2 + 328 -a , 1, -203.4, 288.3 , 0 );

setScaleKey( spep_2 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 126, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 128, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 130, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 132, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 138, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 140, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 142, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 146, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 150, 1, 1.25, 1.25 );

setScaleKey( spep_2 + 154 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 156 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 158 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 172 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 174 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 176 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 178 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 182 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 184 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 186 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 188 -a , 1, 1.28, 1.28 );

setScaleKey( spep_2 + 190 -a , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 228 -a , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 230 -a , 1, 1.66, 1.66 );

setScaleKey( spep_2 + 232 -a , 1, 1.6, 1.6 );
setScaleKey( spep_2 + 234 -a , 1, 1.54, 1.54 );

setScaleKey( spep_2 + 236 -a , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 238 -a , 1, 1.42, 1.42 );
setScaleKey( spep_2 + 240 -a , 1, 1.35, 1.35 );

setScaleKey( spep_2 + 242 -a , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 244 -a , 1, 1.35, 1.35 );

setScaleKey( spep_2 + 246 -a , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 248 -a , 1, 1.34, 1.34 );

setScaleKey( spep_2 + 250 -a , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 252 -a , 1, 1.32, 1.32 );

setScaleKey( spep_2 + 254 -a , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 256 -a , 1, 1.29, 1.29 );

setScaleKey( spep_2 + 258 -a , 1, 1.3, 1.3 );

setScaleKey( spep_2 + 260 -a , 1, 1.31, 1.31 );

setScaleKey( spep_2 + 262 -a , 1, 1.31, 1.31 );
setScaleKey( spep_2 + 264 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 266 -a , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 267 -a , 1, 1.33, 1.33 );

setScaleKey( spep_2 + 268 -a , 1, 2.36, 2.36 );
setScaleKey( spep_2 + 270 -a , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 272 -a , 1, 1.79, 1.79 );
setScaleKey( spep_2 + 274 -a , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 276 -a , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 278 -a , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 280 -a , 1, 1.45, 1.45 );
setScaleKey( spep_2 + 282 -a , 1, 1.44, 1.44 );
setScaleKey( spep_2 + 284 -a , 1, 1.42, 1.42 );
setScaleKey( spep_2 + 286 -a , 1, 1.4, 1.4 );
setScaleKey( spep_2 + 288 -a , 1, 1.39, 1.39 );
setScaleKey( spep_2 + 290 -a , 1, 1.37, 1.37 );
setScaleKey( spep_2 + 292 -a , 1, 1.36, 1.36 );
setScaleKey( spep_2 + 294 -a , 1, 1.34, 1.34 );

setScaleKey( spep_2 + 296 -a , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 298 -a , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 300 -a , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 302 -a , 1, 0.51, 0.51 );
setScaleKey( spep_2 + 304 -a , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 306 -a , 1, 0.24, 0.24 );
setScaleKey( spep_2 + 308 -a , 1, 0.24, 0.24 );
setScaleKey( spep_2 + 310 -a , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 312 -a , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 314 -a , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 316 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 318 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 320 -a , 1, 0.2, 0.2 );
setScaleKey( spep_2 + 322 -a , 1, 0.2, 0.2 );
setScaleKey( spep_2 + 324 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 326 -a , 1, 0.19, 0.19 );
setScaleKey( spep_2 + 328 -a , 1, 0.2, 0.2 );

--setRotateKey( spep_2 + 152, 1, 0 );

setRotateKey( spep_2 + 154 -a , 1, -1.2 );
setRotateKey( spep_2 + 156 -a , 1, -1.2 );
setRotateKey( spep_2 + 158 -a , 1, -1.1 );
setRotateKey( spep_2 + 166 -a , 1, -1.1 );
setRotateKey( spep_2 + 168 -a , 1, -1.2 );
setRotateKey( spep_2 + 172 -a , 1, -1.2 );
setRotateKey( spep_2 + 174 -a , 1, -9.3 );
setRotateKey( spep_2 + 176 -a , 1, -10.1 );
setRotateKey( spep_2 + 178 -a , 1, -11 );
setRotateKey( spep_2 + 180 -a , 1, -11.2 );
setRotateKey( spep_2 + 182 -a , 1, -11.4 );
setRotateKey( spep_2 + 184 -a , 1, -11.5 );
setRotateKey( spep_2 + 186 -a , 1, -11.7 );
setRotateKey( spep_2 + 188 -a , 1, -11.9 );

setRotateKey( spep_2 + 190 -a , 1, -36.3 );
setRotateKey( spep_2 + 200 -a , 1, -36.3 );
setRotateKey( spep_2 + 202 -a , 1, -35.9 );
setRotateKey( spep_2 + 204 -a , 1, -35.4 );
setRotateKey( spep_2 + 206 -a , 1, -35 );
setRotateKey( spep_2 + 208 -a , 1, -34.6 );
setRotateKey( spep_2 + 210 -a , 1, -34.1 );
setRotateKey( spep_2 + 212 -a , 1, -33.7 );
setRotateKey( spep_2 + 214 -a , 1, -33.3 );
setRotateKey( spep_2 + 216 -a , 1, -32.8 );
setRotateKey( spep_2 + 218 -a , 1, -32.4 );
setRotateKey( spep_2 + 220 -a , 1, -32 );
setRotateKey( spep_2 + 222 -a , 1, -31.5 );
setRotateKey( spep_2 + 224 -a , 1, -31.1 );
setRotateKey( spep_2 + 226 -a , 1, -30.7 );
setRotateKey( spep_2 + 228 -a , 1, -30.2 );
setRotateKey( spep_2 + 230 -a , 1, -29.8 );

setRotateKey( spep_2 + 232 -a , 1, -29.8 );
setRotateKey( spep_2 + 234 -a , 1, -29.8 );
setRotateKey( spep_2 + 235 -a , 1, -29.8 );

setRotateKey( spep_2 + 236 -a , 1, 80.5 );
setRotateKey( spep_2 + 240 -a , 1, 80.5 );
setRotateKey( spep_2 + 241 -a , 1, 80.5 );

setRotateKey( spep_2 + 242 -a , 1, -29.4 );
setRotateKey( spep_2 + 244 -a , 1, -29 );
setRotateKey( spep_2 + 245 -a , 1, -29 );

setRotateKey( spep_2 + 246 -a , 1, 81.7 );
setRotateKey( spep_2 + 248 -a , 1, 82.1 );
setRotateKey( spep_2 + 249 -a , 1, 82.1 );

setRotateKey( spep_2 + 250 -a , 1, -27.9 );
setRotateKey( spep_2 + 252 -a , 1, -27.5 );
setRotateKey( spep_2 + 253 -a , 1, -27.5 );

setRotateKey( spep_2 + 254 -a , 1, 83.2 );
setRotateKey( spep_2 + 256 -a , 1, 83.6 );
setRotateKey( spep_2 + 257 -a , 1, 83.6 );

setRotateKey( spep_2 + 258 -a , 1, -26.3 );
setRotateKey( spep_2 + 260 -a , 1, -26.1 );
setRotateKey( spep_2 + 261 -a , 1, -26.1 );

setRotateKey( spep_2 + 262 -a , 1, 84.2 );
setRotateKey( spep_2 + 266 -a , 1, 84.2 );
setRotateKey( spep_2 + 267 -a , 1, 84.2 );
setRotateKey( spep_2 + 268 -a , 1, 0 );
setRotateKey( spep_2 + 294 -a , 1, 0 );

setRotateKey( spep_2 + 296 -a , 1, -41.3 );
setRotateKey( spep_2 + 298 -a , 1, -43.8 );
setRotateKey( spep_2 + 300 -a , 1, -45.9 );
setRotateKey( spep_2 + 302 -a , 1, -47.5 );
setRotateKey( spep_2 + 304 -a , 1, -48.9 );
setRotateKey( spep_2 + 306 -a , 1, -49.9 );
setRotateKey( spep_2 + 308 -a , 1, -50 );
setRotateKey( spep_2 + 310 -a , 1, -49.9 );
setRotateKey( spep_2 + 312 -a , 1, -50 );
setRotateKey( spep_2 + 314 -a , 1, -50.1 );
setRotateKey( spep_2 + 316 -a , 1, -50 );
setRotateKey( spep_2 + 318 -a , 1, -50.1 );
setRotateKey( spep_2 + 324 -a , 1, -50.1 );
setRotateKey( spep_2 + 326 -a , 1, -50.2 );
setRotateKey( spep_2 + 328 -a , 1, -50.2 );

--***SE***--
playSe(  spep_2 + 154 -a,  1001);  --蹴り
playSe(  spep_2 + 174 -a,  1007);  --蹴り
playSe(  spep_2 + 190 -a,  1002);  --蹴り
playSe(  spep_2 + 232 -a,  1010);  --パンチ
playSe(  spep_2 + 268 -a,  1011);  --蹴り飛ばし


--***エフェクト***--
entryFade(  spep_2+320,  6,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+330;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

--***エフェクト***--
entryFade(  spep_3+78,  6,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 蹴りから肘鉄(220F)
------------------------------------------------------
spep_4 = spep_3+90;

--  ** 書き文字 ** --
ct_shun = entryEffectLife( spep_4 + 20,  10011, 12, 0x100, -1, 0, 207.4, 17.5 );  --シュン

setEffMoveKey( spep_4 + 20, ct_shun, 207.4, 17.5 , 0 );
setEffMoveKey( spep_4 + 22, ct_shun, 207.5, 17.6 , 0 );
setEffMoveKey( spep_4 + 28, ct_shun, 207.5, 17.6 , 0 );
setEffMoveKey( spep_4 + 30, ct_shun, 207.4, 17.6 , 0 );
setEffMoveKey( spep_4 + 32, ct_shun, 207.3, 17.6 , 0 );
setEffScaleKey( spep_4 + 20, ct_shun, 1.37, 1.37 );
setEffScaleKey( spep_4 + 22, ct_shun, 2.31, 2.31 );
setEffScaleKey( spep_4 + 24, ct_shun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 26, ct_shun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 28, ct_shun, 1.48, 1.48 );
setEffScaleKey( spep_4 + 30, ct_shun, 1.45, 1.45 );
setEffScaleKey( spep_4 + 32, ct_shun, 1.42, 1.42 );
setEffRotateKey( spep_4 + 20, ct_shun, 19.3 );
setEffRotateKey( spep_4 + 32, ct_shun, 19.3 );
setEffAlphaKey( spep_4 + 20, ct_shun, 255 );
setEffAlphaKey( spep_4 + 26, ct_shun, 255 );
setEffAlphaKey( spep_4 + 28, ct_shun, 170 );
setEffAlphaKey( spep_4 + 30, ct_shun, 85 );
setEffAlphaKey( spep_4 + 32, ct_shun, 0 );

ct_zun = entryEffectLife( spep_4 + 48 -a ,  10016, 52, 0x100, -1, 0, -14, 428.5 );  --ズン

setEffShake(  spep_4+48 -a ,  ct_zun,  52,  20);  --揺れ
setEffMoveKey( spep_4 + 48 -a , ct_zun, -14, 428.5 , 0 );
setEffMoveKey( spep_4 + 100 -a , ct_zun, -14.4, 428.4 , 0 );

setEffScaleKey( spep_4 + 48 -a , ct_zun, 1.73, 1.73 );
setEffScaleKey( spep_4 + 50 -a , ct_zun, 3.54, 3.54 );
setEffScaleKey( spep_4 + 52 -a , ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_4 + 54 -a , ct_zun, 2.47, 2.47 );
setEffScaleKey( spep_4 + 60 -a , ct_zun, 2.47, 2.47 );
setEffScaleKey( spep_4 + 62 -a , ct_zun, 2.48, 2.48 );
setEffScaleKey( spep_4 + 88 -a , ct_zun, 2.48, 2.48 );
setEffScaleKey( spep_4 + 90 -a , ct_zun, 2.49, 2.49 );
setEffScaleKey( spep_4 + 96 -a , ct_zun, 2.49, 2.49 );
setEffScaleKey( spep_4 + 98 -a , ct_zun, 2.5, 2.5 );
setEffScaleKey( spep_4 + 100 -a , ct_zun, 2.5, 2.5 );

setEffRotateKey( spep_4 + 48 -a , ct_zun, -17.1 );
setEffRotateKey( spep_4 + 70 -a , ct_zun, -17.1 );
setEffRotateKey( spep_4 + 72 -a , ct_zun, -17.2 );
setEffRotateKey( spep_4 + 96 -a , ct_zun, -17.2 );
setEffRotateKey( spep_4 + 100 -a , ct_zun, -17.1 );

setEffAlphaKey( spep_4 + 48 -a , ct_zun, 255 );
setEffAlphaKey( spep_4 + 94 -a , ct_zun, 255 );
setEffAlphaKey( spep_4 + 96 -a , ct_zun, 174 );
setEffAlphaKey( spep_4 + 98 -a , ct_zun, 94 );
setEffAlphaKey( spep_4 + 100 -a , ct_zun, 13 );

ct_shun2 = entryEffectLife( spep_4 + 144,  10011, 12, 0x100, -1, 0, 155.2, 431.2 );  --シュン

setEffMoveKey( spep_4 + 144, ct_shun2, 155.2, 431.2 , 0 );
setEffMoveKey( spep_4 + 146, ct_shun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_4 + 148, ct_shun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_4 + 150, ct_shun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_4 + 152, ct_shun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_4 + 156, ct_shun2, 155.2, 431.2 , 0 );
setEffScaleKey( spep_4 + 144, ct_shun2, 1.37, 1.37 );
setEffScaleKey( spep_4 + 146, ct_shun2, 2.31, 2.31 );
setEffScaleKey( spep_4 + 148, ct_shun2, 1.92, 1.92 );
setEffScaleKey( spep_4 + 150, ct_shun2, 1.52, 1.52 );
setEffScaleKey( spep_4 + 152, ct_shun2, 1.48, 1.48 );
setEffScaleKey( spep_4 + 154, ct_shun2, 1.45, 1.45 );
setEffScaleKey( spep_4 + 156, ct_shun2, 1.42, 1.42 );
setEffRotateKey( spep_4 + 144, ct_shun2, 29.7 );
setEffRotateKey( spep_4 + 156, ct_shun2, 29.7 );
setEffAlphaKey( spep_4 + 144, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 150, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 152, ct_shun2, 170 );
setEffAlphaKey( spep_4 + 154, ct_shun2, 85 );
setEffAlphaKey( spep_4 + 156, ct_shun2, 0 );

ct_bago = entryEffectLife( spep_4 + 166 -a ,  10021, 26, 0x100, -1, 0, 113.4, 325.6 );  --バギォ

setEffMoveKey( spep_4 + 166-a , ct_bago, 113.4, 325.6 , 0 );
setEffMoveKey( spep_4 + 168-a , ct_bago, 112.8, 325 , 0 );
setEffMoveKey( spep_4 + 170-a , ct_bago, 113.4, 325.4 , 0 );
setEffMoveKey( spep_4 + 172-a , ct_bago, 103.8, 350.9 , 0 );
setEffMoveKey( spep_4 + 174-a , ct_bago, 113.5, 325.5 , 0 );
setEffMoveKey( spep_4 + 176-a , ct_bago, 104.2, 350.1 , 0 );
setEffMoveKey( spep_4 + 178-a , ct_bago, 113.5, 325.6 , 0 );
setEffMoveKey( spep_4 + 180-a , ct_bago, 104.6, 349.3 , 0 );
setEffMoveKey( spep_4 + 182-a , ct_bago, 113.6, 325.6 , 0 );
setEffMoveKey( spep_4 + 184-a , ct_bago, 113.6, 325.7 , 0 );
setEffMoveKey( spep_4 + 186-a , ct_bago, 105.5, 347.4 , 0 );
setEffMoveKey( spep_4 + 188-a , ct_bago, 113.7, 325.8 , 0 );
setEffMoveKey( spep_4 + 190-a , ct_bago, 106.5, 344.9 , 0 );
setEffMoveKey( spep_4 + 192-a , ct_bago, 107, 343.6 , 0 );

setEffScaleKey( spep_4 + 166-a , ct_bago, 1.55, 1.55 );
setEffScaleKey( spep_4 + 168-a , ct_bago, 4.28, 4.28 );
setEffScaleKey( spep_4 + 170-a , ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_4 + 172-a , ct_bago, 3.16, 3.16 );
setEffScaleKey( spep_4 + 174-a , ct_bago, 3.1, 3.1 );
setEffScaleKey( spep_4 + 176-a , ct_bago, 3.05, 3.05 );
setEffScaleKey( spep_4 + 178-a , ct_bago, 3, 3 );
setEffScaleKey( spep_4 + 180-a , ct_bago, 2.95, 2.95 );
setEffScaleKey( spep_4 + 182-a , ct_bago, 2.9, 2.9 );
setEffScaleKey( spep_4 + 184-a , ct_bago, 2.85, 2.85 );
setEffScaleKey( spep_4 + 186-a , ct_bago, 2.69, 2.69 );
setEffScaleKey( spep_4 + 188-a , ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_4 + 190-a , ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_4 + 192-a , ct_bago, 2.21, 2.21 );

setEffRotateKey( spep_4 + 166-a , ct_bago, 14.8 );
setEffRotateKey( spep_4 + 192-a , ct_bago, 14.8 );

setEffAlphaKey( spep_4 + 166-a , ct_bago, 255 );
setEffAlphaKey( spep_4 + 184-a , ct_bago, 255 );
setEffAlphaKey( spep_4 + 186-a , ct_bago, 191 );
setEffAlphaKey( spep_4 + 188-a , ct_bago, 128 );
setEffAlphaKey( spep_4 + 190-a , ct_bago, 64 );
setEffAlphaKey( spep_4 + 192-a , ct_bago, 0 );


keriBG = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_4,  keriBG,  1.0,  1.0);
setEffScaleKey(  spep_4+220,  keriBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  keriBG,  0,  0);
setEffMoveKey(  spep_4+220,  keriBG,  0,  0);
setEffRotateKey(  spep_4,  keriBG,  0);
setEffRotateKey(  spep_4+220,  keriBG,  0);
setEffAlphaKey(  spep_4,  keriBG,  255);
setEffAlphaKey(  spep_4+220,  keriBG,  255);

--***敵の動き***--

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 218-a, 1, 0 );  --消す
changeAnime( spep_4 + 0, 1, 106 );  --仰け反り
changeAnime( spep_4 + 46 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 164-a, 1, 106 );  --仰け反り

setMoveKey( spep_4 + 0, 1, 578.3, 393.5 , 0 );
setMoveKey( spep_4 + 2, 1, 511.5, 357.7 , 0 );
setMoveKey( spep_4 + 4, 1, 433.8, 316 , 0 );
setMoveKey( spep_4 + 6, 1, 345, 268.5 , 0 );
setMoveKey( spep_4 + 8, 1, 245.3, 215 , 0 );
setMoveKey( spep_4 + 10, 1, 134.6, 155.7 , 0 );
setMoveKey( spep_4 + 12, 1, 12.9, 90.5 , 0 );
setMoveKey( spep_4 + 14, 1, 8.9, 86.6 , 0 );
setMoveKey( spep_4 + 16, 1, 4.8, 82.7 , 0 );
setMoveKey( spep_4 + 18, 1, 0.8, 78.9 , 0 );
setMoveKey( spep_4 + 20, 1, -3.3, 75 , 0 );
setMoveKey( spep_4 + 22, 1, -7.4, 71.1 , 0 );
setMoveKey( spep_4 + 24, 1, -11.4, 67.2 , 0 );
setMoveKey( spep_4 + 26, 1, -15.5, 63.3 , 0 );
setMoveKey( spep_4 + 28, 1, -19.5, 59.4 , 0 );
setMoveKey( spep_4 + 30, 1, -23.6, 55.5 , 0 );
setMoveKey( spep_4 + 32, 1, -27.6, 51.6 , 0 );
setMoveKey( spep_4 + 34, 1, -31.7, 47.8 , 0 );
setMoveKey( spep_4 + 36, 1, -35.8, 43.9 , 0 );
setMoveKey( spep_4 + 38, 1, -39.8, 40 , 0 );
setMoveKey( spep_4 + 40, 1, -43.9, 36.1 , 0 );
setMoveKey( spep_4 + 42, 1, -47.9, 32.2 , 0 );
--setMoveKey( spep_4 + 45, 1, -52, 28.4 , 0 );
setMoveKey( spep_4 + 46-a, 1, -31.5, 106.2 , 0 );
setMoveKey( spep_4 + 48-a, 1, -53.6, 168.9 , 0 );
setMoveKey( spep_4 + 50-a, 1, -46.6, 161.1 , 0 );
setMoveKey( spep_4 + 52-a, 1, -49.9, 149 , 0 );
setMoveKey( spep_4 + 54-a, 1, -41.1, 145.5 , 0 );
setMoveKey( spep_4 + 56-a, 1, -42.6, 134.7 , 0 );
setMoveKey( spep_4 + 58-a, 1, -39.2, 142 , 0 );
setMoveKey( spep_4 + 60-a, 1, -42.2, 139.8 , 0 );
setMoveKey( spep_4 + 62-a, 1, -38.8, 143.9 , 0 );
setMoveKey( spep_4 + 64-a, 1, -45, 138.4 , 0 );
setMoveKey( spep_4 + 66-a, 1, -38.4, 145.7 , 0 );
setMoveKey( spep_4 + 68-a, 1, -41.4, 143.4 , 0 );
setMoveKey( spep_4 + 70-a, 1, -38, 147.5 , 0 );
setMoveKey( spep_4 + 72-a, 1, -44.2, 141.9 , 0 );
setMoveKey( spep_4 + 74-a, 1, -37.6, 149.1 , 0 );
setMoveKey( spep_4 + 76-a, 1, -43.9, 143.5 , 0 );
setMoveKey( spep_4 + 78-a, 1, -37.3, 150.7 , 0 );
setMoveKey( spep_4 + 80-a, 1, -40.3, 148.3 , 0 );
setMoveKey( spep_4 + 82-a, 1, -36.9, 152.3 , 0 );
setMoveKey( spep_4 + 84-a, 1, -43.1, 149.8 , 0 );
setMoveKey( spep_4 + 86-a, 1, -36.5, 153.7 , 0 );
setMoveKey( spep_4 + 88-a, 1, -39.5, 148.1 , 0 );
setMoveKey( spep_4 + 90-a, 1, -36.1, 155.2 , 0 );
setMoveKey( spep_4 + 92-a, 1, -39.1, 152.6 , 0 );
setMoveKey( spep_4 + 94-a, 1, -35.7, 156.5 , 0 );
setMoveKey( spep_4 + 96-a, 1, -38.7, 152.4 , 0 );
setMoveKey( spep_4 + 98-a, 1, -35.3, 232.1 , 0 );
setMoveKey( spep_4 + 100-a, 1, -39.4, 286.8 , 0 );
setMoveKey( spep_4 + 102-a, 1, -33.1, 362.5 , 0 );
setMoveKey( spep_4 + 104-a, 1, -33.1, 366.7 , 0 );
setMoveKey( spep_4 + 106-a, 1, -33.1, 370.8 , 0 );
setMoveKey( spep_4 + 108-a, 1, -33.1, 375 , 0 );
setMoveKey( spep_4 + 110-a, 1, -33.1, 379.2 , 0 );
setMoveKey( spep_4 + 112-a, 1, -33.1, 383.4 , 0 );
setMoveKey( spep_4 + 114-a, 1, -33.1, 387.5 , 0 );
setMoveKey( spep_4 + 116-a, 1, -33.1, 391.7 , 0 );
setMoveKey( spep_4 + 118-a, 1, -33.1, 395.9 , 0 );
setMoveKey( spep_4 + 120-a, 1, -33.1, 400 , 0 );
setMoveKey( spep_4 + 122-a, 1, -33.1, 404.2 , 0 );
setMoveKey( spep_4 + 124-a, 1, -33.1, 408.4 , 0 );
setMoveKey( spep_4 + 126-a, 1, -33.1, 412.6 , 0 );
setMoveKey( spep_4 + 128-a, 1, -33.1, 416.7 , 0 );
setMoveKey( spep_4 + 130-a, 1, -33.1, 393.3 , 0 );
setMoveKey( spep_4 + 132-a, 1, -33.1, 357.8 , 0 );
setMoveKey( spep_4 + 134-a, 1, -33.1, 310 , 0 );
setMoveKey( spep_4 + 136-a, 1, -33.2, 249.9 , 0 );
setMoveKey( spep_4 + 138-a, 1, -33.1, 177.5 , 0 );
setMoveKey( spep_4 + 140-a, 1, -33.2, 92.9 , 0 );
setMoveKey( spep_4 + 142-a, 1, -33.2, -138 , 0 );
setMoveKey( spep_4 + 144-a, 1, -33.2, -311.2 , 0 );
setMoveKey( spep_4 + 146-a, 1, -33.2, -426.7 , 0 );
setMoveKey( spep_4 + 148-a, 1, -33.2, -403.7 , 0 );
setMoveKey( spep_4 + 150-a, 1, -33.2, -375.6 , 0 );
setMoveKey( spep_4 + 152-a, 1, -33.2, -342.4 , 0 );
setMoveKey( spep_4 + 154-a, 1, -33.2, -304 , 0 );
setMoveKey( spep_4 + 156-a, 1, -33.2, -260.6 , 0 );
setMoveKey( spep_4 + 158-a, 1, -33.2, -212.1 , 0 );
setMoveKey( spep_4 + 160-a, 1, -33.2, -158.4 , 0 );
setMoveKey( spep_4 + 163-a, 1, -33.1, -99.7 , 0 );
setMoveKey( spep_4 + 164-a, 1, -76.9, -126.8 , 0 );
setMoveKey( spep_4 + 166-a, 1, -82.4, -163.9 , 0 );
setMoveKey( spep_4 + 168-a, 1, -79.9, -151.5 , 0 );
setMoveKey( spep_4 + 170-a, 1, -89.4, -154.7 , 0 );
setMoveKey( spep_4 + 172-a, 1, -82.8, -149.4 , 0 );
setMoveKey( spep_4 + 174-a, 1, -88, -155.6 , 0 );
setMoveKey( spep_4 + 176-a, 1, -85.2, -145.3 , 0 );
setMoveKey( spep_4 + 178-a, 1, -88.4, -152.1 , 0 );
setMoveKey( spep_4 + 180-a, 1, -83.6, -150.7 , 0 );
setMoveKey( spep_4 + 182-a, 1, -90.7, -161.2 , 0 );
setMoveKey( spep_4 + 184-a, 1, -81.8, -155.5 , 0 );
setMoveKey( spep_4 + 186-a, 1, -92.9, -165.7 , 0 );
setMoveKey( spep_4 + 188-a, 1, -79.9, -159.7 , 0 );
setMoveKey( spep_4 + 190-a, 1, -82.9, -165.5 , 0 );
setMoveKey( spep_4 + 192-a, 1, -77.9, -163.2 , 0 );
setMoveKey( spep_4 + 194-a, 1, -84.8, -172.7 , 0 );
setMoveKey( spep_4 + 196-a, 1, -75.7, -166.1 , 0 );
setMoveKey( spep_4 + 198-a, 1, -82.6, -171.3 , 0 );
setMoveKey( spep_4 + 200-a, 1, -73.5, -168.3 , 0 );
setMoveKey( spep_4 + 202-a, 1, -76.3, -177.2 , 0 );
setMoveKey( spep_4 + 204-a, 1, -161.4, -407 , 0 );
setMoveKey( spep_4 + 206-a, 1, -252.9, -622.5 , 0 );
setMoveKey( spep_4 + 208-a, 1, -310.5, -803.1 , 0 );
setMoveKey( spep_4 + 210-a, 1, -370.3, -960.7 , 0 );
setMoveKey( spep_4 + 212-a, 1, -420.1, -1091 , 0 );
setMoveKey( spep_4 + 214-a, 1, -459.9, -1194.2 , 0 );
setMoveKey( spep_4 + 216-a, 1, -490, -1270.7 , 0 );
setMoveKey( spep_4 + 218-a, 1, -510.5, -1320.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 4, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 6, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 24, 1, 2, 2 );
setScaleKey( spep_4 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 30, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 34, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 36, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 38, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 40, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 42, 1, 2.12, 2.12 );
--setScaleKey( spep_4 + 45, 1, 2.13, 2.13 );
setScaleKey( spep_4 -a + 46, 1, 2.21, 2.21 );
setScaleKey( spep_4 -a  + 48, 1, 3.53, 3.53 );
setScaleKey( spep_4 -a  + 50, 1, 3.27, 3.27 );
setScaleKey( spep_4 -a  + 52, 1, 3.05, 3.05 );
setScaleKey( spep_4 -a  + 54, 1, 2.88, 2.88 );
setScaleKey( spep_4 -a  + 56, 1, 2.76, 2.76 );
setScaleKey( spep_4 -a  + 58, 1, 2.75, 2.75 );
setScaleKey( spep_4 -a  + 60, 1, 2.73, 2.73 );
setScaleKey( spep_4 -a  + 62, 1, 2.72, 2.72 );
setScaleKey( spep_4 -a  + 64, 1, 2.71, 2.71 );
setScaleKey( spep_4 -a  + 66, 1, 2.69, 2.69 );
setScaleKey( spep_4 -a  + 68, 1, 2.68, 2.68 );
setScaleKey( spep_4 -a  + 70, 1, 2.67, 2.67 );
setScaleKey( spep_4 -a  + 72, 1, 2.65, 2.65 );
setScaleKey( spep_4 -a  + 74, 1, 2.64, 2.64 );
setScaleKey( spep_4 -a  + 76, 1, 2.62, 2.62 );
setScaleKey( spep_4 -a  + 78, 1, 2.61, 2.61 );
setScaleKey( spep_4 -a  + 80, 1, 2.6, 2.6 );
setScaleKey( spep_4 -a  + 82, 1, 2.58, 2.58 );
setScaleKey( spep_4 -a  + 84, 1, 2.57, 2.57 );
setScaleKey( spep_4 -a  + 86, 1, 2.56, 2.56 );
setScaleKey( spep_4 -a  + 88, 1, 2.54, 2.54 );
setScaleKey( spep_4 -a  + 90, 1, 2.53, 2.53 );
setScaleKey( spep_4 -a  + 92, 1, 2.52, 2.52 );
setScaleKey( spep_4 -a  + 94, 1, 2.5, 2.5 );
setScaleKey( spep_4 -a  + 96, 1, 2.49, 2.49 );
setScaleKey( spep_4 -a  + 98, 1, 2.02, 2.02 );
setScaleKey( spep_4 -a  + 100, 1, 1.47, 1.47 );
setScaleKey( spep_4 -a  + 102, 1, 1.05, 1.05 );
setScaleKey( spep_4 -a  + 104, 1, 1.03, 1.03 );
setScaleKey( spep_4 -a  + 106, 1, 1, 1 );
setScaleKey( spep_4 -a  + 108, 1, 0.98, 0.98 );
setScaleKey( spep_4 -a  + 110, 1, 0.95, 0.95 );
setScaleKey( spep_4 -a  + 112, 1, 0.93, 0.93 );
setScaleKey( spep_4 -a + 114, 1, 0.9, 0.9 );
setScaleKey( spep_4 -a  + 116, 1, 0.88, 0.88 );
setScaleKey( spep_4 -a  + 118, 1, 0.86, 0.86 );
setScaleKey( spep_4 -a  + 120, 1, 0.83, 0.83 );
setScaleKey( spep_4 -a  + 122, 1, 0.81, 0.81 );
setScaleKey( spep_4 -a  + 124, 1, 0.78, 0.78 );
setScaleKey( spep_4 -a  + 126, 1, 0.76, 0.76 );
setScaleKey( spep_4 -a  + 128, 1, 0.74, 0.74 );
setScaleKey( spep_4 -a  + 130, 1, 0.77, 0.77 );
setScaleKey( spep_4 -a  + 132, 1, 0.82, 0.82 );
setScaleKey( spep_4 -a  + 134, 1, 0.89, 0.89 );
setScaleKey( spep_4 -a  + 136, 1, 0.99, 0.99 );
setScaleKey( spep_4 -a  + 138, 1, 1.1, 1.1 );
setScaleKey( spep_4 -a  + 140, 1, 1.23, 1.23 );
setScaleKey( spep_4 -a  + 142, 1, 1.55, 1.55 );
setScaleKey( spep_4 -a  + 144, 1, 1.79, 1.79 );
setScaleKey( spep_4 -a  + 146, 1, 1.95, 1.95 );
setScaleKey( spep_4 -a  + 148, 1, 1.96, 1.96 );
setScaleKey( spep_4 -a  + 150, 1, 1.96, 1.96 );
setScaleKey( spep_4 -a  + 152, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 154, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 156, 1, 1.98, 1.98 );
setScaleKey( spep_4 -a  + 158, 1, 1.99, 1.99 );
setScaleKey( spep_4 -a  + 160, 1, 2, 2 );
setScaleKey( spep_4 -a  + 163, 1, 2.01, 2.01 );
setScaleKey( spep_4 -a  + 164, 1, 2.14, 2.14 );
setScaleKey( spep_4 -a  + 166, 1, 3.26, 3.26 );
setScaleKey( spep_4 -a  + 168, 1, 3.14, 3.14 );
setScaleKey( spep_4 -a  + 170, 1, 3.02, 3.02 );
setScaleKey( spep_4 -a  + 172, 1, 2.9, 2.9 );
setScaleKey( spep_4 -a  + 174, 1, 2.77, 2.77 );
setScaleKey( spep_4 -a  + 176, 1, 2.65, 2.65 );
setScaleKey( spep_4 -a  + 178, 1, 2.61, 2.61 );
setScaleKey( spep_4  -a + 180, 1, 2.57, 2.57 );
setScaleKey( spep_4 -a  + 182, 1, 2.53, 2.53 );
setScaleKey( spep_4 -a  + 184, 1, 2.5, 2.5 );
setScaleKey( spep_4 -a  + 186, 1, 2.46, 2.46 );
setScaleKey( spep_4 -a  + 190, 1, 2.38, 2.38 );
setScaleKey( spep_4  -a + 192, 1, 2.34, 2.34 );
setScaleKey( spep_4  -a + 194, 1, 2.3, 2.3 );
setScaleKey( spep_4  -a  + 196, 1, 2.26, 2.26 );
setScaleKey( spep_4 -a  + 198, 1, 2.22, 2.22 );
setScaleKey( spep_4 -a  + 200, 1, 2.18, 2.18 );
setScaleKey( spep_4 -a  + 202, 1, 2.14, 2.14 );
setScaleKey( spep_4 -a  + 204, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 206, 1, 1.81, 1.81 );
setScaleKey( spep_4 -a  + 208, 1, 1.67, 1.67 );
setScaleKey( spep_4 -a  + 210, 1, 1.53, 1.53 );
setScaleKey( spep_4 -a  + 212, 1, 1.42, 1.42 );
setScaleKey( spep_4 -a  + 214, 1, 1.31, 1.31 );
setScaleKey( spep_4  -a + 216, 1, 1.22, 1.22 );
setScaleKey( spep_4  -a + 218, 1, 1.14, 1.14 );

setRotateKey( spep_4 + 0, 1, -142.3 );
setRotateKey( spep_4 + 2, 1, -144.6 );
setRotateKey( spep_4 + 4, 1, -147.3 );
setRotateKey( spep_4 + 6, 1, -150.4 );
setRotateKey( spep_4 + 8, 1, -153.8 );
setRotateKey( spep_4 + 10, 1, -157.7 );
setRotateKey( spep_4 + 12, 1, -161.9 );
setRotateKey( spep_4 + 14, 1, -162 );
setRotateKey( spep_4 + 16, 1, -162.2 );
setRotateKey( spep_4 + 18, 1, -162.3 );
setRotateKey( spep_4 + 20, 1, -162.4 );
setRotateKey( spep_4 + 22, 1, -162.6 );
setRotateKey( spep_4 + 24, 1, -162.7 );
setRotateKey( spep_4 + 26, 1, -162.8 );
setRotateKey( spep_4 + 28, 1, -162.9 );
setRotateKey( spep_4 + 30, 1, -163.1 );
setRotateKey( spep_4 + 32, 1, -163.2 );
setRotateKey( spep_4 + 34, 1, -163.3 );
setRotateKey( spep_4 + 36, 1, -163.5 );
setRotateKey( spep_4 + 38, 1, -163.6 );
setRotateKey( spep_4 + 40, 1, -163.7 );
setRotateKey( spep_4 + 42, 1, -163.9 );
--setRotateKey( spep_4 + 45, 1, -164 );
setRotateKey( spep_4 -a  + 46, 1, -118.7 );
setRotateKey( spep_4 -a  + 98, 1, -118.7 );
setRotateKey( spep_4 -a  + 100, 1, -118.6 );
setRotateKey( spep_4 -a  + 114, 1, -118.6 );
setRotateKey( spep_4 -a  + 116, 1, -118.7 );
setRotateKey( spep_4 -a  + 134, 1, -118.7 );
setRotateKey( spep_4 -a  + 136, 1, -118.6 );
setRotateKey( spep_4 -a  + 163, 1, -118.6 );
setRotateKey( spep_4 -a  + 164, 1, -124.2 );
setRotateKey( spep_4 -a  + 166, 1, -124.4 );
setRotateKey( spep_4 -a  + 168, 1, -124.5 );
setRotateKey( spep_4 -a  + 170, 1, -124.7 );
setRotateKey( spep_4 -a  + 172, 1, -124.9 );
setRotateKey( spep_4 -a  + 174, 1, -125 );
setRotateKey( spep_4 -a  + 176, 1, -125.2 );
setRotateKey( spep_4 -a  + 178, 1, -125.4 );
setRotateKey( spep_4 -a  + 180, 1, -125.5 );
setRotateKey( spep_4 -a  + 182, 1, -125.7 );
setRotateKey( spep_4 -a  + 184, 1, -125.9 );
setRotateKey( spep_4 -a  + 186, 1, -126.1 );
setRotateKey( spep_4 -a  + 188, 1, -126.2 );
setRotateKey( spep_4 -a  + 190, 1, -126.4 );
setRotateKey( spep_4 -a  + 192, 1, -126.6 );
setRotateKey( spep_4 -a  + 194, 1, -126.7 );
setRotateKey( spep_4 -a  + 196, 1, -126.9 );
setRotateKey( spep_4 -a  + 198, 1, -127.1 );
setRotateKey( spep_4 -a  + 200, 1, -127.2 );
setRotateKey( spep_4 -a  + 202, 1, -127.4 );
setRotateKey( spep_4 -a  + 204, 1, -134.9 );
setRotateKey( spep_4 -a  + 206, 1, -141.7 );
setRotateKey( spep_4 -a  + 208, 1, -147.8 );
setRotateKey( spep_4 -a  + 210, 1, -153.3 );
setRotateKey( spep_4 -a  + 212, 1, -158.2 );
setRotateKey( spep_4 -a  + 214, 1, -162.4 );
setRotateKey( spep_4 -a  + 216, 1, -166 );
setRotateKey( spep_4 -a  + 218, 1, -168.9 );




ryusen2 = entryEffectLife( spep_4 + 0,  914, 218, 0x80, -1, 0, 0.6, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen2, 0.6, 0 , 0 );
setEffMoveKey( spep_4 + 218, ryusen2, 0.6, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen2, 15.78, 1.77 );
setEffScaleKey( spep_4 + 218, ryusen2, 15.78, 1.77 );
setEffRotateKey( spep_4 + 0, ryusen2, 90 );
setEffRotateKey( spep_4 + 218, ryusen2, 90 );
setEffAlphaKey( spep_4 + 0, ryusen2, 0 );
setEffAlphaKey( spep_4 + 99 -a, ryusen2, 0 );
setEffAlphaKey( spep_4 + 100 -a, ryusen2, 191 );
setEffAlphaKey( spep_4 + 150 -a, ryusen2, 191 );
setEffAlphaKey( spep_4 + 152 -a, ryusen2, 153 );
setEffAlphaKey( spep_4 + 154 -a, ryusen2, 115 );
setEffAlphaKey( spep_4 + 156 -a, ryusen2, 77 );
setEffAlphaKey( spep_4 + 158 -a, ryusen2, 38 );
setEffAlphaKey( spep_4 + 160 -a, ryusen2, 0 );
setEffAlphaKey( spep_4 + 218, ryusen2, 0 );

--***蹴りからの肘鉄***
keri = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);  --蹴り

setEffScaleKey(  spep_4,  keri,  1.0,  1.0);
setEffScaleKey(  spep_4+220,  keri,  1.0,  1.0);
setEffMoveKey(  spep_4,  keri,  0,  0);
setEffMoveKey(  spep_4+220,  keri,  0,  0);
setEffRotateKey(  spep_4,  keri,  0);
setEffRotateKey(  spep_4+220,  keri,  0);
setEffAlphaKey(  spep_4,  keri,  255);
setEffAlphaKey(  spep_4+220,  keri,  255);

entryFadeBg(  spep_4,  0,  220,  0,  0,  0,  0,  255);  --黒背景

--***SE***--
playSe(  spep_4+16,  43);  --瞬間移動
playSe(  spep_4+48,  1011);  --蹴り
playSe(  spep_4+102,  8);  --上昇
playSe(  spep_4+146,  43);  --瞬間移動
playSe(  spep_4+166,  1014);  --肘鉄

--***エフェクト***--
entryFade(  spep_4+48 -a,  2,  2,  0,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
entryFade(  spep_4+162,  2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
--entryFade(  spep_4+212,  4,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
------------------------------------------------------
-- 最後(190F)
------------------------------------------------------
spep_5 = spep_4+220-3;

ct_dogon = entryEffectLife( spep_5 + 40 -a ,  10018, 56, 0x100, -1, 0, -126.6, -5.2 );  --ドゴン
setEffMoveKey( spep_5 + 40 -a , ct_dogon, -126.6, -5.2 , 0 );
setEffMoveKey( spep_5 + 42 -a , ct_dogon, -126.7, -7.2 , 0 );
setEffMoveKey( spep_5 + 44 -a , ct_dogon, -126, -9.4 , 0 );
setEffMoveKey( spep_5 + 46 -a , ct_dogon, -129.1, -7.7 , 0 );
setEffMoveKey( spep_5 + 48 -a , ct_dogon, -126.1, -8.8 , 0 );
setEffMoveKey( spep_5 + 50 -a , ct_dogon, -127.2, -7.6 , 0 );
setEffMoveKey( spep_5 + 52 -a , ct_dogon, -126.1, -8.2 , 0 );
setEffMoveKey( spep_5 + 54 -a , ct_dogon, -128, -7.3 , 0 );
setEffMoveKey( spep_5 + 56 -a , ct_dogon, -126.1, -8.2 , 0 );
setEffMoveKey( spep_5 + 58 -a , ct_dogon, -128, -7.2 , 0 );
setEffMoveKey( spep_5 + 60 -a , ct_dogon, -126.1, -8.1 , 0 );
setEffMoveKey( spep_5 + 62 -a , ct_dogon, -127.9, -7.2 , 0 );
setEffMoveKey( spep_5 + 64 -a , ct_dogon, -126.1, -8 , 0 );
setEffMoveKey( spep_5 + 66 -a , ct_dogon, -127.9, -7.1 , 0 );
setEffMoveKey( spep_5 + 68 -a , ct_dogon, -126.1, -8 , 0 );
setEffMoveKey( spep_5 + 70 -a , ct_dogon, -127.9, -7.1 , 0 );
setEffMoveKey( spep_5 + 72 -a , ct_dogon, -126.1, -7.9 , 0 );
setEffMoveKey( spep_5 + 74 -a , ct_dogon, -127.9, -7 , 0 );
setEffMoveKey( spep_5 + 76 -a , ct_dogon, -126.1, -7.8 , 0 );
setEffMoveKey( spep_5 + 78 -a , ct_dogon, -127.9, -7 , 0 );
setEffMoveKey( spep_5 + 80 -a , ct_dogon, -126.1, -7.8 , 0 );
setEffMoveKey( spep_5 + 82 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 84 -a , ct_dogon, -126.2, -7.8 , 0 );
setEffMoveKey( spep_5 + 86 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 88 -a , ct_dogon, -126.2, -7.7 , 0 );
setEffMoveKey( spep_5 + 90 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 92 -a , ct_dogon, -126.2, -7.7 , 0 );
setEffMoveKey( spep_5 + 94 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 96 -a , ct_dogon, -126.2, -7.7 , 0 );

setEffScaleKey( spep_5 + 40 -a , ct_dogon, 1.06, 1.06 );
setEffScaleKey( spep_5 + 42 -a , ct_dogon, 2.28, 2.28 );
setEffScaleKey( spep_5 + 44 -a , ct_dogon, 2.89, 2.89 );
setEffScaleKey( spep_5 + 46 -a , ct_dogon, 2.75, 2.75 );
setEffScaleKey( spep_5 + 48 -a , ct_dogon, 2.61, 2.61 );
setEffScaleKey( spep_5 + 50 -a , ct_dogon, 2.47, 2.47 );
setEffScaleKey( spep_5 + 52 -a , ct_dogon, 2.34, 2.34 );
setEffScaleKey( spep_5 + 54 -a , ct_dogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 56 -a , ct_dogon, 2.31, 2.31 );
setEffScaleKey( spep_5 + 58 -a , ct_dogon, 2.3, 2.3 );
setEffScaleKey( spep_5 + 60 -a , ct_dogon, 2.28, 2.28 );
setEffScaleKey( spep_5 + 62 -a , ct_dogon, 2.27, 2.27 );
setEffScaleKey( spep_5 + 64 -a , ct_dogon, 2.26, 2.26 );
setEffScaleKey( spep_5 + 66 -a , ct_dogon, 2.24, 2.24 );
setEffScaleKey( spep_5 + 68 -a , ct_dogon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 70 -a , ct_dogon, 2.22, 2.22 );
setEffScaleKey( spep_5 + 72 -a , ct_dogon, 2.2, 2.2 );
setEffScaleKey( spep_5 + 74 -a , ct_dogon, 2.19, 2.19 );
setEffScaleKey( spep_5 + 76 -a , ct_dogon, 2.18, 2.18 );
setEffScaleKey( spep_5 + 78 -a , ct_dogon, 2.17, 2.17 );
setEffScaleKey( spep_5 + 80 -a , ct_dogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 82 -a , ct_dogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 84 -a , ct_dogon, 2.14, 2.14 );
setEffScaleKey( spep_5 + 86 -a , ct_dogon, 2.14, 2.14 );
setEffScaleKey( spep_5 + 88 -a , ct_dogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 90 -a , ct_dogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 92 -a , ct_dogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 94 -a , ct_dogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 96 -a , ct_dogon, 2.11, 2.11 );

setEffRotateKey( spep_5 + 40 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 42 -a , ct_dogon, -21.4 );
setEffRotateKey( spep_5 + 44 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 46 -a , ct_dogon, 0.6 );
setEffRotateKey( spep_5 + 48 -a , ct_dogon, -8.2 );
setEffRotateKey( spep_5 + 50 -a , ct_dogon, -18.9 );
setEffRotateKey( spep_5 + 52 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 60 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 62 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 78 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 80 -a , ct_dogon, -8.2 );
setEffRotateKey( spep_5 + 82 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 90 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 92 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 96 -a , ct_dogon, -8 );

setEffAlphaKey( spep_5 + 40 -a , ct_dogon, 255 );
setEffAlphaKey( spep_5 + 80 -a , ct_dogon, 255 );
setEffAlphaKey( spep_5 + 82 -a , ct_dogon, 223 );
setEffAlphaKey( spep_5 + 84 -a , ct_dogon, 191 );
setEffAlphaKey( spep_5 + 86 -a , ct_dogon, 159 );
setEffAlphaKey( spep_5 + 88 -a , ct_dogon, 128 );
setEffAlphaKey( spep_5 + 90 -a , ct_dogon, 96 );
setEffAlphaKey( spep_5 + 92 -a , ct_dogon, 64 );
setEffAlphaKey( spep_5 + 94 -a , ct_dogon, 32 );
setEffAlphaKey( spep_5 + 96 -a , ct_dogon, 0 );

--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38 , 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 105 );

setShakeChara(  spep_5,  1,  38,  10);  --揺れ
setMoveKey( spep_5 + 0, 1, 373.4, 614.7 , 0 );
setMoveKey( spep_5 + 2, 1, 278.8, 430.8 , 0 );
setMoveKey( spep_5 + 4, 1, 184, 247 , 0 );
setMoveKey( spep_5 + 6, 1, 89.2, 63.1 , 0 );
setMoveKey( spep_5 + 8, 1, -5.7, -120.7 , 0 );
setMoveKey( spep_5 + 10, 1, -12.5, -133.6 , 0 );
setMoveKey( spep_5 + 12, 1, -19.2, -146.4 , 0 );
setMoveKey( spep_5 + 14, 1, -26, -159.3 , 0 );
setMoveKey( spep_5 + 16, 1, -32.8, -172.1 , 0 );
setMoveKey( spep_5 + 18, 1, -39.5, -185 , 0 );
setMoveKey( spep_5 + 20, 1, -46.3, -197.8 , 0 );
setMoveKey( spep_5 + 22, 1, -53.1, -210.7 , 0 );
setMoveKey( spep_5 + 24, 1, -59.8, -223.5 , 0 );
setMoveKey( spep_5 + 26, 1, -66.6, -236.4 , 0 );
setMoveKey( spep_5 + 28, 1, -73.4, -249.2 , 0 );
setMoveKey( spep_5 + 30, 1, -80.1, -262.1 , 0 );
setMoveKey( spep_5 + 32, 1, -86.9, -274.9 , 0 );
setMoveKey( spep_5 + 34, 1, -93.7, -287.8 , 0 );
setMoveKey( spep_5 + 36, 1, -100.4, -300.6 , 0 );
setMoveKey( spep_5 + 38 , 1, -107.2, -313.5 , 0 );

setScaleKey( spep_5 + 0, 1, 7.27, 7.27 );
setScaleKey( spep_5 + 2, 1, 5.6, 5.6 );
setScaleKey( spep_5 + 4, 1, 3.93, 3.93 );
setScaleKey( spep_5 + 6, 1, 2.26, 2.26 );
setScaleKey( spep_5 + 8, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 16, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 32, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 34, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 36, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 38, 1, 0.11, 0.11 );

setRotateKey( spep_5 + 0, 1, -167.5 );
setRotateKey( spep_5 + 2, 1, -167.6 );
setRotateKey( spep_5 + 6, 1, -167.6 );
setRotateKey( spep_5 + 8, 1, -167.7 );
setRotateKey( spep_5 + 14, 1, -167.7 );
setRotateKey( spep_5 + 16, 1, -167.6 );
setRotateKey( spep_5 + 32, 1, -167.6 );
setRotateKey( spep_5 + 34, 1, -167.5 );
setRotateKey( spep_5 + 38  , 1, -167.5 );
--***最後***
lastBG = entryEffect(  spep_5,  SP_08,  0x80,  -1,  0,  0,  0);  --最後

setEffScaleKey(  spep_5,  lastBG,  1.0,  1.0);
setEffScaleKey(  spep_5+190,  lastBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  lastBG,  0,  0);
setEffMoveKey(  spep_5+190, lastBG,  0,  0);
setEffRotateKey(  spep_5,  lastBG,  0);
setEffRotateKey(  spep_5+190,  lastBG,  0);
setEffAlphaKey(  spep_5,  lastBG,  255);
setEffAlphaKey(  spep_5+190,  lastBG,  255);


last = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --最後

setEffScaleKey(  spep_5,  last,  1.0,  1.0);
setEffScaleKey(  spep_5+190,  last,  1.0,  1.0);
setEffMoveKey(  spep_5,  last,  0,  0);
setEffMoveKey(  spep_5+190, last,  0,  0);
setEffRotateKey(  spep_5,  last,  0);
setEffRotateKey(  spep_5+190,  last,  0);
setEffAlphaKey(  spep_5,  last,  255);
setEffAlphaKey(  spep_5+190,  last,  255);

entryFade(  spep_5+34,  2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --whitefade
entryFadeBg(  spep_5,  0,  190,  0,  0,  0,  0,  255);  --黒背景

--***SE***--
playSe(  spep_5,  8);  --落ちる
playSe(  spep_5+40,  1023);  --叩きつけ
playSe(  spep_5+42,  1014);  --叩きつけ

dealDamage(spep_5+80);
endPhase(spep_5+180);
else

------------------------------------------------------

-- 敵側

------------------------------------------------------
------------------------------------------------------
-- 気溜め(80F)
------------------------------------------------------
spep_1 = 0;

ct_zuo = entryEffectLife( spep_1 + 0,  10012, 72, 0x100, -1, 0, 68.4, 251.6 );

setEffShake(  spep_1,  ct_zuo,  72,  20);  --揺れ
setEffMoveKey( spep_1 + 0, ct_zuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_1 + 2, ct_zuo, 86.2, 270.7 , 0 );
setEffMoveKey( spep_1 + 4, ct_zuo, 94.9, 299 , 0 );
setEffMoveKey( spep_1 + 6, ct_zuo, 119.2, 311.6 , 0 );
setEffMoveKey( spep_1 + 8, ct_zuo, 108.2, 322.5 , 0 );
setEffMoveKey( spep_1 + 66, ct_zuo, 130.1, 320.3 , 0 );
setEffMoveKey( spep_1 + 68, ct_zuo, 122.4, 347.7 , 0 );
setEffMoveKey( spep_1 + 70, ct_zuo, 152.1, 337.7 , 0 );
setEffMoveKey( spep_1 + 72, ct_zuo, 163.1, 346.3 , 0 );
setEffScaleKey( spep_1 + 0, ct_zuo, 0.23, 0.23 );
setEffScaleKey( spep_1 + 2, ct_zuo, 0.78, 0.78 );
setEffScaleKey( spep_1 + 4, ct_zuo, 1.32, 1.32 );
setEffScaleKey( spep_1 + 6, ct_zuo, 1.87, 1.87 );
setEffScaleKey( spep_1 + 64, ct_zuo, 1.87, 1.87 );
setEffScaleKey( spep_1 + 66, ct_zuo, 2.53, 2.53 );
setEffScaleKey( spep_1 + 68, ct_zuo, 3.19, 3.19 );
setEffScaleKey( spep_1 + 70, ct_zuo, 3.86, 3.86 );
setEffScaleKey( spep_1 + 72, ct_zuo, 4.52, 4.52 );
setEffRotateKey( spep_1 + 0, ct_zuo, 27.2 );
setEffRotateKey( spep_1 + 72, ct_zuo, 27.2 );
setEffAlphaKey( spep_1 + 0, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 64, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 66, ct_zuo, 191 );
setEffAlphaKey( spep_1 + 68, ct_zuo, 128 );
setEffAlphaKey( spep_1 + 70, ct_zuo, 64 );
setEffAlphaKey( spep_1 + 72, ct_zuo, 0 );

--***集中線***--
shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.08,  1.98);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.08,  1.98);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+80,  shuchusen1,  255);

--***気溜め***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+80,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+80,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+80,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+80,  kitame,  255);

entryFadeBg(  spep_1,  40,  40,  0,  0,  0,  0,  200);  --薄暗い黒

--***SE***--
playSe(  spep_1,  1035);  --気溜め

--***エフェクト***--
entryFade(  spep_1+72,  6,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 突進からの格闘(330F)
------------------------------------------------------
spep_2 = spep_1 +80

a = 3
b = 0.5

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  914, 260, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 260, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen1, 11.67, 1.23 );
setEffScaleKey( spep_2 + 260, ryusen1, 11.67, 1.23 );
setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 260, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 38 );
setEffAlphaKey( spep_2 + 2, ryusen1, 60 );
setEffAlphaKey( spep_2 + 4, ryusen1, 82 );
setEffAlphaKey( spep_2 + 6, ryusen1, 104 );
setEffAlphaKey( spep_2 + 8, ryusen1, 126 );
setEffAlphaKey( spep_2 + 10, ryusen1, 147 );
setEffAlphaKey( spep_2 + 12, ryusen1, 169 );
setEffAlphaKey( spep_2 + 14, ryusen1, 191 );
setEffAlphaKey( spep_2 + 242, ryusen1, 191 );
setEffAlphaKey( spep_2 + 244, ryusen1, 170 );
setEffAlphaKey( spep_2 + 246, ryusen1, 149 );
setEffAlphaKey( spep_2 + 248, ryusen1, 128 );
setEffAlphaKey( spep_2 + 250, ryusen1, 106 );
setEffAlphaKey( spep_2 + 252, ryusen1, 85 );
setEffAlphaKey( spep_2 + 254, ryusen1, 64 );
setEffAlphaKey( spep_2 + 256, ryusen1, 42 );
setEffAlphaKey( spep_2 + 258, ryusen1, 21 );
setEffAlphaKey( spep_2 + 260, ryusen1, 0 );


-- ** 書き文字  **  --
ct_ga1 = entryEffectLife( spep_2 + 154 -a ,  10005, 16, 0x100, -1, 0, 1.3, 233.7 );
setEffShake(  spep_2 +154 -a,  ct_ga1,  16,  10);  --揺れ
setEffMoveKey( spep_2 + 154 -a, ct_ga1, 1.3, 233.7 , 0 );
setEffMoveKey( spep_2 + 156 -a, ct_ga1, 1.4, 233.6 , 0 );
setEffMoveKey( spep_2 + 158 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 160 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 162 -a, ct_ga1, 1.3, 233.5 , 0 );
setEffMoveKey( spep_2 + 164 -a, ct_ga1, 1.3, 233.6 , 0 );
setEffMoveKey( spep_2 + 170 -a, ct_ga1, 1.3, 233.6 , 0 );

setEffScaleKey( spep_2 + 154 -a, ct_ga1, 0.61 +b, 0.61 +b );
setEffScaleKey( spep_2 + 156 -a, ct_ga1, 0.98 +b, 0.98 +b );
setEffScaleKey( spep_2 + 170 -a, ct_ga1, 0.98 +b, 0.98 +b );

setEffRotateKey( spep_2 + 154 -a, ct_ga1, -10.5 );
setEffRotateKey( spep_2 + 156 -a, ct_ga1, -10.5 );
setEffRotateKey( spep_2 + 158 -a, ct_ga1, -14.7 );
setEffRotateKey( spep_2 + 160 -a, ct_ga1, -5.2 );
setEffRotateKey( spep_2 + 162 -a, ct_ga1, -13.1 );
setEffRotateKey( spep_2 + 164 -a, ct_ga1, -7.4 );
setEffRotateKey( spep_2 + 170 -a, ct_ga1, -7.4 );

setEffAlphaKey( spep_2 + 154 -a, ct_ga1, 255 );
setEffAlphaKey( spep_2 + 164 -a, ct_ga1, 255 );
setEffAlphaKey( spep_2 + 166 -a, ct_ga1, 170 );
setEffAlphaKey( spep_2 + 168 -a, ct_ga1, 85 );
setEffAlphaKey( spep_2 + 170 -a, ct_ga1, 0 );

ct_ga2 = entryEffectLife( spep_2 + 174 -a ,  10005, 16, 0x100, -1, 0, 184.1, 225.6 );
setEffMoveKey( spep_2 + 174 -a , ct_ga2, 184.1, 225.6 , 0 );
setEffMoveKey( spep_2 + 176 -a , ct_ga2, 184.1, 225.6 , 0 );
setEffMoveKey( spep_2 + 178 -a , ct_ga2, 184, 225.5 , 0 );
setEffMoveKey( spep_2 + 180 -a , ct_ga2, 184, 225.6 , 0 );
setEffMoveKey( spep_2 + 182 -a , ct_ga2, 184.1, 225.5 , 0 );
setEffMoveKey( spep_2 + 184 -a , ct_ga2, 184, 225.6 , 0 );
setEffMoveKey( spep_2 + 190 -a , ct_ga2, 184, 225.6 , 0 );

setEffScaleKey( spep_2 + 174 -a , ct_ga2, 0.61 +b, 0.61 +b );
setEffScaleKey( spep_2 + 176 -a , ct_ga2, 0.98 +b, 0.98 +b );
setEffScaleKey( spep_2 + 190 -a , ct_ga2, 0.98 +b, 0.98 +b );

setEffRotateKey( spep_2 + 174 -a , ct_ga2, 17.2 );
setEffRotateKey( spep_2 + 176 -a , ct_ga2, 17.2 );
setEffRotateKey( spep_2 + 178 -a , ct_ga2, 13 );
setEffRotateKey( spep_2 + 180 -a , ct_ga2, 22.5 );
setEffRotateKey( spep_2 + 182 -a , ct_ga2, 14.5 );
setEffRotateKey( spep_2 + 184 -a , ct_ga2, 20.3 );
setEffRotateKey( spep_2 + 190 -a , ct_ga2, 20.3 );

setEffAlphaKey( spep_2 + 174 -a , ct_ga2, 255 );
setEffAlphaKey( spep_2 + 184 -a , ct_ga2, 255 );
setEffAlphaKey( spep_2 + 186 -a , ct_ga2, 170 );
setEffAlphaKey( spep_2 + 188 -a , ct_ga2, 85 );
setEffAlphaKey( spep_2 + 190 -a , ct_ga2, 0 );


ct_ga3 = entryEffectLife( spep_2 + 190 -a ,  10005, 16, 0x100, -1, 0, -14.7, 313.9 );
setEffMoveKey( spep_2 + 190 -a , ct_ga3, -14.7, 313.9 , 0 );
setEffMoveKey( spep_2 + 192 -a , ct_ga3, -14.6, 314 , 0 );
setEffMoveKey( spep_2 + 194 -a , ct_ga3, -14.7, 313.9 , 0 );
setEffMoveKey( spep_2 + 206 -a , ct_ga3, -14.7, 313.9 , 0 );

setEffScaleKey( spep_2 + 190 -a , ct_ga3, 0.7 +b, 0.7 +b );
setEffScaleKey( spep_2 + 192 -a , ct_ga3, 1.14 +b, 1.14 +b );
setEffScaleKey( spep_2 + 206 -a , ct_ga3, 1.14 +b, 1.14 +b );

setEffRotateKey( spep_2 + 190 -a , ct_ga3, -13.1 );
setEffRotateKey( spep_2 + 192 -a , ct_ga3, -13.1 );
setEffRotateKey( spep_2 + 194 -a , ct_ga3, -17.3 );
setEffRotateKey( spep_2 + 196 -a , ct_ga3, -7.8 );
setEffRotateKey( spep_2 + 198 -a , ct_ga3, -15.7 );
setEffRotateKey( spep_2 + 200 -a , ct_ga3, -10 );
setEffRotateKey( spep_2 + 206 -a , ct_ga3, -10 );

setEffAlphaKey( spep_2 + 190 -a , ct_ga3, 255 );
setEffAlphaKey( spep_2 + 200 -a , ct_ga3, 255 );
setEffAlphaKey( spep_2 + 202 -a , ct_ga3, 170 );
setEffAlphaKey( spep_2 + 204 -a , ct_ga3, 85 );
setEffAlphaKey( spep_2 + 206 -a , ct_ga3, 0 );

ct_ga4 = entryEffectLife( spep_2 + 232 -a ,  10005, 16, 0x100, -1, 0, 158, 338.1 );
setEffMoveKey( spep_2 + 232 -a , ct_ga4, 158, 338.1 , 0 );
setEffMoveKey( spep_2 + 234 -a , ct_ga4, 158.2, 338 , 0 );
setEffMoveKey( spep_2 + 236 -a , ct_ga4, 158.2, 338 , 0 );
setEffMoveKey( spep_2 + 238 -a , ct_ga4, 158.1, 338.1 , 0 );
setEffMoveKey( spep_2 + 240 -a , ct_ga4, 158.2, 338.1 , 0 );
setEffMoveKey( spep_2 + 248 -a , ct_ga4, 158.1, 338 , 0 );

setEffScaleKey( spep_2 + 232 -a , ct_ga4, 0.77+b , 0.77+b );
setEffScaleKey( spep_2 + 234 -a , ct_ga4, 1.25+b , 1.25+b  );
setEffScaleKey( spep_2 + 248 -a , ct_ga4, 1.25+b , 1.25+b  );

setEffRotateKey( spep_2 + 232 -a , ct_ga4, 9.2 );
setEffRotateKey( spep_2 + 234 -a , ct_ga4, 9.2 );
setEffRotateKey( spep_2 + 236 -a , ct_ga4, 4.9 );
setEffRotateKey( spep_2 + 238 -a , ct_ga4, 14.4 );
setEffRotateKey( spep_2 + 240 -a , ct_ga4, 6.5 );
setEffRotateKey( spep_2 + 242 -a , ct_ga4, 12.2 );
setEffRotateKey( spep_2 + 248 -a , ct_ga4, 12.2 );

setEffAlphaKey( spep_2 + 232 -a , ct_ga4, 255 );
setEffAlphaKey( spep_2 + 242 -a , ct_ga4, 255 );
setEffAlphaKey( spep_2 + 244 -a , ct_ga4, 170 );
setEffAlphaKey( spep_2 + 246 -a , ct_ga4, 85 );
setEffAlphaKey( spep_2 + 248 -a , ct_ga4, 0 );

ct_baki = entryEffectLife( spep_2 - a + 268,  10020, 26, 0x100, -1, 0, -56.6, 316.5 );
setEffMoveKey( spep_2 - a + 268, ct_baki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 270, ct_baki, -74.8, 333 , 0 );
setEffMoveKey( spep_2 - a + 272, ct_baki, -56.7, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 274, ct_baki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 276, ct_baki, -68.5, 327.3 , 0 );
setEffMoveKey( spep_2 - a + 278, ct_baki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 280, ct_baki, -68.1, 327 , 0 );
setEffMoveKey( spep_2 - a + 282, ct_baki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 284, ct_baki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_2 - a + 286, ct_baki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 288, ct_baki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_2 - a + 290, ct_baki, -67.3, 326.4 , 0 );
setEffMoveKey( spep_2 - a + 292, ct_baki, -56.4, 316.5 , 0 );
setEffMoveKey( spep_2 - a + 294, ct_baki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_2 - a + 268, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2 - a + 270, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2 - a + 272, ct_baki, 2.41, 2.41 );
setEffScaleKey( spep_2 - a + 274, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2 - a + 276, ct_baki, 1.91, 1.91 );
setEffScaleKey( spep_2 - a + 278, ct_baki, 1.88, 1.88 );
setEffScaleKey( spep_2 - a + 280, ct_baki, 1.85, 1.85 );
setEffScaleKey( spep_2 - a + 282, ct_baki, 1.82, 1.82 );
setEffScaleKey( spep_2 - a + 284, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 - a + 286, ct_baki, 1.76, 1.76 );
setEffScaleKey( spep_2 - a + 288, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2 - a + 290, ct_baki, 1.74, 1.74 );
setEffScaleKey( spep_2 - a + 292, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2 - a + 294, ct_baki, 1.76, 1.76 );

setEffRotateKey( spep_2 - a + 268, ct_baki, -2.7 );
setEffRotateKey( spep_2 + 294 -a , ct_baki, -2.7 );

setEffAlphaKey( spep_2 - a + 268, ct_baki, 255 );
setEffAlphaKey( spep_2 - a + 288, ct_baki, 255 );
setEffAlphaKey( spep_2 - a + 290, ct_baki, 174 );
setEffAlphaKey( spep_2 - a + 292, ct_baki, 94 );
setEffAlphaKey( spep_2 - a + 294, ct_baki, 13 );


kakutouBG = entryEffect(  spep_2,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+330,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2,  kakutouBG,  0);
setEffRotateKey(  spep_2+330,  kakutouBG,  0);
setEffAlphaKey(  spep_2,  kakutouBG,  255);
setEffAlphaKey(  spep_2+330,  kakutouBG,  255);

kakutou_m = entryEffect(  spep_2,  SP_03,  0x100,  -1,  0,  0,  0);  --格闘真ん中

setEffScaleKey(  spep_2,  kakutou_m,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou_m,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou_m,  0,  0);
setEffRotateKey(  spep_2,  kakutou_m,  0);
setEffRotateKey(  spep_2+330,  kakutou_m,  0);
setEffAlphaKey(  spep_2,  kakutou_m,  255);
setEffAlphaKey(  spep_2+330,  kakutou_m,  255);

--***突進からの格闘***
kakutou = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffRotateKey(  spep_2+330,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffAlphaKey(  spep_2+330,  kakutou,  255);

--***カットイン***
--speff1 = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+22, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 + 22,  ctgogo,  0,  530);
setEffMoveKey(  spep_2 + 92,  ctgogo,  0,  530);
setEffAlphaKey( spep_2 + 22, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 255 );
setEffAlphaKey( spep_2 + 84, ctgogo, 191 );
setEffAlphaKey( spep_2 + 86, ctgogo, 128 );
setEffAlphaKey( spep_2 + 88, ctgogo, 64 );
setEffAlphaKey( spep_2 + 92, ctgogo, 0 );
setEffRotateKey(  spep_2 + 22,  ctgogo,  0);
setEffRotateKey(  spep_2 + 92,  ctgogo,  0);
setEffScaleKey(  spep_2 + 22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 + 80,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2 + 92, ctgogo, -1.07, 1.07 );

entryFadeBg(  spep_2,  0,  330,  0,  0,  0,  0,  255);  --黒背景

--***敵の動き***--
setDisp(  spep_2 +122,  1,  1);

changeAnime( spep_2 + 122,  1,   104 );

setMoveKey( spep_2 + 122, 1, 945.6, 5.4 , 0 );
setScaleKey( spep_2 + 122, 1, 1.54, 1.54 );
setRotateKey( spep_2 + 122, 1, 0 );

--***SE***--
playSe(  spep_2,  9);  --ダッシュ
playSe(  spep_2+22,  SE_04);  --カットイン

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+122 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+2,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+4,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+6,  1, 945.6, 5.4 , 0 );
setMoveKey( SP_dodge+8,  1, 945.6, 5.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 12, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 14, 1, 1.54, 1.54 );
setScaleKey( SP_dodge, 1, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+2, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+4, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+6, 1, 1.54, 1.54 );
setScaleKey( SP_dodge+8, 1, 1.54, 1.54 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1, 945.6, 5.4 , 0 );
setMoveKey(  SP_dodge+10,   1, 945.6, 5.4 , 0 );
setScaleKey( SP_dodge+9,    1, 1.54, 1.54 );
setScaleKey( SP_dodge+10,    1, 1.54, 1.54 );
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


setDisp(  spep_2+328,  1,  0);  --消す
changeAnime( spep_2 + 154 -a ,  1,   108 );
changeAnime( spep_2 + 190 -a ,  1,   106 );
changeAnime( spep_2 + 236 -a ,  1,    6 );
changeAnime( spep_2 + 242 -a ,  1,   106);
changeAnime( spep_2 + 246 -a ,  1,    6 );
changeAnime( spep_2 + 250 -a ,  1,   106 );
changeAnime( spep_2 + 254 -a ,  1,   6 );
changeAnime( spep_2 + 258 -a ,  1,   106 );
changeAnime( spep_2 + 262 -a ,  1,   6 );
changeAnime( spep_2 + 268 -a ,  1,   8 );
changeAnime( spep_2 + 296 -a ,  1,   105 );

setMoveKey( spep_2 + 124, 1, 897, 9.3 , 0 );
setMoveKey( spep_2 + 126, 1, 842, 9.2 , 0 );
setMoveKey( spep_2 + 128, 1, 784.8, 9.1 , 0 );
setMoveKey( spep_2 + 130, 1, 725.6, 8.9 , 0 );
setMoveKey( spep_2 + 132, 1, 664.5, 8.8 , 0 );
setMoveKey( spep_2 + 134, 1, 601.7, 8.7 , 0 );
setMoveKey( spep_2 + 136, 1, 537.4, 8.6 , 0 );
setMoveKey( spep_2 + 138, 1, 471.8, 8.5 , 0 );
setMoveKey( spep_2 + 140, 1, 405.1, 8.3 , 0 );
setMoveKey( spep_2 + 142, 1, 337.6, 8.2 , 0 );
setMoveKey( spep_2 + 144, 1, 269.3, 8 , 0 );
setMoveKey( spep_2 + 146, 1, 200.7, 7.9 , 0 );
setMoveKey( spep_2 + 148, 1, 131.8, 7.8 , 0 );
setMoveKey( spep_2 + 150, 1, 63, 7.6 , 0 );
--setMoveKey( spep_2 + 152, 1, -5.7, 7.6 , 0 );

setMoveKey( spep_2 + 154 -a , 1, 39.1, -10.1 , 0 );
setMoveKey( spep_2 + 156 -a , 1, 48.1, 3.6 , 0 );
setMoveKey( spep_2 + 158 -a , 1, 41.5, 1.2 , 0 );
setMoveKey( spep_2 + 160 -a , 1, 60.3, 6.9 , 0 );
setMoveKey( spep_2 + 162 -a , 1, 59.7, -0.8 , 0 );
setMoveKey( spep_2 + 164 -a , 1, 67.1, 7.4 , 0 );
setMoveKey( spep_2 + 166 -a , 1, 62.5, 3.6 , 0 );
setMoveKey( spep_2 + 168 -a , 1, 73.9, 7.9 , 0 );
setMoveKey( spep_2 + 170 -a , 1, 73.3, 4.1 , 0 );
setMoveKey( spep_2 + 172 -a , 1, 80.7, 8.3 , 0 );
setMoveKey( spep_2 + 174 -a , 1, 98.1, 44.7 , 0 );
setMoveKey( spep_2 + 176 -a , 1, 102.2, 51.6 , 0 );
setMoveKey( spep_2 + 178 -a , 1, 104, 46.9 , 0 );
setMoveKey( spep_2 + 180 -a , 1, 108, 61.8 , 0 );
setMoveKey( spep_2 + 182 -a , 1, 104, 60.8 , 0 );
setMoveKey( spep_2 + 184 -a , 1, 125.3, 73.2 , 0 );
setMoveKey( spep_2 + 186 -a , 1, 119.6, 65.6 , 0 );
setMoveKey( spep_2 + 188 -a , 1, 124, 67.1 , 0 );

setMoveKey( spep_2 + 190 -a , 1, 65.5, 101.7 , 0 );
setMoveKey( spep_2 + 192 -a , 1, 78.1, 108.6 , 0 );
setMoveKey( spep_2 + 194 -a , 1, 78.6, 107.4 , 0 );
setMoveKey( spep_2 + 196 -a , 1, 87.2, 114.3 , 0 );
setMoveKey( spep_2 + 198 -a , 1, 87.8, 113.1 , 0 );
setMoveKey( spep_2 + 200 -a , 1, 96.3, 120 , 0 );
setMoveKey( spep_2 + 202 -a , 1, 95.7, 110.8 , 0 );
setMoveKey( spep_2 + 204 -a , 1, 103.2, 117.7 , 0 );
setMoveKey( spep_2 + 206 -a , 1, 98.6, 112.5 , 0 );
setMoveKey( spep_2 + 208 -a , 1, 106.4, 116.8 , 0 );
setMoveKey( spep_2 + 210 -a , 1, 102.2, 109.1 , 0 );
setMoveKey( spep_2 + 212 -a , 1, 106, 117.4 , 0 );
setMoveKey( spep_2 + 214 -a , 1, 105.7, 117.7 , 0 );
setMoveKey( spep_2 + 216 -a , 1, 105.5, 118 , 0 );
setMoveKey( spep_2 + 218 -a , 1, 105.3, 118.3 , 0 );
setMoveKey( spep_2 + 220 -a , 1, 105.1, 118.6 , 0 );
setMoveKey( spep_2 + 222 -a , 1, 104.9, 118.9 , 0 );
setMoveKey( spep_2 + 224 -a , 1, 104.7, 119.2 , 0 );
setMoveKey( spep_2 + 226 -a , 1, 104.5, 119.4 , 0 );
setMoveKey( spep_2 + 228 -a , 1, 104.3, 119.7 , 0 );
setMoveKey( spep_2 + 230 -a , 1, 66.6, 89.4 , 0 );

setMoveKey( spep_2 + 232 -a , 1, 37, 118.8 , 0 );
setMoveKey( spep_2 + 234 -a , 1, -3.4, 144.9 , 0 );

setMoveKey( spep_2 + 236 -a , 1, 27, 140.4 , 0 );
setMoveKey( spep_2 + 238 -a , 1, -9.9, 154.1 , 0 );
setMoveKey( spep_2 + 240 -a , 1, -40.1, 188.8 , 0 );

setMoveKey( spep_2 + 242 -a , 1, -86.1, 220 , 0 );
setMoveKey( spep_2 + 244 -a , 1, -80.2, 226.4 , 0 );

setMoveKey( spep_2 + 246 -a , 1, -46.9, 191.3 , 0 );
setMoveKey( spep_2 + 248 -a , 1, -30.9, 196.9 , 0 );

setMoveKey( spep_2 + 250 -a , 1, -69, 232 , 0 );
setMoveKey( spep_2 + 252 -a , 1, -64.4, 233.4 , 0 );

setMoveKey( spep_2 + 254 -a , 1, -19.1, 201.4 , 0 );
setMoveKey( spep_2 + 256 -a , 1, -15.2, 202.9 , 0 );

setMoveKey( spep_2 + 258 -a , 1, -51.8, 237.8 , 0 );
setMoveKey( spep_2 + 260 -a , 1, -48.3, 239.3 , 0 );

setMoveKey( spep_2 + 262 -a , 1, -4.7, 205.4 , 0 );
setMoveKey( spep_2 + 264 -a , 1, -1.5, 205.7 , 0 );
setMoveKey( spep_2 + 266 -a , 1, 1.8, 206.1 , 0 );
setMoveKey( spep_2 + 268 -a , 1, -86.1, 48.2 , 0 );
setMoveKey( spep_2 + 268 -a , 1, -86.1, 48.2 , 0 );
setMoveKey( spep_2 + 270 -a , 1, -74.4, 72.6 , 0 );
setMoveKey( spep_2 + 272 -a , 1, -78.3, 76.6 , 0 );
setMoveKey( spep_2 + 274 -a , 1, -57.9, 88.2 , 0 );
setMoveKey( spep_2 + 276 -a , 1, -62.5, 73.3 , 0 );
setMoveKey( spep_2 + 278 -a , 1, -59.1, 90.3 , 0 );
setMoveKey( spep_2 + 280 -a , 1, -71.7, 87.4 , 0 );
setMoveKey( spep_2 + 282 -a , 1, -60.3, 92.4 , 0 );
setMoveKey( spep_2 + 284 -a , 1, -64.8, 89.4 , 0 );
setMoveKey( spep_2 + 286 -a , 1, -61.4, 94.4 , 0 );
setMoveKey( spep_2 + 288 -a , 1, -65.9, 79.4 , 0 );
setMoveKey( spep_2 + 290 -a , 1, -62.4, 96.3 , 0 );
setMoveKey( spep_2 + 292 -a , 1, -70.9, 93.3 , 0 );
setMoveKey( spep_2 + 294 -a , 1, -63.4, 98.2 , 0 );

setMoveKey( spep_2 + 296 -a , 1, -65.1, 190.3 , 0 );
setMoveKey( spep_2 + 298 -a , 1, -97.6, 223.7 , 0 );
setMoveKey( spep_2 + 300 -a , 1, -133.7, 246.6 , 0 );
setMoveKey( spep_2 + 302 -a , 1, -157, 273.9 , 0 );
setMoveKey( spep_2 + 304 -a , 1, -178.9, 292.8 , 0 );
setMoveKey( spep_2 + 306 -a , 1, -195.1, 306.5 , 0 );
setMoveKey( spep_2 + 308 -a , 1, -196, 305 , 0 );
setMoveKey( spep_2 + 310 -a , 1, -196.9, 303.5 , 0 );
setMoveKey( spep_2 + 312 -a , 1, -197.7, 302 , 0 );
setMoveKey( spep_2 + 314 -a , 1, -198.6, 300.4 , 0 );
setMoveKey( spep_2 + 316 -a , 1, -199.4, 298.8 , 0 );
setMoveKey( spep_2 + 318 -a , 1, -200.2, 297.2 , 0 );
setMoveKey( spep_2 + 320 -a , 1, -200.8, 295.5 , 0 );
setMoveKey( spep_2 + 322 -a , 1, -201.5, 293.7 , 0 );
setMoveKey( spep_2 + 324 -a , 1, -202.2, 292 , 0 );
setMoveKey( spep_2 + 326 -a , 1, -202.8, 290.2 , 0 );
setMoveKey( spep_2 + 328 -a , 1, -203.4, 288.3 , 0 );

setScaleKey( spep_2 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 126, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 128, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 130, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 132, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 138, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 140, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 142, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 146, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 150, 1, 1.25, 1.25 );

setScaleKey( spep_2 + 154 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 156 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 158 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 172 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 174 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 176 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 178 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 182 -a , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 184 -a , 1, 1.38, 1.38 );
setScaleKey( spep_2 + 186 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 188 -a , 1, 1.28, 1.28 );

setScaleKey( spep_2 + 190 -a , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 228 -a , 1, 1.29, 1.29 );
setScaleKey( spep_2 + 230 -a , 1, 1.66, 1.66 );

setScaleKey( spep_2 + 232 -a , 1, 1.6, 1.6 );
setScaleKey( spep_2 + 234 -a , 1, 1.54, 1.54 );

setScaleKey( spep_2 + 236 -a , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 238 -a , 1, 1.42, 1.42 );
setScaleKey( spep_2 + 240 -a , 1, 1.35, 1.35 );

setScaleKey( spep_2 + 242 -a , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 244 -a , 1, 1.35, 1.35 );

setScaleKey( spep_2 + 246 -a , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 248 -a , 1, 1.34, 1.34 );

setScaleKey( spep_2 + 250 -a , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 252 -a , 1, 1.32, 1.32 );

setScaleKey( spep_2 + 254 -a , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 256 -a , 1, 1.29, 1.29 );

setScaleKey( spep_2 + 258 -a , 1, 1.3, 1.3 );

setScaleKey( spep_2 + 260 -a , 1, 1.31, 1.31 );

setScaleKey( spep_2 + 262 -a , 1, 1.31, 1.31 );
setScaleKey( spep_2 + 264 -a , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 266 -a , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 267 -a , 1, 1.33, 1.33 );

setScaleKey( spep_2 + 268 -a , 1, 2.36, 2.36 );
setScaleKey( spep_2 + 270 -a , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 272 -a , 1, 1.79, 1.79 );
setScaleKey( spep_2 + 274 -a , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 276 -a , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 278 -a , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 280 -a , 1, 1.45, 1.45 );
setScaleKey( spep_2 + 282 -a , 1, 1.44, 1.44 );
setScaleKey( spep_2 + 284 -a , 1, 1.42, 1.42 );
setScaleKey( spep_2 + 286 -a , 1, 1.4, 1.4 );
setScaleKey( spep_2 + 288 -a , 1, 1.39, 1.39 );
setScaleKey( spep_2 + 290 -a , 1, 1.37, 1.37 );
setScaleKey( spep_2 + 292 -a , 1, 1.36, 1.36 );
setScaleKey( spep_2 + 294 -a , 1, 1.34, 1.34 );

setScaleKey( spep_2 + 296 -a , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 298 -a , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 300 -a , 1, 0.69, 0.69 );
setScaleKey( spep_2 + 302 -a , 1, 0.51, 0.51 );
setScaleKey( spep_2 + 304 -a , 1, 0.36, 0.36 );
setScaleKey( spep_2 + 306 -a , 1, 0.24, 0.24 );
setScaleKey( spep_2 + 308 -a , 1, 0.24, 0.24 );
setScaleKey( spep_2 + 310 -a , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 312 -a , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 314 -a , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 316 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 318 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 320 -a , 1, 0.2, 0.2 );
setScaleKey( spep_2 + 322 -a , 1, 0.2, 0.2 );
setScaleKey( spep_2 + 324 -a , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 326 -a , 1, 0.19, 0.19 );
setScaleKey( spep_2 + 328 -a , 1, 0.2, 0.2 );

--setRotateKey( spep_2 + 152, 1, 0 );

setRotateKey( spep_2 + 154 -a , 1, -1.2 );
setRotateKey( spep_2 + 156 -a , 1, -1.2 );
setRotateKey( spep_2 + 158 -a , 1, -1.1 );
setRotateKey( spep_2 + 166 -a , 1, -1.1 );
setRotateKey( spep_2 + 168 -a , 1, -1.2 );
setRotateKey( spep_2 + 172 -a , 1, -1.2 );
setRotateKey( spep_2 + 174 -a , 1, -9.3 );
setRotateKey( spep_2 + 176 -a , 1, -10.1 );
setRotateKey( spep_2 + 178 -a , 1, -11 );
setRotateKey( spep_2 + 180 -a , 1, -11.2 );
setRotateKey( spep_2 + 182 -a , 1, -11.4 );
setRotateKey( spep_2 + 184 -a , 1, -11.5 );
setRotateKey( spep_2 + 186 -a , 1, -11.7 );
setRotateKey( spep_2 + 188 -a , 1, -11.9 );

setRotateKey( spep_2 + 190 -a , 1, -36.3 );
setRotateKey( spep_2 + 200 -a , 1, -36.3 );
setRotateKey( spep_2 + 202 -a , 1, -35.9 );
setRotateKey( spep_2 + 204 -a , 1, -35.4 );
setRotateKey( spep_2 + 206 -a , 1, -35 );
setRotateKey( spep_2 + 208 -a , 1, -34.6 );
setRotateKey( spep_2 + 210 -a , 1, -34.1 );
setRotateKey( spep_2 + 212 -a , 1, -33.7 );
setRotateKey( spep_2 + 214 -a , 1, -33.3 );
setRotateKey( spep_2 + 216 -a , 1, -32.8 );
setRotateKey( spep_2 + 218 -a , 1, -32.4 );
setRotateKey( spep_2 + 220 -a , 1, -32 );
setRotateKey( spep_2 + 222 -a , 1, -31.5 );
setRotateKey( spep_2 + 224 -a , 1, -31.1 );
setRotateKey( spep_2 + 226 -a , 1, -30.7 );
setRotateKey( spep_2 + 228 -a , 1, -30.2 );
setRotateKey( spep_2 + 230 -a , 1, -29.8 );

setRotateKey( spep_2 + 232 -a , 1, -29.8 );
setRotateKey( spep_2 + 234 -a , 1, -29.8 );
setRotateKey( spep_2 + 235 -a , 1, -29.8 );

setRotateKey( spep_2 + 236 -a , 1, 80.5 );
setRotateKey( spep_2 + 240 -a , 1, 80.5 );
setRotateKey( spep_2 + 241 -a , 1, 80.5 );

setRotateKey( spep_2 + 242 -a , 1, -29.4 );
setRotateKey( spep_2 + 244 -a , 1, -29 );
setRotateKey( spep_2 + 245 -a , 1, -29 );

setRotateKey( spep_2 + 246 -a , 1, 81.7 );
setRotateKey( spep_2 + 248 -a , 1, 82.1 );
setRotateKey( spep_2 + 249 -a , 1, 82.1 );

setRotateKey( spep_2 + 250 -a , 1, -27.9 );
setRotateKey( spep_2 + 252 -a , 1, -27.5 );
setRotateKey( spep_2 + 253 -a , 1, -27.5 );

setRotateKey( spep_2 + 254 -a , 1, 83.2 );
setRotateKey( spep_2 + 256 -a , 1, 83.6 );
setRotateKey( spep_2 + 257 -a , 1, 83.6 );

setRotateKey( spep_2 + 258 -a , 1, -26.3 );
setRotateKey( spep_2 + 260 -a , 1, -26.1 );
setRotateKey( spep_2 + 261 -a , 1, -26.1 );

setRotateKey( spep_2 + 262 -a , 1, 84.2 );
setRotateKey( spep_2 + 266 -a , 1, 84.2 );
setRotateKey( spep_2 + 267 -a , 1, 84.2 );
setRotateKey( spep_2 + 268 -a , 1, 0 );
setRotateKey( spep_2 + 294 -a , 1, 0 );

setRotateKey( spep_2 + 296 -a , 1, -41.3 );
setRotateKey( spep_2 + 298 -a , 1, -43.8 );
setRotateKey( spep_2 + 300 -a , 1, -45.9 );
setRotateKey( spep_2 + 302 -a , 1, -47.5 );
setRotateKey( spep_2 + 304 -a , 1, -48.9 );
setRotateKey( spep_2 + 306 -a , 1, -49.9 );
setRotateKey( spep_2 + 308 -a , 1, -50 );
setRotateKey( spep_2 + 310 -a , 1, -49.9 );
setRotateKey( spep_2 + 312 -a , 1, -50 );
setRotateKey( spep_2 + 314 -a , 1, -50.1 );
setRotateKey( spep_2 + 316 -a , 1, -50 );
setRotateKey( spep_2 + 318 -a , 1, -50.1 );
setRotateKey( spep_2 + 324 -a , 1, -50.1 );
setRotateKey( spep_2 + 326 -a , 1, -50.2 );
setRotateKey( spep_2 + 328 -a , 1, -50.2 );

--***SE***--
playSe(  spep_2 + 154 -a,  1001);  --蹴り
playSe(  spep_2 + 174 -a,  1007);  --蹴り
playSe(  spep_2 + 190 -a,  1002);  --蹴り
playSe(  spep_2 + 232 -a,  1010);  --パンチ
playSe(  spep_2 + 268 -a,  1011);  --蹴り飛ばし


--***エフェクト***--
entryFade(  spep_2+320,  6,  4,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+330;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

--***エフェクト***--
entryFade(  spep_3+78,  6,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade


------------------------------------------------------
-- 蹴りから肘鉄(220F)
------------------------------------------------------
spep_4 = spep_3+90;

--  ** 書き文字 ** --
ct_shun = entryEffectLife( spep_4 + 20,  10011, 12, 0x100, -1, 0, 207.4, 17.5 );  --シュン

setEffMoveKey( spep_4 + 20, ct_shun, 207.4, 17.5 , 0 );
setEffMoveKey( spep_4 + 22, ct_shun, 207.5, 17.6 , 0 );
setEffMoveKey( spep_4 + 28, ct_shun, 207.5, 17.6 , 0 );
setEffMoveKey( spep_4 + 30, ct_shun, 207.4, 17.6 , 0 );
setEffMoveKey( spep_4 + 32, ct_shun, 207.3, 17.6 , 0 );
setEffScaleKey( spep_4 + 20, ct_shun, 1.37, 1.37 );
setEffScaleKey( spep_4 + 22, ct_shun, 2.31, 2.31 );
setEffScaleKey( spep_4 + 24, ct_shun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 26, ct_shun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 28, ct_shun, 1.48, 1.48 );
setEffScaleKey( spep_4 + 30, ct_shun, 1.45, 1.45 );
setEffScaleKey( spep_4 + 32, ct_shun, 1.42, 1.42 );
setEffRotateKey( spep_4 + 20, ct_shun, 19.3 );
setEffRotateKey( spep_4 + 32, ct_shun, 19.3 );
setEffAlphaKey( spep_4 + 20, ct_shun, 255 );
setEffAlphaKey( spep_4 + 26, ct_shun, 255 );
setEffAlphaKey( spep_4 + 28, ct_shun, 170 );
setEffAlphaKey( spep_4 + 30, ct_shun, 85 );
setEffAlphaKey( spep_4 + 32, ct_shun, 0 );

ct_zun = entryEffectLife( spep_4 + 48 -a ,  10016, 52, 0x100, -1, 0, -14, 428.5 );  --ズン

setEffShake(  spep_4+48 -a ,  ct_zun,  52,  20);  --揺れ
setEffMoveKey( spep_4 + 48 -a , ct_zun, -14, 428.5 , 0 );
setEffMoveKey( spep_4 + 100 -a , ct_zun, -14.4, 428.4 , 0 );

setEffScaleKey( spep_4 + 48 -a , ct_zun, 1.73, 1.73 );
setEffScaleKey( spep_4 + 50 -a , ct_zun, 3.54, 3.54 );
setEffScaleKey( spep_4 + 52 -a , ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_4 + 54 -a , ct_zun, 2.47, 2.47 );
setEffScaleKey( spep_4 + 60 -a , ct_zun, 2.47, 2.47 );
setEffScaleKey( spep_4 + 62 -a , ct_zun, 2.48, 2.48 );
setEffScaleKey( spep_4 + 88 -a , ct_zun, 2.48, 2.48 );
setEffScaleKey( spep_4 + 90 -a , ct_zun, 2.49, 2.49 );
setEffScaleKey( spep_4 + 96 -a , ct_zun, 2.49, 2.49 );
setEffScaleKey( spep_4 + 98 -a , ct_zun, 2.5, 2.5 );
setEffScaleKey( spep_4 + 100 -a , ct_zun, 2.5, 2.5 );

setEffRotateKey( spep_4 + 48 -a , ct_zun, -17.1 );
setEffRotateKey( spep_4 + 70 -a , ct_zun, -17.1 );
setEffRotateKey( spep_4 + 72 -a , ct_zun, -17.2 );
setEffRotateKey( spep_4 + 96 -a , ct_zun, -17.2 );
setEffRotateKey( spep_4 + 100 -a , ct_zun, -17.1 );

setEffAlphaKey( spep_4 + 48 -a , ct_zun, 255 );
setEffAlphaKey( spep_4 + 94 -a , ct_zun, 255 );
setEffAlphaKey( spep_4 + 96 -a , ct_zun, 174 );
setEffAlphaKey( spep_4 + 98 -a , ct_zun, 94 );
setEffAlphaKey( spep_4 + 100 -a , ct_zun, 13 );

ct_shun2 = entryEffectLife( spep_4 + 144,  10011, 12, 0x100, -1, 0, 155.2, 431.2 );  --シュン

setEffMoveKey( spep_4 + 144, ct_shun2, 155.2, 431.2 , 0 );
setEffMoveKey( spep_4 + 146, ct_shun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_4 + 148, ct_shun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_4 + 150, ct_shun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_4 + 152, ct_shun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_4 + 156, ct_shun2, 155.2, 431.2 , 0 );
setEffScaleKey( spep_4 + 144, ct_shun2, 1.37, 1.37 );
setEffScaleKey( spep_4 + 146, ct_shun2, 2.31, 2.31 );
setEffScaleKey( spep_4 + 148, ct_shun2, 1.92, 1.92 );
setEffScaleKey( spep_4 + 150, ct_shun2, 1.52, 1.52 );
setEffScaleKey( spep_4 + 152, ct_shun2, 1.48, 1.48 );
setEffScaleKey( spep_4 + 154, ct_shun2, 1.45, 1.45 );
setEffScaleKey( spep_4 + 156, ct_shun2, 1.42, 1.42 );
setEffRotateKey( spep_4 + 144, ct_shun2, 29.7 );
setEffRotateKey( spep_4 + 156, ct_shun2, 29.7 );
setEffAlphaKey( spep_4 + 144, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 150, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 152, ct_shun2, 170 );
setEffAlphaKey( spep_4 + 154, ct_shun2, 85 );
setEffAlphaKey( spep_4 + 156, ct_shun2, 0 );

ct_bago = entryEffectLife( spep_4 + 166 -a ,  10021, 26, 0x100, -1, 0, 113.4, 325.6 );  --バギォ

setEffMoveKey( spep_4 + 166-a , ct_bago, 113.4, 325.6 , 0 );
setEffMoveKey( spep_4 + 168-a , ct_bago, 112.8, 325 , 0 );
setEffMoveKey( spep_4 + 170-a , ct_bago, 113.4, 325.4 , 0 );
setEffMoveKey( spep_4 + 172-a , ct_bago, 103.8, 350.9 , 0 );
setEffMoveKey( spep_4 + 174-a , ct_bago, 113.5, 325.5 , 0 );
setEffMoveKey( spep_4 + 176-a , ct_bago, 104.2, 350.1 , 0 );
setEffMoveKey( spep_4 + 178-a , ct_bago, 113.5, 325.6 , 0 );
setEffMoveKey( spep_4 + 180-a , ct_bago, 104.6, 349.3 , 0 );
setEffMoveKey( spep_4 + 182-a , ct_bago, 113.6, 325.6 , 0 );
setEffMoveKey( spep_4 + 184-a , ct_bago, 113.6, 325.7 , 0 );
setEffMoveKey( spep_4 + 186-a , ct_bago, 105.5, 347.4 , 0 );
setEffMoveKey( spep_4 + 188-a , ct_bago, 113.7, 325.8 , 0 );
setEffMoveKey( spep_4 + 190-a , ct_bago, 106.5, 344.9 , 0 );
setEffMoveKey( spep_4 + 192-a , ct_bago, 107, 343.6 , 0 );

setEffScaleKey( spep_4 + 166-a , ct_bago, 1.55, 1.55 );
setEffScaleKey( spep_4 + 168-a , ct_bago, 4.28, 4.28 );
setEffScaleKey( spep_4 + 170-a , ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_4 + 172-a , ct_bago, 3.16, 3.16 );
setEffScaleKey( spep_4 + 174-a , ct_bago, 3.1, 3.1 );
setEffScaleKey( spep_4 + 176-a , ct_bago, 3.05, 3.05 );
setEffScaleKey( spep_4 + 178-a , ct_bago, 3, 3 );
setEffScaleKey( spep_4 + 180-a , ct_bago, 2.95, 2.95 );
setEffScaleKey( spep_4 + 182-a , ct_bago, 2.9, 2.9 );
setEffScaleKey( spep_4 + 184-a , ct_bago, 2.85, 2.85 );
setEffScaleKey( spep_4 + 186-a , ct_bago, 2.69, 2.69 );
setEffScaleKey( spep_4 + 188-a , ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_4 + 190-a , ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_4 + 192-a , ct_bago, 2.21, 2.21 );

setEffRotateKey( spep_4 + 166-a , ct_bago, 14.8 );
setEffRotateKey( spep_4 + 192-a , ct_bago, 14.8 );

setEffAlphaKey( spep_4 + 166-a , ct_bago, 255 );
setEffAlphaKey( spep_4 + 184-a , ct_bago, 255 );
setEffAlphaKey( spep_4 + 186-a , ct_bago, 191 );
setEffAlphaKey( spep_4 + 188-a , ct_bago, 128 );
setEffAlphaKey( spep_4 + 190-a , ct_bago, 64 );
setEffAlphaKey( spep_4 + 192-a , ct_bago, 0 );


keriBG = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_4,  keriBG,  1.0,  1.0);
setEffScaleKey(  spep_4+220,  keriBG,  1.0,  1.0);
setEffMoveKey(  spep_4,  keriBG,  0,  0);
setEffMoveKey(  spep_4+220,  keriBG,  0,  0);
setEffRotateKey(  spep_4,  keriBG,  0);
setEffRotateKey(  spep_4+220,  keriBG,  0);
setEffAlphaKey(  spep_4,  keriBG,  255);
setEffAlphaKey(  spep_4+220,  keriBG,  255);

--***敵の動き***--

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 218-a, 1, 0 );  --消す
changeAnime( spep_4 + 0, 1, 106 );  --仰け反り
changeAnime( spep_4 + 46 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 164-a, 1, 106 );  --仰け反り

setMoveKey( spep_4 + 0, 1, 578.3, 393.5 , 0 );
setMoveKey( spep_4 + 2, 1, 511.5, 357.7 , 0 );
setMoveKey( spep_4 + 4, 1, 433.8, 316 , 0 );
setMoveKey( spep_4 + 6, 1, 345, 268.5 , 0 );
setMoveKey( spep_4 + 8, 1, 245.3, 215 , 0 );
setMoveKey( spep_4 + 10, 1, 134.6, 155.7 , 0 );
setMoveKey( spep_4 + 12, 1, 12.9, 90.5 , 0 );
setMoveKey( spep_4 + 14, 1, 8.9, 86.6 , 0 );
setMoveKey( spep_4 + 16, 1, 4.8, 82.7 , 0 );
setMoveKey( spep_4 + 18, 1, 0.8, 78.9 , 0 );
setMoveKey( spep_4 + 20, 1, -3.3, 75 , 0 );
setMoveKey( spep_4 + 22, 1, -7.4, 71.1 , 0 );
setMoveKey( spep_4 + 24, 1, -11.4, 67.2 , 0 );
setMoveKey( spep_4 + 26, 1, -15.5, 63.3 , 0 );
setMoveKey( spep_4 + 28, 1, -19.5, 59.4 , 0 );
setMoveKey( spep_4 + 30, 1, -23.6, 55.5 , 0 );
setMoveKey( spep_4 + 32, 1, -27.6, 51.6 , 0 );
setMoveKey( spep_4 + 34, 1, -31.7, 47.8 , 0 );
setMoveKey( spep_4 + 36, 1, -35.8, 43.9 , 0 );
setMoveKey( spep_4 + 38, 1, -39.8, 40 , 0 );
setMoveKey( spep_4 + 40, 1, -43.9, 36.1 , 0 );
setMoveKey( spep_4 + 42, 1, -47.9, 32.2 , 0 );
--setMoveKey( spep_4 + 45, 1, -52, 28.4 , 0 );
setMoveKey( spep_4 + 46-a, 1, -31.5, 106.2 , 0 );
setMoveKey( spep_4 + 48-a, 1, -53.6, 168.9 , 0 );
setMoveKey( spep_4 + 50-a, 1, -46.6, 161.1 , 0 );
setMoveKey( spep_4 + 52-a, 1, -49.9, 149 , 0 );
setMoveKey( spep_4 + 54-a, 1, -41.1, 145.5 , 0 );
setMoveKey( spep_4 + 56-a, 1, -42.6, 134.7 , 0 );
setMoveKey( spep_4 + 58-a, 1, -39.2, 142 , 0 );
setMoveKey( spep_4 + 60-a, 1, -42.2, 139.8 , 0 );
setMoveKey( spep_4 + 62-a, 1, -38.8, 143.9 , 0 );
setMoveKey( spep_4 + 64-a, 1, -45, 138.4 , 0 );
setMoveKey( spep_4 + 66-a, 1, -38.4, 145.7 , 0 );
setMoveKey( spep_4 + 68-a, 1, -41.4, 143.4 , 0 );
setMoveKey( spep_4 + 70-a, 1, -38, 147.5 , 0 );
setMoveKey( spep_4 + 72-a, 1, -44.2, 141.9 , 0 );
setMoveKey( spep_4 + 74-a, 1, -37.6, 149.1 , 0 );
setMoveKey( spep_4 + 76-a, 1, -43.9, 143.5 , 0 );
setMoveKey( spep_4 + 78-a, 1, -37.3, 150.7 , 0 );
setMoveKey( spep_4 + 80-a, 1, -40.3, 148.3 , 0 );
setMoveKey( spep_4 + 82-a, 1, -36.9, 152.3 , 0 );
setMoveKey( spep_4 + 84-a, 1, -43.1, 149.8 , 0 );
setMoveKey( spep_4 + 86-a, 1, -36.5, 153.7 , 0 );
setMoveKey( spep_4 + 88-a, 1, -39.5, 148.1 , 0 );
setMoveKey( spep_4 + 90-a, 1, -36.1, 155.2 , 0 );
setMoveKey( spep_4 + 92-a, 1, -39.1, 152.6 , 0 );
setMoveKey( spep_4 + 94-a, 1, -35.7, 156.5 , 0 );
setMoveKey( spep_4 + 96-a, 1, -38.7, 152.4 , 0 );
setMoveKey( spep_4 + 98-a, 1, -35.3, 232.1 , 0 );
setMoveKey( spep_4 + 100-a, 1, -39.4, 286.8 , 0 );
setMoveKey( spep_4 + 102-a, 1, -33.1, 362.5 , 0 );
setMoveKey( spep_4 + 104-a, 1, -33.1, 366.7 , 0 );
setMoveKey( spep_4 + 106-a, 1, -33.1, 370.8 , 0 );
setMoveKey( spep_4 + 108-a, 1, -33.1, 375 , 0 );
setMoveKey( spep_4 + 110-a, 1, -33.1, 379.2 , 0 );
setMoveKey( spep_4 + 112-a, 1, -33.1, 383.4 , 0 );
setMoveKey( spep_4 + 114-a, 1, -33.1, 387.5 , 0 );
setMoveKey( spep_4 + 116-a, 1, -33.1, 391.7 , 0 );
setMoveKey( spep_4 + 118-a, 1, -33.1, 395.9 , 0 );
setMoveKey( spep_4 + 120-a, 1, -33.1, 400 , 0 );
setMoveKey( spep_4 + 122-a, 1, -33.1, 404.2 , 0 );
setMoveKey( spep_4 + 124-a, 1, -33.1, 408.4 , 0 );
setMoveKey( spep_4 + 126-a, 1, -33.1, 412.6 , 0 );
setMoveKey( spep_4 + 128-a, 1, -33.1, 416.7 , 0 );
setMoveKey( spep_4 + 130-a, 1, -33.1, 393.3 , 0 );
setMoveKey( spep_4 + 132-a, 1, -33.1, 357.8 , 0 );
setMoveKey( spep_4 + 134-a, 1, -33.1, 310 , 0 );
setMoveKey( spep_4 + 136-a, 1, -33.2, 249.9 , 0 );
setMoveKey( spep_4 + 138-a, 1, -33.1, 177.5 , 0 );
setMoveKey( spep_4 + 140-a, 1, -33.2, 92.9 , 0 );
setMoveKey( spep_4 + 142-a, 1, -33.2, -138 , 0 );
setMoveKey( spep_4 + 144-a, 1, -33.2, -311.2 , 0 );
setMoveKey( spep_4 + 146-a, 1, -33.2, -426.7 , 0 );
setMoveKey( spep_4 + 148-a, 1, -33.2, -403.7 , 0 );
setMoveKey( spep_4 + 150-a, 1, -33.2, -375.6 , 0 );
setMoveKey( spep_4 + 152-a, 1, -33.2, -342.4 , 0 );
setMoveKey( spep_4 + 154-a, 1, -33.2, -304 , 0 );
setMoveKey( spep_4 + 156-a, 1, -33.2, -260.6 , 0 );
setMoveKey( spep_4 + 158-a, 1, -33.2, -212.1 , 0 );
setMoveKey( spep_4 + 160-a, 1, -33.2, -158.4 , 0 );
setMoveKey( spep_4 + 163-a, 1, -33.1, -99.7 , 0 );
setMoveKey( spep_4 + 164-a, 1, -76.9, -126.8 , 0 );
setMoveKey( spep_4 + 166-a, 1, -82.4, -163.9 , 0 );
setMoveKey( spep_4 + 168-a, 1, -79.9, -151.5 , 0 );
setMoveKey( spep_4 + 170-a, 1, -89.4, -154.7 , 0 );
setMoveKey( spep_4 + 172-a, 1, -82.8, -149.4 , 0 );
setMoveKey( spep_4 + 174-a, 1, -88, -155.6 , 0 );
setMoveKey( spep_4 + 176-a, 1, -85.2, -145.3 , 0 );
setMoveKey( spep_4 + 178-a, 1, -88.4, -152.1 , 0 );
setMoveKey( spep_4 + 180-a, 1, -83.6, -150.7 , 0 );
setMoveKey( spep_4 + 182-a, 1, -90.7, -161.2 , 0 );
setMoveKey( spep_4 + 184-a, 1, -81.8, -155.5 , 0 );
setMoveKey( spep_4 + 186-a, 1, -92.9, -165.7 , 0 );
setMoveKey( spep_4 + 188-a, 1, -79.9, -159.7 , 0 );
setMoveKey( spep_4 + 190-a, 1, -82.9, -165.5 , 0 );
setMoveKey( spep_4 + 192-a, 1, -77.9, -163.2 , 0 );
setMoveKey( spep_4 + 194-a, 1, -84.8, -172.7 , 0 );
setMoveKey( spep_4 + 196-a, 1, -75.7, -166.1 , 0 );
setMoveKey( spep_4 + 198-a, 1, -82.6, -171.3 , 0 );
setMoveKey( spep_4 + 200-a, 1, -73.5, -168.3 , 0 );
setMoveKey( spep_4 + 202-a, 1, -76.3, -177.2 , 0 );
setMoveKey( spep_4 + 204-a, 1, -161.4, -407 , 0 );
setMoveKey( spep_4 + 206-a, 1, -252.9, -622.5 , 0 );
setMoveKey( spep_4 + 208-a, 1, -310.5, -803.1 , 0 );
setMoveKey( spep_4 + 210-a, 1, -370.3, -960.7 , 0 );
setMoveKey( spep_4 + 212-a, 1, -420.1, -1091 , 0 );
setMoveKey( spep_4 + 214-a, 1, -459.9, -1194.2 , 0 );
setMoveKey( spep_4 + 216-a, 1, -490, -1270.7 , 0 );
setMoveKey( spep_4 + 218-a, 1, -510.5, -1320.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 4, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 6, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 8, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 12, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 16, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 24, 1, 2, 2 );
setScaleKey( spep_4 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 30, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 34, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 36, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 38, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 40, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 42, 1, 2.12, 2.12 );
--setScaleKey( spep_4 + 45, 1, 2.13, 2.13 );
setScaleKey( spep_4 -a + 46, 1, 2.21, 2.21 );
setScaleKey( spep_4 -a  + 48, 1, 3.53, 3.53 );
setScaleKey( spep_4 -a  + 50, 1, 3.27, 3.27 );
setScaleKey( spep_4 -a  + 52, 1, 3.05, 3.05 );
setScaleKey( spep_4 -a  + 54, 1, 2.88, 2.88 );
setScaleKey( spep_4 -a  + 56, 1, 2.76, 2.76 );
setScaleKey( spep_4 -a  + 58, 1, 2.75, 2.75 );
setScaleKey( spep_4 -a  + 60, 1, 2.73, 2.73 );
setScaleKey( spep_4 -a  + 62, 1, 2.72, 2.72 );
setScaleKey( spep_4 -a  + 64, 1, 2.71, 2.71 );
setScaleKey( spep_4 -a  + 66, 1, 2.69, 2.69 );
setScaleKey( spep_4 -a  + 68, 1, 2.68, 2.68 );
setScaleKey( spep_4 -a  + 70, 1, 2.67, 2.67 );
setScaleKey( spep_4 -a  + 72, 1, 2.65, 2.65 );
setScaleKey( spep_4 -a  + 74, 1, 2.64, 2.64 );
setScaleKey( spep_4 -a  + 76, 1, 2.62, 2.62 );
setScaleKey( spep_4 -a  + 78, 1, 2.61, 2.61 );
setScaleKey( spep_4 -a  + 80, 1, 2.6, 2.6 );
setScaleKey( spep_4 -a  + 82, 1, 2.58, 2.58 );
setScaleKey( spep_4 -a  + 84, 1, 2.57, 2.57 );
setScaleKey( spep_4 -a  + 86, 1, 2.56, 2.56 );
setScaleKey( spep_4 -a  + 88, 1, 2.54, 2.54 );
setScaleKey( spep_4 -a  + 90, 1, 2.53, 2.53 );
setScaleKey( spep_4 -a  + 92, 1, 2.52, 2.52 );
setScaleKey( spep_4 -a  + 94, 1, 2.5, 2.5 );
setScaleKey( spep_4 -a  + 96, 1, 2.49, 2.49 );
setScaleKey( spep_4 -a  + 98, 1, 2.02, 2.02 );
setScaleKey( spep_4 -a  + 100, 1, 1.47, 1.47 );
setScaleKey( spep_4 -a  + 102, 1, 1.05, 1.05 );
setScaleKey( spep_4 -a  + 104, 1, 1.03, 1.03 );
setScaleKey( spep_4 -a  + 106, 1, 1, 1 );
setScaleKey( spep_4 -a  + 108, 1, 0.98, 0.98 );
setScaleKey( spep_4 -a  + 110, 1, 0.95, 0.95 );
setScaleKey( spep_4 -a  + 112, 1, 0.93, 0.93 );
setScaleKey( spep_4 -a + 114, 1, 0.9, 0.9 );
setScaleKey( spep_4 -a  + 116, 1, 0.88, 0.88 );
setScaleKey( spep_4 -a  + 118, 1, 0.86, 0.86 );
setScaleKey( spep_4 -a  + 120, 1, 0.83, 0.83 );
setScaleKey( spep_4 -a  + 122, 1, 0.81, 0.81 );
setScaleKey( spep_4 -a  + 124, 1, 0.78, 0.78 );
setScaleKey( spep_4 -a  + 126, 1, 0.76, 0.76 );
setScaleKey( spep_4 -a  + 128, 1, 0.74, 0.74 );
setScaleKey( spep_4 -a  + 130, 1, 0.77, 0.77 );
setScaleKey( spep_4 -a  + 132, 1, 0.82, 0.82 );
setScaleKey( spep_4 -a  + 134, 1, 0.89, 0.89 );
setScaleKey( spep_4 -a  + 136, 1, 0.99, 0.99 );
setScaleKey( spep_4 -a  + 138, 1, 1.1, 1.1 );
setScaleKey( spep_4 -a  + 140, 1, 1.23, 1.23 );
setScaleKey( spep_4 -a  + 142, 1, 1.55, 1.55 );
setScaleKey( spep_4 -a  + 144, 1, 1.79, 1.79 );
setScaleKey( spep_4 -a  + 146, 1, 1.95, 1.95 );
setScaleKey( spep_4 -a  + 148, 1, 1.96, 1.96 );
setScaleKey( spep_4 -a  + 150, 1, 1.96, 1.96 );
setScaleKey( spep_4 -a  + 152, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 154, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 156, 1, 1.98, 1.98 );
setScaleKey( spep_4 -a  + 158, 1, 1.99, 1.99 );
setScaleKey( spep_4 -a  + 160, 1, 2, 2 );
setScaleKey( spep_4 -a  + 163, 1, 2.01, 2.01 );
setScaleKey( spep_4 -a  + 164, 1, 2.14, 2.14 );
setScaleKey( spep_4 -a  + 166, 1, 3.26, 3.26 );
setScaleKey( spep_4 -a  + 168, 1, 3.14, 3.14 );
setScaleKey( spep_4 -a  + 170, 1, 3.02, 3.02 );
setScaleKey( spep_4 -a  + 172, 1, 2.9, 2.9 );
setScaleKey( spep_4 -a  + 174, 1, 2.77, 2.77 );
setScaleKey( spep_4 -a  + 176, 1, 2.65, 2.65 );
setScaleKey( spep_4 -a  + 178, 1, 2.61, 2.61 );
setScaleKey( spep_4  -a + 180, 1, 2.57, 2.57 );
setScaleKey( spep_4 -a  + 182, 1, 2.53, 2.53 );
setScaleKey( spep_4 -a  + 184, 1, 2.5, 2.5 );
setScaleKey( spep_4 -a  + 186, 1, 2.46, 2.46 );
setScaleKey( spep_4 -a  + 190, 1, 2.38, 2.38 );
setScaleKey( spep_4  -a + 192, 1, 2.34, 2.34 );
setScaleKey( spep_4  -a + 194, 1, 2.3, 2.3 );
setScaleKey( spep_4  -a  + 196, 1, 2.26, 2.26 );
setScaleKey( spep_4 -a  + 198, 1, 2.22, 2.22 );
setScaleKey( spep_4 -a  + 200, 1, 2.18, 2.18 );
setScaleKey( spep_4 -a  + 202, 1, 2.14, 2.14 );
setScaleKey( spep_4 -a  + 204, 1, 1.97, 1.97 );
setScaleKey( spep_4 -a  + 206, 1, 1.81, 1.81 );
setScaleKey( spep_4 -a  + 208, 1, 1.67, 1.67 );
setScaleKey( spep_4 -a  + 210, 1, 1.53, 1.53 );
setScaleKey( spep_4 -a  + 212, 1, 1.42, 1.42 );
setScaleKey( spep_4 -a  + 214, 1, 1.31, 1.31 );
setScaleKey( spep_4  -a + 216, 1, 1.22, 1.22 );
setScaleKey( spep_4  -a + 218, 1, 1.14, 1.14 );

setRotateKey( spep_4 + 0, 1, -142.3 );
setRotateKey( spep_4 + 2, 1, -144.6 );
setRotateKey( spep_4 + 4, 1, -147.3 );
setRotateKey( spep_4 + 6, 1, -150.4 );
setRotateKey( spep_4 + 8, 1, -153.8 );
setRotateKey( spep_4 + 10, 1, -157.7 );
setRotateKey( spep_4 + 12, 1, -161.9 );
setRotateKey( spep_4 + 14, 1, -162 );
setRotateKey( spep_4 + 16, 1, -162.2 );
setRotateKey( spep_4 + 18, 1, -162.3 );
setRotateKey( spep_4 + 20, 1, -162.4 );
setRotateKey( spep_4 + 22, 1, -162.6 );
setRotateKey( spep_4 + 24, 1, -162.7 );
setRotateKey( spep_4 + 26, 1, -162.8 );
setRotateKey( spep_4 + 28, 1, -162.9 );
setRotateKey( spep_4 + 30, 1, -163.1 );
setRotateKey( spep_4 + 32, 1, -163.2 );
setRotateKey( spep_4 + 34, 1, -163.3 );
setRotateKey( spep_4 + 36, 1, -163.5 );
setRotateKey( spep_4 + 38, 1, -163.6 );
setRotateKey( spep_4 + 40, 1, -163.7 );
setRotateKey( spep_4 + 42, 1, -163.9 );
--setRotateKey( spep_4 + 45, 1, -164 );
setRotateKey( spep_4 -a  + 46, 1, -118.7 );
setRotateKey( spep_4 -a  + 98, 1, -118.7 );
setRotateKey( spep_4 -a  + 100, 1, -118.6 );
setRotateKey( spep_4 -a  + 114, 1, -118.6 );
setRotateKey( spep_4 -a  + 116, 1, -118.7 );
setRotateKey( spep_4 -a  + 134, 1, -118.7 );
setRotateKey( spep_4 -a  + 136, 1, -118.6 );
setRotateKey( spep_4 -a  + 163, 1, -118.6 );
setRotateKey( spep_4 -a  + 164, 1, -124.2 );
setRotateKey( spep_4 -a  + 166, 1, -124.4 );
setRotateKey( spep_4 -a  + 168, 1, -124.5 );
setRotateKey( spep_4 -a  + 170, 1, -124.7 );
setRotateKey( spep_4 -a  + 172, 1, -124.9 );
setRotateKey( spep_4 -a  + 174, 1, -125 );
setRotateKey( spep_4 -a  + 176, 1, -125.2 );
setRotateKey( spep_4 -a  + 178, 1, -125.4 );
setRotateKey( spep_4 -a  + 180, 1, -125.5 );
setRotateKey( spep_4 -a  + 182, 1, -125.7 );
setRotateKey( spep_4 -a  + 184, 1, -125.9 );
setRotateKey( spep_4 -a  + 186, 1, -126.1 );
setRotateKey( spep_4 -a  + 188, 1, -126.2 );
setRotateKey( spep_4 -a  + 190, 1, -126.4 );
setRotateKey( spep_4 -a  + 192, 1, -126.6 );
setRotateKey( spep_4 -a  + 194, 1, -126.7 );
setRotateKey( spep_4 -a  + 196, 1, -126.9 );
setRotateKey( spep_4 -a  + 198, 1, -127.1 );
setRotateKey( spep_4 -a  + 200, 1, -127.2 );
setRotateKey( spep_4 -a  + 202, 1, -127.4 );
setRotateKey( spep_4 -a  + 204, 1, -134.9 );
setRotateKey( spep_4 -a  + 206, 1, -141.7 );
setRotateKey( spep_4 -a  + 208, 1, -147.8 );
setRotateKey( spep_4 -a  + 210, 1, -153.3 );
setRotateKey( spep_4 -a  + 212, 1, -158.2 );
setRotateKey( spep_4 -a  + 214, 1, -162.4 );
setRotateKey( spep_4 -a  + 216, 1, -166 );
setRotateKey( spep_4 -a  + 218, 1, -168.9 );




ryusen2 = entryEffectLife( spep_4 + 0,  914, 218, 0x80, -1, 0, 0.6, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen2, 0.6, 0 , 0 );
setEffMoveKey( spep_4 + 218, ryusen2, 0.6, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen2, 15.78, 1.77 );
setEffScaleKey( spep_4 + 218, ryusen2, 15.78, 1.77 );
setEffRotateKey( spep_4 + 0, ryusen2, 90 );
setEffRotateKey( spep_4 + 218, ryusen2, 90 );
setEffAlphaKey( spep_4 + 0, ryusen2, 0 );
setEffAlphaKey( spep_4 + 99 -a, ryusen2, 0 );
setEffAlphaKey( spep_4 + 100 -a, ryusen2, 191 );
setEffAlphaKey( spep_4 + 150 -a, ryusen2, 191 );
setEffAlphaKey( spep_4 + 152 -a, ryusen2, 153 );
setEffAlphaKey( spep_4 + 154 -a, ryusen2, 115 );
setEffAlphaKey( spep_4 + 156 -a, ryusen2, 77 );
setEffAlphaKey( spep_4 + 158 -a, ryusen2, 38 );
setEffAlphaKey( spep_4 + 160 -a, ryusen2, 0 );
setEffAlphaKey( spep_4 + 218, ryusen2, 0 );

--***蹴りからの肘鉄***
keri = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);  --蹴り

setEffScaleKey(  spep_4,  keri,  1.0,  1.0);
setEffScaleKey(  spep_4+220,  keri,  1.0,  1.0);
setEffMoveKey(  spep_4,  keri,  0,  0);
setEffMoveKey(  spep_4+220,  keri,  0,  0);
setEffRotateKey(  spep_4,  keri,  0);
setEffRotateKey(  spep_4+220,  keri,  0);
setEffAlphaKey(  spep_4,  keri,  255);
setEffAlphaKey(  spep_4+220,  keri,  255);

entryFadeBg(  spep_4,  0,  220,  0,  0,  0,  0,  255);  --黒背景

--***SE***--
playSe(  spep_4+16,  43);  --瞬間移動
playSe(  spep_4+48,  1011);  --蹴り
playSe(  spep_4+102,  8);  --上昇
playSe(  spep_4+146,  43);  --瞬間移動
playSe(  spep_4+166,  1014);  --肘鉄

--***エフェクト***--
entryFade(  spep_4+48 -a,  2,  2,  0,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
entryFade(  spep_4+162,  2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
--entryFade(  spep_4+212,  4,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --white fade
------------------------------------------------------
-- 最後(190F)
------------------------------------------------------
spep_5 = spep_4+220-3;

ct_dogon = entryEffectLife( spep_5 + 40 -a ,  10018, 56, 0x100, -1, 0, -126.6, -5.2 );  --ドゴン
setEffMoveKey( spep_5 + 40 -a , ct_dogon, -126.6, -5.2 , 0 );
setEffMoveKey( spep_5 + 42 -a , ct_dogon, -126.7, -7.2 , 0 );
setEffMoveKey( spep_5 + 44 -a , ct_dogon, -126, -9.4 , 0 );
setEffMoveKey( spep_5 + 46 -a , ct_dogon, -129.1, -7.7 , 0 );
setEffMoveKey( spep_5 + 48 -a , ct_dogon, -126.1, -8.8 , 0 );
setEffMoveKey( spep_5 + 50 -a , ct_dogon, -127.2, -7.6 , 0 );
setEffMoveKey( spep_5 + 52 -a , ct_dogon, -126.1, -8.2 , 0 );
setEffMoveKey( spep_5 + 54 -a , ct_dogon, -128, -7.3 , 0 );
setEffMoveKey( spep_5 + 56 -a , ct_dogon, -126.1, -8.2 , 0 );
setEffMoveKey( spep_5 + 58 -a , ct_dogon, -128, -7.2 , 0 );
setEffMoveKey( spep_5 + 60 -a , ct_dogon, -126.1, -8.1 , 0 );
setEffMoveKey( spep_5 + 62 -a , ct_dogon, -127.9, -7.2 , 0 );
setEffMoveKey( spep_5 + 64 -a , ct_dogon, -126.1, -8 , 0 );
setEffMoveKey( spep_5 + 66 -a , ct_dogon, -127.9, -7.1 , 0 );
setEffMoveKey( spep_5 + 68 -a , ct_dogon, -126.1, -8 , 0 );
setEffMoveKey( spep_5 + 70 -a , ct_dogon, -127.9, -7.1 , 0 );
setEffMoveKey( spep_5 + 72 -a , ct_dogon, -126.1, -7.9 , 0 );
setEffMoveKey( spep_5 + 74 -a , ct_dogon, -127.9, -7 , 0 );
setEffMoveKey( spep_5 + 76 -a , ct_dogon, -126.1, -7.8 , 0 );
setEffMoveKey( spep_5 + 78 -a , ct_dogon, -127.9, -7 , 0 );
setEffMoveKey( spep_5 + 80 -a , ct_dogon, -126.1, -7.8 , 0 );
setEffMoveKey( spep_5 + 82 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 84 -a , ct_dogon, -126.2, -7.8 , 0 );
setEffMoveKey( spep_5 + 86 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 88 -a , ct_dogon, -126.2, -7.7 , 0 );
setEffMoveKey( spep_5 + 90 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 92 -a , ct_dogon, -126.2, -7.7 , 0 );
setEffMoveKey( spep_5 + 94 -a , ct_dogon, -127.9, -6.9 , 0 );
setEffMoveKey( spep_5 + 96 -a , ct_dogon, -126.2, -7.7 , 0 );

setEffScaleKey( spep_5 + 40 -a , ct_dogon, 1.06, 1.06 );
setEffScaleKey( spep_5 + 42 -a , ct_dogon, 2.28, 2.28 );
setEffScaleKey( spep_5 + 44 -a , ct_dogon, 2.89, 2.89 );
setEffScaleKey( spep_5 + 46 -a , ct_dogon, 2.75, 2.75 );
setEffScaleKey( spep_5 + 48 -a , ct_dogon, 2.61, 2.61 );
setEffScaleKey( spep_5 + 50 -a , ct_dogon, 2.47, 2.47 );
setEffScaleKey( spep_5 + 52 -a , ct_dogon, 2.34, 2.34 );
setEffScaleKey( spep_5 + 54 -a , ct_dogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 56 -a , ct_dogon, 2.31, 2.31 );
setEffScaleKey( spep_5 + 58 -a , ct_dogon, 2.3, 2.3 );
setEffScaleKey( spep_5 + 60 -a , ct_dogon, 2.28, 2.28 );
setEffScaleKey( spep_5 + 62 -a , ct_dogon, 2.27, 2.27 );
setEffScaleKey( spep_5 + 64 -a , ct_dogon, 2.26, 2.26 );
setEffScaleKey( spep_5 + 66 -a , ct_dogon, 2.24, 2.24 );
setEffScaleKey( spep_5 + 68 -a , ct_dogon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 70 -a , ct_dogon, 2.22, 2.22 );
setEffScaleKey( spep_5 + 72 -a , ct_dogon, 2.2, 2.2 );
setEffScaleKey( spep_5 + 74 -a , ct_dogon, 2.19, 2.19 );
setEffScaleKey( spep_5 + 76 -a , ct_dogon, 2.18, 2.18 );
setEffScaleKey( spep_5 + 78 -a , ct_dogon, 2.17, 2.17 );
setEffScaleKey( spep_5 + 80 -a , ct_dogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 82 -a , ct_dogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 84 -a , ct_dogon, 2.14, 2.14 );
setEffScaleKey( spep_5 + 86 -a , ct_dogon, 2.14, 2.14 );
setEffScaleKey( spep_5 + 88 -a , ct_dogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 90 -a , ct_dogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 92 -a , ct_dogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 94 -a , ct_dogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 96 -a , ct_dogon, 2.11, 2.11 );

setEffRotateKey( spep_5 + 40 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 42 -a , ct_dogon, -21.4 );
setEffRotateKey( spep_5 + 44 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 46 -a , ct_dogon, 0.6 );
setEffRotateKey( spep_5 + 48 -a , ct_dogon, -8.2 );
setEffRotateKey( spep_5 + 50 -a , ct_dogon, -18.9 );
setEffRotateKey( spep_5 + 52 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 60 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 62 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 78 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 80 -a , ct_dogon, -8.2 );
setEffRotateKey( spep_5 + 82 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 90 -a , ct_dogon, -8.1 );
setEffRotateKey( spep_5 + 92 -a , ct_dogon, -8 );
setEffRotateKey( spep_5 + 96 -a , ct_dogon, -8 );

setEffAlphaKey( spep_5 + 40 -a , ct_dogon, 255 );
setEffAlphaKey( spep_5 + 80 -a , ct_dogon, 255 );
setEffAlphaKey( spep_5 + 82 -a , ct_dogon, 223 );
setEffAlphaKey( spep_5 + 84 -a , ct_dogon, 191 );
setEffAlphaKey( spep_5 + 86 -a , ct_dogon, 159 );
setEffAlphaKey( spep_5 + 88 -a , ct_dogon, 128 );
setEffAlphaKey( spep_5 + 90 -a , ct_dogon, 96 );
setEffAlphaKey( spep_5 + 92 -a , ct_dogon, 64 );
setEffAlphaKey( spep_5 + 94 -a , ct_dogon, 32 );
setEffAlphaKey( spep_5 + 96 -a , ct_dogon, 0 );

--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 38 , 1, 0 );  --消す
changeAnime( spep_5 + 0, 1, 105 );

setShakeChara(  spep_5,  1,  38,  10);  --揺れ
setMoveKey( spep_5 + 0, 1, 373.4, 614.7 , 0 );
setMoveKey( spep_5 + 2, 1, 278.8, 430.8 , 0 );
setMoveKey( spep_5 + 4, 1, 184, 247 , 0 );
setMoveKey( spep_5 + 6, 1, 89.2, 63.1 , 0 );
setMoveKey( spep_5 + 8, 1, -5.7, -120.7 , 0 );
setMoveKey( spep_5 + 10, 1, -12.5, -133.6 , 0 );
setMoveKey( spep_5 + 12, 1, -19.2, -146.4 , 0 );
setMoveKey( spep_5 + 14, 1, -26, -159.3 , 0 );
setMoveKey( spep_5 + 16, 1, -32.8, -172.1 , 0 );
setMoveKey( spep_5 + 18, 1, -39.5, -185 , 0 );
setMoveKey( spep_5 + 20, 1, -46.3, -197.8 , 0 );
setMoveKey( spep_5 + 22, 1, -53.1, -210.7 , 0 );
setMoveKey( spep_5 + 24, 1, -59.8, -223.5 , 0 );
setMoveKey( spep_5 + 26, 1, -66.6, -236.4 , 0 );
setMoveKey( spep_5 + 28, 1, -73.4, -249.2 , 0 );
setMoveKey( spep_5 + 30, 1, -80.1, -262.1 , 0 );
setMoveKey( spep_5 + 32, 1, -86.9, -274.9 , 0 );
setMoveKey( spep_5 + 34, 1, -93.7, -287.8 , 0 );
setMoveKey( spep_5 + 36, 1, -100.4, -300.6 , 0 );
setMoveKey( spep_5 + 38 , 1, -107.2, -313.5 , 0 );

setScaleKey( spep_5 + 0, 1, 7.27, 7.27 );
setScaleKey( spep_5 + 2, 1, 5.6, 5.6 );
setScaleKey( spep_5 + 4, 1, 3.93, 3.93 );
setScaleKey( spep_5 + 6, 1, 2.26, 2.26 );
setScaleKey( spep_5 + 8, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 10, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 16, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 22, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 28, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 32, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 34, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 36, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 38, 1, 0.11, 0.11 );

setRotateKey( spep_5 + 0, 1, -167.5 );
setRotateKey( spep_5 + 2, 1, -167.6 );
setRotateKey( spep_5 + 6, 1, -167.6 );
setRotateKey( spep_5 + 8, 1, -167.7 );
setRotateKey( spep_5 + 14, 1, -167.7 );
setRotateKey( spep_5 + 16, 1, -167.6 );
setRotateKey( spep_5 + 32, 1, -167.6 );
setRotateKey( spep_5 + 34, 1, -167.5 );
setRotateKey( spep_5 + 38  , 1, -167.5 );
--***最後***
lastBG = entryEffect(  spep_5,  SP_08,  0x80,  -1,  0,  0,  0);  --最後

setEffScaleKey(  spep_5,  lastBG,  1.0,  1.0);
setEffScaleKey(  spep_5+190,  lastBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  lastBG,  0,  0);
setEffMoveKey(  spep_5+190, lastBG,  0,  0);
setEffRotateKey(  spep_5,  lastBG,  0);
setEffRotateKey(  spep_5+190,  lastBG,  0);
setEffAlphaKey(  spep_5,  lastBG,  255);
setEffAlphaKey(  spep_5+190,  lastBG,  255);


last = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --最後

setEffScaleKey(  spep_5,  last,  1.0,  1.0);
setEffScaleKey(  spep_5+190,  last,  1.0,  1.0);
setEffMoveKey(  spep_5,  last,  0,  0);
setEffMoveKey(  spep_5+190, last,  0,  0);
setEffRotateKey(  spep_5,  last,  0);
setEffRotateKey(  spep_5+190,  last,  0);
setEffAlphaKey(  spep_5,  last,  255);
setEffAlphaKey(  spep_5+190,  last,  255);

entryFade(  spep_5+34,  2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  200);  --whitefade
entryFadeBg(  spep_5,  0,  190,  0,  0,  0,  0,  255);  --黒背景

--***SE***--
playSe(  spep_5,  8);  --落ちる
playSe(  spep_5+40,  1023);  --叩きつけ
playSe(  spep_5+42,  1014);  --叩きつけ

dealDamage(spep_5+80);
endPhase(spep_5+180);
end
