--1018450:カンバー_デザストルイレイザー

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

--味方側
SP_01 = 154331	;--	溜め
SP_02 = 154332	;--	発射
SP_03 = 154334	;--	命中
SP_04 = 3095 ; --爆発

--敵側
SP_02e = 154333	;--	発射

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
--味方側
------------------------------------------------------
------------------------------------------------------
--溜め
------------------------------------------------------

spep_0=0;

-- ** エフェクト等 ** --
tame=entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0 ); --溜め(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, tame, 0, 0 , 0 );

setEffScaleKey(spep_0, tame, 1.0, 1.0 );
setEffScaleKey(spep_0 + 178, tame, 1.0, 1.0 );

setEffRotateKey(spep_0, tame, 0 );
setEffRotateKey(spep_0 + 178, tame, 0 );

setEffAlphaKey(spep_0, tame, 255 );
setEffAlphaKey(spep_0 + 178, tame, 255 );

spep_x = spep_0 + 86;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 80, 520 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 80, 520 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 80, 520 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 175, 0x80, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 175, 20 );

setEffMoveKey( spep_0 -3 + 3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 178, shuchusen1, 0, 0 , 0 );

--setEffScaleKey( spep_0 -3 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 4, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0 -3 + 6, shuchusen1, 1.09, 1.09 );
setEffScaleKey( spep_0 -3 + 8, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 -3 + 10, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 12, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 -3 + 14, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 -3 + 16, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 18, shuchusen1, 1.26, 1.26 );
setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 22, shuchusen1, 1.32, 1.32 );
setEffScaleKey( spep_0 -3 + 24, shuchusen1, 1.35, 1.35 );
setEffScaleKey( spep_0 -3 + 26, shuchusen1, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 28, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 30, shuchusen1, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 32, shuchusen1, 1.46, 1.46 );
setEffScaleKey( spep_0 -3 + 34, shuchusen1, 1.49, 1.49 );
setEffScaleKey( spep_0 -3 + 36, shuchusen1, 1.52, 1.52 );
setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 178, shuchusen1, 1.75, 1.75 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 178, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 178, shuchusen1, 77 );

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
playSe( spep_0 + 12, 1035 );
playSe( spep_0 + 14, 1120 );
setSeVolume( spep_0 + 38, 1120, 0 );
setSeVolume( spep_0 + 40, 1120, 100 );
se_1037 = playSe( spep_0 + 88, 1037 );
setSeVolume( spep_0 + 88, 1037, 63 );
playSe( spep_0 + 88, 1018 );  --ごごご
se_1136 = playSe( spep_0 + 98, 1136);
setSeVolume( spep_0 + 98, 1136, 31 );
stopSe( spep_0 + 178, se_1037, 0 );
stopSe( spep_0 + 178, se_1136, 0 );

-- ** 黒背景 ** --
entryFadeBg(spep_0, 0, 178, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0 + 170, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, 1035);

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--発射
------------------------------------------------------
-- ** エフェクト ** --
firinga=entryEffect(spep_2,SP_02,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, firinga, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, firinga, 0, 0 , 0 );

setEffScaleKey(spep_2,firinga,1.0,1.0);
setEffScaleKey(spep_2+108,firinga,1.0,1.0);

setEffRotateKey(spep_2,firinga,0);
setEffRotateKey(spep_2+108,firinga,0);

setEffAlphaKey(spep_2,firinga,255);
setEffAlphaKey(spep_2+108,firinga,255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 26, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 26, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.75, 1.75 );
setEffScaleKey( spep_2 + 26, shuchusen2, 1.75, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 26, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 255 );

-- ** 流線(斜め) ** --
ryuusen1 = entryEffectLife( spep_2 + 26,  921, 82, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 26, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 26, ryuusen1, 1.4, 1.1 );
setEffScaleKey( spep_2 + 108, ryuusen1, 1.55, 1.2 );

setEffRotateKey( spep_2 + 26, ryuusen1, -131.8 );
setEffRotateKey( spep_2 + 108, ryuusen1, -131.8 );

setEffAlphaKey( spep_2 + 26, ryuusen1, 0 );
setEffAlphaKey( spep_2 + 27, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 28, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 108, ryuusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg(spep_2, 0, 108, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);
--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );
]]

setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+9,1,0.9,0.9);
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
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

--文字エントリー

ctZuo = entryEffectLife( spep_2 -3 + 18,  10012, 50, 0x100, -1, 0, 88.4, 177.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 18, ctZuo, 88.4, 177.6 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, 114.7, 203.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, 114.7, 234.4 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, 148, 258.6 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, 141.1, 291.2 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, 181.2, 314 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, 155.8, 322.6 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, 184.4, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, 158.8, 328.6 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, 187.7, 325.9 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, 161.8, 334.7 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, 190.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, 164.8, 340.7 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, 194.2, 337.8 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, 167.8, 346.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, 197.4, 343.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZuo, 170.8, 352.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZuo, 200.6, 349.7 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZuo, 173.8, 358.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZuo, 203.9, 355.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZuo, 176.8, 364.6 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZuo, 207.2, 361.6 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZuo, 179.8, 370.7 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctZuo, 210.4, 367.5 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctZuo, 182.8, 376.7 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctZuo, 184.3, 379.6 , 0 );

setEffScaleKey( spep_2 -3 + 18, ctZuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 20, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 22, ctZuo, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 24, ctZuo, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 26, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 28, ctZuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 30, ctZuo, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 32, ctZuo, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 34, ctZuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 36, ctZuo, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 38, ctZuo, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 40, ctZuo, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 42, ctZuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 50, ctZuo, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 52, ctZuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 54, ctZuo, 2.91, 2.91 );
setEffScaleKey( spep_2 -3 + 56, ctZuo, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 58, ctZuo, 2.94, 2.94 );
setEffScaleKey( spep_2 -3 + 60, ctZuo, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 62, ctZuo, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 64, ctZuo, 2.97, 2.97 );
setEffScaleKey( spep_2 -3 + 66, ctZuo, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 68, ctZuo, 3, 3 );

setEffRotateKey( spep_2 -3 + 18, ctZuo, -24.8 );
setEffRotateKey( spep_2 -3 + 20, ctZuo, -25 );
setEffRotateKey( spep_2 -3 + 68, ctZuo, -25 );

setEffAlphaKey( spep_2 -3 + 18, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctZuo, 223 );
setEffAlphaKey( spep_2 -3 + 56, ctZuo, 191 );
setEffAlphaKey( spep_2 -3 + 58, ctZuo, 159 );
setEffAlphaKey( spep_2 -3 + 60, ctZuo, 128 );
setEffAlphaKey( spep_2 -3 + 62, ctZuo, 96 );
setEffAlphaKey( spep_2 -3 + 64, ctZuo, 64 );
setEffAlphaKey( spep_2 -3 + 66, ctZuo, 32 );
setEffAlphaKey( spep_2 -3 + 68, ctZuo, 0 );

-- ** 白フェード ** --
entryFade(spep_2+98, 4, 6, 10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 音 ** --
playSe( spep_2 + 22, 1022);
setSeVolume( spep_2 + 22, 1022, 79 );
playSe( spep_2 + 22, 1133);
setSeVolume( spep_2 + 22, 1133, 19 );

-- ** 次の準備 ** --
spep_3=spep_2+108;

--------------------------------------
--命中
--------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_3,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+80,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+80,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+80,hit_f,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 27, 1, 107 );-----30

--setMoveKey( spep_3 -3 + 0, 1, 322.8, -272.5 , 0 );
setMoveKey( spep_3 -3 + 3, 1, 289, -249 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 267, -206 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 233.5, -184.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 200.4, -159.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 177.1, -119 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 144.2, -95.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 109.1, -67.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 113.6, -56.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 106.5, -64 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 110.9, -53.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 51.5, -62.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 63.1, -85 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 71, -79.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 64.4, -104.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 76.4, -127.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 89.7, -170 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 98.1, -162.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 103.1, -212.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 111.6, -203.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 103.1, -230.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 109, -251.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 118.7, -266.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 123.8, -245.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 121, -277.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 126, -256.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 113.3, -273.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 123.3, -288.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 128.3, -267.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 115.5, -284.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_3 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_3 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 20, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 26, 1, 1.47, 1.47 );--26
--setScaleKey( spep_3 + 29, 1, 1.47, 1.47 );--29
setScaleKey( spep_3 + 27, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 28, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 56, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 60, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 66, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 70, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 72, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 74, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 1.0, 1.0 );

setRotateKey( spep_3 -3 + 3, 1, 0 );
setRotateKey( spep_3 -3 + 29, 1, 0 );
setRotateKey( spep_3 -3 + 30, 1, -7.3 );
setRotateKey( spep_3 -3 + 32, 1, 1.9 );
setRotateKey( spep_3 -3 + 34, 1, -7.4 );
setRotateKey( spep_3 -3 + 36, 1, -7.4 );
setRotateKey( spep_3 -3 + 38, 1, 1.9 );
setRotateKey( spep_3 -3 + 40, 1, -7.4 );
setRotateKey( spep_3 -3 + 42, 1, -7.4 );
setRotateKey( spep_3 -3 + 44, 1, 1.9 );
setRotateKey( spep_3 -3 + 46, 1, -7.4 );
setRotateKey( spep_3 -3 + 48, 1, -7.4 );
setRotateKey( spep_3 -3 + 50, 1, 1.9 );
setRotateKey( spep_3 -3 + 52, 1, -7.4 );
setRotateKey( spep_3 -3 + 54, 1, -7.4 );
setRotateKey( spep_3 -3 + 56, 1, 1.9 );
setRotateKey( spep_3 -3 + 58, 1, -7.4 );
setRotateKey( spep_3 -3 + 60, 1, -7.4 );
setRotateKey( spep_3 -3 + 62, 1, 1.9 );
setRotateKey( spep_3 -3 + 64, 1, -7.4 );
setRotateKey( spep_3 -3 + 66, 1, -7.4 );
setRotateKey( spep_3 -3 + 68, 1, 1.9 );
setRotateKey( spep_3 -3 + 70, 1, -7.4 );
setRotateKey( spep_3 -3 + 72, 1, -7.4 );
setRotateKey( spep_3 -3 + 74, 1, 1.9 );
setRotateKey( spep_3 -3 + 76, 1, -7.4 );
setRotateKey( spep_3 -3 + 78, 1, -7.4 );

-- ** 黒背景 ** --
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+68, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

-- ** 音 ** --
playSe( spep_3 + 14, 1021 );
setSeVolume( spep_3 +14, 1021, 158);
playSe( spep_3 + 74, 1023 );

--次の準備
spep_4=spep_3+80;

--------------------------------------
--ギャン
--------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4, 190012, 60, 0x100, -1, 0, 0, 0);  --ギャン
setEffScaleKey( spep_4, gyan, 1.0, 1.0);
setEffScaleKey( spep_4 + 60, gyan, 1.0, 1.0);
setEffAlphaKey( spep_4, gyan, 255);
setEffAlphaKey( spep_4 + 60, gyan, 255);


-- ** 書き文字エントリー ** --
ctgayn = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_4, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgayn, 255);
setEffAlphaKey( spep_4+60, ctgayn, 0);
setEffShake( spep_4, ctgayn, 60, 10);

playSe(spep_4,SE_09);

entryFade( spep_4 + 20, 38, 6, 30, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
se_1160 = playSe( spep_4 + 56, 1160 );
setSeVolume( spep_4 + 56, 1160, 56 );
se_1159 = playSe( spep_4 + 56, 1159 );
setSeVolume( spep_4 + 56, 1159, 56 );
se_1044 = playSe( spep_4 + 56, 1044 );
setSeVolume( spep_4 + 56, 1044, 56 );

-- ** 次の準備 ** --
spep_5 = spep_4+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion=entryEffect(spep_5, SP_04,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, explosion, 0, 0 , 0 );

setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+180,explosion,1.1,1.1);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+180,explosion,0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+180,explosion,255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 45,  906, 135, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 45, shuchusen4, 135, 20 );

setEffMoveKey( spep_5 + 45, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 45, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_5 + 190, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_5 + 45, shuchusen4, 180 );
setEffRotateKey( spep_5 + 190, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 45, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 190, shuchusen4, 255 );

-- ** 音 ** --
stopSe( spep_5 + 170, se_1160, 0 );
stopSe( spep_5 + 170, se_1159, 0 );
stopSe( spep_5 + 170, se_1044, 0 );

-- ダメージ表示
dealDamage(spep_5+10);
endPhase( spep_5+170);

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--溜め
------------------------------------------------------

spep_0=0;

-- ** エフェクト等 ** --
tame=entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0 ); --溜め(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, tame, 0, 0 , 0 );

setEffScaleKey(spep_0, tame, -1.0, 1.0 );
setEffScaleKey(spep_0 + 178, tame, -1.0, 1.0 );

setEffRotateKey(spep_0, tame, 0 );
setEffRotateKey(spep_0 + 178, tame, 0 );

setEffAlphaKey(spep_0, tame, 255 );
setEffAlphaKey(spep_0 + 178, tame, 255 );

spep_x = spep_0 + 86;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 80, 520 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 80, 520 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 80, 520 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 175, 0x80, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 175, 20 );

setEffMoveKey( spep_0 -3 + 3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 178, shuchusen1, 0, 0 , 0 );

--setEffScaleKey( spep_0 -3 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 4, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0 -3 + 6, shuchusen1, 1.09, 1.09 );
setEffScaleKey( spep_0 -3 + 8, shuchusen1, 1.12, 1.12 );
setEffScaleKey( spep_0 -3 + 10, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 12, shuchusen1, 1.17, 1.17 );
setEffScaleKey( spep_0 -3 + 14, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 -3 + 16, shuchusen1, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 18, shuchusen1, 1.26, 1.26 );
setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 22, shuchusen1, 1.32, 1.32 );
setEffScaleKey( spep_0 -3 + 24, shuchusen1, 1.35, 1.35 );
setEffScaleKey( spep_0 -3 + 26, shuchusen1, 1.38, 1.38 );
setEffScaleKey( spep_0 -3 + 28, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 30, shuchusen1, 1.43, 1.43 );
setEffScaleKey( spep_0 -3 + 32, shuchusen1, 1.46, 1.46 );
setEffScaleKey( spep_0 -3 + 34, shuchusen1, 1.49, 1.49 );
setEffScaleKey( spep_0 -3 + 36, shuchusen1, 1.52, 1.52 );
setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 178, shuchusen1, 1.75, 1.75 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 178, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 178, shuchusen1, 77 );

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
playSe( spep_0 + 12, 1035 );
playSe( spep_0 + 14, 1120 );
setSeVolume( spep_0 + 38, 1120, 0 );
setSeVolume( spep_0 + 40, 1120, 100 );
se_1037 = playSe( spep_0 + 88, 1037 );
setSeVolume( spep_0 + 88, 1037, 63 );
playSe( spep_0 + 88, 1018 );  --ごごご
se_1136 = playSe( spep_0 + 98, 1136);
setSeVolume( spep_0 + 98, 1136, 31 );
stopSe( spep_0 + 178, se_1037, 0 );
stopSe( spep_0 + 178, se_1136, 0 );

-- ** 黒背景 ** --
entryFadeBg(spep_0, 0, 178, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0 + 170, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, 1035);

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--発射
------------------------------------------------------
--エフェクト
firinga=entryEffect(spep_2,SP_02e,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, firinga, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, firinga, 0, 0 , 0 );

setEffScaleKey(spep_2,firinga,1.0,1.0);
setEffScaleKey(spep_2+108,firinga,1.0,1.0);

setEffRotateKey(spep_2,firinga,0);
setEffRotateKey(spep_2+108,firinga,0);

setEffAlphaKey(spep_2,firinga,255);
setEffAlphaKey(spep_2+108,firinga,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 26, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 26, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.75, 1.75 );
setEffScaleKey( spep_2 + 26, shuchusen2, 1.75, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 26, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 255 );

--流線(斜め)
ryuusen1 = entryEffectLife( spep_2 + 26,  921, 82, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 26, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 26, ryuusen1, 1.4, 1.1 );
setEffScaleKey( spep_2 + 108, ryuusen1, 1.55, 1.2 );

setEffRotateKey( spep_2 + 26, ryuusen1, -131.8 );
setEffRotateKey( spep_2 + 108, ryuusen1, -131.8 );

setEffAlphaKey( spep_2 + 26, ryuusen1, 0 );
setEffAlphaKey( spep_2 + 27, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 28, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 108, ryuusen1, 255 );

--黒背景
entryFadeBg(spep_2, 0, 108, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);
--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );
]]

setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+9,1,0.9,0.9);
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
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

--文字エントリー

ctZuo = entryEffectLife( spep_2 -3 + 18,  10012, 50, 0x100, -1, 0, 88.4, 177.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 18, ctZuo, 88.4, 177.6 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, 114.7, 203.3 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, 114.7, 234.4 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, 148, 258.6 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, 141.1, 291.2 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, 181.2, 314 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, 155.8, 322.6 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, 184.4, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, 158.8, 328.6 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, 187.7, 325.9 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, 161.8, 334.7 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, 190.9, 331.8 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, 164.8, 340.7 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, 194.2, 337.8 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, 167.8, 346.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, 197.4, 343.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZuo, 170.8, 352.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZuo, 200.6, 349.7 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZuo, 173.8, 358.7 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZuo, 203.9, 355.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZuo, 176.8, 364.6 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZuo, 207.2, 361.6 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZuo, 179.8, 370.7 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctZuo, 210.4, 367.5 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctZuo, 182.8, 376.7 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctZuo, 184.3, 379.6 , 0 );

setEffScaleKey( spep_2 -3 + 18, ctZuo, 1, 1 );
setEffScaleKey( spep_2 -3 + 20, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 22, ctZuo, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 24, ctZuo, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 26, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 28, ctZuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 30, ctZuo, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 32, ctZuo, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 34, ctZuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 36, ctZuo, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 38, ctZuo, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 40, ctZuo, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 42, ctZuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 50, ctZuo, 2.89, 2.89 );
setEffScaleKey( spep_2 -3 + 52, ctZuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 54, ctZuo, 2.91, 2.91 );
setEffScaleKey( spep_2 -3 + 56, ctZuo, 2.92, 2.92 );
setEffScaleKey( spep_2 -3 + 58, ctZuo, 2.94, 2.94 );
setEffScaleKey( spep_2 -3 + 60, ctZuo, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 62, ctZuo, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 64, ctZuo, 2.97, 2.97 );
setEffScaleKey( spep_2 -3 + 66, ctZuo, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 68, ctZuo, 3, 3 );

setEffRotateKey( spep_2 -3 + 18, ctZuo, -24.8 );
setEffRotateKey( spep_2 -3 + 20, ctZuo, -25 );
setEffRotateKey( spep_2 -3 + 68, ctZuo, -25 );

setEffAlphaKey( spep_2 -3 + 18, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctZuo, 223 );
setEffAlphaKey( spep_2 -3 + 56, ctZuo, 191 );
setEffAlphaKey( spep_2 -3 + 58, ctZuo, 159 );
setEffAlphaKey( spep_2 -3 + 60, ctZuo, 128 );
setEffAlphaKey( spep_2 -3 + 62, ctZuo, 96 );
setEffAlphaKey( spep_2 -3 + 64, ctZuo, 64 );
setEffAlphaKey( spep_2 -3 + 66, ctZuo, 32 );
setEffAlphaKey( spep_2 -3 + 68, ctZuo, 0 );

-- ** 白フェード ** --
entryFade(spep_2+98, 4, 6, 10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 音 ** --
playSe( spep_2 + 22, 1022);
setSeVolume( spep_2 + 22, 1022, 79 );
playSe( spep_2 + 22, 1133);
setSeVolume( spep_2 + 22, 1133, 19 );

-- ** 次の準備 ** --
spep_3=spep_2+108;

--------------------------------------
--命中
--------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_3,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+80,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+80,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+80,hit_f,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 27, 1, 107 );-----30

--setMoveKey( spep_3 -3 + 0, 1, 322.8, -272.5 , 0 );
setMoveKey( spep_3 -3 + 3, 1, 289, -249 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 267, -206 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 233.5, -184.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 200.4, -159.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 177.1, -119 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 144.2, -95.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 109.1, -67.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 113.6, -56.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 106.5, -64 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 110.9, -53.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 51.5, -62.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 63.1, -85 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 71, -79.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 64.4, -104.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 76.4, -127.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 89.7, -170 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 98.1, -162.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 103.1, -212.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 111.6, -203.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 103.1, -230.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 109, -251.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 118.7, -266.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 123.8, -245.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 121, -277.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 126, -256.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 113.3, -273.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 123.3, -288.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 128.3, -267.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 115.5, -284.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_3 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_3 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 20, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 26, 1, 1.47, 1.47 );--26
--setScaleKey( spep_3 + 29, 1, 1.47, 1.47 );--29
setScaleKey( spep_3 + 27, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 28, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 56, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 60, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 66, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 70, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 72, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 74, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 1.0, 1.0 );

setRotateKey( spep_3 -3 + 3, 1, 0 );
setRotateKey( spep_3 -3 + 29, 1, 0 );
setRotateKey( spep_3 -3 + 30, 1, -7.3 );
setRotateKey( spep_3 -3 + 32, 1, 1.9 );
setRotateKey( spep_3 -3 + 34, 1, -7.4 );
setRotateKey( spep_3 -3 + 36, 1, -7.4 );
setRotateKey( spep_3 -3 + 38, 1, 1.9 );
setRotateKey( spep_3 -3 + 40, 1, -7.4 );
setRotateKey( spep_3 -3 + 42, 1, -7.4 );
setRotateKey( spep_3 -3 + 44, 1, 1.9 );
setRotateKey( spep_3 -3 + 46, 1, -7.4 );
setRotateKey( spep_3 -3 + 48, 1, -7.4 );
setRotateKey( spep_3 -3 + 50, 1, 1.9 );
setRotateKey( spep_3 -3 + 52, 1, -7.4 );
setRotateKey( spep_3 -3 + 54, 1, -7.4 );
setRotateKey( spep_3 -3 + 56, 1, 1.9 );
setRotateKey( spep_3 -3 + 58, 1, -7.4 );
setRotateKey( spep_3 -3 + 60, 1, -7.4 );
setRotateKey( spep_3 -3 + 62, 1, 1.9 );
setRotateKey( spep_3 -3 + 64, 1, -7.4 );
setRotateKey( spep_3 -3 + 66, 1, -7.4 );
setRotateKey( spep_3 -3 + 68, 1, 1.9 );
setRotateKey( spep_3 -3 + 70, 1, -7.4 );
setRotateKey( spep_3 -3 + 72, 1, -7.4 );
setRotateKey( spep_3 -3 + 74, 1, 1.9 );
setRotateKey( spep_3 -3 + 76, 1, -7.4 );
setRotateKey( spep_3 -3 + 78, 1, -7.4 );

-- ** 黒背景 ** --
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+68, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

-- ** 音 ** --
playSe( spep_3 + 14, 1021 );
setSeVolume( spep_3 +14, 1021, 158);
playSe( spep_3 + 74, 1023 );

--次の準備
spep_4=spep_3+80;

--------------------------------------
--ギャン
--------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_4, 190012, 60, 0x100, -1, 0, 0, 0);  --ギャン
setEffScaleKey( spep_4, gyan, 1.0, 1.0);
setEffScaleKey( spep_4 + 60, gyan, 1.0, 1.0);
setEffAlphaKey( spep_4, gyan, 255);
setEffAlphaKey( spep_4 + 60, gyan, 255);


-- ** 書き文字エントリー ** --
ctgayn = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_4, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgayn, 255);
setEffAlphaKey( spep_4+60, ctgayn, 0);
setEffShake( spep_4, ctgayn, 60, 10);

playSe(spep_4,SE_09);

entryFade( spep_4 + 20, 38, 6, 30, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
se_1160 = playSe( spep_4 + 56, 1160 );
setSeVolume( spep_4 + 56, 1160, 56 );
se_1159 = playSe( spep_4 + 56, 1159 );
setSeVolume( spep_4 + 56, 1159, 56 );
se_1044 = playSe( spep_4 + 56, 1044 );
setSeVolume( spep_4 + 56, 1044, 56 );

-- ** 次の準備 ** --
spep_5 = spep_4+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion=entryEffect(spep_5, SP_04,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, explosion, 0, 0 , 0 );

setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+180,explosion,1.1,1.1);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+180,explosion,0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+180,explosion,255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 45,  906, 135, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 45, shuchusen4, 135, 20 );

setEffMoveKey( spep_5 + 45, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 45, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_5 + 190, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_5 + 45, shuchusen4, 180 );
setEffRotateKey( spep_5 + 190, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 45, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 190, shuchusen4, 255 );

-- ** 音 ** --
stopSe( spep_5 + 170, se_1160, 0 );
stopSe( spep_5 + 170, se_1159, 0 );
stopSe( spep_5 + 170, se_1044, 0 );

-- ダメージ表示
dealDamage(spep_5+10);
endPhase( spep_5+170);

end