--sp1095 サンダーフラッシュ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

--エフェクト
SP_01 = 150296;--手前突進80
SP_02 = 150297;--横移動攻撃前70
SP_03 = 150298;--攻撃から吹き飛ばし100
SP_04 = 150299;--肘打ち130
SP_05 = 150300;--ためシーン100
SP_06 = 150301;--ぴかぴか100
SP_07 = 150302;--発射2200
SP_08 = 150303;--でかいひっと14

multi_frm = 2;


------------------------------------------------------
-- テンプレ
------------------------------------------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

------------------------------------------------------
-- 溜め手前突進(80F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0 ;

entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeスタート
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 210);          -- ベース暗め　背景


tos = entryEffect(  spep_0,   SP_01,   0x80,  -1,  0,  0,  0);   -- 溜め
setEffScaleKey( spep_0, tos, 1.0, 1.0);
setEffAlphaKey( spep_0, tos, 255);
setEffMoveKey( spep_0, tos,   0, 0);
setEffRotateKey(  spep_0,  tos,  0);
setEffScaleKey( spep_0+80, tos, 1.0, 1.0);
setEffAlphaKey( spep_0+80, tos, 255);
setEffMoveKey( spep_0+80, tos,   0, 0);
setEffRotateKey(  spep_0+80,  tos,  0);
setEffShake(spep_0, tos, 80, 5);

entryFade( spep_0+14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_0, SE_01);

playSe( spep_0+20, 1018);

shuchusenkamae= entryEffectLife( spep_0, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_0, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_0, shuchusenkamae, 255);
setEffRotateKey(  spep_0, shuchusenkamae,  0);
setEffScaleKey( spep_0+80, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_0+80, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_0+80, shuchusenkamae, 255);
setEffRotateKey(  spep_0+80, shuchusenkamae,  0);

------------------------------------------------------
-- 敵に突っ込む（66F）
------------------------------------------------------
spep_1=spep_0+80;

entryFade( spep_1-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 66, 0, 0, 0, 0, 210);          -- ベース暗め　背景

-- setRotateKey( spep_1,  1,  0 );

ryusenkeruyo = entryEffectLife( spep_1, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線横

setEffRotateKey( spep_1, ryusenkeruyo, 0);
setEffScaleKey( spep_1, ryusenkeruyo, 1.0, 1.3);
setEffAlphaKey( spep_1, ryusenkeruyo, 255);
setEffMoveKey(  spep_1,  ryusenkeruyo,  0,  0);
setEffRotateKey( spep_1+66, ryusenkeruyo, 0);
setEffScaleKey( spep_1+66, ryusenkeruyo, 1.0, 1.3);
setEffAlphaKey( spep_1+66, ryusenkeruyo, 255);
setEffMoveKey(  spep_1+66,  ryusenkeruyo,  0,  0);

tukkomu = entryEffect(  spep_1,   SP_02,   0x80,  -1,  0,  0,  0);   -- 迫る

setEffScaleKey( spep_1, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_1, tukkomu, 255);
setEffMoveKey( spep_1, tukkomu,   0, 0);
setEffRotateKey(  spep_1,  tukkomu,  0);
setEffScaleKey( spep_1+66, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_1+66, tukkomu, 255);
setEffMoveKey( spep_1+66, tukkomu,   0, 0);
setEffRotateKey(  spep_1+66,  tukkomu,  0);


playSe( spep_1, 1018);


-- 書き文字エントリー
drawtext_zuoot = entryEffectLife( spep_1 + 4, 10012, 42, 0x100, -1, 0, -118, 279.9 );  -- ズオッ
setEffShake(spep_1+4, drawtext_zuoot, 42, 20);
setEffRotateKey(spep_1+4,drawtext_zuoot,30);

setEffMoveKey( spep_1 + 4, drawtext_zuoot, -118, 279.9 , 0 );
setEffMoveKey( spep_1 + 6, drawtext_zuoot, -98, 306.5 , 0 );
setEffMoveKey( spep_1 + 8, drawtext_zuoot, -91.4, 346.6 , 0 );
setEffMoveKey( spep_1 + 10, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 12, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 14, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 16, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 18, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 20, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 22, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 24, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 26, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 28, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 30, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 32, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 34, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 36, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 38, drawtext_zuoot, -49.2, 359.1 , 0 );
setEffMoveKey( spep_1 + 40, drawtext_zuoot, -62, 379.9 , 0 );
setEffMoveKey( spep_1 + 42, drawtext_zuoot, -23.6, 349.5 , 0 );
setEffMoveKey( spep_1 + 44, drawtext_zuoot, -46, 379.9 , 0 );
setEffMoveKey( spep_1 + 46, drawtext_zuoot, -38, 379.9 , 0 );

setEffScaleKey(spep_1+4,drawtext_zuoot,0.1,0.1);
setEffScaleKey(spep_1+8,drawtext_zuoot,2.7,2.7);
setEffScaleKey(spep_1+38,drawtext_zuoot,2.7,2.7);
setEffScaleKey(spep_1+44,drawtext_zuoot,6.5,6.5);

setEffAlphaKey( spep_1 + 4, drawtext_zuoot, 255 );
setEffAlphaKey( spep_1 + 36, drawtext_zuoot, 255 );
setEffAlphaKey( spep_1 + 38, drawtext_zuoot, 204 );
setEffAlphaKey( spep_1 + 40, drawtext_zuoot, 153 );
setEffAlphaKey( spep_1 + 42, drawtext_zuoot, 102 );
setEffAlphaKey( spep_1 + 44, drawtext_zuoot, 51 );
setEffAlphaKey( spep_1 + 46, drawtext_zuoot, 0 );



-- 敵の動き
setDisp( spep_1+40, 1, 1);
changeAnime( spep_1+40, 1, 100); --敵たちポーズ
setShakeChara( spep_1+40, 1, 26, 5); 

setMoveKey( spep_1 + 40, 1, 522.8, 40.5 , 0 );
setMoveKey( spep_1 + 42, 1, 476.3, 40.5 , 0 );


setScaleKey( spep_1 + 42, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 66, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 42, 1, 0 );
setRotateKey( spep_1 + 66, 1, 0 );

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 134;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,244, 40.5 , 0);
setScaleKey(   SP_dodge,   1, 1.63, 1.63);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey( SP_dodge+8, 1, 121.5, 40.5 , 0 );
setScaleKey(   SP_dodge+8,   1, 1.63, 1.63);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
-------------------
--回避じゃないとき
-------------------

setMoveKey( spep_1 + 44, 1, 429.9, 40.5 , 0 );
setMoveKey( spep_1 + 46, 1, 383.4, 40.5 , 0 );
setMoveKey( spep_1 + 48, 1, 337, 40.5 , 0 );
setMoveKey( spep_1 + 50, 1, 290.5, 40.5 , 0 );
setMoveKey( spep_1 + 52, 1, 244, 40.5 , 0 );
setMoveKey( spep_1 + 54, 1, 197.6, 40.5 , 0 );
setMoveKey( spep_1 + 56, 1, 151.1, 40.5 , 0 );
setMoveKey( spep_1 + 58, 1, 136.3, 40.5 , 0 );
setMoveKey( spep_1 + 60, 1, 121.5, 40.5 , 0 );
setMoveKey( spep_1 + 62, 1, 106.6, 40.5 , 0 );
setMoveKey( spep_1 + 64, 1, 91.8, 40.5 , 0 );
setMoveKey( spep_1 + 66, 1, 77, 40.5 , 0 );


------------------------------------------------------
--連打(100F)
------------------------------------------------------
spep_2=spep_1 +66;

entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 210);          -- ベース暗め　背景
entryFade( spep_2+2, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+54, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_2+10, 1009);
playSe( spep_2+20, 1009);
playSe( spep_2+34, 1010);
playSe( spep_2+40, 1010);
playSe( spep_2+48, 1010);
playSe( spep_2+62, 1011);

ketta = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   -- 蹴り
setEffScaleKey( spep_2, ketta, 1.0, 1.0);
setEffAlphaKey( spep_2, ketta, 255);
setEffMoveKey( spep_2, ketta,   0, 0);
setEffRotateKey(  spep_2,  ketta,  0);
setEffScaleKey( spep_2+100, ketta, 1.0, 1.0);
setEffAlphaKey( spep_2+100, ketta, 255);
setEffMoveKey( spep_2+100, ketta,   0, 0);
setEffRotateKey(  spep_2+100,  ketta,  0);

shuchusenkamae2 = entryEffectLife( spep_2+8, 906, 92, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+8, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_2+8, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_2+8, shuchusenkamae, 255);
setEffRotateKey(  spep_2+8, shuchusenkamae,  0);
setEffScaleKey( spep_2+100, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_2+100, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_2+100, shuchusenkamae, 255);
setEffRotateKey(  spep_2+100, shuchusenkamae,  0);


ryusenketta = entryEffectLife( spep_2, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, ryusenketta, 0);
setEffScaleKey( spep_2, ryusenketta, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusenketta, 255);
setEffAlphaKey( spep_2+60, ryusenketta, 255);
setEffAlphaKey( spep_2+66, ryusenketta, 100);

shuchusenfuttobi= entryEffectLife( spep_2+66, 921, 34, 0x80,  -1, 0,  0,  0);   -- 流線奥行き
setEffScaleKey( spep_2+66, shuchusenfuttobi, 1.4, 1.2);
setEffAlphaKey( spep_2+66, shuchusenfuttobi, 255);
setEffRotateKey( spep_2+66, shuchusenfuttobi, 300);

-- 敵の動き
changeAnime( spep_2, 1, 100); --敵たちポーズ
setShakeChara( spep_2, 1, 6, 5); 

changeAnime( spep_2+6, 1, 108); --くのじ
setShakeChara( spep_2+6, 1, 68, 10); 

changeAnime( spep_2+74, 1, 106); --あおむけ
setShakeChara( spep_2+74, 1, 28, 5); 



setMoveKey( spep_2 + 0, 1, 60, 60.5 , 0 );
setMoveKey( spep_2 + 2, 1, 58.2, 60.5 , 0 );
setMoveKey( spep_2 + 4, 1, 56.3, 60.5 , 0 );
setMoveKey( spep_2 + 6, 1, -15.5, 64.2 , 0 );
setMoveKey( spep_2 + 8, 1, -15, 54.8 , 0 );
setMoveKey( spep_2 + 10, 1, -6.600000000000001, 69.4 , 0 );
setMoveKey( spep_2 + 12, 1, -6.300000000000001, 63.9 , 0 );
setMoveKey( spep_2 + 14, 1, 4.9, 73.1 , 0 );
setMoveKey( spep_2 + 16, 1, 8.7, 74.2 , 0 );
setMoveKey( spep_2 + 18, 1, 8.6, 63.4 , 0 );
setMoveKey( spep_2 + 20, 1, 18.3, 72.9 , 0 );
setMoveKey( spep_2 + 22, 1, 20.1, 64.5 , 0 );
setMoveKey( spep_2 + 24, 1, 30, 71.9 , 0 );
setMoveKey( spep_2 + 26, 1, 35.7, 71.9 , 0 );
setMoveKey( spep_2 + 28, 1, 42, 71.8 , 0 );
setMoveKey( spep_2 + 30, 1, 48.3, 71.7 , 0 );
setMoveKey( spep_2 + 32, 1, 48.4, 71.4 , 0 );
setMoveKey( spep_2 + 34, 1, 50.4, 68.8 , 0 );
setMoveKey( spep_2 + 36, 1, 55.8, 73.3 , 0 );
setMoveKey( spep_2 + 38, 1, 56.7, 65.8 , 0 );
setMoveKey( spep_2 + 40, 1, 65.4, 74.4 , 0 );
setMoveKey( spep_2 + 42, 1, 65.3, 66.8 , 0 );
setMoveKey( spep_2 + 44, 1, 74.1, 75.4 , 0 );
setMoveKey( spep_2 + 46, 1, 75.8, 67.9 , 0 );
setMoveKey( spep_2 + 48, 1, 80.6, 76.7 , 0 );
setMoveKey( spep_2 + 50, 1, 87.8, 77 , 0 );
setMoveKey( spep_2 + 52, 1, 88.8, 77.2 , 0 );
setMoveKey( spep_2 + 54, 1, 89.8, 77.5 , 0 );
setMoveKey( spep_2 + 56, 1, 90.8, 77.7 , 0 );
setMoveKey( spep_2 + 58, 1, 91.8, 78 , 0 );
setMoveKey( spep_2 + 60, 1, 109.5, 113.1 , 0 );
setMoveKey( spep_2 + 62, 1, 112, 123.9 , 0 );
setMoveKey( spep_2 + 64, 1, 122.4, 146.7 , 0 );
setMoveKey( spep_2 + 66, 1, 124.9, 157.5 , 0 );
setMoveKey( spep_2 + 68, 1, 135.5, 180.3 , 0 );
setMoveKey( spep_2 + 70, 1, 137.9, 189.1 , 0 );
setMoveKey( spep_2 + 72, 1, 148.4, 213.8 , 0 );
setMoveKey( spep_2 + 73, 1, 148.4, 213.8 , 0 );
setMoveKey( spep_2 + 74, 1, 202.6, 209 , 0 );
setMoveKey( spep_2 + 76, 1, 207.1, 238 , 0 );
setMoveKey( spep_2 + 78, 1, 211.6, 267 , 0 );
setMoveKey( spep_2 + 80, 1, 216.2, 296.1 , 0 );
setMoveKey( spep_2 + 82, 1, 219.8, 304.1 , 0 );
setMoveKey( spep_2 + 84, 1, 223.3, 312.1 , 0 );
setMoveKey( spep_2 + 86, 1, 226.9, 320 , 0 );
setMoveKey( spep_2 + 88, 1, 230.4, 328 , 0 );
setMoveKey( spep_2 + 90, 1, 234, 336 , 0 );
setMoveKey( spep_2 + 92, 1, 237.6, 344 , 0 );
setMoveKey( spep_2 + 94, 1, 241.1, 352 , 0 );
setMoveKey( spep_2 + 96, 1, 244.7, 360 , 0 );
setMoveKey( spep_2 + 98, 1, 248.2, 368 , 0 );

setScaleKey( spep_2 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 4, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 18, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 28, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 30, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 34, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 36, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 38, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 40, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 46, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 48, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 50, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 56, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 58, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 60, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 72, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 74, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 78, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 80, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 82, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 84, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 86, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 88, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 90, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 92, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 98, 1, 0.41, 0.41 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 73, 1, 0 );
setRotateKey( spep_2 + 74, 1, -33.8 );
setRotateKey( spep_2 + 76, 1, -28.1 );
setRotateKey( spep_2 + 78, 1, -22.4 );
setRotateKey( spep_2 + 80, 1, -16.7 );
setRotateKey( spep_2 + 98, 1, -16.7 );


------------------------------------------------------
--肘打ち(130F)
------------------------------------------------------
spep_3=spep_2 +100;
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 130, 0, 0, 0, 0, 210);          -- ベース暗め　背景

-- 敵の動き

changeAnime( spep_3, 1, 106); --あおむけ
setShakeChara( spep_3, 1, 26, 5); 

changeAnime( spep_3 + 60, 1, 108 );
setShakeChara( spep_3+60, 1, 70, 10); 



setMoveKey( spep_3 + 0, 1, -504, -788 , 0 );
setMoveKey( spep_3 + 2, 1, -450.2, -709.3 , 0 );
setMoveKey( spep_3 + 4, 1, -396.3, -630.6 , 0 );
setMoveKey( spep_3 + 6, 1, -342.4, -551.9 , 0 );
setMoveKey( spep_3 + 8, 1, -288.6, -473.2 , 0 );
setMoveKey( spep_3 + 10, 1, -234.7, -394.5 , 0 );
setMoveKey( spep_3 + 12, 1, -180.8, -315.8 , 0 );
setMoveKey( spep_3 + 14, 1, -127, -237.10000000000002 , 0 );
setMoveKey( spep_3 + 16, 1, -120.19999999999999, -227.3 , 0 );
setMoveKey( spep_3 + 18, 1, -113.5, -217.4 , 0 );
setMoveKey( spep_3 + 20, 1, -106.8, -207.6 , 0 );
setMoveKey( spep_3 + 22, 1, -100, -197.7 , 0 );
setMoveKey( spep_3 + 24, 1, -93.3, -187.9 , 0 );
setMoveKey( spep_3 + 26, 1, -86.5, -178 , 0 );
setMoveKey( spep_3 + 28, 1, -85.1, -175.7 , 0 );
setMoveKey( spep_3 + 30, 1, -83.7, -173.5 , 0 );
setMoveKey( spep_3 + 32, 1, -82.2, -171.2 , 0 );
setMoveKey( spep_3 + 34, 1, -80.8, -168.9 , 0 );
setMoveKey( spep_3 + 36, 1, -79.4, -166.6 , 0 );
setMoveKey( spep_3 + 38, 1, -77.9, -164.3 , 0 );
setMoveKey( spep_3 + 40, 1, -76.5, -162 , 0 );
setMoveKey( spep_3 + 42, 1, -75, -159.7 , 0 );
setMoveKey( spep_3 + 44, 1, -73.6, -157.4 , 0 );
setMoveKey( spep_3 + 46, 1, -72.2, -155.1 , 0 );
setMoveKey( spep_3 + 48, 1, -70.7, -152.8 , 0 );
setMoveKey( spep_3 + 50, 1, -69.3, -150.5 , 0 );
setMoveKey( spep_3 + 52, 1, -67.8, -148.2 , 0 );
setMoveKey( spep_3 + 54, 1, -58.5, -134.9 , 0 );
setMoveKey( spep_3 + 56, 1, -49.2, -121.6 , 0 );
setMoveKey( spep_3 + 58, 1, -39.8, -108.19999999999999 , 0 );
setMoveKey( spep_3 + 59, 1, -39.8, -108.19999999999999 , 0 );

setMoveKey( spep_3 + 60, 1, -8, 24.799999999999997 , 0 );
setMoveKey( spep_3 + 62, 1, -12, 9.100000000000001 , 0 );
setMoveKey( spep_3 + 64, 1, -8, 17.5 , 0 );
setMoveKey( spep_3 + 66, 1, -12, 3.8999999999999986 , 0 );
setMoveKey( spep_3 + 68, 1, -8, 10.2 , 0 );
setMoveKey( spep_3 + 70, 1, -12, -3.3999999999999986 , 0 );
setMoveKey( spep_3 + 72, 1, -8, 3 , 0 );
setMoveKey( spep_3 + 74, 1, -16, -6.699999999999999 , 0 );
setMoveKey( spep_3 + 76, 1, -8, -4.300000000000001 , 0 );
setMoveKey( spep_3 + 78, 1, -12, -18 , 0 );
setMoveKey( spep_3 + 80, 1, -8, -11.6 , 0 );
setMoveKey( spep_3 + 82, 1, -12, -23.2 , 0 );
setMoveKey( spep_3 + 84, 1, -8, -18.9 , 0 );
setMoveKey( spep_3 + 86, 1, -14, -34.5 , 0 );
setMoveKey( spep_3 + 88, 1, -8, -26.1 , 0 );
setMoveKey( spep_3 + 90, 1, -8, -29.7 , 0 );
setMoveKey( spep_3 + 92, 1, -8, -36 , 0 );
setMoveKey( spep_3 + 94, 1, -8, -42.4 , 0 );
setMoveKey( spep_3 + 96, 1, -8, -48.7 , 0 );
setMoveKey( spep_3 + 98, 1, -8, -55.1 , 0 );
setMoveKey( spep_3 + 100, 1, -8, -61.4 , 0 );
setMoveKey( spep_3 + 102, 1, -8, -67.7 , 0 );
setMoveKey( spep_3 + 104, 1, -8, -74.1 , 0 );
setMoveKey( spep_3 + 106, 1, -8, -80.4 , 0 );
setMoveKey( spep_3 + 108, 1, -8, -86.8 , 0 );
setMoveKey( spep_3 + 110, 1, -8, -93.1 , 0 );
setMoveKey( spep_3 + 112, 1, -8, -238.1 , 0 );
setMoveKey( spep_3 + 114, 1, -8, -383.1 , 0 );
setMoveKey( spep_3 + 116, 1, -8, -528.1 , 0 );
setMoveKey( spep_3 + 118, 1, -8, -673.1 , 0 );
setMoveKey( spep_3 + 120, 1, -8, -818.1 , 0 );
setMoveKey( spep_3 + 122, 1, -8, -963.1 , 0 );
setMoveKey( spep_3 + 124, 1, -8, -1108.1 , 0 );
setMoveKey( spep_3 + 126, 1, -8, -1253.1 , 0 );
setMoveKey( spep_3 + 128, 1, -8, -1398.1 , 0 );


setScaleKey( spep_3 + 0, 1, 4.37, 4.37 );
setScaleKey( spep_3 + 2, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 4, 1, 3.68, 3.68 );
setScaleKey( spep_3 + 6, 1, 3.34, 3.34 );
setScaleKey( spep_3 + 8, 1, 3, 3 );
setScaleKey( spep_3 + 10, 1, 2.66, 2.66 );
setScaleKey( spep_3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 14, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 16, 1, 1.94, 1.94 );
setScaleKey( spep_3 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 20, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 34, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 48, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 62, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 88, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 100, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 102, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 118, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 120, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 130, 1, 2.24, 2.24 );

setRotateKey( spep_3 + 0, 1, -16.7 );
setRotateKey( spep_3 + 6, 1, -16.7 );
setRotateKey( spep_3 + 8, 1, -16.6 );
setRotateKey( spep_3 + 38, 1, -16.6 );
setRotateKey( spep_3 + 40, 1, -16.7 );
setRotateKey( spep_3 + 58, 1, -16.7 );
setRotateKey( spep_3 + 59, 1, -16.7 );
setRotateKey( spep_3 + 60, 1, 80.2 );
setRotateKey( spep_3 + 130, 1, 80.2 );



ryusenhiji = entryEffectLife( spep_3, 921, 24, 0x80,  -1,  0,  0,  0); -- 流線斜めぱいくーはん出る前
setEffRotateKey( spep_3, ryusenhiji, -62);
setEffScaleKey( spep_3, ryusenhiji, 1.7, 1.2);
setEffAlphaKey( spep_3, ryusenhiji, 255);
setEffMoveKey( spep_3, ryusenhiji, 0,  0);
setEffRotateKey( spep_3+24, ryusenhiji, -62);
setEffScaleKey( spep_3+24, ryusenhiji, 1.7, 1.2);
setEffAlphaKey( spep_3+24, ryusenhiji, 255);
setEffMoveKey( spep_3+24, ryusenhiji, 0,  0);

entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade 


shuchusenhiji= entryEffectLife( spep_3+24, 906, 106, 0x100,  -1, 0,  0,  0);   -- 集中線ぱいくーはんでたあと

setEffScaleKey( spep_3+24, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_3+24, shuchusenhiji, 255);
setEffMoveKey(  spep_3+24,  shuchusenhiji,  0,  0);
setEffScaleKey( spep_3+130, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_3+130, shuchusenhiji, 255);
setEffMoveKey(  spep_3+130,  shuchusenhiji,  0,  0);



entryFade( spep_3+56, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 

tukkomu = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   -- 肘打ち-20
setEffScaleKey( spep_3, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_3, tukkomu, 255);
setEffMoveKey( spep_3, tukkomu,   0, 0, 0);

bishi = entryEffect(  spep_3,   SP_08,   0x100,  -1,  0,  0,  0);   -- 14F
setEffScaleKey( spep_3+60, bishi, 1.0, 1.0);
setEffAlphaKey( spep_3+60, bishi, 255);
setEffMoveKey( spep_3+60, bishi,   0, 0, 0);





ryusenhiji2 = entryEffectLife( spep_3+50, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線縦
setEffRotateKey( spep_3+50, ryusenhiji2, 90);
setEffScaleKey( spep_3+50, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+50, ryusenhiji2, 255);
setEffMoveKey(  spep_3+50,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+60, ryusenhiji2, 90);
setEffScaleKey( spep_3+60, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+60, ryusenhiji2, 255);
setEffMoveKey(  spep_3+60,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+61, ryusenhiji2, 90);
setEffScaleKey( spep_3+61, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+61, ryusenhiji2, 0);
setEffMoveKey(  spep_3+61,  ryusenhiji2,  1.0,  1.0);



setEffRotateKey( spep_3+74, ryusenhiji2, 90);
setEffScaleKey( spep_3+74, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+74, ryusenhiji2, 0);
setEffMoveKey(  spep_3+74,  ryusenhiji2,  1.0,  1.0);

setEffAlphaKey( spep_3+80, ryusenhiji2, 0);
setEffMoveKey(  spep_3+80,  ryusenhiji2,  1.0,  1.0);
setEffAlphaKey( spep_3+80, ryusenhiji2, 255);



setEffRotateKey( spep_3+130, ryusenhiji2, 90);
setEffScaleKey( spep_3+130, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+130, ryusenhiji2, 255);
setEffMoveKey(  spep_3+130,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+131, ryusenhiji2, 90);
setEffScaleKey( spep_3+131, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+131, ryusenhiji2, 0);
setEffMoveKey(  spep_3+131,  ryusenhiji2,  1.0,  1.0);

playSe(  spep_3+20,  43);
playSe( spep_3+62, 1011);

------------------------------------------------------
--エネルギー溜め(100F)
------------------------------------------------------
spep_4=spep_3+130;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景

setDisp( spep_4, 1, 0);
setMoveKey(   spep_4,   1,    0, -2000,   0);
setScaleKey(   spep_4,   1, 1.5, 1.5);
setRotateKey( spep_4,  1,  90 );
setRotateKey( spep_4+1,1,  0 );
playSe( spep_4+2, SE_01);

tukkomu = entryEffect(  spep_4,   SP_05,   0x100,  -1,  0,  0,  -200);   -- カード
setEffScaleKey( spep_4, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_4, tukkomu, 255);
setEffMoveKey( spep_4, tukkomu,   0, 0, -200);

--setEffShake(spep_4, tukkomu, 100, 5);

shuchusenhiji= entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenhiji, 255);
playSe( spep_4+20, SE_04);
--playSe( 73, SE_03);

speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+12, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_4+12, ct4, 70, 20);
setEffScaleKey(spep_4+12, ct4, 0.8, 0.8);
setEffRotateKey(spep_4+12, ct4, 0);
setEffAlphaKey( spep_4+12, ct4, 255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5=spep_4 +100;
entryFade( spep_5-6, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景


shuchusencard= entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusencard, 255);
setEffRotateKey(  spep_5,  shuchusencard,  0);
setEffMoveKey(  spep_5,  shuchusencard,  0,  0);
setEffScaleKey( spep_5+90, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_5+90, shuchusencard, 255);
setEffRotateKey(  spep_5+90,  shuchusencard,  0);
setEffMoveKey(  spep_5+90,  shuchusencard,  0,  0);

playSe( spep_5, SE_05);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
--被弾(220F)
------------------------------------------------------
spep_6=spep_5 +90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 220, 0, 0, 0, 0, 220);          -- ベース暗め　背景

tukkomu2 = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_6, tukkomu2, 1.0, 1.0);
setEffAlphaKey( spep_6, tukkomu2, 255);
setEffMoveKey( spep_6, tukkomu2,   0, 0, 0);

ryusenhidann = entryEffectLife( spep_6+30, 920, 190, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6+30, ryusenhidann, -90);
setEffScaleKey( spep_6+30, ryusenhidann, 1.6, 1.6);
setEffAlphaKey( spep_6+30, ryusenhidann, 255);

shuchusenhiji= entryEffectLife( spep_6, 906, 220, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenhiji, 255);

entryFade( spep_6+24, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+65, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



-- 書き文字エントリー
drawtext_zuoot2 = entryEffectLife( spep_6 + 66 + 4, 10012, 42, 0x100, -1, 0, -118, 279.9 );  -- ズオッ
setEffShake(spep_6 + 66+4, drawtext_zuoot2, 42, 20);
setEffRotateKey(spep_6 + 66+4,drawtext_zuoot2,30);

setEffMoveKey( spep_6 + 66 + 4, drawtext_zuoot2, -118, 279.9 , 0 );
setEffMoveKey( spep_6 + 66 + 6, drawtext_zuoot2, -98, 306.5 , 0 );
setEffMoveKey( spep_6 + 66 + 8, drawtext_zuoot2, -91.4, 346.6 , 0 );
setEffMoveKey( spep_6 + 66 + 10, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 12, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 14, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 16, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 18, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 20, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 22, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 24, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 26, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 28, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 30, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 32, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 34, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 36, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 38, drawtext_zuoot2, -49.2, 359.1 , 0 );
setEffMoveKey( spep_6 + 66 + 40, drawtext_zuoot2, -62, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 42, drawtext_zuoot2, -23.6, 349.5 , 0 );
setEffMoveKey( spep_6 + 66 + 44, drawtext_zuoot2, -46, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 46, drawtext_zuoot2, -38, 379.9 , 0 );


setEffScaleKey(spep_6+70,drawtext_zuoot2,0.1,0.1);
setEffScaleKey(spep_6+74,drawtext_zuoot2,2.7,2.7);
setEffScaleKey(spep_6+106,drawtext_zuoot2,2.7,2.7);
setEffScaleKey(spep_6+112,drawtext_zuoot2,6.5,6.5);

setEffAlphaKey( spep_6 + 66 + 4, drawtext_zuoot2, 255 );
setEffAlphaKey( spep_6 + 66 + 36, drawtext_zuoot2, 255 );
setEffAlphaKey( spep_6 + 66 + 38, drawtext_zuoot2, 204 );
setEffAlphaKey( spep_6 + 66 + 40, drawtext_zuoot2, 153 );
setEffAlphaKey( spep_6 + 66 + 42, drawtext_zuoot2, 102 );
setEffAlphaKey( spep_6 + 66 + 44, drawtext_zuoot2, 51 );
setEffAlphaKey( spep_6 + 66 + 46, drawtext_zuoot2, 0 );


--playSe( spep_6, SE_01);
playSe( spep_6+30, SE_06);
playSe( spep_5+70, SE_07);

--てきのうごき
setDisp( spep_6+164, 1, 1);
changeAnime( spep_6+164, 1, 108);                                    -- かめはめ発射ポーズ
setShakeChara( spep_6+164, 1, 56, 20);

setMoveKey( spep_6 + 164, 1, 4, -809.6 , 0 );
setMoveKey( spep_6 + 166, 1, 4, -729.6 , 0 );
setMoveKey( spep_6 + 168, 1, 4, -649.6 , 0 );
setMoveKey( spep_6 + 170, 1, 4, -569.6 , 0 );
setMoveKey( spep_6 + 172, 1, 4, -489.6 , 0 );
setMoveKey( spep_6 + 174, 1, 4, -409.6 , 0 );
setMoveKey( spep_6 + 176, 1, 4, -329.6 , 0 );
setMoveKey( spep_6 + 178, 1, 4, -324.3 , 0 );
setMoveKey( spep_6 + 180, 1, 4, -318.9 , 0 );
setMoveKey( spep_6 + 182, 1, 4, -313.6 , 0 );
setMoveKey( spep_6 + 184, 1, 4, -308.3 , 0 );
setMoveKey( spep_6 + 186, 1, 4, -302.9 , 0 );
setMoveKey( spep_6 + 188, 1, 4, -297.6 , 0 );
setMoveKey( spep_6 + 190, 1, 4, -292.3 , 0 );
setMoveKey( spep_6 + 192, 1, 4, -286.9 , 0 );
setMoveKey( spep_6 + 194, 1, 4, -281.6 , 0 );
setMoveKey( spep_6 + 196, 1, 4, -276.3 , 0 );
setMoveKey( spep_6 + 198, 1, 4, -270.9 , 0 );
setMoveKey( spep_6 + 200, 1, 4, -265.6 , 0 );
setMoveKey( spep_6 + 202, 1, 4, -260.3 , 0 );
setMoveKey( spep_6 + 204, 1, 4, -254.9 , 0 );
setMoveKey( spep_6 + 206, 1, 4, -249.6 , 0 );
setMoveKey( spep_6 + 208, 1, 4, -244.3 , 0 );
setMoveKey( spep_6 + 210, 1, 4, -238.9 , 0 );
setMoveKey( spep_6 + 212, 1, 4, -233.6 , 0 );
setMoveKey( spep_6 + 214, 1, 4, -228.3 , 0 );
setMoveKey( spep_6 + 216, 1, 4, -222.9 , 0 );
setMoveKey( spep_6 + 218, 1, 4, -217.6 , 0 );
setMoveKey( spep_6 + 220, 1, 4, -217.6 , 0 );

setScaleKey( spep_6 + 164, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 218, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 220, 1, 1.96, 1.96 );

setRotateKey( spep_6 + 164, 1, 80.2 );
setRotateKey( spep_6 + 218, 1, 80.2 );
setRotateKey( spep_6 + 220, 1, 80.2 );

------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_7=spep_6+220;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( spep_7-1,  1,  90 );
setMoveKey(   spep_7-1,  1,  0, -200, 0);

setMoveKey(   spep_7,   1,    200, -300,   0);
setScaleKey(   spep_7,   1, 2.5, 2.5);
setDisp( spep_7, 1, 0);

playSe( spep_7, 1024);

gyan=entryEffectLife(  spep_7,  190013,  60, 0,  -1,  0,  0,  0);   --ギャンおれんじ

ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);
setEffShake( spep_7, ctgyan, 45, 8);

------------------------------------------------------
--顔カットイン(256F)
------------------------------------------------------
spep_8=spep_7+60;
spep_9=spep_8;
entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+105, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 溜め手前突進(80F)
------------------------------------------------------

spep_0 = 0 ;

entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeスタート
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 210);          -- ベース暗め　背景


tos = entryEffect(  spep_0,   SP_01,   0x80,  -1,  0,  0,  0);   -- 溜め
setEffScaleKey( spep_0, tos, 1.0, 1.0);
setEffAlphaKey( spep_0, tos, 255);
setEffMoveKey( spep_0, tos,   0, 0);
setEffRotateKey(  spep_0,  tos,  0);
setEffScaleKey( spep_0+80, tos, 1.0, 1.0);
setEffAlphaKey( spep_0+80, tos, 255);
setEffMoveKey( spep_0+80, tos,   0, 0);
setEffRotateKey(  spep_0+80,  tos,  0);
setEffShake(spep_0, tos, 80, 5);

entryFade( spep_0+14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_0, SE_01);

playSe( spep_0+20, 1018);

shuchusenkamae= entryEffectLife( spep_0, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_0, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_0, shuchusenkamae, 255);
setEffRotateKey(  spep_0, shuchusenkamae,  0);
setEffScaleKey( spep_0+80, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_0+80, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_0+80, shuchusenkamae, 255);
setEffRotateKey(  spep_0+80, shuchusenkamae,  0);

------------------------------------------------------
-- 敵に突っ込む（66F）
------------------------------------------------------
spep_1=spep_0+80;

entryFade( spep_1-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 66, 0, 0, 0, 0, 210);          -- ベース暗め　背景

-- setRotateKey( spep_1,  1,  0 );

ryusenkeruyo = entryEffectLife( spep_1, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線横

setEffRotateKey( spep_1, ryusenkeruyo, 0);
setEffScaleKey( spep_1, ryusenkeruyo, 1.0, 1.3);
setEffAlphaKey( spep_1, ryusenkeruyo, 255);
setEffMoveKey(  spep_1,  ryusenkeruyo,  0,  0);
setEffRotateKey( spep_1+66, ryusenkeruyo, 0);
setEffScaleKey( spep_1+66, ryusenkeruyo, 1.0, 1.3);
setEffAlphaKey( spep_1+66, ryusenkeruyo, 255);
setEffMoveKey(  spep_1+66,  ryusenkeruyo,  0,  0);

tukkomu = entryEffect(  spep_1,   SP_02,   0x80,  -1,  0,  0,  0);   -- 迫る

setEffScaleKey( spep_1, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_1, tukkomu, 255);
setEffMoveKey( spep_1, tukkomu,   0, 0);
setEffRotateKey(  spep_1,  tukkomu,  0);
setEffScaleKey( spep_1+66, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_1+66, tukkomu, 255);
setEffMoveKey( spep_1+66, tukkomu,   0, 0);
setEffRotateKey(  spep_1+66,  tukkomu,  0);


playSe( spep_1, 1018);


-- 書き文字エントリー
drawtext_zuoot = entryEffectLife( spep_1 + 4, 10012, 42, 0x100, -1, 0, -118, 279.9 );  -- ズオッ
setEffShake(spep_1+4, drawtext_zuoot, 42, 20);
setEffRotateKey(spep_1+4,drawtext_zuoot,0);

setEffMoveKey( spep_1 + 4, drawtext_zuoot, -118, 279.9 , 0 );
setEffMoveKey( spep_1 + 6, drawtext_zuoot, -98, 306.5 , 0 );
setEffMoveKey( spep_1 + 8, drawtext_zuoot, -91.4, 346.6 , 0 );
setEffMoveKey( spep_1 + 10, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 12, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 14, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 16, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 18, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 20, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 22, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 24, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 26, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 28, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 30, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 32, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 34, drawtext_zuoot, -62, 363.9 , 0 );
setEffMoveKey( spep_1 + 36, drawtext_zuoot, -78, 379.9 , 0 );
setEffMoveKey( spep_1 + 38, drawtext_zuoot, -49.2, 359.1 , 0 );
setEffMoveKey( spep_1 + 40, drawtext_zuoot, -62, 379.9 , 0 );
setEffMoveKey( spep_1 + 42, drawtext_zuoot, -23.6, 349.5 , 0 );
setEffMoveKey( spep_1 + 44, drawtext_zuoot, -46, 379.9 , 0 );
setEffMoveKey( spep_1 + 46, drawtext_zuoot, -38, 379.9 , 0 );

setEffScaleKey(spep_1+4,drawtext_zuoot,0.1,0.1);
setEffScaleKey(spep_1+8,drawtext_zuoot,2.7,2.7);
setEffScaleKey(spep_1+38,drawtext_zuoot,2.7,2.7);
setEffScaleKey(spep_1+44,drawtext_zuoot,6.5,6.5);

setEffAlphaKey( spep_1 + 4, drawtext_zuoot, 255 );
setEffAlphaKey( spep_1 + 36, drawtext_zuoot, 255 );
setEffAlphaKey( spep_1 + 38, drawtext_zuoot, 204 );
setEffAlphaKey( spep_1 + 40, drawtext_zuoot, 153 );
setEffAlphaKey( spep_1 + 42, drawtext_zuoot, 102 );
setEffAlphaKey( spep_1 + 44, drawtext_zuoot, 51 );
setEffAlphaKey( spep_1 + 46, drawtext_zuoot, 0 );



-- 敵の動き
setDisp( spep_1+40, 1, 1);
changeAnime( spep_1+40, 1, 100); --敵たちポーズ
setShakeChara( spep_1+40, 1, 26, 5); 

setMoveKey( spep_1 + 40, 1, 522.8, 40.5 , 0 );
setMoveKey( spep_1 + 42, 1, 476.3, 40.5 , 0 );


setScaleKey( spep_1 + 42, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 66, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 42, 1, 0 );
setRotateKey( spep_1 + 66, 1, 0 );

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 134;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,244, 40.5 , 0);
setScaleKey(   SP_dodge,   1, 1.63, 1.63);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey( SP_dodge+8, 1, 121.5, 40.5 , 0 );
setScaleKey(   SP_dodge+8,   1, 1.63, 1.63);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
-------------------
--回避じゃないとき
-------------------

setMoveKey( spep_1 + 44, 1, 429.9, 40.5 , 0 );
setMoveKey( spep_1 + 46, 1, 383.4, 40.5 , 0 );
setMoveKey( spep_1 + 48, 1, 337, 40.5 , 0 );
setMoveKey( spep_1 + 50, 1, 290.5, 40.5 , 0 );
setMoveKey( spep_1 + 52, 1, 244, 40.5 , 0 );
setMoveKey( spep_1 + 54, 1, 197.6, 40.5 , 0 );
setMoveKey( spep_1 + 56, 1, 151.1, 40.5 , 0 );
setMoveKey( spep_1 + 58, 1, 136.3, 40.5 , 0 );
setMoveKey( spep_1 + 60, 1, 121.5, 40.5 , 0 );
setMoveKey( spep_1 + 62, 1, 106.6, 40.5 , 0 );
setMoveKey( spep_1 + 64, 1, 91.8, 40.5 , 0 );
setMoveKey( spep_1 + 66, 1, 77, 40.5 , 0 );


------------------------------------------------------
--連打(100F)
------------------------------------------------------
spep_2=spep_1 +66;

entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 210);          -- ベース暗め　背景
entryFade( spep_2+2, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+54, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_2+10, 1009);
playSe( spep_2+20, 1009);
playSe( spep_2+34, 1010);
playSe( spep_2+40, 1010);
playSe( spep_2+48, 1010);
playSe( spep_2+62, 1011);

ketta = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   -- 蹴り
setEffScaleKey( spep_2, ketta, 1.0, 1.0);
setEffAlphaKey( spep_2, ketta, 255);
setEffMoveKey( spep_2, ketta,   0, 0);
setEffRotateKey(  spep_2,  ketta,  0);
setEffScaleKey( spep_2+100, ketta, 1.0, 1.0);
setEffAlphaKey( spep_2+100, ketta, 255);
setEffMoveKey( spep_2+100, ketta,   0, 0);
setEffRotateKey(  spep_2+100,  ketta,  0);

shuchusenkamae2 = entryEffectLife( spep_2+8, 906, 92, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+8, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_2+8, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_2+8, shuchusenkamae, 255);
setEffRotateKey(  spep_2+8, shuchusenkamae,  0);
setEffScaleKey( spep_2+100, shuchusenkamae, 1.2, 1.2);
setEffMoveKey( spep_2+100, shuchusenkamae,   0, 0);
setEffAlphaKey( spep_2+100, shuchusenkamae, 255);
setEffRotateKey(  spep_2+100, shuchusenkamae,  0);


ryusenketta = entryEffectLife( spep_2, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, ryusenketta, 0);
setEffScaleKey( spep_2, ryusenketta, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusenketta, 255);
setEffAlphaKey( spep_2+60, ryusenketta, 255);
setEffAlphaKey( spep_2+66, ryusenketta, 100);

shuchusenfuttobi= entryEffectLife( spep_2+66, 921, 34, 0x80,  -1, 0,  0,  0);   -- 流線奥行き
setEffScaleKey( spep_2+66, shuchusenfuttobi, 1.4, 1.2);
setEffAlphaKey( spep_2+66, shuchusenfuttobi, 255);
setEffRotateKey( spep_2+66, shuchusenfuttobi, 300);

-- 敵の動き
changeAnime( spep_2, 1, 100); --敵たちポーズ
setShakeChara( spep_2, 1, 6, 5); 

changeAnime( spep_2+6, 1, 108); --くのじ
setShakeChara( spep_2+6, 1, 68, 10); 

changeAnime( spep_2+74, 1, 106); --あおむけ
setShakeChara( spep_2+74, 1, 28, 5); 



setMoveKey( spep_2 + 0, 1, 60, 60.5 , 0 );
setMoveKey( spep_2 + 2, 1, 58.2, 60.5 , 0 );
setMoveKey( spep_2 + 4, 1, 56.3, 60.5 , 0 );
setMoveKey( spep_2 + 6, 1, -15.5, 64.2 , 0 );
setMoveKey( spep_2 + 8, 1, -15, 54.8 , 0 );
setMoveKey( spep_2 + 10, 1, -6.600000000000001, 69.4 , 0 );
setMoveKey( spep_2 + 12, 1, -6.300000000000001, 63.9 , 0 );
setMoveKey( spep_2 + 14, 1, 4.9, 73.1 , 0 );
setMoveKey( spep_2 + 16, 1, 8.7, 74.2 , 0 );
setMoveKey( spep_2 + 18, 1, 8.6, 63.4 , 0 );
setMoveKey( spep_2 + 20, 1, 18.3, 72.9 , 0 );
setMoveKey( spep_2 + 22, 1, 20.1, 64.5 , 0 );
setMoveKey( spep_2 + 24, 1, 30, 71.9 , 0 );
setMoveKey( spep_2 + 26, 1, 35.7, 71.9 , 0 );
setMoveKey( spep_2 + 28, 1, 42, 71.8 , 0 );
setMoveKey( spep_2 + 30, 1, 48.3, 71.7 , 0 );
setMoveKey( spep_2 + 32, 1, 48.4, 71.4 , 0 );
setMoveKey( spep_2 + 34, 1, 50.4, 68.8 , 0 );
setMoveKey( spep_2 + 36, 1, 55.8, 73.3 , 0 );
setMoveKey( spep_2 + 38, 1, 56.7, 65.8 , 0 );
setMoveKey( spep_2 + 40, 1, 65.4, 74.4 , 0 );
setMoveKey( spep_2 + 42, 1, 65.3, 66.8 , 0 );
setMoveKey( spep_2 + 44, 1, 74.1, 75.4 , 0 );
setMoveKey( spep_2 + 46, 1, 75.8, 67.9 , 0 );
setMoveKey( spep_2 + 48, 1, 80.6, 76.7 , 0 );
setMoveKey( spep_2 + 50, 1, 87.8, 77 , 0 );
setMoveKey( spep_2 + 52, 1, 88.8, 77.2 , 0 );
setMoveKey( spep_2 + 54, 1, 89.8, 77.5 , 0 );
setMoveKey( spep_2 + 56, 1, 90.8, 77.7 , 0 );
setMoveKey( spep_2 + 58, 1, 91.8, 78 , 0 );
setMoveKey( spep_2 + 60, 1, 109.5, 113.1 , 0 );
setMoveKey( spep_2 + 62, 1, 112, 123.9 , 0 );
setMoveKey( spep_2 + 64, 1, 122.4, 146.7 , 0 );
setMoveKey( spep_2 + 66, 1, 124.9, 157.5 , 0 );
setMoveKey( spep_2 + 68, 1, 135.5, 180.3 , 0 );
setMoveKey( spep_2 + 70, 1, 137.9, 189.1 , 0 );
setMoveKey( spep_2 + 72, 1, 148.4, 213.8 , 0 );
setMoveKey( spep_2 + 73, 1, 148.4, 213.8 , 0 );
setMoveKey( spep_2 + 74, 1, 202.6, 209 , 0 );
setMoveKey( spep_2 + 76, 1, 207.1, 238 , 0 );
setMoveKey( spep_2 + 78, 1, 211.6, 267 , 0 );
setMoveKey( spep_2 + 80, 1, 216.2, 296.1 , 0 );
setMoveKey( spep_2 + 82, 1, 219.8, 304.1 , 0 );
setMoveKey( spep_2 + 84, 1, 223.3, 312.1 , 0 );
setMoveKey( spep_2 + 86, 1, 226.9, 320 , 0 );
setMoveKey( spep_2 + 88, 1, 230.4, 328 , 0 );
setMoveKey( spep_2 + 90, 1, 234, 336 , 0 );
setMoveKey( spep_2 + 92, 1, 237.6, 344 , 0 );
setMoveKey( spep_2 + 94, 1, 241.1, 352 , 0 );
setMoveKey( spep_2 + 96, 1, 244.7, 360 , 0 );
setMoveKey( spep_2 + 98, 1, 248.2, 368 , 0 );

setScaleKey( spep_2 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 4, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 18, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 26, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 28, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 30, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 34, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 36, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 38, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 40, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 46, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 48, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 50, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 56, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 58, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 60, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 72, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 74, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 78, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 80, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 82, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 84, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 86, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 88, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 90, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 92, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 94, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 96, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 98, 1, 0.41, 0.41 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 73, 1, 0 );
setRotateKey( spep_2 + 74, 1, -33.8 );
setRotateKey( spep_2 + 76, 1, -28.1 );
setRotateKey( spep_2 + 78, 1, -22.4 );
setRotateKey( spep_2 + 80, 1, -16.7 );
setRotateKey( spep_2 + 98, 1, -16.7 );


------------------------------------------------------
--肘打ち(130F)
------------------------------------------------------
spep_3=spep_2 +100;
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 130, 0, 0, 0, 0, 210);          -- ベース暗め　背景

-- 敵の動き

changeAnime( spep_3, 1, 106); --あおむけ
setShakeChara( spep_3, 1, 26, 5); 

changeAnime( spep_3 + 60, 1, 108 );
setShakeChara( spep_3+60, 1, 70, 10); 



setMoveKey( spep_3 + 0, 1, -504, -788 , 0 );
setMoveKey( spep_3 + 2, 1, -450.2, -709.3 , 0 );
setMoveKey( spep_3 + 4, 1, -396.3, -630.6 , 0 );
setMoveKey( spep_3 + 6, 1, -342.4, -551.9 , 0 );
setMoveKey( spep_3 + 8, 1, -288.6, -473.2 , 0 );
setMoveKey( spep_3 + 10, 1, -234.7, -394.5 , 0 );
setMoveKey( spep_3 + 12, 1, -180.8, -315.8 , 0 );
setMoveKey( spep_3 + 14, 1, -127, -237.10000000000002 , 0 );
setMoveKey( spep_3 + 16, 1, -120.19999999999999, -227.3 , 0 );
setMoveKey( spep_3 + 18, 1, -113.5, -217.4 , 0 );
setMoveKey( spep_3 + 20, 1, -106.8, -207.6 , 0 );
setMoveKey( spep_3 + 22, 1, -100, -197.7 , 0 );
setMoveKey( spep_3 + 24, 1, -93.3, -187.9 , 0 );
setMoveKey( spep_3 + 26, 1, -86.5, -178 , 0 );
setMoveKey( spep_3 + 28, 1, -85.1, -175.7 , 0 );
setMoveKey( spep_3 + 30, 1, -83.7, -173.5 , 0 );
setMoveKey( spep_3 + 32, 1, -82.2, -171.2 , 0 );
setMoveKey( spep_3 + 34, 1, -80.8, -168.9 , 0 );
setMoveKey( spep_3 + 36, 1, -79.4, -166.6 , 0 );
setMoveKey( spep_3 + 38, 1, -77.9, -164.3 , 0 );
setMoveKey( spep_3 + 40, 1, -76.5, -162 , 0 );
setMoveKey( spep_3 + 42, 1, -75, -159.7 , 0 );
setMoveKey( spep_3 + 44, 1, -73.6, -157.4 , 0 );
setMoveKey( spep_3 + 46, 1, -72.2, -155.1 , 0 );
setMoveKey( spep_3 + 48, 1, -70.7, -152.8 , 0 );
setMoveKey( spep_3 + 50, 1, -69.3, -150.5 , 0 );
setMoveKey( spep_3 + 52, 1, -67.8, -148.2 , 0 );
setMoveKey( spep_3 + 54, 1, -58.5, -134.9 , 0 );
setMoveKey( spep_3 + 56, 1, -49.2, -121.6 , 0 );
setMoveKey( spep_3 + 58, 1, -39.8, -108.19999999999999 , 0 );
setMoveKey( spep_3 + 59, 1, -39.8, -108.19999999999999 , 0 );

setMoveKey( spep_3 + 60, 1, -8, 24.799999999999997 , 0 );
setMoveKey( spep_3 + 62, 1, -12, 9.100000000000001 , 0 );
setMoveKey( spep_3 + 64, 1, -8, 17.5 , 0 );
setMoveKey( spep_3 + 66, 1, -12, 3.8999999999999986 , 0 );
setMoveKey( spep_3 + 68, 1, -8, 10.2 , 0 );
setMoveKey( spep_3 + 70, 1, -12, -3.3999999999999986 , 0 );
setMoveKey( spep_3 + 72, 1, -8, 3 , 0 );
setMoveKey( spep_3 + 74, 1, -16, -6.699999999999999 , 0 );
setMoveKey( spep_3 + 76, 1, -8, -4.300000000000001 , 0 );
setMoveKey( spep_3 + 78, 1, -12, -18 , 0 );
setMoveKey( spep_3 + 80, 1, -8, -11.6 , 0 );
setMoveKey( spep_3 + 82, 1, -12, -23.2 , 0 );
setMoveKey( spep_3 + 84, 1, -8, -18.9 , 0 );
setMoveKey( spep_3 + 86, 1, -14, -34.5 , 0 );
setMoveKey( spep_3 + 88, 1, -8, -26.1 , 0 );
setMoveKey( spep_3 + 90, 1, -8, -29.7 , 0 );
setMoveKey( spep_3 + 92, 1, -8, -36 , 0 );
setMoveKey( spep_3 + 94, 1, -8, -42.4 , 0 );
setMoveKey( spep_3 + 96, 1, -8, -48.7 , 0 );
setMoveKey( spep_3 + 98, 1, -8, -55.1 , 0 );
setMoveKey( spep_3 + 100, 1, -8, -61.4 , 0 );
setMoveKey( spep_3 + 102, 1, -8, -67.7 , 0 );
setMoveKey( spep_3 + 104, 1, -8, -74.1 , 0 );
setMoveKey( spep_3 + 106, 1, -8, -80.4 , 0 );
setMoveKey( spep_3 + 108, 1, -8, -86.8 , 0 );
setMoveKey( spep_3 + 110, 1, -8, -93.1 , 0 );
setMoveKey( spep_3 + 112, 1, -8, -238.1 , 0 );
setMoveKey( spep_3 + 114, 1, -8, -383.1 , 0 );
setMoveKey( spep_3 + 116, 1, -8, -528.1 , 0 );
setMoveKey( spep_3 + 118, 1, -8, -673.1 , 0 );
setMoveKey( spep_3 + 120, 1, -8, -818.1 , 0 );
setMoveKey( spep_3 + 122, 1, -8, -963.1 , 0 );
setMoveKey( spep_3 + 124, 1, -8, -1108.1 , 0 );
setMoveKey( spep_3 + 126, 1, -8, -1253.1 , 0 );
setMoveKey( spep_3 + 128, 1, -8, -1398.1 , 0 );


setScaleKey( spep_3 + 0, 1, 4.37, 4.37 );
setScaleKey( spep_3 + 2, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 4, 1, 3.68, 3.68 );
setScaleKey( spep_3 + 6, 1, 3.34, 3.34 );
setScaleKey( spep_3 + 8, 1, 3, 3 );
setScaleKey( spep_3 + 10, 1, 2.66, 2.66 );
setScaleKey( spep_3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 14, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 16, 1, 1.94, 1.94 );
setScaleKey( spep_3 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 20, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 24, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 30, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 34, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 48, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 60, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 62, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 88, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 90, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 100, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 102, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 118, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 120, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 130, 1, 2.24, 2.24 );

setRotateKey( spep_3 + 0, 1, -16.7 );
setRotateKey( spep_3 + 6, 1, -16.7 );
setRotateKey( spep_3 + 8, 1, -16.6 );
setRotateKey( spep_3 + 38, 1, -16.6 );
setRotateKey( spep_3 + 40, 1, -16.7 );
setRotateKey( spep_3 + 58, 1, -16.7 );
setRotateKey( spep_3 + 59, 1, -16.7 );
setRotateKey( spep_3 + 60, 1, 80.2 );
setRotateKey( spep_3 + 130, 1, 80.2 );



ryusenhiji = entryEffectLife( spep_3, 921, 24, 0x80,  -1,  0,  0,  0); -- 流線斜めぱいくーはん出る前
setEffRotateKey( spep_3, ryusenhiji, -62);
setEffScaleKey( spep_3, ryusenhiji, 1.7, 1.2);
setEffAlphaKey( spep_3, ryusenhiji, 255);
setEffMoveKey( spep_3, ryusenhiji, 0,  0);
setEffRotateKey( spep_3+24, ryusenhiji, -62);
setEffScaleKey( spep_3+24, ryusenhiji, 1.7, 1.2);
setEffAlphaKey( spep_3+24, ryusenhiji, 255);
setEffMoveKey( spep_3+24, ryusenhiji, 0,  0);

entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade 


shuchusenhiji= entryEffectLife( spep_3+24, 906, 106, 0x100,  -1, 0,  0,  0);   -- 集中線ぱいくーはんでたあと

setEffScaleKey( spep_3+24, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_3+24, shuchusenhiji, 255);
setEffMoveKey(  spep_3+24,  shuchusenhiji,  0,  0);
setEffScaleKey( spep_3+130, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_3+130, shuchusenhiji, 255);
setEffMoveKey(  spep_3+130,  shuchusenhiji,  0,  0);



entryFade( spep_3+56, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 

tukkomu = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   -- 肘打ち-20
setEffScaleKey( spep_3, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_3, tukkomu, 255);
setEffMoveKey( spep_3, tukkomu,   0, 0, 0);

bishi = entryEffect(  spep_3,   SP_08,   0x100,  -1,  0,  0,  0);   -- 14F
setEffScaleKey( spep_3+60, bishi, 1.0, 1.0);
setEffAlphaKey( spep_3+60, bishi, 255);
setEffMoveKey( spep_3+60, bishi,   0, 0, 0);





ryusenhiji2 = entryEffectLife( spep_3+50, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線縦
setEffRotateKey( spep_3+50, ryusenhiji2, 90);
setEffScaleKey( spep_3+50, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+50, ryusenhiji2, 255);
setEffMoveKey(  spep_3+50,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+60, ryusenhiji2, 90);
setEffScaleKey( spep_3+60, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+60, ryusenhiji2, 255);
setEffMoveKey(  spep_3+60,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+61, ryusenhiji2, 90);
setEffScaleKey( spep_3+61, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+61, ryusenhiji2, 0);
setEffMoveKey(  spep_3+61,  ryusenhiji2,  1.0,  1.0);



setEffRotateKey( spep_3+74, ryusenhiji2, 90);
setEffScaleKey( spep_3+74, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+74, ryusenhiji2, 0);
setEffMoveKey(  spep_3+74,  ryusenhiji2,  1.0,  1.0);

setEffAlphaKey( spep_3+80, ryusenhiji2, 0);
setEffMoveKey(  spep_3+80,  ryusenhiji2,  1.0,  1.0);
setEffAlphaKey( spep_3+80, ryusenhiji2, 255);



setEffRotateKey( spep_3+130, ryusenhiji2, 90);
setEffScaleKey( spep_3+130, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+130, ryusenhiji2, 255);
setEffMoveKey(  spep_3+130,  ryusenhiji2,  1.0,  1.0);
setEffRotateKey( spep_3+131, ryusenhiji2, 90);
setEffScaleKey( spep_3+131, ryusenhiji2, 1.6, 1.6);
setEffAlphaKey( spep_3+131, ryusenhiji2, 0);
setEffMoveKey(  spep_3+131,  ryusenhiji2,  1.0,  1.0);

playSe(  spep_3+20,  43);
playSe( spep_3+62, 1011);

------------------------------------------------------
--エネルギー溜め(100F)
------------------------------------------------------
spep_4=spep_3+130;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景

setDisp( spep_4, 1, 0);
setMoveKey(   spep_4,   1,    0, -2000,   0);
setScaleKey(   spep_4,   1, 1.5, 1.5);
setRotateKey( spep_4,  1,  90 );
setRotateKey( spep_4+1,1,  0 );
playSe( spep_4+2, SE_01);

tukkomu = entryEffect(  spep_4,   SP_05,   0x100,  -1,  0,  0,  -200);   -- カード
setEffScaleKey( spep_4, tukkomu, -1.0, 1.0);
setEffAlphaKey( spep_4, tukkomu, 255);
setEffMoveKey( spep_4, tukkomu,   0, 0, -200);

--setEffShake(spep_4, tukkomu, 100, 5);

shuchusenhiji= entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenhiji, 255);
playSe( spep_4+20, SE_04);
--playSe( 73, SE_03);

--speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+12, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_4+12, ct4, 70, 20);
setEffScaleKey(spep_4+12, ct4, -0.8, 0.8);
setEffRotateKey(spep_4+12, ct4, 0);
setEffAlphaKey( spep_4+12, ct4, 255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5=spep_4 +100;
entryFade( spep_5-6, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景


shuchusencard= entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusencard, 255);
setEffRotateKey(  spep_5,  shuchusencard,  0);
setEffMoveKey(  spep_5,  shuchusencard,  0,  0);
setEffScaleKey( spep_5+90, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_5+90, shuchusencard, 255);
setEffRotateKey(  spep_5+90,  shuchusencard,  0);
setEffMoveKey(  spep_5+90,  shuchusencard,  0,  0);

playSe( spep_5, SE_05);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
--被弾(220F)
------------------------------------------------------
spep_6=spep_5 +90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 220, 0, 0, 0, 0, 220);          -- ベース暗め　背景

tukkomu2 = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_6, tukkomu2, -1.0, 1.0);
setEffAlphaKey( spep_6, tukkomu2, 255);
setEffMoveKey( spep_6, tukkomu2,   0, 0, 0);

ryusenhidann = entryEffectLife( spep_6+30, 920, 190, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6+30, ryusenhidann, -90);
setEffScaleKey( spep_6+30, ryusenhidann, 1.6, 1.6);
setEffAlphaKey( spep_6+30, ryusenhidann, 255);

shuchusenhiji= entryEffectLife( spep_6, 906, 220, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusenhiji, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenhiji, 255);

entryFade( spep_6+24, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+65, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



-- 書き文字エントリー
drawtext_zuoot2 = entryEffectLife( spep_6 + 66 + 4, 10012, 42, 0x100, -1, 0, -118, 279.9 );  -- ズオッ
setEffShake(spep_6 + 66+4, drawtext_zuoot2, 42, 20);
setEffRotateKey(spep_6 + 66+4,drawtext_zuoot2,0);

setEffMoveKey( spep_6 + 66 + 4, drawtext_zuoot2, -118, 279.9 , 0 );
setEffMoveKey( spep_6 + 66 + 6, drawtext_zuoot2, -98, 306.5 , 0 );
setEffMoveKey( spep_6 + 66 + 8, drawtext_zuoot2, -91.4, 346.6 , 0 );
setEffMoveKey( spep_6 + 66 + 10, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 12, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 14, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 16, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 18, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 20, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 22, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 24, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 26, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 28, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 30, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 32, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 34, drawtext_zuoot2, -62, 363.9 , 0 );
setEffMoveKey( spep_6 + 66 + 36, drawtext_zuoot2, -78, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 38, drawtext_zuoot2, -49.2, 359.1 , 0 );
setEffMoveKey( spep_6 + 66 + 40, drawtext_zuoot2, -62, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 42, drawtext_zuoot2, -23.6, 349.5 , 0 );
setEffMoveKey( spep_6 + 66 + 44, drawtext_zuoot2, -46, 379.9 , 0 );
setEffMoveKey( spep_6 + 66 + 46, drawtext_zuoot2, -38, 379.9 , 0 );


setEffScaleKey(spep_6+70,drawtext_zuoot2,0.1,0.1);
setEffScaleKey(spep_6+74,drawtext_zuoot2,2.7,2.7);
setEffScaleKey(spep_6+106,drawtext_zuoot2,2.7,2.7);
setEffScaleKey(spep_6+112,drawtext_zuoot2,6.5,6.5);

setEffAlphaKey( spep_6 + 66 + 4, drawtext_zuoot2, 255 );
setEffAlphaKey( spep_6 + 66 + 36, drawtext_zuoot2, 255 );
setEffAlphaKey( spep_6 + 66 + 38, drawtext_zuoot2, 204 );
setEffAlphaKey( spep_6 + 66 + 40, drawtext_zuoot2, 153 );
setEffAlphaKey( spep_6 + 66 + 42, drawtext_zuoot2, 102 );
setEffAlphaKey( spep_6 + 66 + 44, drawtext_zuoot2, 51 );
setEffAlphaKey( spep_6 + 66 + 46, drawtext_zuoot2, 0 );


--playSe( spep_6, SE_01);
playSe( spep_6+30, SE_06);
playSe( spep_5+70, SE_07);

--てきのうごき
setDisp( spep_6+164, 1, 1);
changeAnime( spep_6+164, 1, 108);                                    -- かめはめ発射ポーズ
setShakeChara( spep_6+164, 1, 56, 20);

setMoveKey( spep_6 + 164, 1, 4, -809.6 , 0 );
setMoveKey( spep_6 + 166, 1, 4, -729.6 , 0 );
setMoveKey( spep_6 + 168, 1, 4, -649.6 , 0 );
setMoveKey( spep_6 + 170, 1, 4, -569.6 , 0 );
setMoveKey( spep_6 + 172, 1, 4, -489.6 , 0 );
setMoveKey( spep_6 + 174, 1, 4, -409.6 , 0 );
setMoveKey( spep_6 + 176, 1, 4, -329.6 , 0 );
setMoveKey( spep_6 + 178, 1, 4, -324.3 , 0 );
setMoveKey( spep_6 + 180, 1, 4, -318.9 , 0 );
setMoveKey( spep_6 + 182, 1, 4, -313.6 , 0 );
setMoveKey( spep_6 + 184, 1, 4, -308.3 , 0 );
setMoveKey( spep_6 + 186, 1, 4, -302.9 , 0 );
setMoveKey( spep_6 + 188, 1, 4, -297.6 , 0 );
setMoveKey( spep_6 + 190, 1, 4, -292.3 , 0 );
setMoveKey( spep_6 + 192, 1, 4, -286.9 , 0 );
setMoveKey( spep_6 + 194, 1, 4, -281.6 , 0 );
setMoveKey( spep_6 + 196, 1, 4, -276.3 , 0 );
setMoveKey( spep_6 + 198, 1, 4, -270.9 , 0 );
setMoveKey( spep_6 + 200, 1, 4, -265.6 , 0 );
setMoveKey( spep_6 + 202, 1, 4, -260.3 , 0 );
setMoveKey( spep_6 + 204, 1, 4, -254.9 , 0 );
setMoveKey( spep_6 + 206, 1, 4, -249.6 , 0 );
setMoveKey( spep_6 + 208, 1, 4, -244.3 , 0 );
setMoveKey( spep_6 + 210, 1, 4, -238.9 , 0 );
setMoveKey( spep_6 + 212, 1, 4, -233.6 , 0 );
setMoveKey( spep_6 + 214, 1, 4, -228.3 , 0 );
setMoveKey( spep_6 + 216, 1, 4, -222.9 , 0 );
setMoveKey( spep_6 + 218, 1, 4, -217.6 , 0 );
setMoveKey( spep_6 + 220, 1, 4, -217.6 , 0 );

setScaleKey( spep_6 + 164, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 218, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 220, 1, 1.96, 1.96 );

setRotateKey( spep_6 + 164, 1, 80.2 );
setRotateKey( spep_6 + 218, 1, 80.2 );
setRotateKey( spep_6 + 220, 1, 80.2 );

------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_7=spep_6+220;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( spep_7-1,  1,  90 );
setMoveKey(   spep_7-1,  1,  0, -200, 0);

setMoveKey(   spep_7,   1,    200, -300,   0);
setScaleKey(   spep_7,   1, 2.5, 2.5);
setDisp( spep_7, 1, 0);

playSe( spep_7, 1024);

gyan=entryEffectLife(  spep_7,  190013,  60, 0,  -1,  0,  0,  0);   --ギャンおれんじ

ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);
setEffShake( spep_7, ctgyan, 45, 8);

------------------------------------------------------
--顔カットイン(256F)
------------------------------------------------------
spep_8=spep_7+60;
spep_9=spep_8;
entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+105, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end