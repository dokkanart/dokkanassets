--ドクター・ゲロ--

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

--味方側
SP_01=	152808	;
SP_02=	152809	;

-- ズーム許可 --
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);
--この命令が肝。消さないと以降演出が再生されない。残しておくと敵側の演出が再生されるバグが生じる。(pre2)

-- 背景設定 --
entryFadeBg(0,0,154,0,10,10,10,200);
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 吸収演出
------------------------------------------------------
spep_kyusyu=6;

setDisp(spep_kyusyu,0,0);
setDisp(spep_kyusyu,1,0);

entryFade(spep_kyusyu,0,0,6,255,255,255,255);
entryFade(spep_kyusyu+146,2,4,6,255,255,255,255);

syuugou=entryEffectLife(spep_kyusyu,SP_01,148,0x100,-1,0,0,0);

setEffMoveKey(spep_kyusyu,syuugou,0,0,0);
setEffMoveKey(spep_kyusyu+148,syuugou,0,0,0);

setEffScaleKey(spep_kyusyu,syuugou,1.0,1.0);
setEffScaleKey(spep_kyusyu+148,syuugou,1.0,1.0);

setEffAlphaKey(spep_kyusyu,syuugou,255);
setEffAlphaKey(spep_kyusyu+148,syuugou,255);

setEffRotateKey(spep_kyusyu,syuugou,0);
setEffRotateKey(spep_kyusyu+148,syuugou,0);

setEffShake(spep_kyusyu+126,syuugou,22,25);

ryusen0=entryEffectLife(spep_kyusyu,922,130,0x80,-1,0,0,0);

setEffMoveKey(spep_kyusyu,ryusen0,0,0,0);
setEffMoveKey(spep_kyusyu+130,ryusen0,0,0,0);

setEffScaleKey(spep_kyusyu,ryusen0,1.2,1.2);
setEffScaleKey(spep_kyusyu+130,ryusen0,1.2,1.2);

setEffRotateKey(spep_kyusyu,ryusen0,90);
setEffRotateKey(spep_kyusyu+130,ryusen0,90);

setEffAlphaKey( spep_kyusyu + 0, ryusen0, 255 );
setEffAlphaKey( spep_kyusyu + 120, ryusen0, 255 );
setEffAlphaKey( spep_kyusyu + 122, ryusen0, 204 );
setEffAlphaKey( spep_kyusyu + 124, ryusen0, 153 );
setEffAlphaKey( spep_kyusyu + 126, ryusen0, 102 );
setEffAlphaKey( spep_kyusyu + 128, ryusen0, 51 );
setEffAlphaKey( spep_kyusyu + 130, ryusen0, 0 );

shuchusen0 = entryEffectLife( spep_kyusyu, 906, 130, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_kyusyu,  shuchusen0,  0,  0);
setEffScaleKey(  spep_kyusyu,  shuchusen0,  1.43, 2.03);
setEffRotateKey(  spep_kyusyu,  shuchusen0,  0);
setEffAlphaKey(  spep_kyusyu,  shuchusen0,  255);
setEffMoveKey(  spep_kyusyu+130,  shuchusen0,  0,  0);
setEffScaleKey(  spep_kyusyu+130,  shuchusen0,  1.43, 2.03);
setEffRotateKey(  spep_kyusyu+130,  shuchusen0,  0);
setEffAlphaKey( spep_kyusyu + 120, shuchusen0, 255 );
setEffAlphaKey( spep_kyusyu + 122, shuchusen0, 204 );
setEffAlphaKey( spep_kyusyu + 124, shuchusen0, 153 );
setEffAlphaKey( spep_kyusyu + 126, shuchusen0, 102 );
setEffAlphaKey( spep_kyusyu + 128, shuchusen0, 51 );
setEffAlphaKey( spep_kyusyu + 130, shuchusen0, 0 );

--書き文字　ビュッ
cthyu = entryEffectLife( spep_kyusyu + 126,  10043, 22, 0x100, -1, 0, -238.2, 171 );
setEffMoveKey( spep_kyusyu + 126, cthyu, -238.2, 171 , 0 );
setEffMoveKey( spep_kyusyu + 128, cthyu, -233.6, 175.5 , 0 );
setEffMoveKey( spep_kyusyu + 130, cthyu, -237.9, 171.4 , 0 );
setEffMoveKey( spep_kyusyu + 132, cthyu, -233.7, 175.4 , 0 );
setEffMoveKey( spep_kyusyu + 134, cthyu, -238.1, 170.9 , 0 );
setEffMoveKey( spep_kyusyu + 136, cthyu, -234.9, 174.1 , 0 );
setEffMoveKey( spep_kyusyu + 138, cthyu, -238.1, 170.9 , 0 );
setEffMoveKey( spep_kyusyu + 140, cthyu, -234.9, 174.1 , 0 );
setEffMoveKey( spep_kyusyu + 142, cthyu, -238.1, 170.9 , 0 );
setEffMoveKey( spep_kyusyu + 144, cthyu, -234.9, 174.1 , 0 );
setEffMoveKey( spep_kyusyu + 146, cthyu, -238.1, 170.9 , 0 );
setEffMoveKey( spep_kyusyu + 148, cthyu, -234.9, 174.1 , 0 );

setEffScaleKey( spep_kyusyu + 126, cthyu, 2.16, 2.16 );
setEffScaleKey( spep_kyusyu + 128, cthyu, 2.84, 2.84 );
setEffScaleKey( spep_kyusyu + 130, cthyu, 3.53, 3.53 );
setEffScaleKey( spep_kyusyu + 132, cthyu, 2.8, 2.8 );
setEffScaleKey( spep_kyusyu + 134, cthyu, 2.07, 2.07 );

setEffAlphaKey( spep_kyusyu + 126, cthyu, 255 );
setEffAlphaKey( spep_kyusyu + 148, cthyu, 255 );

setEffRotateKey( spep_kyusyu + 126, cthyu, -11.7 );
setEffRotateKey( spep_kyusyu + 128, cthyu, -11.6 );
setEffRotateKey( spep_kyusyu + 132, cthyu, -11.6 );
setEffRotateKey( spep_kyusyu + 134, cthyu, -11.7 );

ctgyuu= entryEffectLife( spep_kyusyu + 0,  10042, 126, 0x100, -1, 0, -113.1, 317.5 );
setEffMoveKey( spep_kyusyu + 0, ctgyuu, -113.1, 317.5 , 0 );
setEffMoveKey( spep_kyusyu + 2, ctgyuu, -109, 329.1 , 0 );
setEffMoveKey( spep_kyusyu + 4, ctgyuu, -114.2, 317.1 , 0 );
setEffMoveKey( spep_kyusyu + 6, ctgyuu, -107.1, 336.4 , 0 );
setEffMoveKey( spep_kyusyu + 8, ctgyuu, -114.2, 317.1 , 0 );
setEffMoveKey( spep_kyusyu + 10, ctgyuu, -108.5, 331 , 0 );
setEffMoveKey( spep_kyusyu + 12, ctgyuu, -113.6, 317.3 , 0 );
setEffMoveKey( spep_kyusyu + 14, ctgyuu, -109.1, 328.7 , 0 );
setEffMoveKey( spep_kyusyu + 16, ctgyuu, -113.6, 316.1 , 0 );
setEffMoveKey( spep_kyusyu + 18, ctgyuu, -109.4, 325.7 , 0 );
setEffMoveKey( spep_kyusyu + 20, ctgyuu, -113.8, 313.4 , 0 );
setEffMoveKey( spep_kyusyu + 22, ctgyuu, -109.7, 322.7 , 0 );
setEffMoveKey( spep_kyusyu + 24, ctgyuu, -114, 310.6 , 0 );
setEffMoveKey( spep_kyusyu + 26, ctgyuu, -110, 319.7 , 0 );
setEffMoveKey( spep_kyusyu + 28, ctgyuu, -114.2, 307.8 , 0 );
setEffMoveKey( spep_kyusyu + 30, ctgyuu, -110.3, 316.8 , 0 );
setEffMoveKey( spep_kyusyu + 32, ctgyuu, -114.4, 305.1 , 0 );
setEffMoveKey( spep_kyusyu + 34, ctgyuu, -110.6, 313.8 , 0 );
setEffMoveKey( spep_kyusyu + 36, ctgyuu, -114.6, 302.3 , 0 );
setEffMoveKey( spep_kyusyu + 38, ctgyuu, -110.9, 310.8 , 0 );
setEffMoveKey( spep_kyusyu + 40, ctgyuu, -114.8, 299.5 , 0 );
setEffMoveKey( spep_kyusyu + 42, ctgyuu, -111.2, 307.8 , 0 );
setEffMoveKey( spep_kyusyu + 44, ctgyuu, -115, 296.8 , 0 );
setEffMoveKey( spep_kyusyu + 46, ctgyuu, -111.4, 304.8 , 0 );
setEffMoveKey( spep_kyusyu + 48, ctgyuu, -115.2, 294 , 0 );
setEffMoveKey( spep_kyusyu + 50, ctgyuu, -111.7, 301.8 , 0 );
setEffMoveKey( spep_kyusyu + 52, ctgyuu, -115.4, 291.2 , 0 );
setEffMoveKey( spep_kyusyu + 54, ctgyuu, -112, 298.8 , 0 );
setEffMoveKey( spep_kyusyu + 56, ctgyuu, -115.7, 288.5 , 0 );
setEffMoveKey( spep_kyusyu + 58, ctgyuu, -112.3, 295.8 , 0 );
setEffMoveKey( spep_kyusyu + 60, ctgyuu, -115.9, 285.7 , 0 );
setEffMoveKey( spep_kyusyu + 62, ctgyuu, -112.6, 292.8 , 0 );
setEffMoveKey( spep_kyusyu + 64, ctgyuu, -116.1, 282.9 , 0 );
setEffMoveKey( spep_kyusyu + 66, ctgyuu, -112.9, 289.8 , 0 );
setEffMoveKey( spep_kyusyu + 68, ctgyuu, -116.3, 280.2 , 0 );
setEffMoveKey( spep_kyusyu + 70, ctgyuu, -113.2, 286.8 , 0 );
setEffMoveKey( spep_kyusyu + 72, ctgyuu, -116.5, 277.4 , 0 );
setEffMoveKey( spep_kyusyu + 74, ctgyuu, -113.5, 283.9 , 0 );
setEffMoveKey( spep_kyusyu + 76, ctgyuu, -116.7, 274.6 , 0 );
setEffMoveKey( spep_kyusyu + 78, ctgyuu, -113.8, 280.9 , 0 );
setEffMoveKey( spep_kyusyu + 80, ctgyuu, -116.9, 271.9 , 0 );
setEffMoveKey( spep_kyusyu + 82, ctgyuu, -114.1, 277.9 , 0 );
setEffMoveKey( spep_kyusyu + 84, ctgyuu, -117.1, 269.1 , 0 );
setEffMoveKey( spep_kyusyu + 86, ctgyuu, -114.4, 274.9 , 0 );
setEffMoveKey( spep_kyusyu + 88, ctgyuu, -117.4, 266.3 , 0 );
setEffMoveKey( spep_kyusyu + 90, ctgyuu, -114.7, 271.9 , 0 );
setEffMoveKey( spep_kyusyu + 92, ctgyuu, -117.6, 263.6 , 0 );
setEffMoveKey( spep_kyusyu + 94, ctgyuu, -115, 268.9 , 0 );
setEffMoveKey( spep_kyusyu + 96, ctgyuu, -117.8, 260.8 , 0 );
setEffMoveKey( spep_kyusyu + 98, ctgyuu, -115.3, 265.9 , 0 );
setEffMoveKey( spep_kyusyu + 100, ctgyuu, -118, 258.1 , 0 );
setEffMoveKey( spep_kyusyu + 102, ctgyuu, -115.6, 262.9 , 0 );
setEffMoveKey( spep_kyusyu + 104, ctgyuu, -118.2, 255.3 , 0 );
setEffMoveKey( spep_kyusyu + 106, ctgyuu, -115.9, 260 , 0 );
setEffMoveKey( spep_kyusyu + 108, ctgyuu, -118.4, 252.5 , 0 );
setEffMoveKey( spep_kyusyu + 110, ctgyuu, -116.3, 257 , 0 );
setEffMoveKey( spep_kyusyu + 112, ctgyuu, -118.6, 249.8 , 0 );
setEffMoveKey( spep_kyusyu + 114, ctgyuu, -116.6, 254 , 0 );
setEffMoveKey( spep_kyusyu + 116, ctgyuu, -118.8, 247 , 0 );
setEffMoveKey( spep_kyusyu + 118, ctgyuu, -116.9, 251 , 0 );
setEffMoveKey( spep_kyusyu + 120, ctgyuu, -119.1, 244.2 , 0 );
setEffMoveKey( spep_kyusyu + 122, ctgyuu, -117.2, 248 , 0 );
setEffMoveKey( spep_kyusyu + 124, ctgyuu, -119.3, 241.4 , 0 );
setEffMoveKey( spep_kyusyu + 126, ctgyuu, -119.5, 240 , 0 );

setEffScaleKey( spep_kyusyu + 0, ctgyuu, 1.4, 1.4 );
setEffScaleKey( spep_kyusyu + 2, ctgyuu, 2.06, 2.06 );
setEffScaleKey( spep_kyusyu + 4, ctgyuu, 2.71, 2.71 );
setEffScaleKey( spep_kyusyu + 6, ctgyuu, 3.37, 3.37 );
setEffScaleKey( spep_kyusyu + 8, ctgyuu, 2.81, 2.81 );
setEffScaleKey( spep_kyusyu + 10, ctgyuu, 2.39, 2.39 );
setEffScaleKey( spep_kyusyu + 12, ctgyuu, 2.1, 2.1 );
setEffScaleKey( spep_kyusyu + 14, ctgyuu, 1.96, 1.96 );
setEffScaleKey( spep_kyusyu + 16, ctgyuu, 1.94, 1.94 );
setEffScaleKey( spep_kyusyu + 18, ctgyuu, 1.92, 1.92 );
setEffScaleKey( spep_kyusyu + 20, ctgyuu, 1.9, 1.9 );
setEffScaleKey( spep_kyusyu + 22, ctgyuu, 1.88, 1.88 );
setEffScaleKey( spep_kyusyu + 24, ctgyuu, 1.86, 1.86 );
setEffScaleKey( spep_kyusyu + 26, ctgyuu, 1.84, 1.84 );
setEffScaleKey( spep_kyusyu + 28, ctgyuu, 1.82, 1.82 );
setEffScaleKey( spep_kyusyu + 30, ctgyuu, 1.8, 1.8 );
setEffScaleKey( spep_kyusyu + 32, ctgyuu, 1.78, 1.78 );
setEffScaleKey( spep_kyusyu + 34, ctgyuu, 1.76, 1.76 );
setEffScaleKey( spep_kyusyu + 36, ctgyuu, 1.74, 1.74 );
setEffScaleKey( spep_kyusyu + 38, ctgyuu, 1.72, 1.72 );
setEffScaleKey( spep_kyusyu + 40, ctgyuu, 1.7, 1.7 );
setEffScaleKey( spep_kyusyu + 42, ctgyuu, 1.68, 1.68 );
setEffScaleKey( spep_kyusyu + 44, ctgyuu, 1.66, 1.66 );
setEffScaleKey( spep_kyusyu + 46, ctgyuu, 1.64, 1.64 );
setEffScaleKey( spep_kyusyu + 48, ctgyuu, 1.62, 1.62 );
setEffScaleKey( spep_kyusyu + 50, ctgyuu, 1.6, 1.6 );
setEffScaleKey( spep_kyusyu + 52, ctgyuu, 1.58, 1.58 );
setEffScaleKey( spep_kyusyu + 54, ctgyuu, 1.56, 1.56 );
setEffScaleKey( spep_kyusyu + 56, ctgyuu, 1.54, 1.54 );
setEffScaleKey( spep_kyusyu + 58, ctgyuu, 1.52, 1.52 );
setEffScaleKey( spep_kyusyu + 60, ctgyuu, 1.5, 1.5 );
setEffScaleKey( spep_kyusyu + 62, ctgyuu, 1.48, 1.48 );
setEffScaleKey( spep_kyusyu + 64, ctgyuu, 1.46, 1.46 );
setEffScaleKey( spep_kyusyu + 66, ctgyuu, 1.45, 1.45 );
setEffScaleKey( spep_kyusyu + 68, ctgyuu, 1.43, 1.43 );
setEffScaleKey( spep_kyusyu + 70, ctgyuu, 1.41, 1.41 );
setEffScaleKey( spep_kyusyu + 72, ctgyuu, 1.39, 1.39 );
setEffScaleKey( spep_kyusyu + 74, ctgyuu, 1.37, 1.37 );
setEffScaleKey( spep_kyusyu + 76, ctgyuu, 1.35, 1.35 );
setEffScaleKey( spep_kyusyu + 78, ctgyuu, 1.33, 1.33 );
setEffScaleKey( spep_kyusyu + 80, ctgyuu, 1.31, 1.31 );
setEffScaleKey( spep_kyusyu + 82, ctgyuu, 1.29, 1.29 );
setEffScaleKey( spep_kyusyu + 84, ctgyuu, 1.27, 1.27 );
setEffScaleKey( spep_kyusyu + 86, ctgyuu, 1.25, 1.25 );
setEffScaleKey( spep_kyusyu + 88, ctgyuu, 1.23, 1.23 );
setEffScaleKey( spep_kyusyu + 90, ctgyuu, 1.21, 1.21 );
setEffScaleKey( spep_kyusyu + 92, ctgyuu, 1.19, 1.19 );
setEffScaleKey( spep_kyusyu + 94, ctgyuu, 1.17, 1.17 );
setEffScaleKey( spep_kyusyu + 96, ctgyuu, 1.15, 1.15 );
setEffScaleKey( spep_kyusyu + 98, ctgyuu, 1.13, 1.13 );
setEffScaleKey( spep_kyusyu + 100, ctgyuu, 1.11, 1.11 );
setEffScaleKey( spep_kyusyu + 102, ctgyuu, 1.09, 1.09 );
setEffScaleKey( spep_kyusyu + 104, ctgyuu, 1.07, 1.07 );
setEffScaleKey( spep_kyusyu + 106, ctgyuu, 1.05, 1.05 );
setEffScaleKey( spep_kyusyu + 108, ctgyuu, 1.03, 1.03 );
setEffScaleKey( spep_kyusyu + 110, ctgyuu, 1.01, 1.01 );
setEffScaleKey( spep_kyusyu + 112, ctgyuu, 0.99, 0.99 );
setEffScaleKey( spep_kyusyu + 114, ctgyuu, 0.97, 0.97 );
setEffScaleKey( spep_kyusyu + 116, ctgyuu, 0.95, 0.95 );
setEffScaleKey( spep_kyusyu + 118, ctgyuu, 0.93, 0.93 );
setEffScaleKey( spep_kyusyu + 120, ctgyuu, 0.92, 0.92 );
setEffScaleKey( spep_kyusyu + 122, ctgyuu, 0.89, 0.89 );
setEffScaleKey( spep_kyusyu + 124, ctgyuu, 0.87, 0.87 );
setEffScaleKey( spep_kyusyu + 126, ctgyuu, 0.85, 0.85 );

setEffRotateKey( spep_kyusyu + 0, ctgyuu, -17.3 );
setEffRotateKey( spep_kyusyu + 126, ctgyuu, -17.3 );

setEffAlphaKey( spep_kyusyu + 0, ctgyuu, 255 );
setEffAlphaKey( spep_kyusyu + 120, ctgyuu, 255 );
setEffAlphaKey( spep_kyusyu + 122, ctgyuu, 170 );
setEffAlphaKey( spep_kyusyu + 124, ctgyuu, 85 );
setEffAlphaKey( spep_kyusyu + 126, ctgyuu, 0 );

--Seid1=
Seid1=playSe(spep_kyusyu,15);
stopSe(spep_kyusyu+58,Seid1,0);

--Seid2=
playSe(spep_kyusyu+60,17);
stopSe(spep_kyusyu+120,Seid2,0);

--------------------------------------
--北
--------------------------------------
spep_kaihuku=spep_kyusyu+148;

entryFadeBg(spep_kaihuku,0,228,0,10,10,10,200);

Heal=entryEffectLife( spep_kaihuku, SP_02, 128, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_kaihuku,Heal,0,0,0);
setEffMoveKey(spep_kaihuku+128,Heal,0,0,0);

setEffScaleKey(spep_kaihuku,Heal,1.0,1.0);
setEffScaleKey(spep_kaihuku+128,Heal,1.0,1.0);

setEffAlphaKey(spep_kaihuku,Heal,255);
setEffAlphaKey(spep_kaihuku+128,Heal,255);

setEffRotateKey(spep_kaihuku,Heal,0);
setEffRotateKey(spep_kaihuku+128,Heal,0);

shuchusen2 = entryEffectLife( spep_kaihuku, 906, 128, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_kaihuku,  shuchusen2,  0,  0);
setEffScaleKey(  spep_kaihuku,  shuchusen2,  1.43, 2.03);
setEffRotateKey(  spep_kaihuku,  shuchusen2,  0);
setEffAlphaKey(  spep_kaihuku,  shuchusen2,  255);
setEffMoveKey(  spep_kaihuku+128,  shuchusen2,  0,  0);
setEffScaleKey(  spep_kaihuku+128,  shuchusen2,  1.43, 2.03);
setEffRotateKey(  spep_kaihuku+128,  shuchusen2,  0);
setEffAlphaKey(  spep_kaihuku+128,  shuchusen2,  255);

CNT_HEAL_START = 30;

recover(spep_kaihuku+CNT_HEAL_START);

entryFade( spep_kaihuku+118, 9,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_kaihuku+CNT_HEAL_START,46); -- ポジティブ効果音

endPhase(spep_kaihuku+128);
