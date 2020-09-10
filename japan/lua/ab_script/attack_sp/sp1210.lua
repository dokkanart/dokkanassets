--西の界王神(ガシャ産)　1015190　神聖光弾(ver3)
--sp_effect_a9_00046

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
SP_01=	152202	;--	突っ込む
SP_02=	152203	;--	連撃
SP_03=	152204	;--	構え〜振りかぶり
SP_04=	152205	;--	放つ〜着弾

--敵側
SP_01x=	152206	;--	敵用：突っ込む
SP_02x=	152207	;--	敵用：連撃
SP_03x=	152208	;--	敵用：構え〜振りかぶり
SP_04x=	152209	;--	敵用：放つ〜着弾

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
--------------------------------------
--移動
--------------------------------------
spep_0=0;

--エフェクトの再生
move=entryEffectLife(spep_0,SP_01,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,move,0,0,0);
setEffMoveKey(spep_0+140,move,0,0,0);
setEffScaleKey(spep_0,move,1.0,1.0);
setEffScaleKey(spep_0+140,move,1.0,1.0);
setEffAlphaKey(spep_0,move,255);
setEffAlphaKey(spep_0+140,move,255);
setEffRotateKey(spep_0,move,0);
setEffRotateKey(spep_0+140,move,0);

--流線
ryuusen = entryEffectLife( spep_0 + 28,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 28, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, ryuusen, 4.08, 1.23 );
setEffScaleKey( spep_0 + 138, ryuusen, 4.08, 1.23 );

setEffRotateKey( spep_0 + 28, ryuusen, 0 );
setEffRotateKey( spep_0 + 138, ryuusen, 0 );

setEffAlphaKey( spep_0 + 28, ryuusen, 0 );
setEffAlphaKey( spep_0 + 29, ryuusen, 255 );
setEffAlphaKey( spep_0 + 30, ryuusen, 255 );
setEffAlphaKey( spep_0 + 138, ryuusen, 255 );

--集中線
shuthuse = entryEffectLife( spep_0 + 28,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 28, shuthuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuthuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, shuthuse, 1.43, 2.03 );
setEffScaleKey( spep_0 + 138, shuthuse, 1.43, 2.03 );

setEffRotateKey( spep_0 + 28, shuthuse, 0 );
setEffRotateKey( spep_0 + 138, shuthuse, 0 );

setEffAlphaKey( spep_0 + 28, shuthuse, 0 );
setEffAlphaKey( spep_0 + 29, shuthuse, 255 );
setEffAlphaKey( spep_0 + 30, shuthuse, 255 );
setEffAlphaKey( spep_0 + 138, shuthuse, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+29, 0, 0, 10,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_0+126, 10, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 100);  -- 黒　背景

--SE
playSe( spep_0+34, 1018); --移動音

--次の準備
spep_1=spep_0+140;

--------------------------------------
--ラッシュ
--------------------------------------
--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02,220,0x100,-1,0,0,0);

setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+220,rush,0,0,0);
setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+220,rush,1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+220,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+220,rush,0);

--集中線
shuchuse2 = entryEffectLife( spep_1 + 44,  906, 174, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 44, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 218, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 44, shuchuse2, 1.26, 1.69 );
setEffScaleKey( spep_1 + 218, shuchuse2, 1.26, 1.69 );

setEffRotateKey( spep_1 + 44, shuchuse2, 0 );
setEffRotateKey( spep_1 + 218, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 44, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 142, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 144, shuchuse2, 204 );
setEffAlphaKey( spep_1 + 146, shuchuse2, 153 );
setEffAlphaKey( spep_1 + 148, shuchuse2, 102 );
setEffAlphaKey( spep_1 + 150, shuchuse2, 51 );
setEffAlphaKey( spep_1 + 152, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 164, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 165, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 166, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 218, shuchuse2, 255 );

--流線
ryuusen2 = entryEffectLife( spep_1 + 0,  914, 218, 0x80, -1, 0, 268.5, 25.9 );

setEffMoveKey( spep_1 + 0, ryuusen2, 268.5, 25.9 , 0 );
setEffMoveKey( spep_1 + 218, ryuusen2, 268.5, 25.9 , 0 );

setEffScaleKey( spep_1 + 0, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 164, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 165, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 166, ryuusen2, 5.82, 1.23 );
setEffScaleKey( spep_1 + 218, ryuusen2, 5.82, 1.23 );

setEffRotateKey( spep_1 + 0, ryuusen2, 0 );
setEffRotateKey( spep_1 + 164, ryuusen2, 0 );
setEffRotateKey( spep_1 + 165, ryuusen2, 0 );
setEffRotateKey( spep_1 + 166, ryuusen2, -72.8 );
setEffRotateKey( spep_1 + 218, ryuusen2, -72.8 )

setEffAlphaKey( spep_1 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_1 + 218, ryuusen2, 255 );

--黒背景
entryFadeBg(spep_1, 0, 220, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp(spep_1,1,1);
setDisp(spep_1+220,1,0);
changeAnime(spep_1,1,100);
changeAnime(spep_1+41,1,108);
changeAnime(spep_1+42,1,108);
changeAnime(spep_1+164,1,106);

setMoveKey( spep_1 + 0, 1, -984.1, -33.7 , 0 );
setMoveKey( spep_1 + 2, 1, -877.8, -33.7 , 0 );
setMoveKey( spep_1 + 4, 1, -771.5, -33.7 , 0 );
setMoveKey( spep_1 + 6, 1, -665.2, -33.7 , 0 );
setMoveKey( spep_1 + 8, 1, -558.9, -33.7 , 0 );
setMoveKey( spep_1 + 10, 1, -452.6, -33.7 , 0 );
setMoveKey( spep_1 + 12, 1, -346.3, -33.7 , 0 );
setMoveKey( spep_1 + 14, 1, -240, -33.7 , 0 );
setMoveKey( spep_1 + 16, 1, -226.3, -33.7 , 0 );
setMoveKey( spep_1 + 18, 1, -212.6, -33.7 , 0 );
setMoveKey( spep_1 + 20, 1, -198.9, -33.7 , 0 );
setMoveKey( spep_1 + 22, 1, -185.2, -33.7 , 0 );


setScaleKey( spep_1 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 22, 1, 1.4, 1.4 );



setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 22, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+22 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -185.2, -33.7, 0 );
setScaleKey(SP_dodge , 1, 1.4, 1.4  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -185.2, -33.7, 0 );
setScaleKey(SP_dodge+8 , 1, 1.4, 1.4  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
setMoveKey( spep_1 + 24, 1, -171.5, -33.7 , 0 );
setMoveKey( spep_1 + 26, 1, -157.8, -33.7 , 0 );
setMoveKey( spep_1 + 28, 1, -144, -33.7 , 0 );
setMoveKey( spep_1 + 30, 1, -130.3, -33.7 , 0 );
setMoveKey( spep_1 + 32, 1, -116.6, -33.7 , 0 );
setMoveKey( spep_1 + 34, 1, -102.9, -33.7 , 0 );
setMoveKey( spep_1 + 36, 1, -89.2, -33.7 , 0 );
setMoveKey( spep_1 + 38, 1, -75.5, -33.7 , 0 );
setMoveKey( spep_1 + 40, 1, -61.8, -33.7 , 0 );
setMoveKey( spep_1 + 42, 1, -48.1, -33.7 , 0 );

setMoveKey( spep_1 + 44, 1, -8.8, -32.9 , 0 );
setMoveKey( spep_1 + 46, 1, 12.3, -24.9 , 0 );
setMoveKey( spep_1 + 48, 1, 10.9, -24.5 , 0 );
setMoveKey( spep_1 + 50, 1, 17, -22.9 , 0 );
setMoveKey( spep_1 + 52, 1, 18, -27.9 , 0 );
setMoveKey( spep_1 + 54, 1, 20.3, -22.9 , 0 );
setMoveKey( spep_1 + 56, 1, 33.3, -20.5 , 0 );
setMoveKey( spep_1 + 58, 1, 42.1, -21.2 , 0 );
setMoveKey( spep_1 + 60, 1, 51, -10.9 , 0 );
setMoveKey( spep_1 + 62, 1, 53.2, -8.5 , 0 );
setMoveKey( spep_1 + 64, 1, 61.7, -4.9 , 0 );
setMoveKey( spep_1 + 66, 1, 71.8, 13.9 , 0 );
setMoveKey( spep_1 + 68, 1, 78.8, 20.9 , 0 );
setMoveKey( spep_1 + 70, 1, 83.2, 19.7 , 0 );
setMoveKey( spep_1 + 72, 1, 89.1, 26.2 , 0 );
setMoveKey( spep_1 + 74, 1, 89.5, 27.4 , 0 );
setMoveKey( spep_1 + 76, 1, 97.5, 30.4 , 0 );
setMoveKey( spep_1 + 78, 1, 98.8, 29 , 0 );
setMoveKey( spep_1 + 80, 1, 103.6, 33.6 , 0 );
setMoveKey( spep_1 + 82, 1, 105.8, 34.7 , 0 );
setMoveKey( spep_1 + 84, 1, 120.7, 55.2 , 0 );
setMoveKey( spep_1 + 86, 1, 121.9, 56.7 , 0 );
setMoveKey( spep_1 + 88, 1, 122.2, 52.3 , 0 );
setMoveKey( spep_1 + 90, 1, 124.4, 59.9 , 0 );
setMoveKey( spep_1 + 92, 1, 122.7, 60.4 , 0 );
setMoveKey( spep_1 + 94, 1, 126.9, 63 , 0 );
setMoveKey( spep_1 + 96, 1, 127.2, 61.5 , 0 );
setMoveKey( spep_1 + 98, 1, 129.4, 66.1 , 0 );
setMoveKey( spep_1 + 100, 1, 128.7, 66.7 , 0 );
setMoveKey( spep_1 + 102, 1, 131.9, 69.2 , 0 );
setMoveKey( spep_1 + 104, 1, 131.2, 69.8 , 0 );
setMoveKey( spep_1 + 106, 1, 134.5, 72.3 , 0 );
setMoveKey( spep_1 + 108, 1, 132.7, 72.9 , 0 );
setMoveKey( spep_1 + 110, 1, 137, 75.5 , 0 );
setMoveKey( spep_1 + 112, 1, 137.2, 73 , 0 );
setMoveKey( spep_1 + 114, 1, 139.5, 78.6 , 0 );
setMoveKey( spep_1 + 116, 1, 137.7, 79.2 , 0 );
setMoveKey( spep_1 + 118, 1, 142, 81.7 , 0 );
setMoveKey( spep_1 + 120, 1, 142.2, 80.3 , 0 );
setMoveKey( spep_1 + 122, 1, 144.5, 84.8 , 0 );
setMoveKey( spep_1 + 124, 1, 142.7, 85.4 , 0 );
setMoveKey( spep_1 + 126, 1, 147.1, 110.1 , 0 );
setMoveKey( spep_1 + 128, 1, 150.1, 125.1 , 0 );
setMoveKey( spep_1 + 130, 1, 151.1, 136.1 , 0 );
setMoveKey( spep_1 + 132, 1, 156.2, 155.1 , 0 );
setMoveKey( spep_1 + 134, 1, 158.2, 166.1 , 0 );
setMoveKey( spep_1 + 136, 1, 162.2, 185.2 , 0 );
setMoveKey( spep_1 + 138, 1, 159.8, 187.2 , 0 );
setMoveKey( spep_1 + 140, 1, 163.4, 191.3 , 0 );
setMoveKey( spep_1 + 142, 1, 164, 194.3 , 0 );
setMoveKey( spep_1 + 144, 1, 164.6, 197.3 , 0 );
setMoveKey( spep_1 + 146, 1, 165.2, 200.4 , 0 );
setMoveKey( spep_1 + 148, 1, 165.8, 203.4 , 0 );
setMoveKey( spep_1 + 150, 1, 166.4, 206.5 , 0 );
setMoveKey( spep_1 + 152, 1, 167, 209.5 , 0 );
setMoveKey( spep_1 + 154, 1, 167.6, 212.6 , 0 );
setMoveKey( spep_1 + 156, 1, 168.2, 215.6 , 0 );
setMoveKey( spep_1 + 158, 1, 168.8, 218.7 , 0 );
setMoveKey( spep_1 + 160, 1, 169.4, 221.7 , 0 );
setMoveKey( spep_1 + 162, 1, 170, 224.7 , 0 );
setMoveKey( spep_1 + 164, 1, 170.6, 227.8 , 0 );

setMoveKey( spep_1 + 166, 1, 94.8, 185.6 , 0 );
setMoveKey( spep_1 + 168, 1, 114.8, 220.3 , 0 );
setMoveKey( spep_1 + 170, 1, 135, 225 , 0 );
setMoveKey( spep_1 + 172, 1, 137.5, 240.5 , 0 );
setMoveKey( spep_1 + 174, 1, 148.3, 236.3 , 0 );
setMoveKey( spep_1 + 176, 1, 145.9, 257 , 0 );
setMoveKey( spep_1 + 178, 1, 150.1, 253.5 , 0 );
setMoveKey( spep_1 + 180, 1, 145.1, 265.1 , 0 );
setMoveKey( spep_1 + 182, 1, 155.8, 262.7 , 0 );
setMoveKey( spep_1 + 184, 1, 153.7, 281.5 , 0 );
setMoveKey( spep_1 + 186, 1, 157.5, 277.9 , 0 );
setMoveKey( spep_1 + 188, 1, 152.7, 289.8 , 0 );
setMoveKey( spep_1 + 190, 1, 164.3, 291.1 , 0 );
setMoveKey( spep_1 + 192, 1, 161.4, 306 , 0 );
setMoveKey( spep_1 + 194, 1, 228.7, 461.6 , 0 );
setMoveKey( spep_1 + 196, 1, 281.6, 631 , 0 );
setMoveKey( spep_1 + 198, 1, 353.7, 790.4 , 0 );
setMoveKey( spep_1 + 200, 1, 411.5, 963.7 , 0 );
setMoveKey( spep_1 + 202, 1, 478.8, 1119.2 , 0 );
setMoveKey( spep_1 + 204, 1, 531.7, 1288.6 , 0 );
setMoveKey( spep_1 + 206, 1, 603.8, 1448 , 0 );

setScaleKey( spep_1 + 40, 1, 1.4, 1.4 );

setScaleKey( spep_1 + 41, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 46, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 48, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 164, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 165, 1, 1.4, 1.4 );

setScaleKey( spep_1 + 166, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 168, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 170, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 172, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 206, 1, 1.39, 1.39 );

setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
setRotateKey( spep_1 + 41, 1, -9.7 );
setRotateKey( spep_1 + 54, 1, -9.7 );
setRotateKey( spep_1 + 56, 1, -9.6 );
setRotateKey( spep_1 + 58, 1, -9.5 );
setRotateKey( spep_1 + 66, 1, -9.5 );
setRotateKey( spep_1 + 68, 1, -9.6 );
setRotateKey( spep_1 + 72, 1, -9.6 );
setRotateKey( spep_1 + 74, 1, -9.7 );

setRotateKey( spep_1 + 102, 1, -9.7 );
setRotateKey( spep_1 + 104, 1, -9.6 );
setRotateKey( spep_1 + 124, 1, -9.6 );
setRotateKey( spep_1 + 126, 1, -9.5 );
setRotateKey( spep_1 + 128, 1, -10.8 );
setRotateKey( spep_1 + 130, 1, -12.1 );
setRotateKey( spep_1 + 132, 1, -13.5 );
setRotateKey( spep_1 + 134, 1, -14.8 );
setRotateKey( spep_1 + 136, 1, -16.1 );
setRotateKey( spep_1 + 138, 1, -16.4 );
setRotateKey( spep_1 + 140, 1, -16.7 );
setRotateKey( spep_1 + 142, 1, -17 );
setRotateKey( spep_1 + 144, 1, -17.3 );
setRotateKey( spep_1 + 146, 1, -17.6 );
setRotateKey( spep_1 + 148, 1, -17.9 );
setRotateKey( spep_1 + 150, 1, -18.1 );
setRotateKey( spep_1 + 152, 1, -18.4 );
setRotateKey( spep_1 + 154, 1, -18.7 );
setRotateKey( spep_1 + 156, 1, -19 );
setRotateKey( spep_1 + 158, 1, -19.3 );
setRotateKey( spep_1 + 160, 1, -19.6 );
setRotateKey( spep_1 + 162, 1, -19.9 );
setRotateKey( spep_1 + 164, 1, -20.2 );

setRotateKey( spep_1 + 166, 1, -35.1 );
setRotateKey( spep_1 + 168, 1, -34.7 );
setRotateKey( spep_1 + 170, 1, -34.3 );
setRotateKey( spep_1 + 172, 1, -33.9 );
setRotateKey( spep_1 + 174, 1, -33.5 );
setRotateKey( spep_1 + 176, 1, -33.1 );
setRotateKey( spep_1 + 178, 1, -32.7 );
setRotateKey( spep_1 + 180, 1, -32.3 );
setRotateKey( spep_1 + 182, 1, -31.9 );
setRotateKey( spep_1 + 184, 1, -31.5 );
setRotateKey( spep_1 + 186, 1, -31.1 );
setRotateKey( spep_1 + 188, 1, -30.7 );
setRotateKey( spep_1 + 190, 1, -30.3 );
setRotateKey( spep_1 + 192, 1, -29.9 );
setRotateKey( spep_1 + 206, 1, -29.9 );

setShakeChara(spep_1+42,1,164,15);

--文字エントリー
ctzun = entryEffectLife( spep_1 + 40,  10016, 12, 0x100, -1, 0, 15.9, 224 );--ズンッ
setEffMoveKey( spep_1 + 40, ctzun, 15.9, 224 , 0 );
setEffMoveKey( spep_1 + 46, ctzun, 16, 224 , 0 );
setEffMoveKey( spep_1 + 48, ctzun, 11.9, 229.7 , 0 );
setEffMoveKey( spep_1 + 50, ctzun, 15.9, 224 , 0 );
setEffMoveKey( spep_1 + 52, ctzun, 12.4, 228.6 , 0 );
--setEffMoveKey( spep_1 + 54, ctzun, 15.7, 224.1 , 0 );

setEffScaleKey( spep_1 + 40, ctzun, 1.36, 1.36 );
setEffScaleKey( spep_1 + 46, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_1 + 48, ctzun, 2.36, 2.36 );
setEffScaleKey( spep_1 + 50, ctzun, 1.94, 1.94 );
setEffScaleKey( spep_1 + 52, ctzun, 1.95, 1.95 );
--setEffScaleKey( spep_1 + 54, ctzun, 1.96, 1.96 );

setEffRotateKey( spep_1 + 40, ctzun, 12.2 );
setEffRotateKey( spep_1 + 50, ctzun, 12.2 );
setEffRotateKey( spep_1 + 52, ctzun, 12.1 );
--setEffRotateKey( spep_1 + 54, ctzun, 12.2 );

setEffAlphaKey( spep_1 + 40, ctzun, 0 );
setEffAlphaKey( spep_1 + 41, ctzun, 255 );
setEffAlphaKey( spep_1 + 42, ctzun, 255 );
setEffAlphaKey( spep_1 + 50, ctzun, 191 );
setEffAlphaKey( spep_1 + 52, ctzun, 13 );
--setEffAlphaKey( spep_1 + 54, ctzun, 13 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 52,  10005, 10, 0x100, -1, 0, -20, 244 );--ガッ
setEffMoveKey( spep_1 + 52, ctga, -20, 244 , 0 );
setEffMoveKey( spep_1 + 56, ctga, -28.8, 250.3 , 0 );
setEffMoveKey( spep_1 + 58, ctga, -20.1, 243.9 , 0 );
setEffMoveKey( spep_1 + 60, ctga, -26.7, 249 , 0 );
setEffMoveKey( spep_1 + 62, ctga, -20, 244 , 0 );

setEffScaleKey( spep_1 + 52, ctga, 1.28, 1.28 );
setEffScaleKey( spep_1 + 56, ctga, 1.91, 1.91 );
setEffScaleKey( spep_1 + 58, ctga, 1.69, 1.69 );
setEffScaleKey( spep_1 + 60, ctga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 62, ctga, 1.4, 1.4 );

setEffRotateKey( spep_1 + 52, ctga, -8.7 );
setEffRotateKey( spep_1 + 62, ctga, -8.7 );

setEffAlphaKey( spep_1 + 52, ctga, 0 );
setEffAlphaKey( spep_1 + 53, ctga, 255 );
setEffAlphaKey( spep_1 + 54, ctga, 255 );
setEffAlphaKey( spep_1 + 60, ctga, 255 );
setEffAlphaKey( spep_1 + 62, ctga, 128 );

--文字エントリー
ctga2 = entryEffectLife( spep_1 + 62,  10005, 12, 0x100, -1, 0, 177.2, 182.1 );--ガッ
setEffMoveKey( spep_1 + 62, ctga2, 177.2, 182.1 , 0 );
setEffMoveKey( spep_1 + 66, ctga2, 173.3, 192.3 , 0 );
setEffMoveKey( spep_1 + 68, ctga2, 177, 182.1 , 0 );
setEffMoveKey( spep_1 + 70, ctga2, 174.1, 190 , 0 );
setEffMoveKey( spep_1 + 74, ctga2, 177, 182.2 , 0 );

setEffScaleKey( spep_1 + 62, ctga2, 1.28, 1.28 );
setEffScaleKey( spep_1 + 66, ctga2, 1.91, 1.91 );
setEffScaleKey( spep_1 + 68, ctga2, 1.69, 1.69 );
setEffScaleKey( spep_1 + 70, ctga2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 74, ctga2, 1.4, 1.4 );

setEffRotateKey( spep_1 + 62, ctga2, 25 );
setEffRotateKey( spep_1 + 74, ctga2, 25 );

setEffAlphaKey( spep_1 + 62, ctga2, 0 );
setEffAlphaKey( spep_1 + 63, ctga2, 255 );
setEffAlphaKey( spep_1 + 64, ctga2, 255 );
setEffAlphaKey( spep_1 + 70, ctga2, 255 );
setEffAlphaKey( spep_1 + 74, ctga2, 128 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_1 + 80,  10017, 40, 0x100, -1, 0, 51.8, 290.8 );--ドガガガッ
setEffMoveKey( spep_1 + 80, ctdogagaga, 51.8, 290.8 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 51.9, 291.1 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 44.6, 300.4 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 51.9, 290.9 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 45.3, 299.3 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 96, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 98, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 100, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 102, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 104, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 106, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 108, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 110, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 112, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 114, ctdogagaga, 52, 290.7 , 0 );
setEffMoveKey( spep_1 + 116, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 118, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 120, ctdogagaga, 45.7, 298.7 , 0 );

setEffScaleKey( spep_1 + 80, ctdogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 86, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 88, ctdogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 90, ctdogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 92, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 94, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 120, ctdogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 80, ctdogagaga, 17.7 );
setEffRotateKey( spep_1 + 112, ctdogagaga, 17.7 );
setEffRotateKey( spep_1 + 114, ctdogagaga, 17.6 );
setEffRotateKey( spep_1 + 116, ctdogagaga, 17.6 );
setEffRotateKey( spep_1 + 118, ctdogagaga, 17.7 );
setEffRotateKey( spep_1 + 120, ctdogagaga, 17.7 );

setEffAlphaKey( spep_1 + 80, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 81, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 82, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 112, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 114, ctdogagaga, 204 );
setEffAlphaKey( spep_1 + 116, ctdogagaga, 153 );
setEffAlphaKey( spep_1 + 118, ctdogagaga, 102 );
setEffAlphaKey( spep_1 + 120, ctdogagaga, 51 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 + 122,  10005, 16, 0x100, -1, 0, 50.9, 358.6 );--ガッ
setEffMoveKey( spep_1 + 122, ctga3, 50.9, 358.6 , 0 );
setEffMoveKey( spep_1 + 132, ctga3, 39.3, 366.4 , 0 );
setEffMoveKey( spep_1 + 134, ctga3, 50.8, 358.7 , 0 );
setEffMoveKey( spep_1 + 136, ctga3, 41.9, 364.7 , 0 );
setEffMoveKey( spep_1 + 138, ctga3, 50.7, 358.6 , 0 );

setEffScaleKey( spep_1 + 122, ctga3, 1.63, 1.63 );
setEffScaleKey( spep_1 + 132, ctga3, 2.44, 2.44 );
setEffScaleKey( spep_1 + 134, ctga3, 2.17, 2.17 );
setEffScaleKey( spep_1 + 136, ctga3, 1.89, 1.89 );
setEffScaleKey( spep_1 + 138, ctga3, 1.79, 1.79 );

setEffRotateKey( spep_1 + 122, ctga3, -10.9 );
setEffRotateKey( spep_1 + 138, ctga3, -10.9 );

setEffAlphaKey( spep_1 + 122, ctga3, 0 );
setEffAlphaKey( spep_1 + 123, ctga3, 225 );
setEffAlphaKey( spep_1 + 124, ctga3, 225 );
setEffAlphaKey( spep_1 + 136, ctga3, 255 );
setEffAlphaKey( spep_1 + 138, ctga3, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 164,  10020, 34, 0x100, -1, 0, -108.1, 344.1 );--バキッ
setEffMoveKey( spep_1 + 164, ctbaki, -108.1, 344.1 , 0 );
setEffMoveKey( spep_1 + 168, ctbaki, -128.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 170, ctbaki, -108.1, 344.1 , 0 );
setEffMoveKey( spep_1 + 172, ctbaki, -123.6, 355.1 , 0 );
setEffMoveKey( spep_1 + 174, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 176, ctbaki, -121.2, 353.4 , 0 );
setEffMoveKey( spep_1 + 178, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 180, ctbaki, -120.8, 353.2 , 0 );
setEffMoveKey( spep_1 + 182, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 184, ctbaki, -120.4, 352.9 , 0 );
setEffMoveKey( spep_1 + 186, ctbaki, -107.8, 344.1 , 0 );
setEffMoveKey( spep_1 + 188, ctbaki, -120, 352.7 , 0 );
setEffMoveKey( spep_1 + 190, ctbaki, -107.8, 344.1 , 0 );
setEffMoveKey( spep_1 + 192, ctbaki, -119.9, 352.6 , 0 );
setEffMoveKey( spep_1 + 194, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 196, ctbaki, -120, 352.7 , 0 );
setEffMoveKey( spep_1 + 198, ctbaki, -107.9, 344.1 , 0 );

setEffScaleKey( spep_1 + 164, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 168, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 170, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_1 + 172, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_1 + 174, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 176, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 178, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 + 180, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 182, ctbaki, 1.84, 1.84 );
setEffScaleKey( spep_1 + 184, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 + 186, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_1 + 188, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 190, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 192, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 194, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 196, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 198, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 164, ctbaki, -9.7 );
setEffRotateKey( spep_1 + 198, ctbaki, -9.7 );

setEffAlphaKey( spep_1 + 164, ctbaki, 255 );
setEffAlphaKey( spep_1 + 190, ctbaki, 255 );
setEffAlphaKey( spep_1 + 192, ctbaki, 195 );
setEffAlphaKey( spep_1 + 194, ctbaki, 134 );
setEffAlphaKey( spep_1 + 196, ctbaki, 74 );
setEffAlphaKey( spep_1 + 198, ctbaki, 13 );

-- ** エフェクト等 ** --
entryFade(spep_1+41, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+162, 0, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+208, 8, 6, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1, 44); --移動音
playSe( spep_1+40, 1001); --パンチ
playSe( spep_1+52, 1009); --パンチ
playSe( spep_1+64, 1001); --パンチ
playSe( spep_1+80, 1010); --けり
playSe( spep_1+95, 1010); --けり
playSe( spep_1+106, 1009); --けり
playSe( spep_1+122, 1010); --けり
playSe( spep_1+164, 1011); --けり

--次の準備
spep_2=spep_1+220;

--------------------------------------
--溜め
--------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_2,SP_03,138,0x100,-1,0,0,0);

setEffMoveKey(spep_2,tame,0,0,0);
setEffMoveKey(spep_2+138,tame,0,0,0);
setEffScaleKey(spep_2,tame,1.0,1.0);
setEffScaleKey(spep_2+138,tame,1.0,1.0);
setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+138,tame,255);
setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+138,tame,0);

--集中線
chuchu3 = entryEffectLife( spep_2 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, chuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, chuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, chuchu3, 1.32, 1.92 );
setEffScaleKey( spep_2 + 138, chuchu3, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, chuchu3, 0 );
setEffRotateKey( spep_2 + 138, chuchu3, 0 );

setEffAlphaKey( spep_2 + 0, chuchu3, 255 );
setEffAlphaKey( spep_2 + 138, chuchu3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_2 + 0,  914, 138, 0x80, -1, 0, 5.6, -237.1 );

setEffMoveKey( spep_2 + 0, ryuusen3, 5.6, -237.1 , 0 );
setEffMoveKey( spep_2 + 138, ryuusen3, 5.6, -237.1 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen3, 4.08, 1.23 );
setEffScaleKey( spep_2 + 138, ryuusen3, 4.08, 1.23 );

setEffRotateKey( spep_2 + 0, ryuusen3, 90 );
setEffRotateKey( spep_2 + 138, ryuusen3, 90 );

setEffAlphaKey( spep_2 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_2 + 138, ryuusen3, 255 );

--顔カットイン
speff=entryEffect(spep_2,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+12,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+12,ctgogo,-10,520,0);
setEffMoveKey(spep_2+82,ctgogo,-10,520,0);
setEffScaleKey(spep_2+12, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+82, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+84, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_2+130, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 220, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_2 + 18, SE_04);

--次の準備
spep_3=spep_2+138;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen9=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

--------------------------------------
--大きく振りかぶって
--------------------------------------
--エフェクトの再生(前)
throw=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_4,throw,0,0,0);
setEffMoveKey(spep_4+260,throw,0,0,0);
setEffScaleKey(spep_4,throw,1.0,1.0);
setEffScaleKey(spep_4+260,throw,1.0,1.0);
setEffAlphaKey(spep_4,throw,255);
setEffAlphaKey(spep_4+78,throw,255);
setEffAlphaKey(spep_4+80,throw,0);
setEffAlphaKey(spep_4+260,throw,0)
setEffRotateKey(spep_4,throw,0);
setEffRotateKey(spep_4+260,throw,0);

--流線
ryuusen4 = entryEffectLife( spep_4 + 0,  921, 124, 0x80, -1, 0, 63.5, 40.8 );

setEffMoveKey( spep_4 + 0, ryuusen4, 63.5, 40.8 , 0 );
setEffMoveKey( spep_4 + 124, ryuusen4, 63.5, 40.8 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen4,  1.87, 1.37 );
--setEffScaleKey( spep_4 + 78, ryuusen4, 1.47, 1.37 );
--setEffScaleKey( spep_4 + 80, ryuusen4, 1.2, 1.15 );
--setEffScaleKey( spep_4 + 124, ryuusen4, 1.2, 1.15 );
setEffScaleKey( spep_4 + 124, ryuusen4,  1.87, 1.37 );

setEffRotateKey( spep_4 + 0, ryuusen4, 155 );
setEffRotateKey( spep_4 + 124, ryuusen4, 155 );

setEffAlphaKey( spep_4 + 0, ryuusen4, 255 );
setEffAlphaKey( spep_4 + 124, ryuusen4, 255 );

--エフェクトの再生(後ろ)
throw2=entryEffect(spep_4,SP_04,0x80,-1,0,0,0);

setEffMoveKey(spep_4,throw2,0,0,0);
setEffMoveKey(spep_4+260,throw2,0,0,0);
setEffScaleKey(spep_4,throw2,1.0,1.0);
setEffScaleKey(spep_4+260,throw2,1.0,1.0);
setEffAlphaKey(spep_4,throw2,0);
setEffAlphaKey(spep_4+78,throw2,0);
setEffAlphaKey(spep_4+80,throw2,255);
setEffAlphaKey(spep_4+260,throw2,255);
setEffRotateKey(spep_4,throw2,0);
setEffRotateKey(spep_4+260,throw2,0);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 6,  10012, 42, 0x100, -1, 0, 78.7, 260.5 );--ズオ

setEffMoveKey( spep_4 + 6, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_4 + 6, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 38, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 40, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_4 + 42, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_4 + 44, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_4 + 46, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_4 + 48, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 + 6, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 48, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 6, ctzuo, 0 );
setEffAlphaKey( spep_4 + 7, ctzuo, 255 );
setEffAlphaKey( spep_4 + 8, ctzuo, 255 );
setEffAlphaKey( spep_4 + 38, ctzuo, 255 );
setEffAlphaKey( spep_4 + 40, ctzuo, 204 );
setEffAlphaKey( spep_4 + 42, ctzuo, 153 );
setEffAlphaKey( spep_4 + 44, ctzuo, 102 );
setEffAlphaKey( spep_4 + 46, ctzuo, 51 );
setEffAlphaKey( spep_4 + 48, ctzuo, 0 );



--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 258, 0x100, -1, 0, 0, 0 );   -- 集中線

setEffMoveKey( spep_4 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 258, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1.32, 1.92 );
setEffScaleKey( spep_4 + 258, shuchuse4, 1.32, 1.92 );

setEffRotateKey( spep_4 + 0, shuchuse4, 0 );
setEffRotateKey( spep_4 + 258, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 258, shuchuse4, 255 );

--文字エントリー

ctdogon = entryEffectLife( spep_4 + 134,  10018, 88, 0x100, -1, 0, -4, 366.9 );--ドゴォンッ

setEffMoveKey( spep_4 + 134, ctdogon, -4, 366.9 , 0 );
setEffMoveKey( spep_4 + 140, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 142, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 144, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 146, ctdogon, -6.5, 368.1 , 0 );
setEffMoveKey( spep_4 + 148, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 150, ctdogon, -6.1, 368 , 0 );
setEffMoveKey( spep_4 + 152, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 154, ctdogon, -6.1, 368 , 0 );
setEffMoveKey( spep_4 + 156, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 158, ctdogon, -6.1, 367.9 , 0 );
setEffMoveKey( spep_4 + 160, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 162, ctdogon, -6.1, 367.9 , 0 );
setEffMoveKey( spep_4 + 164, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 166, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 168, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 170, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 172, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 174, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 176, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 178, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 180, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 182, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 184, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 186, ctdogon, -5.9, 367.8 , 0 );
setEffMoveKey( spep_4 + 188, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 190, ctdogon, -5.9, 367.8 , 0 );
setEffMoveKey( spep_4 + 192, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 194, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 196, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 198, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 200, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 202, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 204, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 206, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 208, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 210, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 212, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 214, ctdogon, -5.8, 367.7 , 0 );
setEffMoveKey( spep_4 + 216, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 218, ctdogon, -5.8, 367.7 , 0 );
setEffMoveKey( spep_4 + 220, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 222, ctdogon, -4, 366.8 , 0 );

setEffScaleKey( spep_4 + 134, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_4 + 140, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_4 + 142, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_4 + 144, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_4 + 146, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_4 + 148, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_4 + 150, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_4 + 152, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_4 + 154, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_4 + 156, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_4 + 158, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_4 + 160, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_4 + 162, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_4 + 164, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 + 166, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_4 + 168, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_4 + 170, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_4 + 172, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_4 + 174, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_4 + 176, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_4 + 178, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_4 + 180, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_4 + 182, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_4 + 184, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_4 + 186, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_4 + 188, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_4 + 190, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_4 + 192, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_4 + 194, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_4 + 196, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_4 + 198, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_4 + 200, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_4 + 202, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_4 + 204, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_4 + 206, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 + 208, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 + 210, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_4 + 212, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_4 + 214, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_4 + 216, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 + 218, ctdogon, 2.46, 2.46 );
setEffScaleKey( spep_4 + 220, ctdogon, 2.46, 2.46 );
setEffScaleKey( spep_4 + 222, ctdogon, 2.45, 2.45 );

setEffRotateKey( spep_4 + 134, ctdogon, -7.2 );
setEffRotateKey( spep_4 + 176, ctdogon, -7.2 );
setEffRotateKey( spep_4 + 178, ctdogon, -7.1 );
setEffRotateKey( spep_4 + 222, ctdogon, -7.1 );

setEffAlphaKey( spep_4 + 134, ctdogon, 0 );
setEffAlphaKey( spep_4 + 135, ctdogon, 64 );
setEffAlphaKey( spep_4 + 136, ctdogon, 64 );
setEffAlphaKey( spep_4 + 140, ctdogon, 128 );
setEffAlphaKey( spep_4 + 142, ctdogon, 191 );
setEffAlphaKey( spep_4 + 144, ctdogon, 255 );
setEffAlphaKey( spep_4 + 204, ctdogon, 255 );
setEffAlphaKey( spep_4 + 206, ctdogon, 227 );
setEffAlphaKey( spep_4 + 208, ctdogon, 198 );
setEffAlphaKey( spep_4 + 210, ctdogon, 170 );
setEffAlphaKey( spep_4 + 212, ctdogon, 142 );
setEffAlphaKey( spep_4 + 214, ctdogon, 113 );
setEffAlphaKey( spep_4 + 216, ctdogon, 85 );
setEffAlphaKey( spep_4 + 218, ctdogon, 57 );
setEffAlphaKey( spep_4 + 220, ctdogon, 28 );
setEffAlphaKey( spep_4 + 222, ctdogon, 0 );

--敵の動き
setDisp(spep_4+80,1,1);
setDisp(spep_4+124,1,0);
changeAnime(spep_4+80,1,107);


setMoveKey( spep_4 + 80, 1, -4, -56.2 , 0 );
setMoveKey( spep_4 + 82, 1, -9.2, -57.3 , 0 );
setMoveKey( spep_4 + 84, 1, 1.7, -50.5 , 0 );
setMoveKey( spep_4 + 86, 1, 0.5, -55.6 , 0 );
setMoveKey( spep_4 + 88, 1, 7.4, -44.8 , 0 );
setMoveKey( spep_4 + 90, 1, 6.2, -49.9 , 0 );
setMoveKey( spep_4 + 92, 1, 13, -39.1 , 0 );
setMoveKey( spep_4 + 94, 1, 7.9, -40.3 , 0 );
setMoveKey( spep_4 + 96, 1, 18.7, -33.4 , 0 );
setMoveKey( spep_4 + 98, 1, 17.5, -38.6 , 0 );
setMoveKey( spep_4 + 100, 1, 24.4, -27.7 , 0 );
setMoveKey( spep_4 + 102, 1, 19.2, -28.9 , 0 );
setMoveKey( spep_4 + 104, 1, 30.1, -22 , 0 );
setMoveKey( spep_4 + 106, 1, 28.9, -27.2 , 0 );
setMoveKey( spep_4 + 108, 1, 35.7, -16.3 , 0 );
setMoveKey( spep_4 + 110, 1, 30.6, -21.5 , 0 );
setMoveKey( spep_4 + 112, 1, 41.4, -10.7 , 0 );
setMoveKey( spep_4 + 114, 1, 40.2, -11.8 , 0 );
setMoveKey( spep_4 + 116, 1, 47.1, -5 , 0 );
setMoveKey( spep_4 + 118, 1, 41.9, -6.1 , 0 );
setMoveKey( spep_4 + 120, 1, 52.8, 0.7 , 0 );
setMoveKey( spep_4 + 122, 1, 51.6, -4.4 , 0 );
setMoveKey( spep_4 + 124, 1, 58.4, 6.4 , 0 );
setMoveKey( spep_4 + 126, 1, 57.3, 1.3 , 0 );
setMoveKey( spep_4 + 128, 1, 64.1, 12.1 , 0 );

setScaleKey( spep_4 + 80, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 82, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 84, 1, 0.77, 0.77 );
setScaleKey( spep_4 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 90, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 92, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 94, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 96, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 98, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 100, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 102, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 104, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 106, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 108, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 110, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 112, 1, 0.99, 0.99 );
setScaleKey( spep_4 + 114, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 116, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 118, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 120, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 122, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 124, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 126, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 128, 1, 1.12, 1.12 );

setRotateKey( spep_4 + 80, 1, -66.4 );
setRotateKey( spep_4 + 82, 1, -65.7 );
setRotateKey( spep_4 + 84, 1, -65.1 );
setRotateKey( spep_4 + 86, 1, -64.4 );
setRotateKey( spep_4 + 88, 1, -63.8 );
setRotateKey( spep_4 + 90, 1, -63.1 );
setRotateKey( spep_4 + 92, 1, -62.5 );
setRotateKey( spep_4 + 94, 1, -61.8 );
setRotateKey( spep_4 + 96, 1, -61.2 );
setRotateKey( spep_4 + 98, 1, -60.5 );
setRotateKey( spep_4 + 100, 1, -59.9 );
setRotateKey( spep_4 + 102, 1, -59.2 );
setRotateKey( spep_4 + 104, 1, -58.5 );
setRotateKey( spep_4 + 106, 1, -57.9 );
setRotateKey( spep_4 + 108, 1, -57.2 );
setRotateKey( spep_4 + 110, 1, -56.6 );
setRotateKey( spep_4 + 112, 1, -55.9 );
setRotateKey( spep_4 + 114, 1, -55.3 );
setRotateKey( spep_4 + 116, 1, -54.6 );
setRotateKey( spep_4 + 118, 1, -54 );
setRotateKey( spep_4 + 120, 1, -53.3 );
setRotateKey( spep_4 + 122, 1, -52.7 );
setRotateKey( spep_4 + 124, 1, -52 );
setRotateKey( spep_4 + 126, 1, -51.4 );
setRotateKey( spep_4 + 128, 1, -50.7 );

-- ** エフェクト等 ** --
entryFade(spep_4+76,0,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+120,4,6,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_4, SE_06); --投げる
playSe( spep_4+80, SE_06); --近く
playSe( spep_4+130, 1024); --爆発

--黒背景
entryFadeBg(spep_4, 0, 250, 0, 0, 0, 0, 180);  -- 黒　背景
-- ダメージ表示
dealDamage(spep_4+128);
entryFade( spep_4+240, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+250);




else



------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--移動
--------------------------------------
spep_0=0;

--エフェクトの再生
move=entryEffectLife(spep_0,SP_01x,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,move,0,0,0);
setEffMoveKey(spep_0+140,move,0,0,0);
setEffScaleKey(spep_0,move,1.0,1.0);
setEffScaleKey(spep_0+140,move,1.0,1.0);
setEffAlphaKey(spep_0,move,255);
setEffAlphaKey(spep_0+140,move,255);
setEffRotateKey(spep_0,move,0);
setEffRotateKey(spep_0+140,move,0);

--流線
ryuusen = entryEffectLife( spep_0 + 28,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 28, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, ryuusen, 4.08, 1.23 );
setEffScaleKey( spep_0 + 138, ryuusen, 4.08, 1.23 );

setEffRotateKey( spep_0 + 28, ryuusen, 0 );
setEffRotateKey( spep_0 + 138, ryuusen, 0 );

setEffAlphaKey( spep_0 + 28, ryuusen, 0 );
setEffAlphaKey( spep_0 + 29, ryuusen, 255 );
setEffAlphaKey( spep_0 + 30, ryuusen, 255 );
setEffAlphaKey( spep_0 + 138, ryuusen, 255 );

--集中線
shuthuse = entryEffectLife( spep_0 + 28,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 28, shuthuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuthuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, shuthuse, 1.43, 2.03 );
setEffScaleKey( spep_0 + 138, shuthuse, 1.43, 2.03 );

setEffRotateKey( spep_0 + 28, shuthuse, 0 );
setEffRotateKey( spep_0 + 138, shuthuse, 0 );

setEffAlphaKey( spep_0 + 28, shuthuse, 0 );
setEffAlphaKey( spep_0 + 29, shuthuse, 255 );
setEffAlphaKey( spep_0 + 30, shuthuse, 255 );
setEffAlphaKey( spep_0 + 138, shuthuse, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+29, 0, 0, 10,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_0+126, 10, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 100);  -- 黒　背景

--SE
playSe( spep_0+34, 1018); --移動音

--次の準備
spep_1=spep_0+140;

--------------------------------------
--ラッシュ
--------------------------------------
--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02x,220,0x100,-1,0,0,0);

setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+220,rush,0,0,0);
setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+220,rush,1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+220,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+220,rush,0);

--集中線
shuchuse2 = entryEffectLife( spep_1 + 44,  906, 174, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 44, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 218, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 44, shuchuse2, 1.26, 1.69 );
setEffScaleKey( spep_1 + 218, shuchuse2, 1.26, 1.69 );

setEffRotateKey( spep_1 + 44, shuchuse2, 0 );
setEffRotateKey( spep_1 + 218, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 44, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 142, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 144, shuchuse2, 204 );
setEffAlphaKey( spep_1 + 146, shuchuse2, 153 );
setEffAlphaKey( spep_1 + 148, shuchuse2, 102 );
setEffAlphaKey( spep_1 + 150, shuchuse2, 51 );
setEffAlphaKey( spep_1 + 152, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 164, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 165, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 166, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 218, shuchuse2, 255 );

--流線
ryuusen2 = entryEffectLife( spep_1 + 0,  914, 218, 0x80, -1, 0, 268.5, 25.9 );

setEffMoveKey( spep_1 + 0, ryuusen2, 268.5, 25.9 , 0 );
setEffMoveKey( spep_1 + 218, ryuusen2, 268.5, 25.9 , 0 );

setEffScaleKey( spep_1 + 0, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 164, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 165, ryuusen2, 4.08, 1.23 );
setEffScaleKey( spep_1 + 166, ryuusen2, 5.82, 1.23 );
setEffScaleKey( spep_1 + 218, ryuusen2, 5.82, 1.23 );

setEffRotateKey( spep_1 + 0, ryuusen2, 0 );
setEffRotateKey( spep_1 + 164, ryuusen2, 0 );
setEffRotateKey( spep_1 + 165, ryuusen2, 0 );
setEffRotateKey( spep_1 + 166, ryuusen2, -72.8 );
setEffRotateKey( spep_1 + 218, ryuusen2, -72.8 )

setEffAlphaKey( spep_1 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_1 + 218, ryuusen2, 255 );

--黒背景
entryFadeBg(spep_1, 0, 220, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp(spep_1,1,1);
setDisp(spep_1+220,1,0);
changeAnime(spep_1,1,100);
changeAnime(spep_1+41,1,108);
changeAnime(spep_1+42,1,108);
changeAnime(spep_1+164,1,106);

setMoveKey( spep_1 + 0, 1, -984.1, -33.7 , 0 );
setMoveKey( spep_1 + 2, 1, -877.8, -33.7 , 0 );
setMoveKey( spep_1 + 4, 1, -771.5, -33.7 , 0 );
setMoveKey( spep_1 + 6, 1, -665.2, -33.7 , 0 );
setMoveKey( spep_1 + 8, 1, -558.9, -33.7 , 0 );
setMoveKey( spep_1 + 10, 1, -452.6, -33.7 , 0 );
setMoveKey( spep_1 + 12, 1, -346.3, -33.7 , 0 );
setMoveKey( spep_1 + 14, 1, -240, -33.7 , 0 );
setMoveKey( spep_1 + 16, 1, -226.3, -33.7 , 0 );
setMoveKey( spep_1 + 18, 1, -212.6, -33.7 , 0 );
setMoveKey( spep_1 + 20, 1, -198.9, -33.7 , 0 );
setMoveKey( spep_1 + 22, 1, -185.2, -33.7 , 0 );


setScaleKey( spep_1 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 22, 1, 1.4, 1.4 );



setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 22, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+22 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -185.2, -33.7, 0 );
setScaleKey(SP_dodge , 1, 1.4, 1.4  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -185.2, -33.7, 0 );
setScaleKey(SP_dodge+8 , 1, 1.4, 1.4  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
setMoveKey( spep_1 + 24, 1, -171.5, -33.7 , 0 );
setMoveKey( spep_1 + 26, 1, -157.8, -33.7 , 0 );
setMoveKey( spep_1 + 28, 1, -144, -33.7 , 0 );
setMoveKey( spep_1 + 30, 1, -130.3, -33.7 , 0 );
setMoveKey( spep_1 + 32, 1, -116.6, -33.7 , 0 );
setMoveKey( spep_1 + 34, 1, -102.9, -33.7 , 0 );
setMoveKey( spep_1 + 36, 1, -89.2, -33.7 , 0 );
setMoveKey( spep_1 + 38, 1, -75.5, -33.7 , 0 );
setMoveKey( spep_1 + 40, 1, -61.8, -33.7 , 0 );
setMoveKey( spep_1 + 42, 1, -48.1, -33.7 , 0 );

setMoveKey( spep_1 + 44, 1, -8.8, -32.9 , 0 );
setMoveKey( spep_1 + 46, 1, 12.3, -24.9 , 0 );
setMoveKey( spep_1 + 48, 1, 10.9, -24.5 , 0 );
setMoveKey( spep_1 + 50, 1, 17, -22.9 , 0 );
setMoveKey( spep_1 + 52, 1, 18, -27.9 , 0 );
setMoveKey( spep_1 + 54, 1, 20.3, -22.9 , 0 );
setMoveKey( spep_1 + 56, 1, 33.3, -20.5 , 0 );
setMoveKey( spep_1 + 58, 1, 42.1, -21.2 , 0 );
setMoveKey( spep_1 + 60, 1, 51, -10.9 , 0 );
setMoveKey( spep_1 + 62, 1, 53.2, -8.5 , 0 );
setMoveKey( spep_1 + 64, 1, 61.7, -4.9 , 0 );
setMoveKey( spep_1 + 66, 1, 71.8, 13.9 , 0 );
setMoveKey( spep_1 + 68, 1, 78.8, 20.9 , 0 );
setMoveKey( spep_1 + 70, 1, 83.2, 19.7 , 0 );
setMoveKey( spep_1 + 72, 1, 89.1, 26.2 , 0 );
setMoveKey( spep_1 + 74, 1, 89.5, 27.4 , 0 );
setMoveKey( spep_1 + 76, 1, 97.5, 30.4 , 0 );
setMoveKey( spep_1 + 78, 1, 98.8, 29 , 0 );
setMoveKey( spep_1 + 80, 1, 103.6, 33.6 , 0 );
setMoveKey( spep_1 + 82, 1, 105.8, 34.7 , 0 );
setMoveKey( spep_1 + 84, 1, 120.7, 55.2 , 0 );
setMoveKey( spep_1 + 86, 1, 121.9, 56.7 , 0 );
setMoveKey( spep_1 + 88, 1, 122.2, 52.3 , 0 );
setMoveKey( spep_1 + 90, 1, 124.4, 59.9 , 0 );
setMoveKey( spep_1 + 92, 1, 122.7, 60.4 , 0 );
setMoveKey( spep_1 + 94, 1, 126.9, 63 , 0 );
setMoveKey( spep_1 + 96, 1, 127.2, 61.5 , 0 );
setMoveKey( spep_1 + 98, 1, 129.4, 66.1 , 0 );
setMoveKey( spep_1 + 100, 1, 128.7, 66.7 , 0 );
setMoveKey( spep_1 + 102, 1, 131.9, 69.2 , 0 );
setMoveKey( spep_1 + 104, 1, 131.2, 69.8 , 0 );
setMoveKey( spep_1 + 106, 1, 134.5, 72.3 , 0 );
setMoveKey( spep_1 + 108, 1, 132.7, 72.9 , 0 );
setMoveKey( spep_1 + 110, 1, 137, 75.5 , 0 );
setMoveKey( spep_1 + 112, 1, 137.2, 73 , 0 );
setMoveKey( spep_1 + 114, 1, 139.5, 78.6 , 0 );
setMoveKey( spep_1 + 116, 1, 137.7, 79.2 , 0 );
setMoveKey( spep_1 + 118, 1, 142, 81.7 , 0 );
setMoveKey( spep_1 + 120, 1, 142.2, 80.3 , 0 );
setMoveKey( spep_1 + 122, 1, 144.5, 84.8 , 0 );
setMoveKey( spep_1 + 124, 1, 142.7, 85.4 , 0 );
setMoveKey( spep_1 + 126, 1, 147.1, 110.1 , 0 );
setMoveKey( spep_1 + 128, 1, 150.1, 125.1 , 0 );
setMoveKey( spep_1 + 130, 1, 151.1, 136.1 , 0 );
setMoveKey( spep_1 + 132, 1, 156.2, 155.1 , 0 );
setMoveKey( spep_1 + 134, 1, 158.2, 166.1 , 0 );
setMoveKey( spep_1 + 136, 1, 162.2, 185.2 , 0 );
setMoveKey( spep_1 + 138, 1, 159.8, 187.2 , 0 );
setMoveKey( spep_1 + 140, 1, 163.4, 191.3 , 0 );
setMoveKey( spep_1 + 142, 1, 164, 194.3 , 0 );
setMoveKey( spep_1 + 144, 1, 164.6, 197.3 , 0 );
setMoveKey( spep_1 + 146, 1, 165.2, 200.4 , 0 );
setMoveKey( spep_1 + 148, 1, 165.8, 203.4 , 0 );
setMoveKey( spep_1 + 150, 1, 166.4, 206.5 , 0 );
setMoveKey( spep_1 + 152, 1, 167, 209.5 , 0 );
setMoveKey( spep_1 + 154, 1, 167.6, 212.6 , 0 );
setMoveKey( spep_1 + 156, 1, 168.2, 215.6 , 0 );
setMoveKey( spep_1 + 158, 1, 168.8, 218.7 , 0 );
setMoveKey( spep_1 + 160, 1, 169.4, 221.7 , 0 );
setMoveKey( spep_1 + 162, 1, 170, 224.7 , 0 );
setMoveKey( spep_1 + 164, 1, 170.6, 227.8 , 0 );

setMoveKey( spep_1 + 166, 1, 94.8, 185.6 , 0 );
setMoveKey( spep_1 + 168, 1, 114.8, 220.3 , 0 );
setMoveKey( spep_1 + 170, 1, 135, 225 , 0 );
setMoveKey( spep_1 + 172, 1, 137.5, 240.5 , 0 );
setMoveKey( spep_1 + 174, 1, 148.3, 236.3 , 0 );
setMoveKey( spep_1 + 176, 1, 145.9, 257 , 0 );
setMoveKey( spep_1 + 178, 1, 150.1, 253.5 , 0 );
setMoveKey( spep_1 + 180, 1, 145.1, 265.1 , 0 );
setMoveKey( spep_1 + 182, 1, 155.8, 262.7 , 0 );
setMoveKey( spep_1 + 184, 1, 153.7, 281.5 , 0 );
setMoveKey( spep_1 + 186, 1, 157.5, 277.9 , 0 );
setMoveKey( spep_1 + 188, 1, 152.7, 289.8 , 0 );
setMoveKey( spep_1 + 190, 1, 164.3, 291.1 , 0 );
setMoveKey( spep_1 + 192, 1, 161.4, 306 , 0 );
setMoveKey( spep_1 + 194, 1, 228.7, 461.6 , 0 );
setMoveKey( spep_1 + 196, 1, 281.6, 631 , 0 );
setMoveKey( spep_1 + 198, 1, 353.7, 790.4 , 0 );
setMoveKey( spep_1 + 200, 1, 411.5, 963.7 , 0 );
setMoveKey( spep_1 + 202, 1, 478.8, 1119.2 , 0 );
setMoveKey( spep_1 + 204, 1, 531.7, 1288.6 , 0 );
setMoveKey( spep_1 + 206, 1, 603.8, 1448 , 0 );

setScaleKey( spep_1 + 40, 1, 1.4, 1.4 );

setScaleKey( spep_1 + 41, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 46, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 48, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 164, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 165, 1, 1.4, 1.4 );

setScaleKey( spep_1 + 166, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 168, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 170, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 172, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 206, 1, 1.39, 1.39 );

setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
setRotateKey( spep_1 + 41, 1, -9.7 );
setRotateKey( spep_1 + 54, 1, -9.7 );
setRotateKey( spep_1 + 56, 1, -9.6 );
setRotateKey( spep_1 + 58, 1, -9.5 );
setRotateKey( spep_1 + 66, 1, -9.5 );
setRotateKey( spep_1 + 68, 1, -9.6 );
setRotateKey( spep_1 + 72, 1, -9.6 );
setRotateKey( spep_1 + 74, 1, -9.7 );

setRotateKey( spep_1 + 102, 1, -9.7 );
setRotateKey( spep_1 + 104, 1, -9.6 );
setRotateKey( spep_1 + 124, 1, -9.6 );
setRotateKey( spep_1 + 126, 1, -9.5 );
setRotateKey( spep_1 + 128, 1, -10.8 );
setRotateKey( spep_1 + 130, 1, -12.1 );
setRotateKey( spep_1 + 132, 1, -13.5 );
setRotateKey( spep_1 + 134, 1, -14.8 );
setRotateKey( spep_1 + 136, 1, -16.1 );
setRotateKey( spep_1 + 138, 1, -16.4 );
setRotateKey( spep_1 + 140, 1, -16.7 );
setRotateKey( spep_1 + 142, 1, -17 );
setRotateKey( spep_1 + 144, 1, -17.3 );
setRotateKey( spep_1 + 146, 1, -17.6 );
setRotateKey( spep_1 + 148, 1, -17.9 );
setRotateKey( spep_1 + 150, 1, -18.1 );
setRotateKey( spep_1 + 152, 1, -18.4 );
setRotateKey( spep_1 + 154, 1, -18.7 );
setRotateKey( spep_1 + 156, 1, -19 );
setRotateKey( spep_1 + 158, 1, -19.3 );
setRotateKey( spep_1 + 160, 1, -19.6 );
setRotateKey( spep_1 + 162, 1, -19.9 );
setRotateKey( spep_1 + 164, 1, -20.2 );

setRotateKey( spep_1 + 166, 1, -35.1 );
setRotateKey( spep_1 + 168, 1, -34.7 );
setRotateKey( spep_1 + 170, 1, -34.3 );
setRotateKey( spep_1 + 172, 1, -33.9 );
setRotateKey( spep_1 + 174, 1, -33.5 );
setRotateKey( spep_1 + 176, 1, -33.1 );
setRotateKey( spep_1 + 178, 1, -32.7 );
setRotateKey( spep_1 + 180, 1, -32.3 );
setRotateKey( spep_1 + 182, 1, -31.9 );
setRotateKey( spep_1 + 184, 1, -31.5 );
setRotateKey( spep_1 + 186, 1, -31.1 );
setRotateKey( spep_1 + 188, 1, -30.7 );
setRotateKey( spep_1 + 190, 1, -30.3 );
setRotateKey( spep_1 + 192, 1, -29.9 );
setRotateKey( spep_1 + 206, 1, -29.9 );

setShakeChara(spep_1+42,1,164,15);


--文字エントリー
ctzun = entryEffectLife( spep_1 + 40,  10016, 12, 0x100, -1, 0, 15.9, 224 );--ズンッ
setEffMoveKey( spep_1 + 40, ctzun, 15.9, 224 , 0 );
setEffMoveKey( spep_1 + 46, ctzun, 16, 224 , 0 );
setEffMoveKey( spep_1 + 48, ctzun, 11.9, 229.7 , 0 );
setEffMoveKey( spep_1 + 50, ctzun, 15.9, 224 , 0 );
setEffMoveKey( spep_1 + 52, ctzun, 12.4, 228.6 , 0 );
--setEffMoveKey( spep_1 + 54, ctzun, 15.7, 224.1 , 0 );

setEffScaleKey( spep_1 + 40, ctzun, 1.36, 1.36 );
setEffScaleKey( spep_1 + 46, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_1 + 48, ctzun, 2.36, 2.36 );
setEffScaleKey( spep_1 + 50, ctzun, 1.94, 1.94 );
setEffScaleKey( spep_1 + 52, ctzun, 1.95, 1.95 );
--setEffScaleKey( spep_1 + 54, ctzun, 1.96, 1.96 );

setEffRotateKey( spep_1 + 40, ctzun, 12.2 );
setEffRotateKey( spep_1 + 50, ctzun, 12.2 );
setEffRotateKey( spep_1 + 52, ctzun, 12.1 );
--setEffRotateKey( spep_1 + 54, ctzun, 12.2 );

setEffAlphaKey( spep_1 + 40, ctzun, 0 );
setEffAlphaKey( spep_1 + 41, ctzun, 255 );
setEffAlphaKey( spep_1 + 42, ctzun, 255 );
setEffAlphaKey( spep_1 + 50, ctzun, 191 );
setEffAlphaKey( spep_1 + 52, ctzun, 13 );
--setEffAlphaKey( spep_1 + 54, ctzun, 13 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 52,  10005, 10, 0x100, -1, 0, -20, 244 );--ガッ
setEffMoveKey( spep_1 + 52, ctga, -20, 244 , 0 );
setEffMoveKey( spep_1 + 56, ctga, -28.8, 250.3 , 0 );
setEffMoveKey( spep_1 + 58, ctga, -20.1, 243.9 , 0 );
setEffMoveKey( spep_1 + 60, ctga, -26.7, 249 , 0 );
setEffMoveKey( spep_1 + 62, ctga, -20, 244 , 0 );

setEffScaleKey( spep_1 + 52, ctga, 1.28, 1.28 );
setEffScaleKey( spep_1 + 56, ctga, 1.91, 1.91 );
setEffScaleKey( spep_1 + 58, ctga, 1.69, 1.69 );
setEffScaleKey( spep_1 + 60, ctga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 62, ctga, 1.4, 1.4 );

setEffRotateKey( spep_1 + 52, ctga, -8.7 );
setEffRotateKey( spep_1 + 62, ctga, -8.7 );

setEffAlphaKey( spep_1 + 52, ctga, 0 );
setEffAlphaKey( spep_1 + 53, ctga, 255 );
setEffAlphaKey( spep_1 + 54, ctga, 255 );
setEffAlphaKey( spep_1 + 60, ctga, 255 );
setEffAlphaKey( spep_1 + 62, ctga, 128 );


--文字エントリー
ctga2 = entryEffectLife( spep_1 + 62,  10005, 12, 0x100, -1, 0, 177.2, 182.1 );--ガッ
setEffMoveKey( spep_1 + 62, ctga2, 177.2, 182.1 , 0 );
setEffMoveKey( spep_1 + 66, ctga2, 173.3, 192.3 , 0 );
setEffMoveKey( spep_1 + 68, ctga2, 177, 182.1 , 0 );
setEffMoveKey( spep_1 + 70, ctga2, 174.1, 190 , 0 );
setEffMoveKey( spep_1 + 74, ctga2, 177, 182.2 , 0 );

setEffScaleKey( spep_1 + 62, ctga2, 1.28, 1.28 );
setEffScaleKey( spep_1 + 66, ctga2, 1.91, 1.91 );
setEffScaleKey( spep_1 + 68, ctga2, 1.69, 1.69 );
setEffScaleKey( spep_1 + 70, ctga2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 74, ctga2, 1.4, 1.4 );

setEffRotateKey( spep_1 + 62, ctga2, 25 );
setEffRotateKey( spep_1 + 74, ctga2, 25 );

setEffAlphaKey( spep_1 + 62, ctga2, 0 );
setEffAlphaKey( spep_1 + 63, ctga2, 255 );
setEffAlphaKey( spep_1 + 64, ctga2, 255 );
setEffAlphaKey( spep_1 + 70, ctga2, 255 );
setEffAlphaKey( spep_1 + 74, ctga2, 128 );


--文字エントリー
ctdogagaga = entryEffectLife( spep_1 + 80,  10017, 40, 0x100, -1, 0, 51.8, 290.8 );--ドガガガッ
setEffMoveKey( spep_1 + 80, ctdogagaga, 51.8, 290.8 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 51.9, 291.1 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 44.6, 300.4 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 51.9, 290.9 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 45.3, 299.3 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 96, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 98, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 100, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 102, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 104, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 106, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 108, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 110, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 112, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 114, ctdogagaga, 52, 290.7 , 0 );
setEffMoveKey( spep_1 + 116, ctdogagaga, 45.7, 298.7 , 0 );
setEffMoveKey( spep_1 + 118, ctdogagaga, 51.9, 290.7 , 0 );
setEffMoveKey( spep_1 + 120, ctdogagaga, 45.7, 298.7 , 0 );

setEffScaleKey( spep_1 + 80, ctdogagaga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 86, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 88, ctdogagaga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 90, ctdogagaga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 92, ctdogagaga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 94, ctdogagaga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 120, ctdogagaga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 80, ctdogagaga, -17.7 );
setEffRotateKey( spep_1 + 112, ctdogagaga, -17.7 );
setEffRotateKey( spep_1 + 114, ctdogagaga, -17.6 );
setEffRotateKey( spep_1 + 116, ctdogagaga, -17.6 );
setEffRotateKey( spep_1 + 118, ctdogagaga, -17.7 );
setEffRotateKey( spep_1 + 120, ctdogagaga, -17.7 );

setEffAlphaKey( spep_1 + 80, ctdogagaga, 0 );
setEffAlphaKey( spep_1 + 81, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 82, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 112, ctdogagaga, 255 );
setEffAlphaKey( spep_1 + 114, ctdogagaga, 204 );
setEffAlphaKey( spep_1 + 116, ctdogagaga, 153 );
setEffAlphaKey( spep_1 + 118, ctdogagaga, 102 );
setEffAlphaKey( spep_1 + 120, ctdogagaga, 51 );

--文字エントリー
ctga3 = entryEffectLife( spep_1 + 122,  10005, 16, 0x100, -1, 0, 50.9, 358.6 );--ガッ
setEffMoveKey( spep_1 + 122, ctga3, 50.9, 358.6 , 0 );
setEffMoveKey( spep_1 + 132, ctga3, 39.3, 366.4 , 0 );
setEffMoveKey( spep_1 + 134, ctga3, 50.8, 358.7 , 0 );
setEffMoveKey( spep_1 + 136, ctga3, 41.9, 364.7 , 0 );
setEffMoveKey( spep_1 + 138, ctga3, 50.7, 358.6 , 0 );

setEffScaleKey( spep_1 + 122, ctga3, 1.63, 1.63 );
setEffScaleKey( spep_1 + 132, ctga3, 2.44, 2.44 );
setEffScaleKey( spep_1 + 134, ctga3, 2.17, 2.17 );
setEffScaleKey( spep_1 + 136, ctga3, 1.89, 1.89 );
setEffScaleKey( spep_1 + 138, ctga3, 1.79, 1.79 );

setEffRotateKey( spep_1 + 122, ctga3, -10.9 );
setEffRotateKey( spep_1 + 138, ctga3, -10.9 );

setEffAlphaKey( spep_1 + 122, ctga3, 0 );
setEffAlphaKey( spep_1 + 123, ctga3, 225 );
setEffAlphaKey( spep_1 + 124, ctga3, 225 );
setEffAlphaKey( spep_1 + 136, ctga3, 255 );
setEffAlphaKey( spep_1 + 138, ctga3, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 164,  10020, 34, 0x100, -1, 0, -108.1, 344.1 );--バキッ
setEffMoveKey( spep_1 + 164, ctbaki, -108.1, 344.1 , 0 );
setEffMoveKey( spep_1 + 168, ctbaki, -128.1, 358.2 , 0 );
setEffMoveKey( spep_1 + 170, ctbaki, -108.1, 344.1 , 0 );
setEffMoveKey( spep_1 + 172, ctbaki, -123.6, 355.1 , 0 );
setEffMoveKey( spep_1 + 174, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 176, ctbaki, -121.2, 353.4 , 0 );
setEffMoveKey( spep_1 + 178, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 180, ctbaki, -120.8, 353.2 , 0 );
setEffMoveKey( spep_1 + 182, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 184, ctbaki, -120.4, 352.9 , 0 );
setEffMoveKey( spep_1 + 186, ctbaki, -107.8, 344.1 , 0 );
setEffMoveKey( spep_1 + 188, ctbaki, -120, 352.7 , 0 );
setEffMoveKey( spep_1 + 190, ctbaki, -107.8, 344.1 , 0 );
setEffMoveKey( spep_1 + 192, ctbaki, -119.9, 352.6 , 0 );
setEffMoveKey( spep_1 + 194, ctbaki, -107.9, 344.1 , 0 );
setEffMoveKey( spep_1 + 196, ctbaki, -120, 352.7 , 0 );
setEffMoveKey( spep_1 + 198, ctbaki, -107.9, 344.1 , 0 );

setEffScaleKey( spep_1 + 164, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 168, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 170, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_1 + 172, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_1 + 174, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 176, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 178, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 + 180, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 182, ctbaki, 1.84, 1.84 );
setEffScaleKey( spep_1 + 184, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 + 186, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_1 + 188, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 190, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 192, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 194, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 196, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 198, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 164, ctbaki, -9.7 );
setEffRotateKey( spep_1 + 198, ctbaki, -9.7 );

setEffAlphaKey( spep_1 + 164, ctbaki, 255 );
setEffAlphaKey( spep_1 + 190, ctbaki, 255 );
setEffAlphaKey( spep_1 + 192, ctbaki, 195 );
setEffAlphaKey( spep_1 + 194, ctbaki, 134 );
setEffAlphaKey( spep_1 + 196, ctbaki, 74 );
setEffAlphaKey( spep_1 + 198, ctbaki, 13 );

-- ** エフェクト等 ** --
entryFade(spep_1+41, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+162, 0, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+208, 8, 6, 8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1, 44); --移動音
playSe( spep_1+40, 1001); --パンチ
playSe( spep_1+52, 1009); --パンチ
playSe( spep_1+64, 1001); --パンチ
playSe( spep_1+80, 1010); --けり
playSe( spep_1+95, 1010); --けり
playSe( spep_1+106, 1009); --けり
playSe( spep_1+122, 1010); --けり
playSe( spep_1+164, 1011); --けり

--次の準備
spep_2=spep_1+220;

--------------------------------------
--溜め
--------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_2,SP_03x,138,0x100,-1,0,0,0);

setEffMoveKey(spep_2,tame,0,0,0);
setEffMoveKey(spep_2+138,tame,0,0,0);
setEffScaleKey(spep_2,tame,-1.0,1.0);
setEffScaleKey(spep_2+138,tame,-1.0,1.0);
setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+138,tame,255);
setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+138,tame,0);

--集中線
chuchu3 = entryEffectLife( spep_2 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, chuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, chuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, chuchu3, 1.32, 1.92 );
setEffScaleKey( spep_2 + 138, chuchu3, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, chuchu3, 0 );
setEffRotateKey( spep_2 + 138, chuchu3, 0 );

setEffAlphaKey( spep_2 + 0, chuchu3, 255 );
setEffAlphaKey( spep_2 + 138, chuchu3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_2 + 0,  914, 138, 0x80, -1, 0, 5.6, -237.1 );

setEffMoveKey( spep_2 + 0, ryuusen3, 5.6, -237.1 , 0 );
setEffMoveKey( spep_2 + 138, ryuusen3, 5.6, -237.1 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen3, 4.08, 1.23 );
setEffScaleKey( spep_2 + 138, ryuusen3, 4.08, 1.23 );

setEffRotateKey( spep_2 + 0, ryuusen3, 90 );
setEffRotateKey( spep_2 + 138, ryuusen3, 90 );

setEffAlphaKey( spep_2 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_2 + 138, ryuusen3, 255 );

--顔カットイン
--speff=entryEffect(spep_2+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+12,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+12,ctgogo,-10,520,0);
setEffMoveKey(spep_2+82,ctgogo,-10,520,0);
setEffScaleKey(spep_2+12, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+82, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+84, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_2+130, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 220, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_2 + 18, SE_04);

--次の準備
spep_3=spep_2+138;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen9=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

--------------------------------------
--大きく振りかぶって
--------------------------------------
--エフェクトの再生(前)
throw=entryEffect(spep_4,SP_04x,0x100,-1,0,0,0);

setEffMoveKey(spep_4,throw,0,0,0);
setEffMoveKey(spep_4+260,throw,0,0,0);
setEffScaleKey(spep_4,throw,1.0,1.0);
setEffScaleKey(spep_4+260,throw,1.0,1.0);
setEffAlphaKey(spep_4,throw,255);
setEffAlphaKey(spep_4+78,throw,255);
setEffAlphaKey(spep_4+80,throw,0);
setEffAlphaKey(spep_4+260,throw,0)
setEffRotateKey(spep_4,throw,0);
setEffRotateKey(spep_4+260,throw,0);

--流線
ryuusen4 = entryEffectLife( spep_4 + 0,  921, 124, 0x80, -1, 0, 63.5, 40.8 );

setEffMoveKey( spep_4 + 0, ryuusen4, 63.5, 40.8 , 0 );
setEffMoveKey( spep_4 + 124, ryuusen4, 63.5, 40.8 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen4,  1.87, 1.37 );
--setEffScaleKey( spep_4 + 78, ryuusen4, 1.47, 1.37 );
--setEffScaleKey( spep_4 + 80, ryuusen4, 1.2, 1.15 );
--setEffScaleKey( spep_4 + 124, ryuusen4, 1.2, 1.15 );
setEffScaleKey( spep_4 + 124, ryuusen4,  1.87, 1.37 );

setEffRotateKey( spep_4 + 0, ryuusen4, 155 );
setEffRotateKey( spep_4 + 124, ryuusen4, 155 );

setEffAlphaKey( spep_4 + 0, ryuusen4, 255 );
setEffAlphaKey( spep_4 + 124, ryuusen4, 255 );

--エフェクトの再生(後ろ)
throw2=entryEffect(spep_4,SP_04,0x80,-1,0,0,0);

setEffMoveKey(spep_4,throw2,0,0,0);
setEffMoveKey(spep_4+260,throw2,0,0,0);
setEffScaleKey(spep_4,throw2,1.0,1.0);
setEffScaleKey(spep_4+260,throw2,1.0,1.0);
setEffAlphaKey(spep_4,throw2,0);
setEffAlphaKey(spep_4+78,throw2,0);
setEffAlphaKey(spep_4+80,throw2,255);
setEffAlphaKey(spep_4+260,throw2,255);
setEffRotateKey(spep_4,throw2,0);
setEffRotateKey(spep_4+260,throw2,0);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 6,  10012, 42, 0x100, -1, 0, 78.7, 260.5 );--ズオ

setEffMoveKey( spep_4 + 6, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_4 + 6, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 38, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 40, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_4 + 42, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_4 + 44, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_4 + 46, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_4 + 48, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 + 6, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 48, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 6, ctzuo, 0 );
setEffAlphaKey( spep_4 + 7, ctzuo, 255 );
setEffAlphaKey( spep_4 + 8, ctzuo, 255 );
setEffAlphaKey( spep_4 + 38, ctzuo, 255 );
setEffAlphaKey( spep_4 + 40, ctzuo, 204 );
setEffAlphaKey( spep_4 + 42, ctzuo, 153 );
setEffAlphaKey( spep_4 + 44, ctzuo, 102 );
setEffAlphaKey( spep_4 + 46, ctzuo, 51 );
setEffAlphaKey( spep_4 + 48, ctzuo, 0 );



--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 258, 0x100, -1, 0, 0, 0 );   -- 集中線

setEffMoveKey( spep_4 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 258, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1.32, 1.92 );
setEffScaleKey( spep_4 + 258, shuchuse4, 1.32, 1.92 );

setEffRotateKey( spep_4 + 0, shuchuse4, 0 );
setEffRotateKey( spep_4 + 258, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 258, shuchuse4, 255 );

--文字エントリー

ctdogon = entryEffectLife( spep_4 + 134,  10018, 88, 0x100, -1, 0, -4, 366.9 );--ドゴォンッ

setEffMoveKey( spep_4 + 134, ctdogon, -4, 366.9 , 0 );
setEffMoveKey( spep_4 + 140, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 142, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 144, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 146, ctdogon, -6.5, 368.1 , 0 );
setEffMoveKey( spep_4 + 148, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 150, ctdogon, -6.1, 368 , 0 );
setEffMoveKey( spep_4 + 152, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 154, ctdogon, -6.1, 368 , 0 );
setEffMoveKey( spep_4 + 156, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 158, ctdogon, -6.1, 367.9 , 0 );
setEffMoveKey( spep_4 + 160, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 162, ctdogon, -6.1, 367.9 , 0 );
setEffMoveKey( spep_4 + 164, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 166, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 168, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 170, ctdogon, -6, 367.9 , 0 );
setEffMoveKey( spep_4 + 172, ctdogon, -4, 366.8 , 0 );
setEffMoveKey( spep_4 + 174, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 176, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 178, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 180, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 182, ctdogon, -6, 367.8 , 0 );
setEffMoveKey( spep_4 + 184, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 186, ctdogon, -5.9, 367.8 , 0 );
setEffMoveKey( spep_4 + 188, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 190, ctdogon, -5.9, 367.8 , 0 );
setEffMoveKey( spep_4 + 192, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 194, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 196, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 198, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 200, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 202, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 204, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 206, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 208, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 210, ctdogon, -5.9, 367.7 , 0 );
setEffMoveKey( spep_4 + 212, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 214, ctdogon, -5.8, 367.7 , 0 );
setEffMoveKey( spep_4 + 216, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 218, ctdogon, -5.8, 367.7 , 0 );
setEffMoveKey( spep_4 + 220, ctdogon, -4, 366.7 , 0 );
setEffMoveKey( spep_4 + 222, ctdogon, -4, 366.8 , 0 );

setEffScaleKey( spep_4 + 134, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_4 + 140, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_4 + 142, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_4 + 144, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_4 + 146, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_4 + 148, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_4 + 150, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_4 + 152, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_4 + 154, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_4 + 156, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_4 + 158, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_4 + 160, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_4 + 162, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_4 + 164, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 + 166, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_4 + 168, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_4 + 170, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_4 + 172, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_4 + 174, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_4 + 176, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_4 + 178, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_4 + 180, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_4 + 182, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_4 + 184, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_4 + 186, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_4 + 188, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_4 + 190, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_4 + 192, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_4 + 194, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_4 + 196, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_4 + 198, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_4 + 200, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_4 + 202, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_4 + 204, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_4 + 206, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 + 208, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_4 + 210, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_4 + 212, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_4 + 214, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_4 + 216, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 + 218, ctdogon, 2.46, 2.46 );
setEffScaleKey( spep_4 + 220, ctdogon, 2.46, 2.46 );
setEffScaleKey( spep_4 + 222, ctdogon, 2.45, 2.45 );

setEffRotateKey( spep_4 + 134, ctdogon, -7.2 );
setEffRotateKey( spep_4 + 176, ctdogon, -7.2 );
setEffRotateKey( spep_4 + 178, ctdogon, -7.1 );
setEffRotateKey( spep_4 + 222, ctdogon, -7.1 );

setEffAlphaKey( spep_4 + 134, ctdogon, 0 );
setEffAlphaKey( spep_4 + 135, ctdogon, 64 );
setEffAlphaKey( spep_4 + 136, ctdogon, 64 );
setEffAlphaKey( spep_4 + 140, ctdogon, 128 );
setEffAlphaKey( spep_4 + 142, ctdogon, 191 );
setEffAlphaKey( spep_4 + 144, ctdogon, 255 );
setEffAlphaKey( spep_4 + 204, ctdogon, 255 );
setEffAlphaKey( spep_4 + 206, ctdogon, 227 );
setEffAlphaKey( spep_4 + 208, ctdogon, 198 );
setEffAlphaKey( spep_4 + 210, ctdogon, 170 );
setEffAlphaKey( spep_4 + 212, ctdogon, 142 );
setEffAlphaKey( spep_4 + 214, ctdogon, 113 );
setEffAlphaKey( spep_4 + 216, ctdogon, 85 );
setEffAlphaKey( spep_4 + 218, ctdogon, 57 );
setEffAlphaKey( spep_4 + 220, ctdogon, 28 );
setEffAlphaKey( spep_4 + 222, ctdogon, 0 );

--敵の動き
setDisp(spep_4+80,1,1);
setDisp(spep_4+124,1,0);
changeAnime(spep_4+80,1,107);


setMoveKey( spep_4 + 80, 1, -4, -56.2 , 0 );
setMoveKey( spep_4 + 82, 1, -9.2, -57.3 , 0 );
setMoveKey( spep_4 + 84, 1, 1.7, -50.5 , 0 );
setMoveKey( spep_4 + 86, 1, 0.5, -55.6 , 0 );
setMoveKey( spep_4 + 88, 1, 7.4, -44.8 , 0 );
setMoveKey( spep_4 + 90, 1, 6.2, -49.9 , 0 );
setMoveKey( spep_4 + 92, 1, 13, -39.1 , 0 );
setMoveKey( spep_4 + 94, 1, 7.9, -40.3 , 0 );
setMoveKey( spep_4 + 96, 1, 18.7, -33.4 , 0 );
setMoveKey( spep_4 + 98, 1, 17.5, -38.6 , 0 );
setMoveKey( spep_4 + 100, 1, 24.4, -27.7 , 0 );
setMoveKey( spep_4 + 102, 1, 19.2, -28.9 , 0 );
setMoveKey( spep_4 + 104, 1, 30.1, -22 , 0 );
setMoveKey( spep_4 + 106, 1, 28.9, -27.2 , 0 );
setMoveKey( spep_4 + 108, 1, 35.7, -16.3 , 0 );
setMoveKey( spep_4 + 110, 1, 30.6, -21.5 , 0 );
setMoveKey( spep_4 + 112, 1, 41.4, -10.7 , 0 );
setMoveKey( spep_4 + 114, 1, 40.2, -11.8 , 0 );
setMoveKey( spep_4 + 116, 1, 47.1, -5 , 0 );
setMoveKey( spep_4 + 118, 1, 41.9, -6.1 , 0 );
setMoveKey( spep_4 + 120, 1, 52.8, 0.7 , 0 );
setMoveKey( spep_4 + 122, 1, 51.6, -4.4 , 0 );
setMoveKey( spep_4 + 124, 1, 58.4, 6.4 , 0 );
setMoveKey( spep_4 + 126, 1, 57.3, 1.3 , 0 );
setMoveKey( spep_4 + 128, 1, 64.1, 12.1 , 0 );

setScaleKey( spep_4 + 80, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 82, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 84, 1, 0.77, 0.77 );
setScaleKey( spep_4 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 90, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 92, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 94, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 96, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 98, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 100, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 102, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 104, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 106, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 108, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 110, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 112, 1, 0.99, 0.99 );
setScaleKey( spep_4 + 114, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 116, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 118, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 120, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 122, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 124, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 126, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 128, 1, 1.12, 1.12 );

setRotateKey( spep_4 + 80, 1, -66.4 );
setRotateKey( spep_4 + 82, 1, -65.7 );
setRotateKey( spep_4 + 84, 1, -65.1 );
setRotateKey( spep_4 + 86, 1, -64.4 );
setRotateKey( spep_4 + 88, 1, -63.8 );
setRotateKey( spep_4 + 90, 1, -63.1 );
setRotateKey( spep_4 + 92, 1, -62.5 );
setRotateKey( spep_4 + 94, 1, -61.8 );
setRotateKey( spep_4 + 96, 1, -61.2 );
setRotateKey( spep_4 + 98, 1, -60.5 );
setRotateKey( spep_4 + 100, 1, -59.9 );
setRotateKey( spep_4 + 102, 1, -59.2 );
setRotateKey( spep_4 + 104, 1, -58.5 );
setRotateKey( spep_4 + 106, 1, -57.9 );
setRotateKey( spep_4 + 108, 1, -57.2 );
setRotateKey( spep_4 + 110, 1, -56.6 );
setRotateKey( spep_4 + 112, 1, -55.9 );
setRotateKey( spep_4 + 114, 1, -55.3 );
setRotateKey( spep_4 + 116, 1, -54.6 );
setRotateKey( spep_4 + 118, 1, -54 );
setRotateKey( spep_4 + 120, 1, -53.3 );
setRotateKey( spep_4 + 122, 1, -52.7 );
setRotateKey( spep_4 + 124, 1, -52 );
setRotateKey( spep_4 + 126, 1, -51.4 );
setRotateKey( spep_4 + 128, 1, -50.7 );

-- ** エフェクト等 ** --
entryFade(spep_4+76,0,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+120,4,6,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_4, SE_06); --投げる
playSe( spep_4+80, SE_06); --近く
playSe( spep_4+130, 1024); --爆発

--黒背景
entryFadeBg(spep_4, 0, 250, 0, 0, 0, 0, 180);  -- 黒　背景
-- ダメージ表示
dealDamage(spep_4+128);
entryFade( spep_4+240, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+250);


end


