

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

tyo = -30;
tyo2 = -40;

SP_01 = 150131; --ラッシュ_バトルキャラ込み
SP_02 = 150132; --斬撃からの突きまでのエフェクト
SP_03 = 150133; --剣状のエフェクト
--SP_04 = 1551; --地球上でエネルギー波
SP_04 = 150134; --発射 _光弾のエフェクト
SP_05 = 1576; --エクスプロージョン = 
SP_06 = 150136; --突きバトルキャラ
SP_06e = 150137; --突きバトルキャラ
SP_01e = 150135; --ラッシュ_バトルキャラ込み_敵バージョン
SP_04e = 150138; --発射 _光弾のエフェクト
--SP_06 = 150096;--アルティメット孫悟飯正面向きのキャラ画像
--SP_07 = 160000;--移動時の風切りオーラエフェクト
--SP_08 = 160008;--正面アングル用の風切りオーラエフェクト

multi_frm = 2;

changeAnime( 0, 0, 3);                       -- ダッシュ
setDisp( 0, 1, 0);

------------------------------------------------------
-- 突っ込む(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   100,   0, 1.5, 1.5);

setMoveKey(  0,  0, -1500,  -50,   0);
setMoveKey(  25,  0, 0,  -50,   0);
setMoveKey(  75,  0, -50,  -50,   0);
setMoveKey(  100,  0, 1650,  -50,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(27,1018);
playSe(75,SE_07);

speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryFadeBg( 0, 0, 108, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryEffectLife(0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -230, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

entryFade( 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

SP_start =100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start-1,   0, 1.5, 1.5);
setScaleKey( SP_start,   0, 1.0, 1.0);
--[[
playSe( SP_start, SE_05);
speff = entryEffect(  SP_start,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( SP_start+85, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+64, SE_06);
]]
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( SP_start + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( SP_start + 0, shuchusen, 90, 20 );

setEffMoveKey( SP_start + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( SP_start + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( SP_start + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( SP_start + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( SP_start + 0, shuchusen, 0 );
setEffRotateKey( SP_start + 90, shuchusen, 0 );

setEffAlphaKey( SP_start + 0, shuchusen, 255 );
setEffAlphaKey( SP_start + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( SP_start + 0, SE_05 );

--白フェード
entryFade( SP_start + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_1 = SP_start+90;  --260

kari = 0;
------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
setDisp( spep_1, 0, 1);
setDisp( spep_1+49+kari, 0, 0);
setDisp( spep_1, 1, 1);
setDisp( spep_1+158, 1, 0);
setDisp( spep_1+218, 1, 1);
setDisp( spep_1+250, 1, 0);

setScaleKey(   spep_1,   0, 1.5, 1.5);

setMoveKey(  spep_1,  0, -1500,  -50,   0);
setMoveKey(  spep_1+49+kari,  0, -50,  -50,   0);

changeAnime( spep_1, 1, 104);
changeAnime( spep_1+49+kari, 1, 108); 
changeAnime( spep_1+65, 1, 108);
changeAnime( spep_1+147, 1, 108); 
setScaleKey( spep_1,   1,   1.5,  1.5);
setScaleKey( spep_1+245,   1,   1.5,  1.5);
setRotateKey( spep_1,  1,  0 );
setRotateKey( spep_1+64,  1,  0 );
--setRotateKey( spep_1+65,  1,  -65 );
--setRotateKey( spep_1+146,  1,  -65 );
setRotateKey( spep_1+147,  1,  0 );
setShakeChara( spep_1+65 ,1 ,100 ,10);
setMoveKey(  spep_1,  1, 1000,  -50,   -60);
setMoveKey(  spep_1+49+kari,  1, 100,  -50,   0);
setMoveKey(  spep_1+146,  1, 100,  -50,   0);
setMoveKey(  spep_1+158,  1, 600,  -50,   0);
setMoveKey(  spep_1+218,  1, 600,  -50,   0);
setMoveKey(  spep_1+245,  1, 0,  -50,   0);


SE0=playSe(spep_1,SE_07);



ct = entryEffectLife(spep_1+49+kari,SP_01,238,0x100,-1,0,-50,-50);     --ラッシュ
setEffAlphaKey(spep_1,ct,255);

--playSe( SP_start, 1009);

--entryFade(  spep_1+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffectLife(spep_1, 920, 280, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen8 = entryEffectLife(spep_1, 906, 290, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen8, 1.5, 1.5);

entryFadeBg(  spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1+51, 10017, 85, 0x100, -1, 0, 150, 300);    -- ドガガガッ
setEffShake( spep_1+51, ct, 32, 5);
setEffScaleKey( spep_1+51, ct, 4, 4);
setEffAlphaKey( spep_1+51, ct, 255);
setEffAlphaKey( spep_1+40+51, ct, 255);
setEffAlphaKey( spep_1+50+51, ct, 0);
setEffScaleKey( spep_1+51, ct, 0.0, 0.0);
setEffScaleKey( spep_1+10+51, ct, 2.3, 2.3);
setEffScaleKey( spep_1+40+51, ct, 2.3, 2.3);
setEffScaleKey( spep_1+50+51, ct, 7.0, 7.0);

entryFade(  spep_1+270, 6, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_1+290; --211 260

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 227; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-12, SE0,0);

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

------------------------------------------------------
-- 突っ込む(60F)
------------------------------------------------------
playSe(spep_1+45,1010);
playSe(spep_1+65,1009);
playSe(spep_1+95,1009);
playSe(spep_1+125,1009);
playSe(spep_1+150,1010);
playSe(365,1021);
playSe(393,1021);
playSe(spep_1+245,1014);
playSe( spep_6, 1018);

setDisp( spep_6, 0, 1);
--setDisp( spep_6, 1, 1);
setDisp( spep_6+100, 1, 0);

setRotateKey(spep_6,0,0);

changeAnime( spep_6, 0, 16); 

--changeAnime( spep_6, 1, 102);
--changeAnime( spep_6+50, 1, 107);

setMoveKey(  spep_6,  0, 400, 300 ,  0);
setMoveKey(  spep_6+50,  0, 0,  0,   0);
--setMoveKey(  spep_6+100,  0, -400,  -300,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6, 0 , 0.5, 0.5 );
setScaleKey(  spep_6+60, 0 , 1.0, 1.0 );
setScaleKey(  spep_6+80,  0, 2.7, 2.7);
--setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

--setMoveKey(  spep_6,  1, 50, 50 ,  0);
--setMoveKey(  spep_6+50,  1, 50,  100,   0);
--setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

--setScaleKey(  spep_6, 1 , 2, 2 );
--setScaleKey(  spep_6+49,  1, 2, 2);
--setScaleKey(  spep_6+50,  1, 1, 1);
--setScaleKey(  spep_6+100,  1, 2, 2);
--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

--playSe(spep_6+50,SE_07);
--playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

--arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
--setEffScaleKey(SP_start, arare_kick, 3, 3);

--entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6, 0, 80, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen = entryEffectLife(spep_6, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen, 320);
setEffScaleKey(spep_6, ryusen, 2, 2);

shuchusen11 = entryEffectLife(spep_6, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen11, 1.5, 1.5);

setRotateKey(spep_6+95,0,0);

entryFade(spep_6+72, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+15, 79, 15);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10008, 99, 0, -1, 0, -150, 260); -- ゴゴゴゴ…
setEffShake(spep_6, ct, 81, 20);
setEffScaleKey( spep_6, ct, 2.4, 2.4);
setEffRotateKey(spep_6, ct, -30);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+50, ct, 255);
setEffAlphaKey(spep_6+72, ct, 0);

spep_7 = spep_6+80;

------------------------------------------------------
-- 斬撃 (110F)
------------------------------------------------------

setDisp( spep_7-2, 0, 0);
--changeAnime( spep_7 , 0, 31);

playSe( spep_7+1,1032);
playSe( spep_7+38,1033);



entryFadeBg(spep_7, 0, 70, 0, 0, 0, 0, 255);       -- ベース黒　背景

ken=entryEffectLife(spep_7,SP_02,70,0x100, -1 , 0 , 0 , 0);     --斬撃
setEffScaleKey(spep_7,ken,1,1);



entryFade( spep_7+65, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setRotateKey(spep_7+70,0,0);

spep_8 = spep_7+70
------------------------------------------------------
-- 突き刺し→光線(110F)
------------------------------------------------------

setDisp( spep_8, 0, 0);
--setMoveKey(  spep_8-5 ,  1,   40,  0,   -60);

ken3=entryEffectLife(spep_8,SP_06,69,0x40+0x80, 1 , 0 , -120 , -28);     --突き刺し
setEffScaleKey(spep_8 ,ken3 , 2, 2);
setEffScaleKey(spep_8+20 ,ken3 , 1.5, 1.5);

ken=entryEffectLife(spep_8,SP_03,69,0x40+0x100, 1 , 0 , 20 , 20);     --突き刺し
setEffScaleKey(spep_8,ken,1,1);

--changeAnime( spep_8 , 0, 30);
--changeAnime( spep_8+70 , 0, 31);
--setMoveKey(  spep_8-5,  0,   -90,  0,   45);
--setMoveKey(  spep_8+15 ,  0,   -90,  0,   75);
--setMoveKey(  spep_8+69 ,  0,   -90,  0,   75);
--setMoveKey(  spep_8+82 ,  0,   -290,  100,   95);


ryusen = entryEffectLife(spep_8+70, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, ryusen, 210);
--setEffRotateKey(spep_8+49, ryusen, 45);
--setEffRotateKey(spep_8+50, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 1.5, 1.5);


ken2=entryEffectLife(spep_8+70,SP_04,80,0x40+0x80, 0 , 300 , 150 , 0);     --光弾
setEffScaleKey(spep_8,ken2,1,1);
setEffScaleKey(spep_8+80,ken2,1.5,1.5);
setEffRotateKey(spep_8, ken2, 10);


setDisp( spep_8, 1, 1);
changeAnime( spep_8 , 1, 102);
changeAnime( spep_8+70 , 1, 107);
setScaleKey( spep_8-5,   1,   2.5,  2.5);
setScaleKey( spep_8+20,   1,   2.0,  2.0);
setScaleKey( spep_8+100,   1,   2.0,  2.0);
setMoveKey(  spep_8-5 ,  1,   70,  80,   0);
setMoveKey(  spep_8+20 ,  1,   70,  80,   0);
setMoveKey(  spep_8+69 ,  1,   70,  80,   0);
setMoveKey(  spep_8+100 ,  1,   720,  -540,   -70);


playSe( spep_8+71, 1021);--頭突きの音
--playSe( spep_8+70, 1053);--飛ばされる音

shuchusen1 = entryEffectLife(spep_8, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen1, 1.5, 1.5);

--shuchusen2 = entryEffectLife(spep_8+50, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_8+50, shuchusen2, 1.5, 1.5);

entryFadeBg(spep_8, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景


entryFade(  spep_8+93, 9, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_8+100);

-- 書き文字エントリー

--bago = entryEffectLife(spep_8+50,10021,10,0x100,0,-1,200,650);--バゴォッ
--setEffAlphaKey( spep_8+50, bago, 255);
--setEffScaleKey(spep_8+50, bago, 3, 3);

spep_9 = spep_8+105;




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_9,SP_05,0,-1,0,0,0);
setEffScaleKey( spep_9, explosion, 1.1, 1.1);
setEffScaleKey( spep_9+170, explosion, 1.1, 1.1);

setDisp( spep_9, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_9+9, SE_10);
shuchusen = entryEffectLife( spep_9+4, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_9+34);
setDamage( spep_9+34, 1, 0);  -- ダメージ振動等

entryFade( spep_9+160, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト

endPhase(spep_9+170);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突っ込む(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   100,   0, 1.5, 1.5);

setMoveKey(  0,  0, -1500,  -50,   0);
setMoveKey(  25,  0, 0,  -50,   0);
setMoveKey(  75,  0, -50,  -50,   0);
setMoveKey(  100,  0, 1650,  -50,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(27,1018);
playSe(75,SE_07);

--speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryFadeBg( 0, 0, 108, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryEffectLife(0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -230, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

entryFade( 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

SP_start =100;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start-1,   0, 1.5, 1.5);
setScaleKey( SP_start,   0, 1.0, 1.0);
--[[
playSe( SP_start, SE_05);
speff = entryEffect(  SP_start,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( SP_start+85, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+64, SE_06);
]]
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( SP_start, SE_05);
    speff = entryEffect( SP_start, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( SP_start + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( SP_start + 0, shuchusen, 90, 20 );

setEffMoveKey( SP_start + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( SP_start + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( SP_start + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( SP_start + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( SP_start + 0, shuchusen, 0 );
setEffRotateKey( SP_start + 90, shuchusen, 0 );

setEffAlphaKey( SP_start + 0, shuchusen, 255 );
setEffAlphaKey( SP_start + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( SP_start + 0, SE_05 );

--白フェード
entryFade( SP_start + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_1 = SP_start+90;  --260

kari = 0;

------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
setDisp( spep_1, 0, 1);
setDisp( spep_1+49+kari, 0, 0);
setDisp( spep_1, 1, 1);
setDisp( spep_1+158, 1, 0);
setDisp( spep_1+218, 1, 1);
setDisp( spep_1+250, 1, 0);

setScaleKey(   spep_1,   0, 1.5, 1.5);

setMoveKey(  spep_1,  0, -1500,  -50,   0);
setMoveKey(  spep_1+49+kari,  0, -50,  -50,   0);

changeAnime( spep_1, 1, 104);
changeAnime( spep_1+49+kari, 1, 108); 
changeAnime( spep_1+65, 1, 108);
changeAnime( spep_1+147, 1, 108); 
setScaleKey( spep_1,   1,   1.5,  1.5);
setScaleKey( spep_1+245,   1,   1.5,  1.5);
setRotateKey( spep_1,  1,  0 );
setRotateKey( spep_1+64,  1,  0 );
--setRotateKey( spep_1+65,  1,  -65 );
--setRotateKey( spep_1+146,  1,  -65 );
setRotateKey( spep_1+147,  1,  0 );
setShakeChara( spep_1+65 ,1 ,100 ,10);
setMoveKey(  spep_1,  1, 1000,  -50,   -60);
setMoveKey(  spep_1+49+kari,  1, 100,  -50,   0);
setMoveKey(  spep_1+146,  1, 100,  -50,   0);
setMoveKey(  spep_1+158,  1, 600,  -50,   0);
setMoveKey(  spep_1+218,  1, 600,  -50,   0);
setMoveKey(  spep_1+245,  1, 0,  -50,   0);


SE0=playSe(spep_1,SE_07);



ct = entryEffectLife(spep_1+49+kari,SP_01,238,0x100,-1,0,-50,-50);     --ラッシュ
setEffAlphaKey(spep_1,ct,255);

--playSe( SP_start, 1009);

--entryFade(  spep_1+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffectLife(spep_1, 920, 280, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen8 = entryEffectLife(spep_1, 906, 290, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen8, 1.5, 1.5);

entryFadeBg(  spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1+51, 10017, 85, 0x100, -1, 0, 150, 300);    -- ドガガガッ
setEffShake( spep_1+51, ct, 32, 5);
setEffScaleKey( spep_1+51, ct, 4, 4);
setEffAlphaKey( spep_1+51, ct, 255);
setEffAlphaKey( spep_1+40+51, ct, 255);
setEffAlphaKey( spep_1+50+51, ct, 0);
setEffScaleKey( spep_1+51, ct, 0.0, 0.0);
setEffScaleKey( spep_1+10+51, ct, 2.3, 2.3);
setEffScaleKey( spep_1+40+51, ct, 2.3, 2.3);
setEffScaleKey( spep_1+50+51, ct, 7.0, 7.0);

entryFade(  spep_1+270, 6, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 227; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-12, SE0,0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_6=spep_1+290; --211 260

------------------------------------------------------
-- 突っ込む(60F)
------------------------------------------------------
playSe( spep_6, 1018);
playSe(spep_1+45,1010);
playSe(spep_1+65,1009);
playSe(spep_1+95,1009);
playSe(spep_1+125,1009);
playSe(spep_1+150,1010);
playSe(365,1021);
playSe(393,1021);
playSe(spep_1+245,1014);

setDisp( spep_6, 0, 1);
--setDisp( spep_6, 1, 1);
setDisp( spep_6+100, 1, 0);

setRotateKey(spep_6,0,0);

changeAnime( spep_6, 0, 16); 

--changeAnime( spep_6, 1, 102);
--changeAnime( spep_6+50, 1, 107);

setMoveKey(  spep_6,  0, 400, 300 ,  0);
setMoveKey(  spep_6+50,  0, 0,  0,   0);
--setMoveKey(  spep_6+100,  0, -400,  -300,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6, 0 , 0.5, 0.5 );
setScaleKey(  spep_6+60, 0 , 1.0, 1.0 );
setScaleKey(  spep_6+80,  0, 2.7, 2.7);
--setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

--setMoveKey(  spep_6,  1, 50, 50 ,  0);
--setMoveKey(  spep_6+50,  1, 50,  100,   0);
--setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

--setScaleKey(  spep_6, 1 , 2, 2 );
--setScaleKey(  spep_6+49,  1, 2, 2);
--setScaleKey(  spep_6+50,  1, 1, 1);
--setScaleKey(  spep_6+100,  1, 2, 2);
--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

--playSe(spep_6+50,SE_07);
--playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

--arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
--setEffScaleKey(SP_start, arare_kick, 3, 3);

--entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6, 0, 80, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen = entryEffectLife(spep_6, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen, 320);
setEffScaleKey(spep_6, ryusen, 2, 2);

shuchusen11 = entryEffectLife(spep_6, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen11, 1.5, 1.5);

setRotateKey(spep_6+95,0,0);

entryFade(spep_6+72, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+15, 79, 15);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10008, 99, 0, -1, 0, -150, 260); -- ゴゴゴゴ…
setEffShake(spep_6, ct, 81, 20);
setEffScaleKey( spep_6, ct, 2.4, 2.4);
setEffRotateKey(spep_6, ct, 30);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+50, ct, 255);
setEffAlphaKey(spep_6+72, ct, 0);

spep_7 = spep_6+80;

------------------------------------------------------
-- 斬撃 (110F)
------------------------------------------------------

setDisp( spep_7-2, 0, 0);
--changeAnime( spep_7 , 0, 31);

playSe( spep_7+1,1032);
playSe( spep_7+38,1033);



entryFadeBg(spep_7, 0, 70, 0, 0, 0, 0, 255);       -- ベース黒　背景

ken=entryEffectLife(spep_7,SP_02,70,0x100, -1 , 0 , 0 , 0);     --斬撃
setEffScaleKey(spep_7,ken,1,1);



entryFade( spep_7+65, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setRotateKey(spep_7+70,0,0);

spep_8 = spep_7+70
------------------------------------------------------
-- 突き刺し→光線(110F)
------------------------------------------------------

setDisp( spep_8, 0, 0);
--setMoveKey(  spep_8-5 ,  1,   40,  0,   -60);

ken3=entryEffectLife(spep_8,SP_06,69,0x40+0x80, 1 , 0 , -120 , -28);     --突き刺し
setEffScaleKey(spep_8 ,ken3 , 2, 2);
setEffScaleKey(spep_8+20 ,ken3 , 1.5, 1.5);

ken=entryEffectLife(spep_8,SP_03,69,0x40+0x100, 1 , 0 , 20 , 20);     --突き刺し
setEffScaleKey(spep_8,ken,1,1);

--changeAnime( spep_8 , 0, 30);
--changeAnime( spep_8+70 , 0, 31);
--setMoveKey(  spep_8-5,  0,   -90,  0,   45);
--setMoveKey(  spep_8+15 ,  0,   -90,  0,   75);
--setMoveKey(  spep_8+69 ,  0,   -90,  0,   75);
--setMoveKey(  spep_8+82 ,  0,   -290,  100,   95);


ryusen = entryEffectLife(spep_8+70, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, ryusen, 210);
--setEffRotateKey(spep_8+49, ryusen, 45);
--setEffRotateKey(spep_8+50, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 1.5, 1.5);


ken2=entryEffectLife(spep_8+70,SP_04,80,0x40+0x80, 0 , 300 , 150 , 0);     --光弾
setEffScaleKey(spep_8,ken2,1,1);
setEffScaleKey(spep_8+80,ken2,1.5,1.5);
setEffRotateKey(spep_8, ken2, 10);


setDisp( spep_8, 1, 1);
changeAnime( spep_8 , 1, 102);
changeAnime( spep_8+70 , 1, 107);
setScaleKey( spep_8-5,   1,   2.5,  2.5);
setScaleKey( spep_8+20,   1,   2.0,  2.0);
setScaleKey( spep_8+100,   1,   2.0,  2.0);
setMoveKey(  spep_8-5 ,  1,   70,  80,   0);
setMoveKey(  spep_8+20 ,  1,   70,  80,   0);
setMoveKey(  spep_8+69 ,  1,   70,  80,   0);
setMoveKey(  spep_8+100 ,  1,   720,  -540,   -70);


playSe( spep_8+71, 1021);--頭突きの音
--playSe( spep_8+70, 1053);--飛ばされる音

shuchusen1 = entryEffectLife(spep_8, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen1, 1.5, 1.5);

--shuchusen2 = entryEffectLife(spep_8+50, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_8+50, shuchusen2, 1.5, 1.5);

entryFadeBg(spep_8, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景


entryFade(  spep_8+93, 9, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_8+100);

-- 書き文字エントリー

--bago = entryEffectLife(spep_8+50,10021,10,0x100,0,-1,200,650);--バゴォッ
--setEffAlphaKey( spep_8+50, bago, 255);
--setEffScaleKey(spep_8+50, bago, 3, 3);

spep_9 = spep_8+105;




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_9,SP_05,0,-1,0,0,0);
setEffScaleKey( spep_9, explosion, 1.1, 1.1);
setEffScaleKey( spep_9+170, explosion, 1.1, 1.1);

setDisp( spep_9, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_9+9, SE_10);
shuchusen = entryEffectLife( spep_9+4, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_9+34);
setDamage( spep_9+34, 1, 0);  -- ダメージ振動等

entryFade( spep_9+160, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);             -- ホワイト

endPhase(spep_9+170);

end