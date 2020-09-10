--チチ　1012060
--sp_effect_a8_00027


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
SP_01=151866;--	溜め
SP_02=151867;--	溜め（カットイン用）
SP_03=151868;--	振りかぶる1
SP_04=151869;--	竜巻迫る1（前）
SP_05=151870;--	竜巻迫る1（後）
SP_06=151871;--	竜巻ラッシュ（前）
SP_07=151872;--	竜巻ラッシュ（後）
SP_08=151873;--	振りかぶる2
SP_09=151874;--	竜巻迫る2
SP_10=151875;--	竜巻命中



--敵側は味方側に1xをつけてます
SP_01x=151876;--	溜め（敵）
SP_02x=151877;--	溜め（カットイン用）（敵）
SP_03x=151878;--	振りかぶる1（敵）
SP_04x=151869;--	竜巻迫る1（前）
SP_05x=151870;--	竜巻迫る1（後）
SP_06x=151871;--	竜巻ラッシュ（前）
SP_07x=151872;--	竜巻ラッシュ（後）
SP_08x=151947;--	振りかぶる2
SP_09x=151874;--	竜巻迫る2
SP_10x=151875;--	竜巻命中





------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -1000,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -1000,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -1000,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -1000,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,70,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+70,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+70,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+70,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+70,tame,0);

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 26,  10013, 42, 0x100, -1, 0, 38.4, 149.6 );--ズズズンッ
setEffMoveKey( spep_0 + 26, ctzuzuzun, 38.4, 149.6 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 37.8, 167.7 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 47.9, 198.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 44.3, 212.9 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 57.6, 247.2 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 68, ctzuzuzun, 50.8, 258.2 , 0 );

setEffScaleKey( spep_0 + 26, ctzuzuzun, 1, 1 );
setEffScaleKey( spep_0 + 28, ctzuzuzun, 1.41, 1.41 );
setEffScaleKey( spep_0 + 30, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_0 + 32, ctzuzuzun, 2.22, 2.22 );
setEffScaleKey( spep_0 + 34, ctzuzuzun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 36, ctzuzuzun, 3.03, 3.03 );
setEffScaleKey( spep_0 + 68, ctzuzuzun, 3.03, 3.03 );

setEffRotateKey( spep_0 + 26, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 68, ctzuzuzun, 0 );

setEffAlphaKey( spep_0 + 26, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 68, ctzuzuzun, 255 );


--SE
playSe(spep_0 + 26,SE_05);
--背景黒
entryFadeBg(spep_0+30, 10, 40, 0, 0, 0, 0, 180);  -- 黒　背景

--白フェード
entryFade( spep_0+61, 4,  7, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--次の準備
spep_1=spep_0+70;

------------------------------------------------------
-- 溜め（カットイン用）
------------------------------------------------------
--エフェクトの再生
tame2=entryEffectLife(spep_1,SP_02,100,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame2,0,0,0);
setEffMoveKey(spep_1+100,tame2,0,0,0);
setEffScaleKey(spep_1,tame2,1.0,1.0);
setEffScaleKey(spep_1+100,tame2,1.0,1.0);
setEffAlphaKey(spep_1,tame2,255);
setEffAlphaKey(spep_1+100,tame2,255);
setEffRotateKey(spep_1,tame2,0);
setEffRotateKey(spep_1+100,tame2,0);

speff=entryEffect(spep_1+11,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+11,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_1+24,190006,69,0x100,-1,-100,500);--ゴゴゴ
setEffMoveKey(spep_1+24,ctgogo,-100,500,0);
setEffMoveKey(spep_1+93,ctgogo,-100,500,0);
setEffScaleKey(spep_1+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+93, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_1+24,ctgogo,-5);
setEffRotateKey(spep_1+93,ctgogo,-5);

--背景黒
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_1+24, SE_04);

--白フェード
entryFade( spep_1+91, 6,  4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+100

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+93;

------------------------------------------------------
-- 振りかぶる1
------------------------------------------------------
--エフェクトの再生
sprinkle=entryEffectLife(spep_3,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey(spep_3,sprinkle,0,0,0);
setEffMoveKey(spep_3+80,sprinkle,0,0,0);
setEffScaleKey(spep_3,sprinkle,1.0,1.0);
setEffScaleKey(spep_3+80,sprinkle,1.0,1.0);
setEffAlphaKey(spep_3,sprinkle,255);
setEffAlphaKey(spep_3+80,sprinkle,255);
setEffRotateKey(spep_3,sprinkle,0);
setEffRotateKey(spep_3+80,sprinkle,0);

--集中線
shuchu1 = entryEffectLife( spep_3 + 0,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchu1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 30, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu1, 1.32, 1.32 );
setEffScaleKey( spep_3 + 30, shuchu1, 1.32, 1.32 );

setEffRotateKey( spep_3 + 0, shuchu1, 180 );
setEffRotateKey( spep_3 + 30, shuchu1, 180 );

setEffAlphaKey( spep_3 + 0, shuchu1, 255 );
setEffAlphaKey( spep_3 + 30, shuchu1, 255 );

--流線(斜め)
ryuusen1 = entryEffectLife( spep_3 + 32,  921, 48, 0x80, -1, -100, 0, 0 );

setEffMoveKey( spep_3 + 32, ryuusen1, -100, 0 , 0 );
setEffMoveKey( spep_3 + 80, ryuusen1, -100, 0 , 0 );

setEffScaleKey( spep_3 + 32, ryuusen1, 1.47, 1.16 );
setEffScaleKey( spep_3 + 80, ryuusen1, 1.47, 1.16 );

setEffRotateKey( spep_3 + 32, ryuusen1, -120.8 );
setEffRotateKey( spep_3 + 80, ryuusen1, -120.8 );

setEffAlphaKey( spep_3 + 32, ryuusen1, 255 );
setEffAlphaKey( spep_3 + 80, ryuusen1, 255 );


--背景黒
entryFadeBg(spep_3, 0, 30, 0, 0, 0, 0, 210);  -- 黒　背景
entryFadeBg(spep_3+30, 0, 50, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_3+33, 1018);


--白フェード
entryFade( spep_3+27, 3,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+70, 7,  7, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



--次の準備
spep_4=spep_3+80;

------------------------------------------------------
-- 竜巻迫る
------------------------------------------------------
--エフェクトの再生(前)
tornado_front=entryEffectLife(spep_4,SP_04,50,0x100,-1,0,0,0);

setEffMoveKey(spep_4,tornado_front,0,0,0);
setEffMoveKey(spep_4+50,tornado_front,0,0,0);
setEffScaleKey(spep_4,tornado_front,1.0,1.0);
setEffScaleKey(spep_4+50,tornado_front,1.0,1.0);
setEffAlphaKey(spep_4,tornado_front,255);
setEffAlphaKey(spep_4+50,tornado_front,255);
setEffRotateKey(spep_4,tornado_front,0);
setEffRotateKey(spep_4+50,tornado_front,0);


--流線(斜め)
ryuusen2 = entryEffectLife( spep_4 ,  921, 50, 0x80, -1, -100, 0, 0 );

setEffMoveKey( spep_4, ryuusen2, -100, 0 , 0 );
setEffMoveKey( spep_4 + 50, ryuusen2, -100, 0 , 0 );

setEffScaleKey( spep_4, ryuusen2, 1.47, 1.16 );
setEffScaleKey( spep_4 + 50, ryuusen2, 1.47, 1.16 );

setEffRotateKey( spep_4, ryuusen2, -120.8 );
setEffRotateKey( spep_4 + 50, ryuusen2, -120.8 );

setEffAlphaKey( spep_4, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 50, ryuusen2, 255 );

--エフェクトの再生(後)
tornado_back=entryEffectLife(spep_4,SP_05,50,0x80,-1,0,0,0);

setEffMoveKey(spep_4,tornado_back,0,0,0);
setEffMoveKey(spep_4+50,tornado_back,0,0,0);
setEffScaleKey(spep_4,tornado_back,1.0,1.0);
setEffScaleKey(spep_4+50,tornado_back,1.0,1.0);
setEffAlphaKey(spep_4,tornado_back,255);
setEffAlphaKey(spep_4+50,tornado_back,255);
setEffRotateKey(spep_4,tornado_back,0);
setEffRotateKey(spep_4+50,tornado_back,0);

--集中線
shuchu2 = entryEffectLife( spep_4 + 0,  906, 52, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 52, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchu2, 1.32, 1.32 );
setEffScaleKey( spep_4 + 52, shuchu2, 1.32, 1.32 );

setEffRotateKey( spep_4 + 0, shuchu2, 180 );
setEffRotateKey( spep_4 + 52, shuchu2, 180 );

setEffAlphaKey( spep_4 + 0, shuchu2, 255 );
setEffAlphaKey( spep_4 + 52, shuchu2, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 380.1, -675.2 , 0 );
setMoveKey( spep_4 + 2, 1, 358, -616.4 , 0 );
setMoveKey( spep_4 + 4, 1, 313, -557.5 , 0 );
setMoveKey( spep_4 + 6, 1, 290, -498.7 , 0 );
setMoveKey( spep_4 + 8, 1, 246, -439.8 , 0 );
setMoveKey( spep_4 + 10, 1, 221.8, -381 , 0 );
setMoveKey( spep_4 + 12, 1, 179, -322.2 , 0 );


setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 + 2, 1, 2.86, 2.86 );
setScaleKey( spep_4 + 4, 1, 2.73, 2.73 );
setScaleKey( spep_4 + 6, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 8, 1, 2.46, 2.46 );
setScaleKey( spep_4 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_4 + 12, 1, 2.18, 2.18 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 52, 1, 0 );


--背景黒
entryFadeBg(spep_4, 0, 52, 0, 0, 0, 0, 255);  -- 黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+13 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge , 1 ,2.18, 2.18 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge+8 , 1 , 2.18, 2.18 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


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

setMoveKey( spep_4 + 14, 1, 153.7, -263.4 , 0 );
setMoveKey( spep_4 + 16, 1, 112, -204.5 , 0 );
setMoveKey( spep_4 + 18, 1, 85.5, -145.6 , 0 );
setMoveKey( spep_4 + 20, 1, 44.9, -86.8 , 0 );
setMoveKey( spep_4 + 22, 1, 17.5, -28 , 0 );
setMoveKey( spep_4 + 24, 1, 10, -25.5 , 0 );
setMoveKey( spep_4 + 26, 1, 14.6, -23.1 , 0 );
setMoveKey( spep_4 + 28, 1, 7.1, -20.7 , 0 );
setMoveKey( spep_4 + 30, 1, 11.6, -18.2 , 0 );
setMoveKey( spep_4 + 32, 1, 4.4, -15.8 , 0 );
setMoveKey( spep_4 + 34, 1, 8.7, -13.4 , 0 );
setMoveKey( spep_4 + 36, 1, 1.5, -11 , 0 );
setMoveKey( spep_4 + 38, 1, 5.8, -8.5 , 0 );
setMoveKey( spep_4 + 40, 1, -1.4, -6.1 , 0 );
setMoveKey( spep_4 + 42, 1, 3, -3.7 , 0 );
setMoveKey( spep_4 + 44, 1, -4.1, -1.2 , 0 );
setMoveKey( spep_4 + 46, 1, 0, 1.1 , 0 );
setMoveKey( spep_4 + 48, 1, -7, 3.6 , 0 );
setMoveKey( spep_4 + 50, 1, -2.9, 6 , 0 );
setMoveKey( spep_4 + 52, 1, -8.5, 6 , 0 );

setScaleKey( spep_4 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 16, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 20, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 24, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 28, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 30, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 32, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 34, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 44, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 52, 1, 1.4, 1.4 );

--SE
playSe( spep_4+3, 1018);

--白フェード
entryFade( spep_4+41, 11,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5=spep_4+52;

------------------------------------------------------
-- 竜巻ラッシュ
------------------------------------------------------
--エフェクトの再生(前)
rush_front=entryEffectLife(spep_5,SP_06,120,0x100,-1,0,0,0);

setEffMoveKey(spep_5,rush_front,0,0,0);
setEffMoveKey(spep_5+120,rush_front,0,0,0);
setEffScaleKey(spep_5,rush_front,1.0,1.0);
setEffScaleKey(spep_5+120,rush_front,1.0,1.0);
setEffAlphaKey(spep_5,rush_front,255);
setEffAlphaKey(spep_5+120,rush_front,255);
setEffRotateKey(spep_5,rush_front,0);
setEffRotateKey(spep_5+120,rush_front,0);

--エフェクトの再生(後)
rush_Back=entryEffectLife(spep_5,SP_07,120,0x80,-1,0,0,0);

setEffMoveKey(spep_5,rush_Back,0,0,0);
setEffMoveKey(spep_5+120,rush_Back,0,0,0);
setEffScaleKey(spep_5,rush_Back,1.0,1.0);
setEffScaleKey(spep_5+120,rush_Back,1.0,1.0);
setEffAlphaKey(spep_5,rush_Back,255);
setEffAlphaKey(spep_5+120,rush_Back,255);
setEffRotateKey(spep_5,rush_Back,0);
setEffRotateKey(spep_5+120,rush_Back,0);

--集中線
shuchu3 = entryEffectLife( spep_5 + 0,  906, 118, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchu3, 1.32, 1.32 );
setEffScaleKey( spep_5 + 118, shuchu3, 1.32, 1.32 );

setEffRotateKey( spep_5 + 0, shuchu3, 180 );
setEffRotateKey( spep_5 + 118, shuchu3, 180 );

setEffAlphaKey( spep_5 + 0, shuchu3, 255 );
setEffAlphaKey( spep_5 + 24, shuchu3, 255 );
setEffAlphaKey( spep_5 + 25, shuchu3, 0 );
setEffAlphaKey( spep_5 + 37, shuchu3, 0 );
setEffAlphaKey( spep_5 + 38, shuchu3, 255 );
setEffAlphaKey( spep_5 + 48, shuchu3, 255 );
setEffAlphaKey( spep_5 + 49, shuchu3, 0 );
setEffAlphaKey( spep_5 + 61, shuchu3, 0 );
setEffAlphaKey( spep_5 + 62, shuchu3, 255 );
setEffAlphaKey( spep_5 + 72, shuchu3, 255 );
setEffAlphaKey( spep_5 + 73, shuchu3, 0 );
setEffAlphaKey( spep_5 + 89, shuchu3, 0 );
setEffAlphaKey( spep_5 + 90, shuchu3, 255 );
setEffAlphaKey( spep_5 + 98, shuchu3, 255 );
setEffAlphaKey( spep_5 + 110, shuchu3, 255 );
setEffAlphaKey( spep_5 + 118, shuchu3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_5 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryuusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, ryuusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen3, 2, 1 );
setEffScaleKey( spep_5 + 118, ryuusen3, 2, 1 );

setEffRotateKey( spep_5 + 0, ryuusen3, 0 );
setEffRotateKey( spep_5 + 118, ryuusen3, 0 );

setEffAlphaKey( spep_5 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_5 + 118, ryuusen3, 255 );

---敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 118, 1, 0);
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 10, 1, 106 );

setMoveKey( spep_5 + 0, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 2, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 4, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 6, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 8, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 11, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 12, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 14, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 16, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 18, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 20, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 22, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 24, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 26, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 28, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 30, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 32, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 34, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 36, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 38, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 40, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 42, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 44, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 46, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 48, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 50, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 52, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 54, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 56, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 58, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 60, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 62, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 64, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 66, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 68, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 70, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 72, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 74, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 76, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 78, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 80, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 82, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 84, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 86, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 88, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 90, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 92, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 94, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 96, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 98, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 100, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 102, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 104, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 106, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 108, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 110, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 112, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 114, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 116, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 118, 1, 14.1, 2.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 118, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 9, 1, 0 );
setRotateKey( spep_5 + 10, 1, -52.2 );
setRotateKey( spep_5 + 118, 1, -52.2 );

--背景黒
entryFadeBg(spep_5, 0, 120, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_5 +4 , 1032);
playSe( spep_5 + 35, 1032);
playSe( spep_5 + 61, 1032);
playSe( spep_5 + 86, 1032);

--白フェード
entryFade( spep_5+110, 8,  6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6=spep_5+120;

------------------------------------------------------
-- 振りかぶる2
------------------------------------------------------
--エフェクトの再生
sprinkle2=entryEffectLife(spep_6,SP_08,98,0x100,-1,0,0,0);

setEffMoveKey(spep_6,sprinkle2,0,0,0);
setEffMoveKey(spep_6+98,sprinkle2,0,0,0);
setEffScaleKey(spep_6,sprinkle2,1.0,1.0);
setEffScaleKey(spep_6+98,sprinkle2,1.0,1.0);
setEffAlphaKey(spep_6,sprinkle2,255);
setEffAlphaKey(spep_6+98,sprinkle2,255);
setEffRotateKey(spep_6,sprinkle2,0);
setEffRotateKey(spep_6+98,sprinkle2,0);

--流線
ryuusen5 = entryEffectLife( spep_6 + 0,  921, 98, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_6 + 0, ryuusen5, -100, 0 , 0 );
setEffMoveKey( spep_6 + 98, ryuusen5, -100, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryuusen5, 1.47, 1.16 );
setEffScaleKey( spep_6 + 98, ryuusen5, 1.47, 1.16 );

setEffRotateKey( spep_6 + 0, ryuusen5, -120.8 );
setEffRotateKey( spep_6 + 98, ryuusen5, -120.8 );

setEffAlphaKey( spep_6 + 0, ryuusen5, 255 );
setEffAlphaKey( spep_6 + 98, ryuusen5, 255 );

--集中線
shuchu4 = entryEffectLife( spep_6 + 22,  906, 76, 0x100, -1, -200, 130, 0 );
setEffMoveKey( spep_6 + 22, shuchu4, -200, 100, 0 );
setEffMoveKey( spep_6 +98, shuchu4, -200, 100, 0 );

setEffScaleKey( spep_6 + 22, shuchu4, 1.48, 1.48 );
setEffScaleKey( spep_6 + 98, shuchu4, 1.48, 1.48 );

setEffRotateKey( spep_6 + 22, shuchu4, 0 );
setEffRotateKey( spep_6 + 98, shuchu4, 0 );

setEffAlphaKey( spep_6 + 22, shuchu4, 255 );
setEffAlphaKey( spep_6 + 98, shuchu4, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_6 + 26,  10012, 72, 0x100, -1, 0, 58.4, 287.5 );--ズオッ
setEffMoveKey( spep_6 + 26, ctzuo, 58.4, 287.5 , 0 );
setEffMoveKey( spep_6 + 28, ctzuo, 82.3, 311.2 , 0 );
setEffMoveKey( spep_6 + 30, ctzuo, 93, 328.8 , 0 );
setEffMoveKey( spep_6 + 32, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 34, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 36, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 38, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 40, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 42, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 44, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 46, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 48, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 50, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 58, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 60, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 62, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 64, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 66, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 68, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 70, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 72, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 74, ctzuo, 126.4, 359.5 , 0 );
setEffMoveKey( spep_6 + 76, ctzuo, 156.3, 375.9 , 0 );
setEffMoveKey( spep_6 + 78, ctzuo, 173.8, 386.5 , 0 );
setEffMoveKey( spep_6 + 98, ctzuo, 173.8, 386.5 , 0 );

setEffScaleKey( spep_6 + 26, ctzuo, 1, 1 );
setEffScaleKey( spep_6 + 28, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_6 + 30, ctzuo, 2, 2 );
setEffScaleKey( spep_6 + 32, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6 + 72, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6 + 74, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_6 + 76, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_6 + 78, ctzuo, 3.49, 3.49 );
setEffScaleKey( spep_6 + 98, ctzuo, 3.49, 3.49 );

setEffRotateKey( spep_6 + 26, ctzuo, 37.4 );
setEffRotateKey( spep_6 + 28, ctzuo, 37.5 );
setEffRotateKey( spep_6 + 98, ctzuo, 37.5 );

setEffAlphaKey( spep_6 + 26, ctzuo, 255 );
setEffAlphaKey( spep_6 + 72, ctzuo, 255 );
setEffAlphaKey( spep_6 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6 + 76, ctzuo, 85 );
setEffAlphaKey( spep_6 + 78, ctzuo, 0 );
setEffAlphaKey( spep_6 + 98, ctzuo, 0 );

--背景黒
entryFadeBg(spep_6, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_6 + 26, SE_06);

--白フェード
entryFade( spep_6+88, 7,  8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+100;

------------------------------------------------------
-- 竜巻迫る2
------------------------------------------------------
--エフェクトの再生
tornado=entryEffectLife(spep_7,SP_09,30,0x100,-1,0,0,0);

setEffMoveKey(spep_7,tornado,0,0,0);
setEffMoveKey(spep_7+30,tornado,0,0,0);
setEffScaleKey(spep_7,tornado,1.0,1.0);
setEffScaleKey(spep_7+30,tornado,1.0,1.0);
setEffAlphaKey(spep_7,tornado,255);
setEffAlphaKey(spep_7+30,tornado,255);
setEffRotateKey(spep_7,tornado,0);
setEffRotateKey(spep_7+30,tornado,0);

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 477.2, -760.6 , 0 );
setMoveKey( spep_7 + 2, 1, 438.7, -680 , 0 );
setMoveKey( spep_7 + 4, 1, 366.9, -613.9 , 0 );
setMoveKey( spep_7 + 6, 1, 323.7, -522.4 , 0 );
setMoveKey( spep_7 + 8, 1, 272.6, -455.3 , 0 );
setMoveKey( spep_7 + 10, 1, 231.1, -375.8 , 0 );
setMoveKey( spep_7 + 12, 1, 164.4, -307.2 , 0 );
setMoveKey( spep_7 + 14, 1, 119.1, -219.7 , 0 );
setMoveKey( spep_7 + 16, 1, 117.7, -224.5 , 0 );
setMoveKey( spep_7 + 18, 1, 124.2, -220.1 , 0 );
setMoveKey( spep_7 + 20, 1, 109.5, -224.9 , 0 );
setMoveKey( spep_7 + 22, 1, 113.3, -212.5 , 0 );
setMoveKey( spep_7 + 24, 1, 111.9, -217.3 , 0 );
setMoveKey( spep_7 + 26, 1, 118.2, -212.9 , 0 );
setMoveKey( spep_7 + 28, 1, 103.8, -217.6 , 0 );

setScaleKey( spep_7 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_7 + 2, 1, 2.36, 2.36 );
setScaleKey( spep_7 + 4, 1, 2.21, 2.21 );
setScaleKey( spep_7 + 6, 1, 2.07, 2.07 );
setScaleKey( spep_7 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_7 + 10, 1, 1.79, 1.79 );
setScaleKey( spep_7 + 12, 1, 1.64, 1.64 );
setScaleKey( spep_7 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 18, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_7 + 22, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 28, 1, 1.44, 1.44 );

setRotateKey( spep_7 + 0, 1, -52.2 );
setRotateKey( spep_7 + 28, 1, -52.2 );

--流線
ryuusen6 = entryEffectLife( spep_7 + 0,  921, 28, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_7 + 0, ryuusen6, -100, 0 , 0 );
setEffMoveKey( spep_7 + 28, ryuusen6, -100, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryuusen6, 1.47, 1.16 );
setEffScaleKey( spep_7 + 28, ryuusen6, 1.47, 1.16 );

setEffRotateKey( spep_7 + 0, ryuusen6, -120.8 );
setEffRotateKey( spep_7 + 28, ryuusen6, -120.8 );

setEffAlphaKey( spep_7 + 0, ryuusen6, 255 );
setEffAlphaKey( spep_7 + 28, ryuusen6, 255 );

--背景黒
entryFadeBg(spep_7, 0, 30, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_7+4, 1018);

--白フェード
entryFade( spep_7+24, 3,  3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8=spep_7+30;

------------------------------------------------------
-- 竜巻命中
------------------------------------------------------

--エフェクトの再生
hit=entryEffectLife(spep_8,SP_10,50,0x100,-1,0,0,0);

setEffMoveKey(spep_8,hit,0,0,0);
setEffMoveKey(spep_8+50,hit,0,0,0);
setEffScaleKey(spep_8,hit,1.0,1.0);
setEffScaleKey(spep_8+50,hit,1.0,1.0);
setEffAlphaKey(spep_8,hit,255);
setEffAlphaKey(spep_8+50,hit,255);
setEffRotateKey(spep_8,hit,0);
setEffRotateKey(spep_8+50,hit,0);

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );


setMoveKey( spep_8 + 0, 1, -56.8, -47.4 , 0 );
setMoveKey( spep_8 + 2, 1, -29.1, -81.3 , 0 );
setMoveKey( spep_8 + 4, 1, -21.8, -104.8 , 0 );
setMoveKey( spep_8 + 6, 1, 3.6, -146.3 , 0 );
setMoveKey( spep_8 + 8, 1, 26.1, -171.8 , 0 );
setMoveKey( spep_8 + 10, 1, 58.4, -207.6 , 0 );
setMoveKey( spep_8 + 12, 1, 51.5, -216.9 , 0 );
setMoveKey( spep_8 + 14, 1, 72.4, -251.5 , 0 );
setMoveKey( spep_8 + 16, 1, 88.4, -265.2 , 0 );
setMoveKey( spep_8 + 18, 1, 113.9, -290.6 , 0 );
setMoveKey( spep_8 + 20, 1, 107, -299.9 , 0 );
setMoveKey( spep_8 + 22, 1, 127.9, -334.5 , 0 );
setMoveKey( spep_8 + 24, 1, 144, -348.2 , 0 );
setMoveKey( spep_8 + 26, 1, 169.5, -373.6 , 0 );
setMoveKey( spep_8 + 28, 1, 162.5, -383 , 0 );
setMoveKey( spep_8 + 30, 1, 183.4, -417.5 , 0 );
setMoveKey( spep_8 + 32, 1, 199.5, -431.3 , 0 );
setMoveKey( spep_8 + 34, 1, 225, -456.6 , 0 );
setMoveKey( spep_8 + 36, 1, 218.1, -466 , 0 );
setMoveKey( spep_8 + 38, 1, 238.9, -500.5 , 0 );
setMoveKey( spep_8 + 40, 1, 255, -514.3 , 0 );
setMoveKey( spep_8 + 42, 1, 280.5, -539.7 , 0 );
setMoveKey( spep_8 + 44, 1, 273.6, -549 , 0 );
setMoveKey( spep_8 + 46, 1, 294.5, -583.6 , 0 );
setMoveKey( spep_8 + 48, 1, 310.6, -597.4 , 0 );

setScaleKey( spep_8 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_8 + 10, 1, 1, 1 )
setScaleKey( spep_8 + 48, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 48, 1, 0 );
setShakeChara(spep_8,1,48,30);

--集中線
shuchu5 = entryEffectLife( spep_8 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, shuchu5,  0, 0 , 0 );
setEffMoveKey( spep_8 + 48, shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchu5, 1.32, 1.32 );
setEffScaleKey( spep_8 + 48, shuchu5, 1.32, 1.32 );

setEffRotateKey( spep_8 + 0, shuchu5, 180 );
setEffRotateKey( spep_8 + 48, shuchu5, 180 );

setEffAlphaKey( spep_8 + 0, shuchu5, 255 );
setEffAlphaKey( spep_8 + 48, shuchu5, 255 );

--流線
ryuusen7 = entryEffectLife( spep_8 + 0,  921, 48, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_8 + 0, ryuusen7, -100, 0 , 0 );
setEffMoveKey( spep_8 + 48, ryuusen7, -100, 0 , 0 );

setEffScaleKey( spep_8 + 0, ryuusen7, 1.47, 1.16 );
setEffScaleKey( spep_8 + 48, ryuusen7, 1.47, 1.16 );

setEffRotateKey( spep_8 + 0, ryuusen7, -120.8 );
setEffRotateKey( spep_8 + 48, ryuusen7, -120.8 );

setEffAlphaKey( spep_8 + 0, ryuusen7, 255 );
setEffAlphaKey( spep_8 + 48, ryuusen7, 255 );


--背景黒
entryFadeBg(spep_8, 0, 50, 0, 0, 0, 0, 255);  -- 黒　背景


--白フェード
entryFade( spep_8+44, 4, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9=spep_8+50;

------------------------------------------------------
-- ガ
------------------------------------------------------




changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_9,    1,  100,  0,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
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
ct = entryEffectLife( spep_9+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+15, ct, 30, 10);
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
setEffAlphaKey( spep_9+110, ct, 0);

playSe( spep_9+14, SE_11);
shuchusen = entryEffectLife( spep_9+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+105);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------ 
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,70,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+70,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+70,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+70,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+70,tame,0);

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 26,  10013, 42, 0x100, -1, 0, 38.4, 149.6 );--ズズズンッ
setEffMoveKey( spep_0 + 26, ctzuzuzun, 38.4, 149.6 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 37.8, 167.7 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 47.9, 198.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 44.3, 212.9 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 57.6, 247.2 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzuzun, 62.4, 271.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzuzun, 50.8, 258.2 , 0 );
setEffMoveKey( spep_0 + 68, ctzuzuzun, 50.8, 258.2 , 0 );

setEffScaleKey( spep_0 + 26, ctzuzuzun, 1, 1 );
setEffScaleKey( spep_0 + 28, ctzuzuzun, 1.41, 1.41 );
setEffScaleKey( spep_0 + 30, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_0 + 32, ctzuzuzun, 2.22, 2.22 );
setEffScaleKey( spep_0 + 34, ctzuzuzun, 2.62, 2.62 );
setEffScaleKey( spep_0 + 36, ctzuzuzun, 3.03, 3.03 );
setEffScaleKey( spep_0 + 68, ctzuzuzun, 3.03, 3.03 );

setEffRotateKey( spep_0 + 26, ctzuzuzun, 0 );
setEffRotateKey( spep_0 + 68, ctzuzuzun, 0 );

setEffAlphaKey( spep_0 + 26, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 68, ctzuzuzun, 255 );


--SE
playSe(spep_0 + 26,SE_05);
--背景黒
entryFadeBg(spep_0+30, 10, 40, 0, 0, 0, 0, 180);  -- 黒　背景

--白フェード
entryFade( spep_0+61, 4,  7, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--次の準備
spep_1=spep_0+70;

------------------------------------------------------
-- 溜め（カットイン用）
------------------------------------------------------
--エフェクトの再生
tame2=entryEffectLife(spep_1,SP_02x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame2,0,0,0);
setEffMoveKey(spep_1+100,tame2,0,0,0);
setEffScaleKey(spep_1,tame2,1.0,1.0);
setEffScaleKey(spep_1+100,tame2,1.0,1.0);
setEffAlphaKey(spep_1,tame2,255);
setEffAlphaKey(spep_1+100,tame2,255);
setEffRotateKey(spep_1,tame2,0);
setEffRotateKey(spep_1+100,tame2,0);

--speff=entryEffect(spep_1+11,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+11,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_1+24,190006,69,0x100,-1,-100,500);--ゴゴゴ
setEffMoveKey(spep_1+24,ctgogo,-100,500,0);
setEffMoveKey(spep_1+93,ctgogo,-100,500,0);
setEffScaleKey(spep_1+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1+93, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_1+24,ctgogo,-5);
setEffRotateKey(spep_1+93,ctgogo,-5);

--背景黒
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_1+24, SE_04);

--白フェード
entryFade( spep_1+91, 6,  4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+100

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+93;

------------------------------------------------------
-- 振りかぶる1
------------------------------------------------------
--エフェクトの再生
sprinkle=entryEffectLife(spep_3,SP_03x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_3,sprinkle,0,0,0);
setEffMoveKey(spep_3+80,sprinkle,0,0,0);
setEffScaleKey(spep_3,sprinkle,1.0,1.0);
setEffScaleKey(spep_3+80,sprinkle,1.0,1.0);
setEffAlphaKey(spep_3,sprinkle,255);
setEffAlphaKey(spep_3+80,sprinkle,255);
setEffRotateKey(spep_3,sprinkle,0);
setEffRotateKey(spep_3+80,sprinkle,0);

--集中線
shuchu1 = entryEffectLife( spep_3 + 0,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchu1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 30, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu1, 1.32, 1.32 );
setEffScaleKey( spep_3 + 30, shuchu1, 1.32, 1.32 );

setEffRotateKey( spep_3 + 0, shuchu1, 180 );
setEffRotateKey( spep_3 + 30, shuchu1, 180 );

setEffAlphaKey( spep_3 + 0, shuchu1, 255 );
setEffAlphaKey( spep_3 + 30, shuchu1, 255 );

--流線(斜め)
ryuusen1 = entryEffectLife( spep_3 + 32,  921, 48, 0x80, -1, -100, 0, 0 );

setEffMoveKey( spep_3 + 32, ryuusen1, -100, 0 , 0 );
setEffMoveKey( spep_3 + 80, ryuusen1, -100, 0 , 0 );

setEffScaleKey( spep_3 + 32, ryuusen1, 1.47, 1.16 );
setEffScaleKey( spep_3 + 80, ryuusen1, 1.47, 1.16 );

setEffRotateKey( spep_3 + 32, ryuusen1, -120.8 );
setEffRotateKey( spep_3 + 80, ryuusen1, -120.8 );

setEffAlphaKey( spep_3 + 32, ryuusen1, 255 );
setEffAlphaKey( spep_3 + 80, ryuusen1, 255 );


--背景黒
entryFadeBg(spep_3, 0, 30, 0, 0, 0, 0, 210);  -- 黒　背景
entryFadeBg(spep_3+30, 0, 50, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_3+33, 1018);


--白フェード
entryFade( spep_3+27, 3,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+70, 7,  7, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



--次の準備
spep_4=spep_3+80;

------------------------------------------------------
-- 竜巻迫る
------------------------------------------------------
--エフェクトの再生(前)
tornado_front=entryEffectLife(spep_4,SP_04x,50,0x100,-1,0,0,0);

setEffMoveKey(spep_4,tornado_front,0,0,0);
setEffMoveKey(spep_4+50,tornado_front,0,0,0);
setEffScaleKey(spep_4,tornado_front,1.0,1.0);
setEffScaleKey(spep_4+50,tornado_front,1.0,1.0);
setEffAlphaKey(spep_4,tornado_front,255);
setEffAlphaKey(spep_4+50,tornado_front,255);
setEffRotateKey(spep_4,tornado_front,0);
setEffRotateKey(spep_4+50,tornado_front,0);


--流線(斜め)
ryuusen2 = entryEffectLife( spep_4 + 0,  921, 50, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_4 + 0, ryuusen2, -100, 0 , 0 );
setEffMoveKey( spep_4 + 50, ryuusen2, -100, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen2, 1.47, 1.16 );
setEffScaleKey( spep_4 + 50, ryuusen2, 1.47, 1.16 );

setEffRotateKey( spep_4 + 0, ryuusen2, -120.8 );
setEffRotateKey( spep_4 + 50, ryuusen2, -120.8 );

setEffAlphaKey( spep_4 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 50, ryuusen2, 255 );

--エフェクトの再生(後)
tornado_back=entryEffectLife(spep_4,SP_05x,50,0x80,-1,0,0,0);

setEffMoveKey(spep_4,tornado_back,0,0,0);
setEffMoveKey(spep_4+50,tornado_back,0,0,0);
setEffScaleKey(spep_4,tornado_back,1.0,1.0);
setEffScaleKey(spep_4+50,tornado_back,1.0,1.0);
setEffAlphaKey(spep_4,tornado_back,255);
setEffAlphaKey(spep_4+50,tornado_back,255);
setEffRotateKey(spep_4,tornado_back,0);
setEffRotateKey(spep_4+50,tornado_back,0);

--集中線
shuchu2 = entryEffectLife( spep_4 + 0,  906, 52, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 52, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchu2, 1.32, 1.32 );
setEffScaleKey( spep_4 + 52, shuchu2, 1.32, 1.32 );

setEffRotateKey( spep_4 + 0, shuchu2, 180 );
setEffRotateKey( spep_4 + 52, shuchu2, 180 );

setEffAlphaKey( spep_4 + 0, shuchu2, 255 );
setEffAlphaKey( spep_4 + 52, shuchu2, 255 );


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 380.1, -675.2 , 0 );
setMoveKey( spep_4 + 2, 1, 358, -616.4 , 0 );
setMoveKey( spep_4 + 4, 1, 313, -557.5 , 0 );
setMoveKey( spep_4 + 6, 1, 290, -498.7 , 0 );
setMoveKey( spep_4 + 8, 1, 246, -439.8 , 0 );
setMoveKey( spep_4 + 10, 1, 221.8, -381 , 0 );
setMoveKey( spep_4 + 12, 1, 179, -322.2 , 0 );


setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 + 2, 1, 2.86, 2.86 );
setScaleKey( spep_4 + 4, 1, 2.73, 2.73 );
setScaleKey( spep_4 + 6, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 8, 1, 2.46, 2.46 );
setScaleKey( spep_4 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_4 + 12, 1, 2.18, 2.18 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 52, 1, 0 );


--背景黒
entryFadeBg(spep_4, 0, 52, 0, 0, 0, 0, 255);  -- 黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+13 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge , 1 ,2.18, 2.18 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge+8 , 1 , 2.18, 2.18 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


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

setMoveKey( spep_4 + 14, 1, 153.7, -263.4 , 0 );
setMoveKey( spep_4 + 16, 1, 112, -204.5 , 0 );
setMoveKey( spep_4 + 18, 1, 85.5, -145.6 , 0 );
setMoveKey( spep_4 + 20, 1, 44.9, -86.8 , 0 );
setMoveKey( spep_4 + 22, 1, 17.5, -28 , 0 );
setMoveKey( spep_4 + 24, 1, 10, -25.5 , 0 );
setMoveKey( spep_4 + 26, 1, 14.6, -23.1 , 0 );
setMoveKey( spep_4 + 28, 1, 7.1, -20.7 , 0 );
setMoveKey( spep_4 + 30, 1, 11.6, -18.2 , 0 );
setMoveKey( spep_4 + 32, 1, 4.4, -15.8 , 0 );
setMoveKey( spep_4 + 34, 1, 8.7, -13.4 , 0 );
setMoveKey( spep_4 + 36, 1, 1.5, -11 , 0 );
setMoveKey( spep_4 + 38, 1, 5.8, -8.5 , 0 );
setMoveKey( spep_4 + 40, 1, -1.4, -6.1 , 0 );
setMoveKey( spep_4 + 42, 1, 3, -3.7 , 0 );
setMoveKey( spep_4 + 44, 1, -4.1, -1.2 , 0 );
setMoveKey( spep_4 + 46, 1, 0, 1.1 , 0 );
setMoveKey( spep_4 + 48, 1, -7, 3.6 , 0 );
setMoveKey( spep_4 + 50, 1, -2.9, 6 , 0 );
setMoveKey( spep_4 + 52, 1, -8.5, 6 , 0 );


setScaleKey( spep_4 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 16, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 18, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 20, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 24, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 26, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 28, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 30, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 32, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 34, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 44, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 50, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 52, 1, 1.4, 1.4 );
--SE
playSe( spep_4+3, 1018);

--白フェード
entryFade( spep_4+41, 11,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5=spep_4+52;

------------------------------------------------------
-- 竜巻ラッシュ
------------------------------------------------------
--エフェクトの再生(前)
rush_front=entryEffectLife(spep_5,SP_06x,120,0x100,-1,0,0,0);

setEffMoveKey(spep_5,rush_front,0,0,0);
setEffMoveKey(spep_5+120,rush_front,0,0,0);
setEffScaleKey(spep_5,rush_front,1.0,1.0);
setEffScaleKey(spep_5+120,rush_front,1.0,1.0);
setEffAlphaKey(spep_5,rush_front,255);
setEffAlphaKey(spep_5+120,rush_front,255);
setEffRotateKey(spep_5,rush_front,0);
setEffRotateKey(spep_5+120,rush_front,0);

--エフェクトの再生(後)
rush_Back=entryEffectLife(spep_5,SP_07x,120,0x80,-1,0,0,0);

setEffMoveKey(spep_5,rush_Back,0,0,0);
setEffMoveKey(spep_5+120,rush_Back,0,0,0);
setEffScaleKey(spep_5,rush_Back,1.0,1.0);
setEffScaleKey(spep_5+120,rush_Back,1.0,1.0);
setEffAlphaKey(spep_5,rush_Back,255);
setEffAlphaKey(spep_5+120,rush_Back,255);
setEffRotateKey(spep_5,rush_Back,0);
setEffRotateKey(spep_5+120,rush_Back,0);

--集中線
shuchu3 = entryEffectLife( spep_5 + 0,  906, 118, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchu3, 1.32, 1.32 );
setEffScaleKey( spep_5 + 118, shuchu3, 1.32, 1.32 );

setEffRotateKey( spep_5 + 0, shuchu3, 180 );
setEffRotateKey( spep_5 + 118, shuchu3, 180 );

setEffAlphaKey( spep_5 + 0, shuchu3, 255 );
setEffAlphaKey( spep_5 + 24, shuchu3, 255 );
setEffAlphaKey( spep_5 + 25, shuchu3, 0 );
setEffAlphaKey( spep_5 + 37, shuchu3, 0 );
setEffAlphaKey( spep_5 + 38, shuchu3, 255 );
setEffAlphaKey( spep_5 + 48, shuchu3, 255 );
setEffAlphaKey( spep_5 + 49, shuchu3, 0 );
setEffAlphaKey( spep_5 + 61, shuchu3, 0 );
setEffAlphaKey( spep_5 + 62, shuchu3, 255 );
setEffAlphaKey( spep_5 + 72, shuchu3, 255 );
setEffAlphaKey( spep_5 + 73, shuchu3, 0 );
setEffAlphaKey( spep_5 + 89, shuchu3, 0 );
setEffAlphaKey( spep_5 + 90, shuchu3, 255 );
setEffAlphaKey( spep_5 + 98, shuchu3, 255 );
setEffAlphaKey( spep_5 + 110, shuchu3, 255 );
setEffAlphaKey( spep_5 + 118, shuchu3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_5 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryuusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, ryuusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryuusen3, 2, 1 );
setEffScaleKey( spep_5 + 118, ryuusen3, 2, 1 );

setEffRotateKey( spep_5 + 0, ryuusen3, 0 );
setEffRotateKey( spep_5 + 118, ryuusen3, 0 );

setEffAlphaKey( spep_5 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_5 + 118, ryuusen3, 255 );

---敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 118, 1, 0);
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 10, 1, 106 );

setMoveKey( spep_5 + 0, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 2, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 4, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 6, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 8, 1, 3, 0 , 0 );
setMoveKey( spep_5 + 11, 1, 9, 0 , 0 );
setMoveKey( spep_5 + 12, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 14, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 16, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 18, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 20, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 22, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 24, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 26, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 28, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 30, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 32, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 34, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 36, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 38, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 40, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 42, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 44, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 46, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 48, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 50, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 52, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 54, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 56, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 58, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 60, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 62, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 64, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 66, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 68, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 70, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 72, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 74, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 76, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 78, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 80, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 82, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 84, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 86, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 88, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 90, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 92, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 94, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 96, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 98, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 100, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 102, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 104, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 106, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 108, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 110, 1, 14.1, 2.7 , 0 );
setMoveKey( spep_5 + 112, 1, 0.6, -4 , 0 );
setMoveKey( spep_5 + 114, 1, 6, 6.8 , 0 );
setMoveKey( spep_5 + 116, 1, 6, 0 , 0 );
setMoveKey( spep_5 + 118, 1, 14.1, 2.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 118, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 9, 1, 0 );
setRotateKey( spep_5 + 10, 1, -52.2 );
setRotateKey( spep_5 + 118, 1, -52.2 );

--背景黒
entryFadeBg(spep_5, 0, 120, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_5 +4 , 1032);
playSe( spep_5 + 35, 1032);
playSe( spep_5 + 61, 1032);
playSe( spep_5 + 86, 1032);

--白フェード
entryFade( spep_5+110, 8,  6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6=spep_5+120;

------------------------------------------------------
-- 振りかぶる2
------------------------------------------------------
--エフェクトの再生
sprinkle2=entryEffectLife(spep_6,SP_08x,98,0x100,-1,0,0,0);

setEffMoveKey(spep_6,sprinkle2,0,0,0);
setEffMoveKey(spep_6+98,sprinkle2,0,0,0);
setEffScaleKey(spep_6,sprinkle2,1.0,1.0);
setEffScaleKey(spep_6+98,sprinkle2,1.0,1.0);
setEffAlphaKey(spep_6,sprinkle2,255);
setEffAlphaKey(spep_6+98,sprinkle2,255);
setEffRotateKey(spep_6,sprinkle2,0);
setEffRotateKey(spep_6+98,sprinkle2,0);

--流線
ryuusen5 = entryEffectLife( spep_6 + 0,  921, 98, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_6 + 0, ryuusen5, -100, 0 , 0 );
setEffMoveKey( spep_6 + 98, ryuusen5, -100, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryuusen5, 1.47, 1.16 );
setEffScaleKey( spep_6 + 98, ryuusen5, 1.47, 1.16 );

setEffRotateKey( spep_6 + 0, ryuusen5, -120.8 );
setEffRotateKey( spep_6 + 98, ryuusen5, -120.8 );

setEffAlphaKey( spep_6 + 0, ryuusen5, 255 );
setEffAlphaKey( spep_6 + 98, ryuusen5, 255 );

--集中線
shuchu4 = entryEffectLife( spep_6 + 22,  906, 76, 0x100, -1, -200, 100, 0 );
setEffMoveKey( spep_6 + 22, shuchu4, -200, 100 , 0 );
setEffMoveKey( spep_6 +98, shuchu4, -200, 100 , 0 );

setEffScaleKey( spep_6 + 22, shuchu4, 1.48, 1.48 );
setEffScaleKey( spep_6 + 98, shuchu4, 1.48, 1.48 );

setEffRotateKey( spep_6 + 22, shuchu4, 0 );
setEffRotateKey( spep_6 + 98, shuchu4, 0 );

setEffAlphaKey( spep_6 + 22, shuchu4, 255 );
setEffAlphaKey( spep_6 + 98, shuchu4, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_6 + 26,  10012, 72, 0x100, -1, 0, 58.4, 287.5 );--ズオッ
setEffMoveKey( spep_6 + 26, ctzuo, 58.4, 287.5 , 0 );
setEffMoveKey( spep_6 + 28, ctzuo, 82.3, 311.2 , 0 );
setEffMoveKey( spep_6 + 30, ctzuo, 93, 328.8 , 0 );
setEffMoveKey( spep_6 + 32, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 34, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 36, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 38, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 40, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 42, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 44, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 46, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 48, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 50, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 58, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 60, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 62, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 64, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 66, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 68, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 70, ctzuo, 110.4, 349.5 , 0 );
setEffMoveKey( spep_6 + 72, ctzuo, 121.5, 354.5 , 0 );
setEffMoveKey( spep_6 + 74, ctzuo, 126.4, 359.5 , 0 );
setEffMoveKey( spep_6 + 76, ctzuo, 156.3, 375.9 , 0 );
setEffMoveKey( spep_6 + 78, ctzuo, 173.8, 386.5 , 0 );
setEffMoveKey( spep_6 + 98, ctzuo, 173.8, 386.5 , 0 );

setEffScaleKey( spep_6 + 26, ctzuo, 1, 1 );
setEffScaleKey( spep_6 + 28, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_6 + 30, ctzuo, 2, 2 );
setEffScaleKey( spep_6 + 32, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6 + 72, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6 + 74, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_6 + 76, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_6 + 78, ctzuo, 3.49, 3.49 );
setEffScaleKey( spep_6 + 98, ctzuo, 3.49, 3.49 );

setEffRotateKey( spep_6 + 26, ctzuo, 37.4 );
setEffRotateKey( spep_6 + 28, ctzuo, 37.5 );
setEffRotateKey( spep_6 + 98, ctzuo, 37.5 );

setEffAlphaKey( spep_6 + 26, ctzuo, 255 );
setEffAlphaKey( spep_6 + 72, ctzuo, 255 );
setEffAlphaKey( spep_6 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6 + 76, ctzuo, 85 );
setEffAlphaKey( spep_6 + 78, ctzuo, 0 );
setEffAlphaKey( spep_6 + 98, ctzuo, 0 );

--背景黒
entryFadeBg(spep_6, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_6 + 26, SE_06);

--白フェード
entryFade( spep_6+88, 7,  8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7=spep_6+100;

------------------------------------------------------
-- 竜巻迫る2
------------------------------------------------------
--エフェクトの再生
tornado=entryEffectLife(spep_7,SP_09x,30,0x100,-1,0,0,0);

setEffMoveKey(spep_7,tornado,0,0,0);
setEffMoveKey(spep_7+30,tornado,0,0,0);
setEffScaleKey(spep_7,tornado,1.0,1.0);
setEffScaleKey(spep_7+30,tornado,1.0,1.0);
setEffAlphaKey(spep_7,tornado,255);
setEffAlphaKey(spep_7+30,tornado,255);
setEffRotateKey(spep_7,tornado,0);
setEffRotateKey(spep_7+30,tornado,0);

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, 477.2, -760.6 , 0 );
setMoveKey( spep_7 + 2, 1, 438.7, -680 , 0 );
setMoveKey( spep_7 + 4, 1, 366.9, -613.9 , 0 );
setMoveKey( spep_7 + 6, 1, 323.7, -522.4 , 0 );
setMoveKey( spep_7 + 8, 1, 272.6, -455.3 , 0 );
setMoveKey( spep_7 + 10, 1, 231.1, -375.8 , 0 );
setMoveKey( spep_7 + 12, 1, 164.4, -307.2 , 0 );
setMoveKey( spep_7 + 14, 1, 119.1, -219.7 , 0 );
setMoveKey( spep_7 + 16, 1, 117.7, -224.5 , 0 );
setMoveKey( spep_7 + 18, 1, 124.2, -220.1 , 0 );
setMoveKey( spep_7 + 20, 1, 109.5, -224.9 , 0 );
setMoveKey( spep_7 + 22, 1, 113.3, -212.5 , 0 );
setMoveKey( spep_7 + 24, 1, 111.9, -217.3 , 0 );
setMoveKey( spep_7 + 26, 1, 118.2, -212.9 , 0 );
setMoveKey( spep_7 + 28, 1, 103.8, -217.6 , 0 );

setScaleKey( spep_7 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_7 + 2, 1, 2.36, 2.36 );
setScaleKey( spep_7 + 4, 1, 2.21, 2.21 );
setScaleKey( spep_7 + 6, 1, 2.07, 2.07 );
setScaleKey( spep_7 + 8, 1, 1.93, 1.93 );
setScaleKey( spep_7 + 10, 1, 1.79, 1.79 );
setScaleKey( spep_7 + 12, 1, 1.64, 1.64 );
setScaleKey( spep_7 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 18, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_7 + 22, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 28, 1, 1.44, 1.44 );

setRotateKey( spep_7 + 0, 1, -52.2 );
setRotateKey( spep_7 + 28, 1, -52.2 );

--流線
ryuusen6 = entryEffectLife( spep_7 + 0,  921, 28, 0x80, -100, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, ryuusen6, -100, 0 , 0 );
setEffMoveKey( spep_7 + 28, ryuusen6, -100, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryuusen6, 1.47, 1.16 );
setEffScaleKey( spep_7 + 28, ryuusen6, 1.47, 1.16 );

setEffRotateKey( spep_7 + 0, ryuusen6, -120.8 );
setEffRotateKey( spep_7 + 28, ryuusen6, -120.8 );

setEffAlphaKey( spep_7 + 0, ryuusen6, 255 );
setEffAlphaKey( spep_7 + 28, ryuusen6, 255 );

--背景黒
entryFadeBg(spep_7, 0, 30, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe( spep_7+4, 1018);

--白フェード
entryFade( spep_7+24, 3,  3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8=spep_7+30;

------------------------------------------------------
-- 竜巻命中
------------------------------------------------------

--エフェクトの再生
hit=entryEffectLife(spep_8,SP_10x,50,0x100,-1,0,0,0);

setEffMoveKey(spep_8,hit,0,0,0);
setEffMoveKey(spep_8+50,hit,0,0,0);
setEffScaleKey(spep_8,hit,1.0,1.0);
setEffScaleKey(spep_8+50,hit,1.0,1.0);
setEffAlphaKey(spep_8,hit,255);
setEffAlphaKey(spep_8+50,hit,255);
setEffRotateKey(spep_8,hit,0);
setEffRotateKey(spep_8+50,hit,0);

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );


setMoveKey( spep_8 + 0, 1, -56.8, -47.4 , 0 );
setMoveKey( spep_8 + 2, 1, -29.1, -81.3 , 0 );
setMoveKey( spep_8 + 4, 1, -21.8, -104.8 , 0 );
setMoveKey( spep_8 + 6, 1, 3.6, -146.3 , 0 );
setMoveKey( spep_8 + 8, 1, 26.1, -171.8 , 0 );
setMoveKey( spep_8 + 10, 1, 58.4, -207.6 , 0 );
setMoveKey( spep_8 + 12, 1, 51.5, -216.9 , 0 );
setMoveKey( spep_8 + 14, 1, 72.4, -251.5 , 0 );
setMoveKey( spep_8 + 16, 1, 88.4, -265.2 , 0 );
setMoveKey( spep_8 + 18, 1, 113.9, -290.6 , 0 );
setMoveKey( spep_8 + 20, 1, 107, -299.9 , 0 );
setMoveKey( spep_8 + 22, 1, 127.9, -334.5 , 0 );
setMoveKey( spep_8 + 24, 1, 144, -348.2 , 0 );
setMoveKey( spep_8 + 26, 1, 169.5, -373.6 , 0 );
setMoveKey( spep_8 + 28, 1, 162.5, -383 , 0 );
setMoveKey( spep_8 + 30, 1, 183.4, -417.5 , 0 );
setMoveKey( spep_8 + 32, 1, 199.5, -431.3 , 0 );
setMoveKey( spep_8 + 34, 1, 225, -456.6 , 0 );
setMoveKey( spep_8 + 36, 1, 218.1, -466 , 0 );
setMoveKey( spep_8 + 38, 1, 238.9, -500.5 , 0 );
setMoveKey( spep_8 + 40, 1, 255, -514.3 , 0 );
setMoveKey( spep_8 + 42, 1, 280.5, -539.7 , 0 );
setMoveKey( spep_8 + 44, 1, 273.6, -549 , 0 );
setMoveKey( spep_8 + 46, 1, 294.5, -583.6 , 0 );
setMoveKey( spep_8 + 48, 1, 310.6, -597.4 , 0 );

setScaleKey( spep_8 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_8 + 10, 1, 1, 1 )
setScaleKey( spep_8 + 48, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 48, 1, 0 );
setShakeChara(spep_8,1,48,30);

--集中線
shuchu5 = entryEffectLife( spep_8 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, shuchu5,  0, 0 , 0 );
setEffMoveKey( spep_8 + 48, shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, shuchu5, 1.32, 1.32 );
setEffScaleKey( spep_8 + 48, shuchu5, 1.32, 1.32 );

setEffRotateKey( spep_8 + 0, shuchu5, 180 );
setEffRotateKey( spep_8 + 48, shuchu5, 180 );

setEffAlphaKey( spep_8 + 0, shuchu5, 255 );
setEffAlphaKey( spep_8 + 48, shuchu5, 255 );

--流線
ryuusen7 = entryEffectLife( spep_8 + 0,  921, 48, 0x80, -1, -100, 0, 0 );
setEffMoveKey( spep_8 + 0, ryuusen7, -100, 0 , 0 );
setEffMoveKey( spep_8 + 48, ryuusen7, -100, 0 , 0 );

setEffScaleKey( spep_8 + 0, ryuusen7, 1.47, 1.16 );
setEffScaleKey( spep_8 + 48, ryuusen7, 1.47, 1.16 );

setEffRotateKey( spep_8 + 0, ryuusen7, -120.8 );
setEffRotateKey( spep_8 + 48, ryuusen7, -120.8 );

setEffAlphaKey( spep_8 + 0, ryuusen7, 255 );
setEffAlphaKey( spep_8 + 48, ryuusen7, 255 );


--背景黒
entryFadeBg(spep_8, 0, 50, 0, 0, 0, 0, 255);  -- 黒　背景


--白フェード
entryFade( spep_8+44, 4, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9=spep_8+50;

------------------------------------------------------
-- ガ
------------------------------------------------------




changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_9,    1,  100,  0,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
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
ct = entryEffectLife( spep_9+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+15, ct, 30, 10);
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
setEffAlphaKey( spep_9+110, ct, 0);

playSe( spep_9+14, SE_11);
shuchusen = entryEffectLife( spep_9+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+105);

end




