--sp0347 セル_超かめはめ波

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

tyo = -30;
tyo2 = -40;

SP_01 = 100159;
SP_02 = 100160;
SP_03 = 100161;
SP_04 = 1551;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0, -54,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0); --元位置69F

--29Fまで構えで待機
spep_1=30;
--気溜演出(40F)

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1, 0, 17);                       -- 溜め!

aura002=entryEffectLife(  spep_1, 1501, 38,0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( spep_1, aura002, 1.1, 1.2);
setEffRotateKey( spep_1, aura002, 0);
setEffAlphaKey( spep_1, aura002, 255);
setEffScaleKey( spep_1+38, aura002, 1.1, 1.2);
setEffRotateKey( spep_1+38, aura002, 0);
setEffAlphaKey( spep_1+38, aura002, 255);

aura001=entryEffectLife( spep_1, 1500, 38,0x80, -1,  0,  0,  0);    -- eff_001
setEffScaleKey( spep_1, aura001, 1.1, 1.2);
setEffRotateKey( spep_1, aura001, 0);
setEffAlphaKey( spep_1, aura001, 255);
setEffScaleKey( spep_1+38, aura001, 1.1, 1.2);
setEffRotateKey( spep_1+38, aura001, 0);
setEffAlphaKey( spep_1+38, aura001, 255);

playSe( spep_1, SE_01);

entryFade( spep_1+31, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   311, 36, 0x100,  0,  -1,  0,  -250); -- オーラ
setEffAlphaKey( spep_1, aura, 255);
setEffAlphaKey( spep_1+36, aura, 255);

setEffScaleKey( spep_1, aura, 2.0, 2.0);
setShakeChara( spep_1, 0, 36, 10);

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep_1, 10013, 36, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1, ctZuzun, 36, 7);
setEffAlphaKey(spep_1, ctZuzun, 255);
setEffAlphaKey(spep_1+20, ctZuzun, 255);
setEffAlphaKey(spep_1+36, ctZuzun, 0);
setEffScaleKey(spep_1, ctZuzun, 0.1, 0.1);
setEffScaleKey(spep_1+10, ctZuzun, 2.0, 2.0);
--playSe(spep_1, SE_02);

--memo--
--気溜時のスタートでオーラの位置がずれているので調整を加える。

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+37; --70F

changeAnime( spep_2, 0, 30);                       -- 溜め!
setShakeChara( spep_2, 0, 100, 10);

aura004 = entryEffectLife( spep_2, 1503, 100, 0x80,  -1,  0,  0,  100); 
setEffScaleKey( spep_2, aura004, 1.1, 1.2);
setEffRotateKey( spep_, aura004, 0);
setEffAlphaKey( spep_2, aura004, 255);
setEffScaleKey( spep_2+100, aura004, 1.1, 1.2);
setEffRotateKey( spep_2+100, aura004, 0);
setEffAlphaKey( spep_2+100, aura004, 255);

aura003 = entryEffectLife( spep_2, 1502, 100, 0x80,  -1,  0,  0,  0); 

setEffScaleKey( spep_2, aura003, 1.1, 1.2);
setEffRotateKey( spep_2, aura003, 0);
setEffAlphaKey( spep_2, aura003, 255);
setEffScaleKey( spep_2+100, aura003, 1.1, 1.2);
setEffRotateKey( spep_2+100, aura003, 0);
setEffAlphaKey( spep_2+100, aura003, 255);

speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( spep_2, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_2+0, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep_2, aura, 1.5, 1.5);
setShakeChara( spep_2, 0, 49, 5);

-- 書き文字エントリー
--[[ctGogogo = entryEffectLife( spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ctGogogo, 40, 8);
setEffScaleKey(spep_2+20, ctGogogo, 1.4, 1.4);]]

spep_x = spep_2+10;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +20, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +20, 515.5 , 0 );

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

playSe( spep_2+3, SE_03);
playSe( spep_2+20, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100; --170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

setDisp( spep_4, 0, 1);
setDisp( spep_4+45, 0, 0);

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara(spep_4,0,110,10);

setMoveKey(  spep_4,    0,      0,  0,   0);
setMoveKey(  spep_4+10,    0,      0,  0,   0);
setMoveKey(  spep_4+20,    0,   -30,  0,   20);

kamehame_beam = entryEffect( spep_4, SP_02, 0x40,  0,  300,  50,  0);   -- 伸びるかめはめ波

--spname = entryEffect( spep_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+40,    0,   -200,  0,   50);
setMoveKey(  spep_4+45,    0,   -600,  0,   80);

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep_4+109);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.25, 1.25);

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ctZuo, 32, 15);
setEffAlphaKey(spep_4+8, ctZuo, 255);
setEffAlphaKey(spep_4+30, ctZuo, 255);
setEffAlphaKey(spep_4+40, ctZuo, 0);
setEffScaleKey(spep_4+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+40, ctZuo, 6.0, 6.0);

playSe( spep_4, SE_07);
playSe( spep_4+40, SE_07);
entryFade( spep_4+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);-- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110; --370

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 104);-- ガード
--changeAnime( spep_5+60, 1, 108);--監修動画に合わせるためにコメントアウト
setShakeChara( spep_5, 1, 84, 20);

setMoveKey( spep_5 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_5 + 2, 1, 237, -38.7 , 0 );
setMoveKey( spep_5 + 4, 1, 236, -39.4 , 0 );
setMoveKey( spep_5 + 6, 1, 235, -40.1 , 0 );
setMoveKey( spep_5 + 8, 1, 233.9, -40.9 , 0 );
setMoveKey( spep_5 + 10, 1, 232.8, -41.7 , 0 );
setMoveKey( spep_5 + 12, 1, 231.6, -42.5 , 0 );
setMoveKey( spep_5 + 14, 1, 230.3, -43.4 , 0 );
setMoveKey( spep_5 + 16, 1, 229, -44.3 , 0 );
setMoveKey( spep_5 + 18, 1, 227.6, -45.3 , 0 );
setMoveKey( spep_5 + 20, 1, 226.1, -46.3 , 0 );
setMoveKey( spep_5 + 22, 1, 224.6, -47.4 , 0 );
setMoveKey( spep_5 + 24, 1, 223, -48.5 , 0 );
setMoveKey( spep_5 + 26, 1, 221.4, -49.6 , 0 );
setMoveKey( spep_5 + 28, 1, 219.7, -50.8 , 0 );
setMoveKey( spep_5 + 30, 1, 218, -52 , 0 );
setMoveKey( spep_5 + 32, 1, 216.2, -53.3 , 0 );
setMoveKey( spep_5 + 34, 1, 214.3, -54.6 , 0 );
setMoveKey( spep_5 + 36, 1, 212.3, -56 , 0 );
setMoveKey( spep_5 + 38, 1, 210.4, -57.3 , 0 );
setMoveKey( spep_5 + 40, 1, 208.3, -58.8 , 0 );
setMoveKey( spep_5 + 42, 1, 206.2, -60.3 , 0 );
setMoveKey( spep_5 + 44, 1, 204, -61.8 , 0 );
setMoveKey( spep_5 + 46, 1, 201.8, -63.3 , 0 );
setMoveKey( spep_5 + 48, 1, 199.5, -64.9 , 0 );
setMoveKey( spep_5 + 50, 1, 197.1, -66.6 , 0 );
setMoveKey( spep_5 + 52, 1, 194.7, -68.3 , 0 );
setMoveKey( spep_5 + 54, 1, 192.2, -70 , 0 );
setMoveKey( spep_5 + 56, 1, 189.7, -71.8 , 0 );
setMoveKey( spep_5 + 59, 1, 187.1, -73.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.7, 0.7 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 59, 1, 0 );

kamehame_beam2 = entryEffect( spep_5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_5, 10014, 94, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ctZudodo, 94, 20);
setEffScaleKey( spep_5, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_5, ctZudodo, 70);
setEffAlphaKey(spep_5, ctZudodo, 255);

playSe( spep_5, SE_07);

entryFadeBg( spep_5, 0, 96, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 96, 0x80,  -1,  0,  0,  0); -- 流線斜め
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 439; --spep_5+72--エンドフェイズのフレーム数を置き換える

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
------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
setDisp( spep_5+85, 1, 0);
setMoveKey( spep_5 + 84, 1, 187.1, -73.6 , 0 );--監修動画に合わせるために追加
--[[
setMoveKey( spep_5 + 60, 1, 77.2, -26.6 , 0 );--監修動画に合わせるためにコメントアウト
setMoveKey( spep_5 + 62, 1, 125.8, -65.4 , 0 );
setMoveKey( spep_5 + 64, 1, 82.4, -66.6 , 0 );
setMoveKey( spep_5 + 66, 1, 85.7, -66.1 , 0 );
setMoveKey( spep_5 + 68, 1, 95.5, -64.8 , 0 );
setMoveKey( spep_5 + 70, 1, 111.8, -62.6 , 0 );
setMoveKey( spep_5 + 72, 1, 134.6, -59.6 , 0 );
setMoveKey( spep_5 + 74, 1, 163.9, -55.6 , 0 );
setMoveKey( spep_5 + 76, 1, 199.8, -50.8 , 0 );
setMoveKey( spep_5 + 78, 1, 242.1, -45.1 , 0 );
setMoveKey( spep_5 + 80, 1, 291, -38.6 , 0 );
setMoveKey( spep_5 + 82, 1, 346.4, -31.1 , 0 );
setMoveKey( spep_5 + 84, 1, 408.3, -22.8 , 0 );　
]]--
--setScaleKey( spep_5 + 0, 1, 0.4, 0.4 );

setScaleKey( spep_5 + 84, 1, 1.6, 1.6 );
--[[
setScaleKey( spep_5 + 0, 1, 0.4, 0.4 ); --監修動画に合わせるためにコメントアウト
setScaleKey( spep_5 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_5 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 16, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 24, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 28, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 30, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 32, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 34, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 44, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 46, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 48, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 50, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 52, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 54, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 56, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 59, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 84, 1, 0.91, 0.91 ); 
setScaleKey( spep_5 + 60, 1, 0.79, 0.79 );　
setScaleKey( spep_5 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 66, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 68, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 70, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 72, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 74, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 78, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 82, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 84, 1, 0.17, 0.17 );
]]--

setRotateKey( spep_5 + 84, 1, 0 );
--[[
setRotateKey( spep_5 + 60, 1, 23.7 );　--監修動画に合わせるためにコメントアウト
setRotateKey( spep_5 + 62, 1, -16 );
setRotateKey( spep_5 + 64, 1, 0 );
]]--

setEffScaleKey(spep_5+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+84, kamehame_beam2, 2.5, 2.5);

playSe( spep_5+85, SE_09);
-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setEffAlphaKey(spep_5+60, ctZudodo, 255);
setEffAlphaKey(spep_5+94, ctZudodo, 0);

entryFade( spep_5+78, 8,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+98;
--setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setDisp( spep_6, 1, 1);

entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ctGa, 30, 10);
setEffRotateKey( spep_6+15, ctGa, -40);
setEffScaleKey( spep_6+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_6+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_6+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ctGa, 255);
setEffAlphaKey( spep_6+105, ctGa, 255);
setEffAlphaKey( spep_6+115, ctGa, 0);

playSe( spep_6+13, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+7, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);
else
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
setVisibleUI(0, 0); --元位置69F

--29Fまで構えで待機
spep_1=30;
--気溜演出(40F)

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1, 0, 17);                       -- 溜め!

aura002=entryEffectLife(  spep_1, 1501, 38,0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( spep_1, aura002, 1.1, 1.2);
setEffRotateKey( spep_1, aura002, 0);
setEffAlphaKey( spep_1, aura002, 255);
setEffScaleKey( spep_1+38, aura002, 1.1, 1.2);
setEffRotateKey( spep_1+38, aura002, 0);
setEffAlphaKey( spep_1+38, aura002, 255);

aura001=entryEffectLife( spep_1, 1500, 38,0x80, -1,  0,  0,  0);    -- eff_001
setEffScaleKey( spep_1, aura001, 1.1, 1.2);
setEffRotateKey( spep_1, aura001, 0);
setEffAlphaKey( spep_1, aura001, 255);
setEffScaleKey( spep_1+38, aura001, 1.1, 1.2);
setEffRotateKey( spep_1+38, aura001, 0);
setEffAlphaKey( spep_1+38, aura001, 255);

playSe( spep_1, SE_01);

entryFade( spep_1+31, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   311, 36, 0x100,  0,  -1,  0,  -250); -- オーラ
setEffAlphaKey( spep_1, aura, 255);
setEffAlphaKey( spep_1+36, aura, 255);

setEffScaleKey( spep_1, aura, 2.0, 2.0);
setShakeChara( spep_1, 0, 36, 10);

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep_1, 10013, 36, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1, ctZuzun, 36, 7);
setEffAlphaKey(spep_1, ctZuzun, 255);
setEffAlphaKey(spep_1+20, ctZuzun, 255);
setEffAlphaKey(spep_1+36, ctZuzun, 0);
setEffScaleKey(spep_1, ctZuzun, 0.1, 0.1);
setEffScaleKey(spep_1+10, ctZuzun, 2.0, 2.0);
--playSe(spep_1, SE_02);

--memo--
--気溜時のスタートでオーラの位置がずれているので調整を加える。

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+37; --70F

changeAnime( spep_2, 0, 30);                       -- 溜め!
setShakeChara( spep_2, 0, 100, 10);

aura004 = entryEffectLife( spep_2, 1503, 100, 0x80,  -1,  0,  0,  100); 
setEffScaleKey( spep_2, aura004, 1.1, 1.2);
setEffRotateKey( spep_, aura004, 0);
setEffAlphaKey( spep_2, aura004, 255);
setEffScaleKey( spep_2+100, aura004, 1.1, 1.2);
setEffRotateKey( spep_2+100, aura004, 0);
setEffAlphaKey( spep_2+100, aura004, 255);

aura003 = entryEffectLife( spep_2, 1502, 100, 0x80,  -1,  0,  0,  0); 

setEffScaleKey( spep_2, aura003, 1.1, 1.2);
setEffRotateKey( spep_2, aura003, 0);
setEffAlphaKey( spep_2, aura003, 255);
setEffScaleKey( spep_2+100, aura003, 1.1, 1.2);
setEffRotateKey( spep_2+100, aura003, 0);
setEffAlphaKey( spep_2+100, aura003, 255);

--speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( spep_2, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_2+0, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep_2, aura, 1.5, 1.5);
setShakeChara( spep_2, 0, 49, 5);

--[[ctGogogo = entryEffectLife( spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ctGogogo, 40, 8);
setEffScaleKey(spep_2+20, ctGogogo, 1.4, 1.4);]]

spep_x = spep_2+10;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +20, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +20, 515.5 , 0 );

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

playSe( spep_2+3, SE_03);
playSe( spep_2+20, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100; --170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

setDisp( spep_4, 0, 1);
setDisp( spep_4+45, 0, 0);

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara(spep_4,0,110,10);

setMoveKey(  spep_4,    0,      0,  0,   0);
setMoveKey(  spep_4+10,    0,      0,  0,   0);
setMoveKey(  spep_4+20,    0,   -30,  0,   20);

kamehame_beam = entryEffect( spep_4, SP_02, 0x40,  0,  300,  50,  0);   -- 伸びるかめはめ波

--spname = entryEffect( spep_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+40,    0,   -200,  0,   50);
setMoveKey(  spep_4+45,    0,   -600,  0,   80);

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep_4+109);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.25, 1.25);

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ctZuo, 32, 15);
setEffAlphaKey(spep_4+8, ctZuo, 255);
setEffAlphaKey(spep_4+30, ctZuo, 255);
setEffAlphaKey(spep_4+40, ctZuo, 0);
setEffScaleKey(spep_4+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+40, ctZuo, 6.0, 6.0);

playSe( spep_4, SE_07);
playSe( spep_4+40, SE_07);
entryFade( spep_4+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);-- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110; --370

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 104);-- ガード
--changeAnime( spep_5+60, 1, 108);--監修動画に合わせるためにコメントアウト
setShakeChara( spep_5, 1, 84, 20);

setMoveKey( spep_5 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_5 + 2, 1, 237, -38.7 , 0 );
setMoveKey( spep_5 + 4, 1, 236, -39.4 , 0 );
setMoveKey( spep_5 + 6, 1, 235, -40.1 , 0 );
setMoveKey( spep_5 + 8, 1, 233.9, -40.9 , 0 );
setMoveKey( spep_5 + 10, 1, 232.8, -41.7 , 0 );
setMoveKey( spep_5 + 12, 1, 231.6, -42.5 , 0 );
setMoveKey( spep_5 + 14, 1, 230.3, -43.4 , 0 );
setMoveKey( spep_5 + 16, 1, 229, -44.3 , 0 );
setMoveKey( spep_5 + 18, 1, 227.6, -45.3 , 0 );
setMoveKey( spep_5 + 20, 1, 226.1, -46.3 , 0 );
setMoveKey( spep_5 + 22, 1, 224.6, -47.4 , 0 );
setMoveKey( spep_5 + 24, 1, 223, -48.5 , 0 );
setMoveKey( spep_5 + 26, 1, 221.4, -49.6 , 0 );
setMoveKey( spep_5 + 28, 1, 219.7, -50.8 , 0 );
setMoveKey( spep_5 + 30, 1, 218, -52 , 0 );
setMoveKey( spep_5 + 32, 1, 216.2, -53.3 , 0 );
setMoveKey( spep_5 + 34, 1, 214.3, -54.6 , 0 );
setMoveKey( spep_5 + 36, 1, 212.3, -56 , 0 );
setMoveKey( spep_5 + 38, 1, 210.4, -57.3 , 0 );
setMoveKey( spep_5 + 40, 1, 208.3, -58.8 , 0 );
setMoveKey( spep_5 + 42, 1, 206.2, -60.3 , 0 );
setMoveKey( spep_5 + 44, 1, 204, -61.8 , 0 );
setMoveKey( spep_5 + 46, 1, 201.8, -63.3 , 0 );
setMoveKey( spep_5 + 48, 1, 199.5, -64.9 , 0 );
setMoveKey( spep_5 + 50, 1, 197.1, -66.6 , 0 );
setMoveKey( spep_5 + 52, 1, 194.7, -68.3 , 0 );
setMoveKey( spep_5 + 54, 1, 192.2, -70 , 0 );
setMoveKey( spep_5 + 56, 1, 189.7, -71.8 , 0 );
setMoveKey( spep_5 + 59, 1, 187.1, -73.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.7, 0.7 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 59, 1, 0 );

kamehame_beam2 = entryEffect( spep_5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_5, 10014, 94, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ctZudodo, 94, 20);
setEffScaleKey( spep_5, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_5, ctZudodo, 0);
setEffAlphaKey(spep_5, ctZudodo, 255);

playSe( spep_5, SE_07);

entryFadeBg( spep_5, 0, 96, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 96, 0x80,  -1,  0,  0,  0); -- 流線斜め
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 439; --spep_5+72--エンドフェイズのフレーム数を置き換える

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
------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
setDisp( spep_5+85, 1, 0);
setMoveKey( spep_5 + 84, 1, 187.1, -73.6 , 0 );--監修動画に合わせるために追加
--[[
setMoveKey( spep_5 + 60, 1, 77.2, -26.6 , 0 );--監修動画に合わせるためにコメントアウト
setMoveKey( spep_5 + 62, 1, 125.8, -65.4 , 0 );
setMoveKey( spep_5 + 64, 1, 82.4, -66.6 , 0 );
setMoveKey( spep_5 + 66, 1, 85.7, -66.1 , 0 );
setMoveKey( spep_5 + 68, 1, 95.5, -64.8 , 0 );
setMoveKey( spep_5 + 70, 1, 111.8, -62.6 , 0 );
setMoveKey( spep_5 + 72, 1, 134.6, -59.6 , 0 );
setMoveKey( spep_5 + 74, 1, 163.9, -55.6 , 0 );
setMoveKey( spep_5 + 76, 1, 199.8, -50.8 , 0 );
setMoveKey( spep_5 + 78, 1, 242.1, -45.1 , 0 );
setMoveKey( spep_5 + 80, 1, 291, -38.6 , 0 );
setMoveKey( spep_5 + 82, 1, 346.4, -31.1 , 0 );
setMoveKey( spep_5 + 84, 1, 408.3, -22.8 , 0 );　
]]--
--setScaleKey( spep_5 + 0, 1, 0.4, 0.4 );

setScaleKey( spep_5 + 84, 1, 1.6, 1.6 );
--[[
setScaleKey( spep_5 + 0, 1, 0.4, 0.4 ); --監修動画に合わせるためにコメントアウト
setScaleKey( spep_5 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_5 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 14, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 16, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 24, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 28, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 30, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 32, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 34, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 44, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 46, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 48, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 50, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 52, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 54, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 56, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 59, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 84, 1, 0.91, 0.91 ); 
setScaleKey( spep_5 + 60, 1, 0.79, 0.79 );　
setScaleKey( spep_5 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 66, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 68, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 70, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 72, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 74, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 78, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 80, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 82, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 84, 1, 0.17, 0.17 );
]]--

setRotateKey( spep_5 + 84, 1, 0 );
--[[
setRotateKey( spep_5 + 60, 1, 23.7 );　--監修動画に合わせるためにコメントアウト
setRotateKey( spep_5 + 62, 1, -16 );
setRotateKey( spep_5 + 64, 1, 0 );
]]--

setEffScaleKey(spep_5+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+84, kamehame_beam2, 2.5, 2.5);

playSe( spep_5+85, SE_09);
-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setEffAlphaKey(spep_5+60, ctZudodo, 255);
setEffAlphaKey(spep_5+94, ctZudodo, 0);

entryFade( spep_5+78, 8,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+98;
--setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setDisp( spep_6, 1, 1);

entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ctGa, 30, 10);
setEffRotateKey( spep_6+15, ctGa, -40);
setEffScaleKey( spep_6+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_6+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_6+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ctGa, 255);
setEffAlphaKey( spep_6+105, ctGa, 255);
setEffAlphaKey( spep_6+115, ctGa, 0);

playSe( spep_6+13, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+7, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);
end
