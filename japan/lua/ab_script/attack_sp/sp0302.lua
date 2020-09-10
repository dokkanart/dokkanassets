--ギニュー(特戦隊)_スペシャルファイティングアサルト

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

SP_01 = 104011; --グルド登場
SP_02 = 104012; --グルド発射
SP_03 = 104013; --リクーム発射
SP_04 = 104014; --グルド&リクーム命中
SP_05 = 104015; --バータ登場
SP_06 = 104016; --バータ竜巻
SP_07 = 104017; --ジース登場
SP_08 = 104018; --ジース発射
SP_09 = 104019; --地面
SP_10 = 104020; --ギニュー溜め
SP_11 = 104021; --ギニュー発射
SP_12 = 104022; --グルド登場（敵）
SP_13 = 104023; --グルド発射（敵）
SP_14 = 104024; --リクーム発射（敵）
SP_15 = 104025; --バータ登場（敵）
SP_16 = 104026; --バータ発射（敵）
SP_17 = 104027; --ジース登場（敵）
SP_18 = 104028; --ジース発射（敵）
SP_19 = 190001; --ギャン
SP_20 = 1576; --大爆発

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( 0,   0, 1.5, 1.5);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

setVisibleUI(10, 0);
playSe( 10, SE_05);--170
speff = entryEffect(  10,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( 10, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( 95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 75, SE_06);

spep_1 = 100;

------------------------------------------------------
-- サイコジャベリン溜め
------------------------------------------------------

setMoveKey( spep_1-1,   0,    0, -54,   0);
setMoveKey( spep_1,   0,    -150, -54,   0);
setMoveKey( spep_1+8,   0,    -150, -54,   0);
setMoveKey( spep_1+50,   0,    -300, 25,   0);

setScaleKey( spep_1-1,   0, 1.5, 1.5);
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+8,   0, 1.5, 1.5);
setScaleKey( spep_1+50,   0, 2.7, 2.7);

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10011, 10, 0, -1, 0, -35, 0); -- シュン
setEffShake( spep_1, ct, 10, 5);
setEffAlphaKey( spep_1, ct, 255);
setEffScaleKey( spep_1, ct, 1.1, 1.1);

-- ** エフェクト等 ** --

playSe( spep_1, 43);
playSe( spep_1+20, SE_03);
playSe( spep_1+40, SE_03);

entryEffect( spep_1, SP_01, 0x100,  -1,  0,  0,  0);   -- グルド登場

entryFadeBg(  spep_1, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め 背景

entryFade( spep_1+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+50;

------------------------------------------------------
-- サイコジャベリン発射
------------------------------------------------------

setDisp( spep_2, 0, 0);

entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_2+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2, SE_07);

entryEffect( spep_2, SP_02, 0x00,  -1,  0,  0,  0);   -- グルド発射

shuchusen = entryEffectLife( spep_2, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.5, 1.5);--260
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+20, shuchusen, 3.0, 3.0);--309

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ--268
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);--290
setEffAlphaKey( spep_2+40, ct, 0);--300
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 193; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_3 = spep_2+80;

playSe( spep_2+40, SE_07);

------------------------------------------------------
--リクームイレイザーガン発射
------------------------------------------------------

playSe( spep_3, 43);
playSe( spep_3+18, SE_07);

entryEffectLife( spep_3, 920, 55, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_3+50, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryEffect( spep_3, SP_03, 0x00,  -1,  0,  0,  0);   -- リクーム発射

shuchusen = entryEffectLife( spep_3, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);--260
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+20, shuchusen, 3.0, 3.0);--309

-- 書き文字エントリー

ct = entryEffectLife( spep_3, 10011, 10, 0, -1, 0, 200, 300); -- シュン
setEffShake( spep_3, ct, 10, 5);
setEffAlphaKey( spep_3, ct, 255);
setEffScaleKey( spep_3, ct, 1.3, 1.3);

ct = entryEffectLife( spep_3+18, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ--268
setEffShake( spep_3+18, ct, 32, 5);
setEffAlphaKey( spep_3+18, ct, 255);
setEffAlphaKey( spep_3+40, ct, 255);--290
setEffAlphaKey( spep_3+50, ct, 0);--300
setEffScaleKey( spep_3+18, ct, 0.0, 0.0);
setEffScaleKey( spep_3+22, ct, 1.3, 1.3);
setEffScaleKey( spep_3+42, ct, 1.3, 1.3);
setEffScaleKey( spep_3+50, ct, 6.0, 6.0);
--playSe( spep_3+50, SE_07);

spep_4 = spep_3+55;

------------------------------------------------------
--グルド&リクーム＋ バータ
------------------------------------------------------

setDisp( spep_4, 1, 1);
setDisp( spep_4+60, 1, 0);

changeAnime( spep_4, 1, 100);  
setAnimeLoop( spep_4, 1, 1);    

setMoveKey( spep_4,   1,    0, -54,   0);
setMoveKey( spep_4+60,   1,    0, -54,   0);

setScaleKey( spep_4,   1, 1.6, 1.6);
setScaleKey( spep_4+60,   1, 1.6, 1.6);


-- 書き文字エントリー


ct = entryEffectLife( spep_4+20, 10018, 62, 0, -1, 0, 0, 200); -- ドゴォンッ
setEffShake( spep_4+20, ct, 32, 5);
setEffAlphaKey( spep_4+20, ct, 255);
setEffAlphaKey( spep_4+62, ct, 255);--290
setEffAlphaKey( spep_4+72, ct, 0);--300
setEffScaleKey( spep_4+20, ct, 0.0, 0.0);
setEffScaleKey( spep_4+30, ct, 3.3, 3.3);
setEffScaleKey( spep_4+62, ct, 3.3, 3.3);
setEffScaleKey( spep_4+72, ct, 6.0, 6.0);

-- ** エフェクト等 ** --

--playSe( spep_4, SE_07);

entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( spep_4+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusen, 1.3, 1.3);--260

entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_4+115, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_4+80, SP_05, 0x100,  -1,  0,  0,  0);   -- バータ
entryEffect( spep_4, SP_04, 0x100,  -1,  0,  0,  0);   -- グルド&リクーム

playSe( spep_4+20, SE_10);
playSe( spep_4+80, 43);
playSe( spep_4+90, SE_06);

-- 書き文字エントリー

ct = entryEffectLife( spep_4+80, 10011, 10, 0x100, -1, 0, 130, 400); -- シュン
setEffShake( spep_4+80, ct, 10, 5);
setEffAlphaKey( spep_4+80, ct, 255);
setEffScaleKey( spep_4+80, ct, 1.3, 1.3);


removeAllEffect (spep_4+120);

spep_5 = spep_4+120;

------------------------------------------------------
--ブルーハリケーン
------------------------------------------------------

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 106);  
setAnimeLoop( spep_5, 1, 1);

setShakeChara( spep_5, 1, 60 , 5);

setMoveKey( spep_5,   1,    0, -500,   0);
setMoveKey( spep_5+10,   1,    0, 0,   0);
setMoveKey( spep_5+60,   1,    0, 350,   0);

setScaleKey( spep_5,   1, 1.6, 1.6);
setScaleKey( spep_5+60,   1, 1.6, 1.6);

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10014, 60, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 60, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5, ct, 255);

-- ** エフェクト等 ** --

playSe( spep_5, SE_07);

ryusen_1 = entryEffectLife( spep_5, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen_1, 90 );
setEffScaleKey(spep_5, ryusen_1, 2.0, 2.0);

entryFadeBg( spep_5, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+55, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_5, SP_06, 0x80, -1,  0,  0,  0);   -- バータ竜巻

spep_6 = spep_5+60;

------------------------------------------------------
--クラッシャーボール溜め
------------------------------------------------------

setDisp( spep_6, 1, 0);

ryusen_2 = entryEffectLife( spep_6, 920, 45, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen_2, 90 );
setEffScaleKey(spep_6, ryusen_2, 2.0, 2.0);

entryFadeBg( spep_6, 0, 50, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_6+40, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_6, SE_03);

entryEffect( spep_6, SP_07, 0x00,  -1,  0,  0,  0);   -- ジース登場

spep_7 = spep_6+45;

------------------------------------------------------
--クラッシャーボール発射
------------------------------------------------------

setDisp( spep_7, 1, 1);

setRotateKey( spep_7, 1, -25);
setRotateKey( spep_7+24, 1, -25);
setRotateKey( spep_7+25, 1, 25);

changeAnime( spep_7, 1, 106); 
setAnimeLoop( spep_7, 1, 1); 
changeAnime( spep_7+25, 1, 108);  
setAnimeLoop( spep_7+25, 1, 1); 

setMoveKey( spep_7,   1,    300, -700,   0);
setMoveKey( spep_7+15,   1,    300, -700,   0);
setMoveKey( spep_7+25,   1,    0, 0,   0);
setMoveKey( spep_7+33,   1,    150, -350,   0);
setMoveKey( spep_7+70,   1,    150, -350,   0);

setScaleKey( spep_7,   1, 1.5, 1.5);
setScaleKey( spep_7+70,   1, 1.5, 1.5);


-- ** エフェクト等 ** --

playSe( spep_7, SE_07);
playSe( spep_7+40, SE_10);

shuchusen = entryEffectLife( spep_7+33, 906, 37, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen, 1.5, 1.5);--260

ryusen_3 = entryEffectLife( spep_7, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, ryusen_3, 60 );
setEffScaleKey(spep_7, ryusen_3, 2.0, 2.0);

entryFadeBg( spep_7, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_7+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_7, SP_08, 0x00,  -1,  0,  0,  0);   -- ジース登場
entryEffect( spep_7, SP_09, 0x80,  -1,  0,  0,  0);   -- 地面

-- 書き文字エントリー

ct = entryEffectLife( spep_7, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_7, ct, 32, 5);
setEffAlphaKey( spep_7, ct, 255);
setEffAlphaKey( spep_7+12, ct, 255);--290
setEffAlphaKey( spep_7+32, ct, 0);--300
setEffScaleKey( spep_7, ct, 0.0, 0.0);
setEffScaleKey( spep_7+12, ct, 2.3, 2.3);
setEffScaleKey( spep_7+22, ct, 2.3, 2.3);
setEffScaleKey( spep_7+32, ct, 6.0, 6.0);

ct = entryEffectLife( spep_7+33, 10018, 62, 0, -1, 0, 100, -100); -- ドゴォンッ
setEffShake( spep_7+33, ct, 32, 5);
setEffAlphaKey( spep_7+33, ct, 255);
setEffAlphaKey( spep_7+60, ct, 255);--290
setEffAlphaKey( spep_7+70, ct, 0);--300
setEffScaleKey( spep_7+33, ct, 0.0, 0.0);
setEffScaleKey( spep_7+43, ct, 3.3, 3.3);
setEffScaleKey( spep_7+60, ct, 3.3, 3.3);
setEffScaleKey( spep_7+70, ct, 6.0, 6.0);

spep_8 = spep_7+70;

------------------------------------------------------
--ミルキーキャノン溜め
------------------------------------------------------

setDisp( spep_8, 1, 0);

shuchusen = entryEffectLife( spep_8, 906, 176, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.5, 1.5);--260

entryEffect( spep_8, SP_10, 0x00, -1,  0,  0,  0);   -- ギニュー溜め

speff = entryEffect( spep_8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_8, SE_04);
playSe( spep_8+20, SE_03);
playSe( spep_8+40, SE_03);
playSe( spep_8+60, SE_03);
playSe( spep_8+80, SE_03);

-- 書き文字エントリー

ct = entryEffectLife( spep_8, 10008, 90, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_8, ct, 90, 8);
setEffScaleKey( spep_8, ct, 1.4, 1.4);

entryFadeBg( spep_8, 0, 176, 0, 0, 0, 0, 255);       -- ベース暗め　背景

spep_9 = spep_8+96;

------------------------------------------------------
--ミルキーキャノン発射
------------------------------------------------------

playSe( spep_9, SE_07);

entryEffect( spep_9, SP_11, 0x00, -1,  0,  0,  0);   -- ギニュー発射

entryFade( spep_9+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct = entryEffectLife( spep_9, 10012, 62, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_9, ct, 62, 5);
setEffAlphaKey( spep_9, ct, 255);
setEffAlphaKey( spep_9+52, ct, 255);--290
setEffAlphaKey( spep_9+62, ct, 0);--300
setEffScaleKey( spep_9, ct, 0.0, 0.0);
setEffScaleKey( spep_9+12, ct, 2.3, 2.3);
setEffScaleKey( spep_9+52, ct, 2.3, 2.3);
setEffScaleKey( spep_9+62, ct, 6.0, 6.0);

spep_10 = spep_9+80;

------------------------------------------------------
-- ギャン
------------------------------------------------------

entryEffect( spep_10, SP_19,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_10+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_10+5, ct, 99, 20);
setEffScaleKey( spep_10+5, ct, 0.1, 0.1);
setEffScaleKey( spep_10+30, ct, 2.4, 2.4);
setEffScaleKey( spep_10+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_10+5, ct, 255);
setEffAlphaKey( spep_10+30, ct, 255);
setEffAlphaKey( spep_10+47, ct, 0);

playSe( spep_10+8, 1024);

entryFade( spep_10+45, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_10+47, 1, 0);

removeAllEffect( spep_10+49);

spep_11 = spep_10+51; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( spep_11,SP_20,0,-1,0,0,0);

setDisp( spep_11, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_11+9, SE_10);
shuchusen = entryEffectLife( spep_11+4, 906, 160 +10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_11+34);
setDamage( spep_11+34, 1, 0);  -- ダメージ振動等

entryFade( spep_11+160 -10, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト
endPhase(spep_11+170 -10);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( 0,   0, 1.5, 1.5);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

setVisibleUI(10, 0);
playSe( 10, SE_05);--170
speff = entryEffect(  10,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( 10, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( 95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 75, SE_06);

spep_1 = 100;

------------------------------------------------------
-- サイコジャベリン溜め
------------------------------------------------------

setMoveKey( spep_1-1,   0,    0, -54,   0);
setMoveKey( spep_1,   0,    -150, -54,   0);
setMoveKey( spep_1+8,   0,    -150, -54,   0);
setMoveKey( spep_1+50,   0,    -300, 25,   0);

setScaleKey( spep_1-1,   0, 1.5, 1.5);
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+8,   0, 1.5, 1.5);
setScaleKey( spep_1+50,   0, 2.7, 2.7);

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10011, 10, 0, -1, 0, -35, 0); -- シュン
setEffShake( spep_1, ct, 10, 5);
setEffAlphaKey( spep_1, ct, 255);
setEffScaleKey( spep_1, ct, 1.1, 1.1);

-- ** エフェクト等 ** --

playSe( spep_1, 43);
playSe( spep_1+20, SE_03);
playSe( spep_1+40, SE_03);

entryEffect( spep_1, SP_12, 0x100,  -1,  0,  0,  0);   -- グルド登場

entryFadeBg(  spep_1, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め 背景

entryFade( spep_1+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+50;

------------------------------------------------------
-- サイコジャベリン発射
------------------------------------------------------

setDisp( spep_2, 0, 0);

entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_2+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2, SE_07);

entryEffect( spep_2, SP_13, 0x00,  -1,  0,  0,  0);   -- グルド発射

shuchusen = entryEffectLife( spep_2, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.5, 1.5);--260
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+20, shuchusen, 3.0, 3.0);--309

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ--268
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);--290
setEffAlphaKey( spep_2+40, ct, 0);--300
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 193; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_3 = spep_2+80;

playSe( spep_2+40, SE_07);

------------------------------------------------------
--リクームイレイザーガン発射
------------------------------------------------------

playSe( spep_3, 43);
playSe( spep_3+18, SE_07);

entryEffectLife( spep_3, 920, 55, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_3+50, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryEffect( spep_3, SP_14, 0x00,  -1,  0,  0,  0);   -- リクーム発射

shuchusen = entryEffectLife( spep_3, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);--260
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+20, shuchusen, 3.0, 3.0);--309

-- 書き文字エントリー

ct = entryEffectLife( spep_3, 10011, 10, 0, -1, 0, 200, 300); -- シュン
setEffShake( spep_3, ct, 10, 5);
setEffAlphaKey( spep_3, ct, 255);
setEffScaleKey( spep_3, ct, 1.3, 1.3);

ct = entryEffectLife( spep_3+18, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ--268
setEffShake( spep_3+18, ct, 32, 5);
setEffAlphaKey( spep_3+18, ct, 255);
setEffAlphaKey( spep_3+40, ct, 255);--290
setEffAlphaKey( spep_3+50, ct, 0);--300
setEffScaleKey( spep_3+18, ct, 0.0, 0.0);
setEffScaleKey( spep_3+22, ct, 1.3, 1.3);
setEffScaleKey( spep_3+42, ct, 1.3, 1.3);
setEffScaleKey( spep_3+50, ct, 6.0, 6.0);
--playSe( spep_3+50, SE_07);

spep_4 = spep_3+55;

------------------------------------------------------
--グルド&リクーム＋ バータ
------------------------------------------------------

setDisp( spep_4, 1, 1);
setDisp( spep_4+60, 1, 0);

changeAnime( spep_4, 1, 100);  
setAnimeLoop( spep_4, 1, 1);     

setMoveKey( spep_4,   1,    0, -54,   0);
setMoveKey( spep_4+60,   1,    0, -54,   0);

setScaleKey( spep_4,   1, 1.6, 1.6);
setScaleKey( spep_4+60,   1, 1.6, 1.6);


-- 書き文字エントリー


ct = entryEffectLife( spep_4+20, 10018, 62, 0, -1, 0, 0, 200); -- ドゴォンッ
setEffShake( spep_4+20, ct, 32, 5);
setEffAlphaKey( spep_4+20, ct, 255);
setEffAlphaKey( spep_4+62, ct, 255);--290
setEffAlphaKey( spep_4+72, ct, 0);--300
setEffScaleKey( spep_4+20, ct, 0.0, 0.0);
setEffScaleKey( spep_4+30, ct, 3.3, 3.3);
setEffScaleKey( spep_4+62, ct, 3.3, 3.3);
setEffScaleKey( spep_4+72, ct, 6.0, 6.0);

-- ** エフェクト等 ** --

--playSe( spep_4, SE_07);

entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( spep_4+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusen, 1.3, 1.3);--260

entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_4+115, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_4+80, SP_15 , 0x100,  -1,  0,  0,  0);   -- バータ
entryEffect( spep_4, SP_04, 0x100,  -1,  0,  0,  0);   -- グルド&リクーム

playSe( spep_4+20, SE_10);
playSe( spep_4+80, 43);
playSe( spep_4+90, SE_06);

-- 書き文字エントリー

ct = entryEffectLife( spep_4+80, 10011, 10, 0x100, -1, 0, 130, 400); -- シュン
setEffShake( spep_4+80, ct, 10, 5);
setEffAlphaKey( spep_4+80, ct, 255);
setEffScaleKey( spep_4+80, ct, 1.3, 1.3);


removeAllEffect (spep_4+120);

spep_5 = spep_4+120;

------------------------------------------------------
--ブルーハリケーン
------------------------------------------------------

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 106); 
setAnimeLoop( spep_5, 1, 1);  

setShakeChara( spep_5, 1, 60 , 5);

setMoveKey( spep_5,   1,    0, -500,   0);
setMoveKey( spep_5+10,   1,    0, 0,   0);
setMoveKey( spep_5+60,   1,    0, 350,   0);

setScaleKey( spep_5,   1, 1.6, 1.6);
setScaleKey( spep_5+60,   1, 1.6, 1.6);

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10014, 60, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 60, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, -70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5, ct, 255);

-- ** エフェクト等 ** --

playSe( spep_5, SE_07);

ryusen_1 = entryEffectLife( spep_5, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen_1, 90 );
setEffScaleKey(spep_5, ryusen_1, 2.0, 2.0);

entryFadeBg( spep_5, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+55, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_5, SP_16, 0x80, -1,  0,  0,  0);   -- バータ竜巻

spep_6 = spep_5+60;

------------------------------------------------------
--クラッシャーボール溜め
------------------------------------------------------

setDisp( spep_6, 1, 0);

ryusen_2 = entryEffectLife( spep_6, 920, 45, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen_2, 90 );
setEffScaleKey(spep_6, ryusen_2, 2.0, 2.0);

entryFadeBg( spep_6, 0, 50, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_6+40, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_6, SE_03);

entryEffect( spep_6, SP_17, 0x00,  -1,  0,  0,  0);   -- ジース登場

spep_7 = spep_6+45;

------------------------------------------------------
--クラッシャーボール発射
------------------------------------------------------

setDisp( spep_7, 1, 1);

setRotateKey( spep_7, 1, -25);
setRotateKey( spep_7+24, 1, -25);
setRotateKey( spep_7+25, 1, 25);

changeAnime( spep_7, 1, 106);  
setAnimeLoop( spep_7, 1, 1); 
changeAnime( spep_7+25, 1, 108); 
setAnimeLoop( spep_7+25, 1, 1);  

setMoveKey( spep_7,   1,    300, -700,   0);
setMoveKey( spep_7+15,   1,    300, -700,   0);
setMoveKey( spep_7+25,   1,    0, 0,   0);
setMoveKey( spep_7+33,   1,    150, -350,   0);
setMoveKey( spep_7+70,   1,    150, -350,   0);

setScaleKey( spep_7,   1, 1.5, 1.5);
setScaleKey( spep_7+70,   1, 1.5, 1.5);


-- ** エフェクト等 ** --

playSe( spep_7, SE_07);
playSe( spep_7+40, SE_10);

shuchusen = entryEffectLife( spep_7+33, 906, 37, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen, 1.5, 1.5);--260

ryusen_3 = entryEffectLife( spep_7, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, ryusen_3, 60 );
setEffScaleKey(spep_7, ryusen_3, 2.0, 2.0);

entryFadeBg( spep_7, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_7+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect( spep_7, SP_18, 0x00,  -1,  0,  0,  0);   -- ジース登場
entryEffect( spep_7, SP_09, 0x80,  -1,  0,  0,  0);   -- 地面

-- 書き文字エントリー

ct = entryEffectLife( spep_7, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_7, ct, 32, 5);
setEffAlphaKey( spep_7, ct, 255);
setEffAlphaKey( spep_7+12, ct, 255);--290
setEffAlphaKey( spep_7+32, ct, 0);--300
setEffScaleKey( spep_7, ct, 0.0, 0.0);
setEffScaleKey( spep_7+12, ct, 2.3, 2.3);
setEffScaleKey( spep_7+22, ct, 2.3, 2.3);
setEffScaleKey( spep_7+32, ct, 6.0, 6.0);

ct = entryEffectLife( spep_7+33, 10018, 62, 0, -1, 0, 100, -100); -- ドゴォンッ
setEffShake( spep_7+33, ct, 32, 5);
setEffAlphaKey( spep_7+33, ct, 255);
setEffAlphaKey( spep_7+60, ct, 255);--290
setEffAlphaKey( spep_7+70, ct, 0);--300
setEffScaleKey( spep_7+33, ct, 0.0, 0.0);
setEffScaleKey( spep_7+43, ct, 3.3, 3.3);
setEffScaleKey( spep_7+60, ct, 3.3, 3.3);
setEffScaleKey( spep_7+70, ct, 6.0, 6.0);

spep_8 = spep_7+70;

------------------------------------------------------
--ミルキーキャノン溜め
------------------------------------------------------

setDisp( spep_8, 1, 0);

shuchusen = entryEffectLife( spep_8, 906, 176, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.5, 1.5);--260

ginyu_01 = entryEffect( spep_8, SP_10, 0x00, -1,  0,  0,  0);   -- ギニュー溜め
setEffScaleKey( spep_8, ginyu_01, -1.0, 1.0);

--[[
speff = entryEffect( spep_8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_8, SE_04);
playSe( spep_8+20, SE_03);
playSe( spep_8+40, SE_03);
playSe( spep_8+60, SE_03);
playSe( spep_8+80, SE_03);

-- 書き文字エントリー

ct = entryEffectLife( spep_8, 10008, 90, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_8, ct, 90, 8);
setEffScaleKey( spep_8, ct, 1.4, 1.4);

entryFadeBg( spep_8, 0, 176, 0, 0, 0, 0, 255);       -- ベース暗め　背景

spep_9 = spep_8+96;

------------------------------------------------------
--ミルキーキャノン発射
------------------------------------------------------

playSe( spep_9, SE_07);

ginyu_02 = entryEffect( spep_9, SP_11, 0x00, -1,  0,  0,  0);   -- ギニュー発射
setEffScaleKey( spep_9, ginyu_02, -1.0, 1.0);

entryFade( spep_9+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct = entryEffectLife( spep_9, 10012, 62, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_9, ct, 62, 5);
setEffAlphaKey( spep_9, ct, 255);
setEffAlphaKey( spep_9+52, ct, 255);--290
setEffAlphaKey( spep_9+62, ct, 0);--300
setEffScaleKey( spep_9, ct, 0.0, 0.0);
setEffScaleKey( spep_9+12, ct, 2.3, 2.3);
setEffScaleKey( spep_9+52, ct, 2.3, 2.3);
setEffScaleKey( spep_9+62, ct, 6.0, 6.0);

spep_10 = spep_9+80;

------------------------------------------------------
-- ギャン
------------------------------------------------------

entryEffect( spep_10, SP_19,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_10+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_10+5, ct, 99, 20);
setEffScaleKey( spep_10+5, ct, 0.1, 0.1);
setEffScaleKey( spep_10+30, ct, 2.4, 2.4);
setEffScaleKey( spep_10+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_10+5, ct, 255);
setEffAlphaKey( spep_10+30, ct, 255);
setEffAlphaKey( spep_10+47, ct, 0);

playSe( spep_10+8, 1024);

entryFade( spep_10+45, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_10+47, 1, 0);

removeAllEffect( spep_10+49);

spep_11 = spep_10+51; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( spep_11,SP_20,0,-1,0,0,0);

setDisp( spep_11, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_11+9, SE_10);
shuchusen = entryEffectLife( spep_11+4, 906, 160 +10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_11+34);
setDamage( spep_11+34, 1, 0);  -- ダメージ振動等

entryFade( spep_11+160 -10, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト
endPhase(spep_11+180 -10);

end
