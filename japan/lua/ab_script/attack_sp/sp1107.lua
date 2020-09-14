

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
SE_03 = 1018; --狼牙溜め
SE_04 = 1035; --カットイン
SE_05 = 1022; --狼牙向かう
SE_06 = 43; --向かう
SE_07 = 1009; --HIT1
SE_08 = 1010; --HIT2
SE_09 = 1053; --飛んでく
SE_10 = 09; --アタック
SE_11 = 1024; --爆破
SE_12 = 1054; --割れる音
SE_13 = 1001; --ズドドド


SP_01 = 150477; --溜め(バトルキャラ込み)
SP_02 = 150478; --突進(バトルキャラ込み)
SP_03 = 150479; --ひっかき
SP_04 = 150480; --突き飛ばし
SP_05 = 150481; --トス
SP_06 = 150482; --アタック
SP_07 = 150483; --溜め(敵)
SP_08 = 150484; --突進(敵)
SP_09 = 150485; --突き飛ばし(敵)
SP_10 = 150486; --トス(敵)
SP_11 = 150487; --アタック(敵)
SP_12 = 150452;
SP_13 = 150453;




--setMoveKey(   0,   0,    0, -1000,   0);
--setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);

------------------------------------------------------
-- 気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, 0, 0); --味方位置
setMoveKey( 1, 0, 0, 0, 0); --味方位置
setMoveKey( 2, 0, 0, 0, 0); --味方位置
setMoveKey( 3, 0, 0, 0, 0); --味方位置
setMoveKey( 4, 0, 0, 0, 0); --味方位置
setMoveKey( 5, 0, 0, 0, 0); --味方位置
setScaleKey( 50,   0, 1.7, 1.7);
changeAnime( 10, 0, 17);

-- ** オーラ&集中線エフェクト ** --
tame1 = entryEffect( 12, 1501, 0x80, -1,  0,  0,  0);    -- eff_002
tame2 = entryEffect( 10, 1500, 0, -1,  0,  0,  0);    -- eff_001

playSe( 10, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife( 10, 311, 50, 0x40, 0, 1, 0, -100); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- ** 書き文字エントリ ** --
ct = entryEffectLife( 10, 10013, 36, 0, -1, 0, 20, 320); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(51, ct, 0);
setEffScaleKey( 10, ct, 1, 1);
setEffScaleKey( 15, ct, 3, 3);
setEffScaleKey( 50, ct, 3, 3);

-- ** ホワイトフェード ** --
entryFade( 40, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_1 = 51;

------------------------------------------------------
-- 狼牙溜め(51F)
------------------------------------------------------
setDisp( spep_1, 0, 0);
setMoveKey( spep_1, 0, 0, 0, 0); --味方位置

-- ** エフェクト等 ** --
rouga = entryEffect( spep_1, SP_01, 0x100, 0, 1, 0, 90); --狼牙溜め
setEffShake( spep_1, rouga, 50, 7);

-- ** オーラ&集中線エフェクト ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffect( spep_1, 1502, 0x80, -1, 0, 0, 0); -- eff_003 (気)


-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え


-- ** 音 ** --
playSe( spep_1+5, SE_02);
playSe( spep_1+15, SE_03);


-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_1+12, 190006, 87, 0, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, 0.6, 0.6);


-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_2 = (spep_1+87);

------------------------------------------------------
-- カードカットイン(138F)
------------------------------------------------------
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_04);

spep_3 = (spep_2+90);

------------------------------------------------------
-- 狼牙風風拳がお(228F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_3, 0, 112, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep_3, 920, 112, 0x80, -1, 0, 0, 0); -- 流線

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 112, 0x80, -1, 0, 0, 0); -- 集中線

-- ** エフェクト等 ** --
rouga2 = entryEffect( spep_3+2, SP_02, 0x80, -1, 0, 0, 70); --狼牙突進
spname = entryEffect( spep_3-27, 1508, 0, -1, 0, 0, 0); -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4); -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3-27, spname, 0);
setEffAlphaKey( spep_3+1, spname, 0);
setEffAlphaKey( spep_3+2, spname, 255);

-- ** 書き文字エントリ ** --
zuo = entryEffectLife( spep_3+2, 10012, 35, 0, -1, 0, 100, 280); -- ズオ
setEffScaleKey( spep_3+2, zuo, 2.2, 2.2);
setEffScaleKey( spep_3+37, zuo, 2.2, 2.2);
setEffShake( spep_3+2, zuo, 35, 7);
setEffRotateKey( spep_3+2, zuo, 25);

-- ** 音 ** --
playSe( spep_3+2, SE_05);
seID = playSe( spep_3+81, SE_05);
playSe( spep_3+91, SE_06);


-- ** ホワイトフェード ** --
entryFade( spep_3+106, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = (spep_3+114);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 305; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 狼牙風風拳ダメージ(start342F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep_4, 921, 86, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** 書き文字エントリ ** --
baki2 = entryEffectLife( spep_4+1, 10020, 82, 0, -1, 0, 160, 30); -- バキッフレーム数仮
setEffAlphaKey( spep_4+1, baki2, 0);
setEffAlphaKey( spep_4+44, baki2, 0);
setEffAlphaKey( spep_4+45, baki2, 255);
setEffMoveKey( spep_4+45, baki2, 160, 30);
setEffScaleKey( spep_4+45, baki2, 0.6, 0.6);
setEffRotateKey( spep_4+45, baki2, -10);
---------------------------
setEffMoveKey( spep_4+46, baki2, 120, 165);
setEffScaleKey( spep_4+46, baki2, 2.3, 2.3);
setEffRotateKey( spep_4+46, baki2, -5);
setEffMoveKey( spep_4+47, baki2, 120, 165);
setEffScaleKey( spep_4+47, baki2, 2.3, 2.3);
setEffRotateKey( spep_4+47, baki2, -5);
setEffMoveKey( spep_4+48, baki2, 65, 220);
setEffScaleKey( spep_4+48, baki2, 3.2, 3.2);
setEffRotateKey( spep_4+48, baki2, -10);
setEffMoveKey( spep_4+49, baki2, 65, 220);
setEffScaleKey( spep_4+49, baki2, 3.2, 3.2);
setEffRotateKey( spep_4+49, baki2, -10);
setEffMoveKey( spep_4+50, baki2, 65, 210);
setEffScaleKey( spep_4+50, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+50, baki2, -10);
setEffMoveKey( spep_4+52, baki2, 65, 210);
setEffScaleKey( spep_4+52, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+52, baki2, -10);
setEffMoveKey( spep_4+53, baki2, 40, 220);
setEffScaleKey( spep_4+53, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+53, baki2, -10);
setEffMoveKey( spep_4+54, baki2, 70, 190);
setEffScaleKey( spep_4+54, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+54, baki2, -10);
setEffScaleKey( spep_4+83, baki2, 4, 4);
---------------------
---------------------
baki = entryEffectLife( spep_4+11, 10020, 41, 0, -1, 0, 200, 30); -- バキッ
setEffMoveKey( spep_4+24, baki, 200, 60);
setEffScaleKey( spep_4+11, baki, 0.7, 0.7);
setEffScaleKey( spep_4+24, baki, 1, 1);
setEffShake( spep_4+11, baki, 13, 7);
---------------------------
setEffMoveKey( spep_4+25, baki, 140, -40);
setEffScaleKey( spep_4+25, baki, 0.7, 0.7);
setEffMoveKey( spep_4+26, baki, 140, -40);
setEffScaleKey( spep_4+26, baki, 0.7, 0.7);
setEffRotateKey( spep_4+25, baki, -35);
---------------------------
setEffMoveKey( spep_4+27, baki, 80, 45);
setEffScaleKey( spep_4+27, baki, 1.1, 1.1);
setEffMoveKey( spep_4+28, baki, 80, 45);
setEffScaleKey( spep_4+28, baki, 1.1, 1.1);
---------------------------
setEffMoveKey( spep_4+29, baki, 40, 85);
setEffScaleKey( spep_4+29, baki, 1.4, 1.4);
setEffMoveKey( spep_4+38, baki, 40, 85);
setEffScaleKey( spep_4+38, baki, 1.4, 1.4);
setEffShake( spep_4+29, baki, 9, 7);
setEffRotateKey( spep_4+38, baki, -35);
---------------------------
setEffMoveKey( spep_4+39, baki, 240, -25);
setEffScaleKey( spep_4+39, baki, 0.7, 0.7);
setEffRotateKey( spep_4+39, baki, 45);
setEffMoveKey( spep_4+40, baki, 240, -25);
setEffScaleKey( spep_4+40, baki, 0.7, 0.7);
---------------------------
setEffMoveKey( spep_4+41, baki, 260, 60);
setEffScaleKey( spep_4+41, baki, 1.4, 1.4);
setEffMoveKey( spep_4+42, baki, 260, 60);
setEffScaleKey( spep_4+42, baki, 1.4, 1.4);
---------------------------
setEffMoveKey( spep_4+43, baki, 245, 120);
setEffScaleKey( spep_4+43, baki, 2.2, 2.2);
setEffMoveKey( spep_4+44, baki, 245, 120);
setEffScaleKey( spep_4+44, baki, 2.2, 2.2);
---------------------------
setEffMoveKey( spep_4+45, baki, 250, 160);
setEffScaleKey( spep_4+45, baki, 2.4, 2.4);
setEffMoveKey( spep_4+52, baki, 250, 160);
setEffScaleKey( spep_4+52, baki, 2.4, 2.4);
setEffShake( spep_4+45, baki, 7, 7);
setEffRotateKey( spep_4+52, baki, 45);
---------------------------

-- ** 敵キャラ位置とサイズ、ポーズなど ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 104); --敵ガード
changeAnime( spep_4+7, 1, 106); --敵やられポーズ
setScaleKey( spep_4, 1, 1, 1); --敵のサイズ
setScaleKey( spep_4+5, 1, 1.4, 1.4); --敵のサイズ
setMoveKey( spep_4, 1, 400, 0, 0); --敵位置
setMoveKey( spep_4+5, 1, 10, 0, 0); --敵位置
setMoveKey( spep_4+13, 1, 100, 30, 0); --敵位置
setMoveKey( spep_4+14, 1, 100, 30, 0); --敵位置
setMoveKey( spep_4+15, 1, 100, -70, 0); --敵位置
setMoveKey( spep_4+16, 1, 100, -70, 0); --敵位置
setRotateKey( spep_4+16, 1, 0)	--敵の角度
setMoveKey( spep_4+22, 1, -35, 50, 0); --敵位置
setRotateKey( spep_4+22, 1, 20)	--敵の角度
setMoveKey( spep_4+23, 1, 80, -30, 0); --敵位置
setRotateKey( spep_4+23, 1, 0)	--敵の角度
setMoveKey( spep_4+24, 1, 80, -30, 0); --敵位置
setRotateKey( spep_4+24, 1, 0)	--敵の角度
setMoveKey( spep_4+28, 1, 120, 50, 0); --敵位置
setRotateKey( spep_4+28, 1, 20)	--敵の角度
setMoveKey( spep_4+29, 1, 120, 50, 0); --敵位置
setRotateKey( spep_4+29, 1, 20)	--敵の角度
setMoveKey( spep_4+30, 1, -80, -55, 0); --敵位置
setRotateKey( spep_4+30, 1, 0)	--敵の角度
setMoveKey( spep_4+37, 1, 110, 5, 0); --敵位置
setRotateKey( spep_4+37, 1, 10)	--敵の角度
setMoveKey( spep_4+38, 1, 110, 5, 0); --敵位置
setRotateKey( spep_4+38, 1, 10)	--敵の角度
setMoveKey( spep_4+39, 1, 70, -65, 0); --敵位置
setRotateKey( spep_4+39, 1, 0)	--敵の角度
setMoveKey( spep_4+40, 1, 70, -65, 0); --敵位置
setRotateKey( spep_4+40, 1, 0)	--敵の角度
setMoveKey( spep_4+45, 1, -60, 15, 0); --敵位置
setRotateKey( spep_4+45, 1, 20)	--敵の角度
setMoveKey( spep_4+46, 1, -60, -20, 0); --敵位置
setRotateKey( spep_4+46, 1, 0)	--敵の角度
setMoveKey( spep_4+53, 1, 20, 10, 0); --敵位置
setRotateKey( spep_4+53, 1, 20)	--敵の角度
setRotateKey( spep_4+46, 1, 0)	--敵の角度
setMoveKey( spep_4+56, 1, 20, 10, 0); --敵位置
setRotateKey( spep_4+56, 1, 20)	--敵の角度
setScaleKey( spep_4+56, 1, 1.4, 1.4); --敵のサイズ

changeAnime( spep_4+57, 1, 108); --敵やられポーズ
setMoveKey( spep_4+57, 1, 160, -15, 0); --敵位置
setRotateKey( spep_4+57, 1, 0);	--敵の角度
setScaleKey( spep_4+57, 1, 2, 2); --敵のサイズ
setScaleKey( spep_4+84, 1, 0.4, 0.4); --敵のサイズ
setMoveKey( spep_4+83, 1, 450, 120, 0); --敵位置ここで止まってる！
setMoveKey( spep_4+84, 1, 2000, 0, 0); --敵位置
setMoveKey( spep_4+90, 1, 2000, 0, 0); --敵位置

-- ** エフェクト等 ** --
rouga3 = entryEffect( spep_4, SP_03, 0x100, 0, 1, 0, 50); --狼牙ダメージ

-- ** 音 ** --

playSe( spep_4+7, SE_08);
playSe( spep_4+15, SE_07);
playSe( spep_4+29, SE_08);
playSe( spep_4+39, SE_07);
playSe( spep_4+57, SE_08);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = (spep_4+91);



------------------------------------------------------
-- 突き飛ばし(start433F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_5, 0, 60, 0, 0, 0, 0, 200); -- ベース暗め　背景


-- ** エフェクト等 ** --
tobashi = entryEffect( spep_5, SP_04, 0x100, -1, 0, 0, 20); --突き飛ばし

okushuchusen = entryEffectLife( spep_5, 924, 60, 0x80, -1, 0, -10,-180);   -- 奥行き線
setEffScaleKey( spep_5, okushuchusen, 1.3, 1);
setEffRotateKey( spep_5, okushuchusen, -70);


-- ** 敵キャラの動き ** --
changeAnime( spep_5, 1, 108); --敵やられポーズ
setMoveKey( spep_5, 1, 90, 130, 0); 
setScaleKey( spep_5, 1, 1, 1); --敵のサイズ
setRotateKey( spep_5, 1, -5);	--敵の角度
setMoveKey( spep_5+50, 1, 260, 400, 0); 
setScaleKey( spep_5+50, 1, 0.5, 0.5); --敵のサイズ
setMoveKey( spep_5+57, 1, 260, 400, 0); 
setScaleKey( spep_5+57, 1, 0.4, 0.4); --敵のサイズ
setRotateKey( spep_5+57, 1, -5);	--敵の角度
setShakeChara( spep_5, 1, 57, 20);

-- ** 書き文字エントリ ** --
don = entryEffectLife( spep_5, 10019, 44, 0x100, -1, 0, -60, 180); -- ドン
setEffScaleKey( spep_5, don, 2, 2);
setEffRotateKey( spep_5, don, 45);

setEffScaleKey( spep_5+4, don, 2, 2);
setEffScaleKey( spep_5+5, don, 2.2, 2.2);
setEffScaleKey( spep_5+6, don, 2.2, 2.2);
setEffScaleKey( spep_5+7, don, 2, 2);
setEffScaleKey( spep_5+8, don, 2, 2);
setEffScaleKey( spep_5+9, don, 2.2, 2.2);
setEffScaleKey( spep_5+10, don, 2.2, 2.2);
setEffScaleKey( spep_5+11, don, 2, 2);
setEffScaleKey( spep_5+12, don, 2, 2);
setEffScaleKey( spep_5+13, don, 2.2, 2.2);
setEffScaleKey( spep_5+14, don, 2.2, 2.2);
setEffScaleKey( spep_5+15, don, 2, 2);
setEffScaleKey( spep_5+16, don, 2, 2);
setEffScaleKey( spep_5+17, don, 2.2, 2.2);
setEffScaleKey( spep_5+18, don, 2.2, 2.2);
setEffScaleKey( spep_5+19, don, 2, 2);
setEffScaleKey( spep_5+20, don, 2, 2);
setEffScaleKey( spep_5+21, don, 2.2, 2.2);
setEffScaleKey( spep_5+22, don, 2.2, 2.2);
setEffScaleKey( spep_5+23, don, 2, 2);
setEffScaleKey( spep_5+24, don, 2, 2);
setEffScaleKey( spep_5+25, don, 2.2, 2.2);
setEffScaleKey( spep_5+26, don, 2.2, 2.2);
setEffScaleKey( spep_5+27, don, 2, 2);
setEffScaleKey( spep_5+28, don, 2, 2);
setEffScaleKey( spep_5+29, don, 2.2, 2.2);
setEffScaleKey( spep_5+30, don, 2.2, 2.2);
setEffScaleKey( spep_5+31, don, 2, 2);
setEffScaleKey( spep_5+32, don, 2, 2);
setEffScaleKey( spep_5+33, don, 2.2, 2.2);
setEffScaleKey( spep_5+34, don, 2.2, 2.2);
setEffScaleKey( spep_5+35, don, 2, 2);
setEffScaleKey( spep_5+36, don, 2, 2);
setEffScaleKey( spep_5+37, don, 2.2, 2.2);
setEffScaleKey( spep_5+38, don, 2.2, 2.2);
setEffScaleKey( spep_5+39, don, 2, 2);
setEffScaleKey( spep_5+40, don, 2, 2);
setEffScaleKey( spep_5+41, don, 2.2, 2.2);
setEffScaleKey( spep_5+42, don, 2.2, 2.2);
setEffScaleKey( spep_5+43, don, 2, 2);
setEffScaleKey( spep_5+44, don, 2, 2);

-- ** 音 ** --
playSe( spep_5+1, SE_07);
playSe( spep_5+15, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_5+52, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_6 = (spep_5+60);

------------------------------------------------------
-- トス(start493F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** エフェクト等 ** --
tosu1 = entryEffect( spep_6, SP_05, 0x80, -1, 0, 0, 0); --狼牙突進
tosu2 = entryEffect( spep_6, SP_05, 0x100, -1, 0, 0, 0); --狼牙突進
setEffAlphaKey( spep_6, tosu2, 0);
setEffAlphaKey( spep_6+64, tosu2, 0);
setEffAlphaKey( spep_6+65, tosu2, 255);
setEffAlphaKey( spep_6+87, tosu2, 255);
setEffAlphaKey( spep_6, tosu1, 255);
setEffAlphaKey( spep_6+64, tosu1, 255);
setEffAlphaKey( spep_6+65, tosu1, 0);
setEffAlphaKey( spep_6+87, tosu1, 0);


-- ** 集中線 ** --
entryEffectLife( spep_6, 906, 65, 0x100, -1, 0, 0, 0); -- 集中線

okushuchusen2 = entryEffectLife( spep_6+65, 924, 22, 0x100, -1, 0, 455, 300);   -- 奥行き線
setEffScaleKey( spep_6, okushuchusen2, 1.3, 1.3);
setEffRotateKey( spep_6, okushuchusen2, 150);



-- ** 書き文字エントリ ** --
zudodo = entryEffectLife( spep_6, 10014, 64, 0x100, -1, 0, 180, 100); -- ズドドド
setEffRotateKey( spep_6, zudodo, 50);
setEffScaleKey( spep_6, zudodo, 1, 1);
setEffScaleKey( spep_6+64, zudodo, 1.5, 1.5);

setEffMoveKey( spep_6+1, zudodo, 180, 100);
setEffMoveKey( spep_6+2, zudodo, 170, 110);
setEffMoveKey( spep_6+3, zudodo, 170, 110);
setEffMoveKey( spep_6+4, zudodo, 180, 100);
setEffMoveKey( spep_6+5, zudodo, 180, 100);
setEffMoveKey( spep_6+6, zudodo, 170, 110);
setEffMoveKey( spep_6+7, zudodo, 170, 110);
setEffMoveKey( spep_6+8, zudodo, 180, 100);
setEffMoveKey( spep_6+9, zudodo, 180, 100);
setEffMoveKey( spep_6+10, zudodo, 170, 110);
setEffMoveKey( spep_6+11, zudodo, 170, 110);
setEffMoveKey( spep_6+12, zudodo, 180, 100);
setEffMoveKey( spep_6+13, zudodo, 180, 100);
setEffMoveKey( spep_6+14, zudodo, 170, 110);
setEffMoveKey( spep_6+15, zudodo, 170, 110);
setEffMoveKey( spep_6+16, zudodo, 180, 100);
setEffMoveKey( spep_6+17, zudodo, 180, 100);
setEffMoveKey( spep_6+18, zudodo, 170, 110);
setEffMoveKey( spep_6+19, zudodo, 170, 110);
setEffMoveKey( spep_6+20, zudodo, 180, 100);
setEffMoveKey( spep_6+21, zudodo, 180, 100);
setEffMoveKey( spep_6+22, zudodo, 170, 110);
setEffMoveKey( spep_6+23, zudodo, 170, 110);
setEffMoveKey( spep_6+24, zudodo, 180, 100);
setEffMoveKey( spep_6+25, zudodo, 180, 100);
setEffMoveKey( spep_6+26, zudodo, 170, 110);
setEffMoveKey( spep_6+27, zudodo, 170, 110);
setEffMoveKey( spep_6+28, zudodo, 180, 100);
setEffMoveKey( spep_6+29, zudodo, 180, 100);
setEffMoveKey( spep_6+30, zudodo, 170, 110);
setEffMoveKey( spep_6+31, zudodo, 170, 110);
setEffMoveKey( spep_6+32, zudodo, 180, 100);
setEffMoveKey( spep_6+33, zudodo, 180, 100);
setEffMoveKey( spep_6+34, zudodo, 170, 110);
setEffMoveKey( spep_6+35, zudodo, 170, 110);
setEffMoveKey( spep_6+36, zudodo, 180, 100);
setEffMoveKey( spep_6+37, zudodo, 180, 100);
setEffMoveKey( spep_6+38, zudodo, 170, 110);
setEffMoveKey( spep_6+39, zudodo, 170, 110);
setEffMoveKey( spep_6+40, zudodo, 180, 100);
setEffMoveKey( spep_6+41, zudodo, 180, 100);
setEffMoveKey( spep_6+42, zudodo, 170, 110);
setEffMoveKey( spep_6+43, zudodo, 170, 110);
setEffMoveKey( spep_6+44, zudodo, 180, 100);
setEffMoveKey( spep_6+45, zudodo, 180, 100);
setEffMoveKey( spep_6+46, zudodo, 170, 110);
setEffMoveKey( spep_6+47, zudodo, 170, 110);
setEffMoveKey( spep_6+48, zudodo, 180, 100);
setEffMoveKey( spep_6+49, zudodo, 180, 100);
setEffMoveKey( spep_6+50, zudodo, 170, 110);
setEffMoveKey( spep_6+51, zudodo, 170, 110);
setEffMoveKey( spep_6+52, zudodo, 180, 100);
setEffMoveKey( spep_6+53, zudodo, 180, 100);
setEffMoveKey( spep_6+54, zudodo, 170, 110);
setEffMoveKey( spep_6+55, zudodo, 170, 110);
setEffMoveKey( spep_6+56, zudodo, 180, 100);
setEffMoveKey( spep_6+57, zudodo, 180, 100);
setEffMoveKey( spep_6+58, zudodo, 170, 110);
setEffMoveKey( spep_6+59, zudodo, 170, 110);
setEffMoveKey( spep_6+60, zudodo, 180, 100);
setEffMoveKey( spep_6+61, zudodo, 180, 100);
setEffMoveKey( spep_6+62, zudodo, 170, 110);
setEffMoveKey( spep_6+63, zudodo, 170, 110);
setEffMoveKey( spep_6+64, zudodo, 180, 100);


-- ** 敵キャラの動き ** --
setMoveKey( spep_6, 1, -500, 800, 0); 
setScaleKey( spep_6, 1, 2.2, 2.2); --敵のサイズ
setRotateKey( spep_6, 1, 20);	--敵の角度
setMoveKey( spep_6+20, 1, 10, 205, 0);
setScaleKey( spep_6+20, 1, 1.5, 1.5); --敵のサイズ
setRotateKey( spep_6+20, 1, 20);	--敵の角度
setMoveKey( spep_6+64, 1, 10, 205, 0);
setScaleKey( spep_6+64, 1, 1.5, 1.5); --敵のサイズ
setRotateKey( spep_6+64, 1, 20);	--敵の角度
setShakeChara( spep_6+20, 1, 45, 20);

setMoveKey( spep_6+65, 1, 100, 130, 0);
setRotateKey( spep_6+65, 1, 60);	--敵の角度
setMoveKey( spep_6+87, 1, 550, 600, 0);
setRotateKey( spep_6+87, 1, 60);	--敵の角度
setScaleKey( spep_6+87, 1, 2.2, 2.2); --敵のサイズ

-- ** 音 ** --
--playSe( spep_6+3, SE_09);
playSe( spep_6+65, SE_07);

--[[
playSe( spep_6, SE_13);
playSe( spep_6+10, SE_13);
playSe( spep_6+20, SE_13);
playSe( spep_6+30, SE_13);
playSe( spep_6+40, SE_13);
playSe( spep_6+50, SE_13);
playSe( spep_6+60, SE_13);
]]
--4.11調整
SE001 = playSe( spep_6, SE_13);
stopSe(spep_6+20,SE001,5);
SE002 = playSe( spep_6+10, SE_13);
stopSe(spep_6+30,SE002,5);
SE003 = playSe( spep_6+20, SE_13);
stopSe(spep_6+40,SE003,5);
SE004 = playSe( spep_6+30, SE_13);
stopSe(spep_6+50,SE004,5);
SE005 = playSe( spep_6+40, SE_13);
stopSe(spep_6+60,SE005,5);
SE006 = playSe( spep_6+50, SE_13);
stopSe(spep_6+70,SE006,5);
SE007 = playSe( spep_6+60, SE_13);

-- ** ホワイトフェード ** --
entryFade( spep_6+80, 5, 12, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_7 = (spep_6+88);

------------------------------------------------------
-- アタック(start581F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 107, 0, 0, 0, 0, 200); -- ベース暗め　背景

sen = entryEffectLife( spep_7, 921, 107, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen, 45);
setEffScaleKey( spep_7, sen, 1.6, 1.6);

okushuchusen2 = entryEffectLife( spep_7+57, 924, 50, 0x80, -1, 0, 260,-330);   -- 奥行き線
setEffScaleKey( spep_7+57, okushuchusen2, 1.5, 1.5);
setEffRotateKey( spep_7+57, okushuchusen2, -125);


-- ** エフェクト等 ** --
attack1 = entryEffect( spep_7, SP_06, 0x80, -1, 0, 0, 0); --狼牙突進
attack2 = entryEffect( spep_7, SP_06, 0x100, -1, 0, 0, 0); --狼牙突進

setEffAlphaKey( spep_7, attack2, 0);
setEffAlphaKey( spep_7+56, attack2, 0);
setEffAlphaKey( spep_7+57, attack2, 255);
setEffAlphaKey( spep_7+66, attack2, 255);
setEffAlphaKey( spep_7+67, attack2, 0);
setEffAlphaKey( spep_7+107, attack2, 0);
setEffAlphaKey( spep_7, attack1, 255);
setEffAlphaKey( spep_7+56, attack1, 255);
setEffAlphaKey( spep_7+57, attack1, 0);
setEffAlphaKey( spep_7+66, attack1, 0);
setEffAlphaKey( spep_7+67, attack1, 255);
setEffAlphaKey( spep_7+107, attack1, 255);


-- ** 敵キャラの動き ** --
setRotateKey( spep_7, 1, 60);	--敵の角度
setRotateKey( spep_7+56, 1, 60);	--敵の角度
setScaleKey( spep_7, 1, 1.5, 1.5); --敵のサイズ
setMoveKey( spep_7, 1, 100, -800, 0);
setMoveKey( spep_7+56, 1, 50, 0, 0);
setScaleKey( spep_7+56, 1, 1.5, 1.5); --敵のサイズ

setMoveKey( spep_7+57, 1, 130, -30, 0);
changeAnime( spep_7+57, 1, 107); --敵やられポーズ
setScaleKey( spep_7+57, 1, 0.5, 0.5); --敵のサイズ
setRotateKey( spep_7+57, 1, -5);	--敵の角度
setMoveKey( spep_7+107, 1, 250, -400, 0);
setScaleKey( spep_7+107, 1, 1.3, 1.3); --敵のサイズ
setRotateKey( spep_7+107, 1, -5);	--敵の角度
setShakeChara( spep_7+57, 1, 50, 15);


-- ** 書き文字エントリ ** --
bago = entryEffectLife( spep_7+57, 10021, 50, 0x100, -1, 0, 200, 400); -- バゴォッ
setEffRotateKey( spep_7+57, bago, 25);
setEffScaleKey( spep_7+57, bago, 2.7, 2.7);

setEffMoveKey( spep_7+58, bago, 200, 400);
setEffMoveKey( spep_7+59, bago, 215, 400);
setEffMoveKey( spep_7+60, bago, 215, 400);
setEffMoveKey( spep_7+61, bago, 200, 400);
setEffMoveKey( spep_7+62, bago, 200, 400);
setEffMoveKey( spep_7+63, bago, 215, 400);
setEffMoveKey( spep_7+64, bago, 215, 400);
setEffMoveKey( spep_7+65, bago, 200, 400);
setEffMoveKey( spep_7+66, bago, 200, 400);
setEffMoveKey( spep_7+67, bago, 215, 400);
setEffMoveKey( spep_7+68, bago, 215, 400);
setEffMoveKey( spep_7+69, bago, 200, 400);
setEffMoveKey( spep_7+70, bago, 200, 400);
setEffMoveKey( spep_7+71, bago, 215, 400);
setEffMoveKey( spep_7+72, bago, 215, 400);
setEffMoveKey( spep_7+73, bago, 200, 400);
setEffMoveKey( spep_7+74, bago, 200, 400);
setEffMoveKey( spep_7+75, bago, 215, 400);
setEffMoveKey( spep_7+76, bago, 215, 400);
setEffMoveKey( spep_7+77, bago, 200, 400);
setEffMoveKey( spep_7+78, bago, 200, 400);
setEffMoveKey( spep_7+79, bago, 215, 400);
setEffMoveKey( spep_7+80, bago, 215, 400);
setEffMoveKey( spep_7+81, bago, 200, 400);
setEffMoveKey( spep_7+82, bago, 200, 400);
setEffMoveKey( spep_7+83, bago, 215, 400);
setEffMoveKey( spep_7+84, bago, 215, 400);
setEffMoveKey( spep_7+85, bago, 200, 400);
setEffMoveKey( spep_7+86, bago, 200, 400);
setEffMoveKey( spep_7+87, bago, 215, 400);
setEffMoveKey( spep_7+88, bago, 215, 400);
setEffMoveKey( spep_7+89, bago, 200, 400);
setEffMoveKey( spep_7+90, bago, 200, 400);
setEffMoveKey( spep_7+91, bago, 215, 400);
setEffMoveKey( spep_7+92, bago, 215, 400);
setEffMoveKey( spep_7+93, bago, 200, 400);
setEffMoveKey( spep_7+94, bago, 200, 400);
setEffMoveKey( spep_7+95, bago, 215, 400);
setEffMoveKey( spep_7+96, bago, 215, 400);
setEffMoveKey( spep_7+97, bago, 200, 400);
setEffMoveKey( spep_7+98, bago, 200, 400);
setEffMoveKey( spep_7+99, bago, 215, 400);
setEffMoveKey( spep_7+100, bago, 215, 400);
setEffMoveKey( spep_7+101, bago, 200, 400);
setEffMoveKey( spep_7+102, bago, 200, 400);
setEffMoveKey( spep_7+103, bago, 215, 400);
setEffMoveKey( spep_7+104, bago, 215, 400);
setEffMoveKey( spep_7+105, bago, 200, 400);
setEffMoveKey( spep_7+106, bago, 200, 400);
setEffMoveKey( spep_7+107, bago, 215, 400);

-- ** 音 ** --
playSe( spep_7+10, SE_09);
playSe( spep_7+57, SE_10);


-- ** ホワイトフェード ** --
entryFade( spep_7+100, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_8 = (spep_7+113);

------------------------------------------------------
-- 爆発 (694F)
------------------------------------------------------

setDisp( spep_8-1, 1, 0);
setDisp( spep_8, 1, 1);
setDisp( spep_8, 0, 0); --味方非表示
setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_8-1, 1, 100, 0, 0);
setScaleKey( spep_8-1, 1, 1.0, 1.0);
setMoveKey(  spep_8, 1, 0, 0, 128);
setScaleKey( spep_8, 1, 0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_8+8, SE_11);

setMoveKey( spep_8+8, 1, 0, 0, 128); --478
setMoveKey( spep_8+15, 1, -60, -200, -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+7, 6, 15);
setShake( spep_8+13, 15, 10);

setRotateKey( spep_8, 1, 30 );
setRotateKey( spep_8+2, 1, 80 );
setRotateKey( spep_8+4, 1, 120 );
setRotateKey( spep_8+6, 1, 160 );
setRotateKey( spep_8+8, 1, 200 );
setRotateKey( spep_8+10, 1, 260 );
setRotateKey( spep_8+12, 1, 320 );
setRotateKey( spep_8+14, 1, 0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_12);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_8+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_8+16);

entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade

endPhase( spep_8+110);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, 0, 0); --味方位置
setMoveKey( 1, 0, 0, 0, 0); --味方位置
setMoveKey( 2, 0, 0, 0, 0); --味方位置
setMoveKey( 3, 0, 0, 0, 0); --味方位置
setMoveKey( 4, 0, 0, 0, 0); --味方位置
setMoveKey( 5, 0, 0, 0, 0); --味方位置
setScaleKey( 50,   0, 1.7, 1.7);
changeAnime( 10, 0, 17);

-- ** オーラ&集中線エフェクト ** --
tame1 = entryEffect( 12, 1501, 0x80, -1,  0,  0,  0);    -- eff_002
tame2 = entryEffect( 10, 1500, 0, -1,  0,  0,  0);    -- eff_001

playSe( 10, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife( 10, 311, 50, 0x40, 0, 1, 0, -100); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- ** 書き文字エントリ ** --
ct = entryEffectLife( 10, 10013, 36, 0, -1, 0, 20, 320); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(51, ct, 0);
setEffScaleKey( 10, ct, 1, 1);
setEffScaleKey( 15, ct, 3, 3);
setEffScaleKey( 50, ct, 3, 3);

-- ** ホワイトフェード ** --
entryFade( 40, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_1 = 51;

------------------------------------------------------
-- 狼牙溜め(51F)
------------------------------------------------------
setDisp( spep_1, 0, 0);
setMoveKey( spep_1, 0, 0, 0, 0); --味方位置

-- ** エフェクト等 ** --
rouga = entryEffect( spep_1, SP_07, 0x100, 0, 1, 0, 90); --狼牙溜め
setEffShake( spep_1, rouga, 50, 7);

-- ** オーラ&集中線エフェクト ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffect( spep_1, 1502, 0x80, -1, 0, 0, 0); -- eff_003 (気)

--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え
]]--

-- ** 音 ** --
playSe( spep_1+5, SE_02);
playSe( spep_1+15, SE_03);


-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_1+12, 190006, 87, 0, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, -0.6, 0.6);


-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_2 = (spep_1+87);

------------------------------------------------------
-- カードカットイン(138F)
------------------------------------------------------
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_04);

spep_3 = (spep_2+90);

------------------------------------------------------
-- 狼牙風風拳がお(228F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_3, 0, 112, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep_3, 920, 112, 0x80, -1, 0, 0, 0); -- 流線

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 112, 0x80, -1, 0, 0, 0); -- 集中線

-- ** エフェクト等 ** --
rouga2 = entryEffect( spep_3+2, SP_08, 0x80, -1, 0, 0, 70); --狼牙突進
spname = entryEffect( spep_3-27, 1508, 0, -1, 0, 0, 0); -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4); -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3-27, spname, 0);
setEffAlphaKey( spep_3+1, spname, 0);
setEffAlphaKey( spep_3+2, spname, 255);

-- ** 書き文字エントリ ** --
zuo = entryEffectLife( spep_3+2, 10012, 35, 0, -1, 0, 100, 280); -- ズオ
setEffScaleKey( spep_3+2, zuo, 2.2, 2.2);
setEffScaleKey( spep_3+37, zuo, 2.2, 2.2);
setEffShake( spep_3+2, zuo, 35, 7);
setEffRotateKey( spep_3+2, zuo, 25);

-- ** 音 ** --
playSe( spep_3+2, SE_05);
seID = playSe( spep_3+81, SE_05);
playSe( spep_3+91, SE_06);


-- ** ホワイトフェード ** --
entryFade( spep_3+106, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = (spep_3+114);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 305; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 狼牙風風拳ダメージ(start342F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep_4, 921, 86, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- ** 書き文字エントリ ** --
baki2 = entryEffectLife( spep_4+1, 10020, 82, 0, -1, 0, 160, 30); -- バキッフレーム数仮
setEffAlphaKey( spep_4+1, baki2, 0);
setEffAlphaKey( spep_4+44, baki2, 0);
setEffAlphaKey( spep_4+45, baki2, 255);
setEffMoveKey( spep_4+45, baki2, 160, 30);
setEffScaleKey( spep_4+45, baki2, 0.6, 0.6);
setEffRotateKey( spep_4+45, baki2, -10);
---------------------------
setEffMoveKey( spep_4+46, baki2, 120, 165);
setEffScaleKey( spep_4+46, baki2, 2.3, 2.3);
setEffRotateKey( spep_4+46, baki2, -5);
setEffMoveKey( spep_4+47, baki2, 120, 165);
setEffScaleKey( spep_4+47, baki2, 2.3, 2.3);
setEffRotateKey( spep_4+47, baki2, -5);
setEffMoveKey( spep_4+48, baki2, 65, 220);
setEffScaleKey( spep_4+48, baki2, 3.2, 3.2);
setEffRotateKey( spep_4+48, baki2, -10);
setEffMoveKey( spep_4+49, baki2, 65, 220);
setEffScaleKey( spep_4+49, baki2, 3.2, 3.2);
setEffRotateKey( spep_4+49, baki2, -10);
setEffMoveKey( spep_4+50, baki2, 65, 210);
setEffScaleKey( spep_4+50, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+50, baki2, -10);
setEffMoveKey( spep_4+52, baki2, 65, 210);
setEffScaleKey( spep_4+52, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+52, baki2, -10);
setEffMoveKey( spep_4+53, baki2, 40, 220);
setEffScaleKey( spep_4+53, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+53, baki2, -10);
setEffMoveKey( spep_4+54, baki2, 70, 190);
setEffScaleKey( spep_4+54, baki2, 3.5, 3.5);
setEffRotateKey( spep_4+54, baki2, -10);
setEffScaleKey( spep_4+83, baki2, 4, 4);
---------------------
---------------------
baki = entryEffectLife( spep_4+11, 10020, 41, 0, -1, 0, 200, 30); -- バキッ
setEffMoveKey( spep_4+24, baki, 200, 60);
setEffScaleKey( spep_4+11, baki, 0.7, 0.7);
setEffScaleKey( spep_4+24, baki, 1, 1);
setEffShake( spep_4+11, baki, 13, 7);
---------------------------
setEffMoveKey( spep_4+25, baki, 140, -40);
setEffScaleKey( spep_4+25, baki, 0.7, 0.7);
setEffMoveKey( spep_4+26, baki, 140, -40);
setEffScaleKey( spep_4+26, baki, 0.7, 0.7);
setEffRotateKey( spep_4+25, baki, -35);
---------------------------
setEffMoveKey( spep_4+27, baki, 80, 45);
setEffScaleKey( spep_4+27, baki, 1.1, 1.1);
setEffMoveKey( spep_4+28, baki, 80, 45);
setEffScaleKey( spep_4+28, baki, 1.1, 1.1);
---------------------------
setEffMoveKey( spep_4+29, baki, 40, 85);
setEffScaleKey( spep_4+29, baki, 1.4, 1.4);
setEffMoveKey( spep_4+38, baki, 40, 85);
setEffScaleKey( spep_4+38, baki, 1.4, 1.4);
setEffShake( spep_4+29, baki, 9, 7);
setEffRotateKey( spep_4+38, baki, -35);
---------------------------
setEffMoveKey( spep_4+39, baki, 240, -25);
setEffScaleKey( spep_4+39, baki, 0.7, 0.7);
setEffRotateKey( spep_4+39, baki, 45);
setEffMoveKey( spep_4+40, baki, 240, -25);
setEffScaleKey( spep_4+40, baki, 0.7, 0.7);
---------------------------
setEffMoveKey( spep_4+41, baki, 260, 60);
setEffScaleKey( spep_4+41, baki, 1.4, 1.4);
setEffMoveKey( spep_4+42, baki, 260, 60);
setEffScaleKey( spep_4+42, baki, 1.4, 1.4);
---------------------------
setEffMoveKey( spep_4+43, baki, 245, 120);
setEffScaleKey( spep_4+43, baki, 2.2, 2.2);
setEffMoveKey( spep_4+44, baki, 245, 120);
setEffScaleKey( spep_4+44, baki, 2.2, 2.2);
---------------------------
setEffMoveKey( spep_4+45, baki, 250, 160);
setEffScaleKey( spep_4+45, baki, 2.4, 2.4);
setEffMoveKey( spep_4+52, baki, 250, 160);
setEffScaleKey( spep_4+52, baki, 2.4, 2.4);
setEffShake( spep_4+45, baki, 7, 7);
setEffRotateKey( spep_4+52, baki, 45);
---------------------------

-- ** 敵キャラ位置とサイズ、ポーズなど ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 104); --敵ガード
changeAnime( spep_4+7, 1, 106); --敵やられポーズ
setScaleKey( spep_4, 1, 1, 1); --敵のサイズ
setScaleKey( spep_4+5, 1, 1.4, 1.4); --敵のサイズ
setMoveKey( spep_4, 1, 400, 0, 0); --敵位置
setMoveKey( spep_4+5, 1, 10, 0, 0); --敵位置
setMoveKey( spep_4+13, 1, 100, 30, 0); --敵位置
setMoveKey( spep_4+14, 1, 100, 30, 0); --敵位置
setMoveKey( spep_4+15, 1, 100, -70, 0); --敵位置
setMoveKey( spep_4+16, 1, 100, -70, 0); --敵位置
setRotateKey( spep_4+16, 1, 0)	--敵の角度
setMoveKey( spep_4+22, 1, -35, 50, 0); --敵位置
setRotateKey( spep_4+22, 1, 20)	--敵の角度
setMoveKey( spep_4+23, 1, 80, -30, 0); --敵位置
setRotateKey( spep_4+23, 1, 0)	--敵の角度
setMoveKey( spep_4+24, 1, 80, -30, 0); --敵位置
setRotateKey( spep_4+24, 1, 0)	--敵の角度
setMoveKey( spep_4+28, 1, 120, 50, 0); --敵位置
setRotateKey( spep_4+28, 1, 20)	--敵の角度
setMoveKey( spep_4+29, 1, 120, 50, 0); --敵位置
setRotateKey( spep_4+29, 1, 20)	--敵の角度
setMoveKey( spep_4+30, 1, -80, -55, 0); --敵位置
setRotateKey( spep_4+30, 1, 0)	--敵の角度
setMoveKey( spep_4+37, 1, 110, 5, 0); --敵位置
setRotateKey( spep_4+37, 1, 10)	--敵の角度
setMoveKey( spep_4+38, 1, 110, 5, 0); --敵位置
setRotateKey( spep_4+38, 1, 10)	--敵の角度
setMoveKey( spep_4+39, 1, 70, -65, 0); --敵位置
setRotateKey( spep_4+39, 1, 0)	--敵の角度
setMoveKey( spep_4+40, 1, 70, -65, 0); --敵位置
setRotateKey( spep_4+40, 1, 0)	--敵の角度
setMoveKey( spep_4+45, 1, -60, 15, 0); --敵位置
setRotateKey( spep_4+45, 1, 20)	--敵の角度
setMoveKey( spep_4+46, 1, -60, -20, 0); --敵位置
setRotateKey( spep_4+46, 1, 0)	--敵の角度
setMoveKey( spep_4+53, 1, 20, 10, 0); --敵位置
setRotateKey( spep_4+53, 1, 20)	--敵の角度
setRotateKey( spep_4+46, 1, 0)	--敵の角度
setMoveKey( spep_4+56, 1, 20, 10, 0); --敵位置
setRotateKey( spep_4+56, 1, 20)	--敵の角度
setScaleKey( spep_4+56, 1, 1.4, 1.4); --敵のサイズ

changeAnime( spep_4+57, 1, 108); --敵やられポーズ
setMoveKey( spep_4+57, 1, 160, -15, 0); --敵位置
setRotateKey( spep_4+57, 1, 0);	--敵の角度
setScaleKey( spep_4+57, 1, 2, 2); --敵のサイズ
setScaleKey( spep_4+84, 1, 0.4, 0.4); --敵のサイズ
setMoveKey( spep_4+83, 1, 450, 120, 0); --敵位置ここで止まってる！
setMoveKey( spep_4+84, 1, 2000, 0, 0); --敵位置
setMoveKey( spep_4+90, 1, 2000, 0, 0); --敵位置

-- ** エフェクト等 ** --
rouga3 = entryEffect( spep_4, SP_03, 0x100, 0, 1, 0, 50); --狼牙ダメージ

-- ** 音 ** --
playSe( spep_4+7, SE_08);
playSe( spep_4+15, SE_07);
playSe( spep_4+29, SE_08);
playSe( spep_4+39, SE_07);
playSe( spep_4+57, SE_08);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = (spep_4+91);



------------------------------------------------------
-- 突き飛ばし(start433F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_5, 0, 60, 0, 0, 0, 0, 200); -- ベース暗め　背景


-- ** エフェクト等 ** --
tobashi = entryEffect( spep_5, SP_09, 0x100, -1, 0, 0, 20); --突き飛ばし

okushuchusen = entryEffectLife( spep_5, 924, 60, 0x80, -1, 0, -10,-180);   -- 奥行き線
setEffScaleKey( spep_5, okushuchusen, 1.3, 1);
setEffRotateKey( spep_5, okushuchusen, -70);


-- ** 敵キャラの動き ** --
changeAnime( spep_5, 1, 108); --敵やられポーズ
setMoveKey( spep_5, 1, 90, 130, 0); 
setScaleKey( spep_5, 1, 1, 1); --敵のサイズ
setRotateKey( spep_5, 1, -5);	--敵の角度
setMoveKey( spep_5+50, 1, 260, 400, 0); 
setScaleKey( spep_5+50, 1, 0.5, 0.5); --敵のサイズ
setMoveKey( spep_5+57, 1, 260, 400, 0); 
setScaleKey( spep_5+57, 1, 0.4, 0.4); --敵のサイズ
setRotateKey( spep_5+57, 1, -5);	--敵の角度
setShakeChara( spep_5, 1, 57, 20);

-- ** 書き文字エントリ ** --
don = entryEffectLife( spep_5, 10019, 44, 0x100, -1, 0, -60, 180); -- ドン
setEffScaleKey( spep_5, don, 2, 2);
setEffRotateKey( spep_5, don, 45);

setEffScaleKey( spep_5+4, don, 2, 2);
setEffScaleKey( spep_5+5, don, 2.2, 2.2);
setEffScaleKey( spep_5+6, don, 2.2, 2.2);
setEffScaleKey( spep_5+7, don, 2, 2);
setEffScaleKey( spep_5+8, don, 2, 2);
setEffScaleKey( spep_5+9, don, 2.2, 2.2);
setEffScaleKey( spep_5+10, don, 2.2, 2.2);
setEffScaleKey( spep_5+11, don, 2, 2);
setEffScaleKey( spep_5+12, don, 2, 2);
setEffScaleKey( spep_5+13, don, 2.2, 2.2);
setEffScaleKey( spep_5+14, don, 2.2, 2.2);
setEffScaleKey( spep_5+15, don, 2, 2);
setEffScaleKey( spep_5+16, don, 2, 2);
setEffScaleKey( spep_5+17, don, 2.2, 2.2);
setEffScaleKey( spep_5+18, don, 2.2, 2.2);
setEffScaleKey( spep_5+19, don, 2, 2);
setEffScaleKey( spep_5+20, don, 2, 2);
setEffScaleKey( spep_5+21, don, 2.2, 2.2);
setEffScaleKey( spep_5+22, don, 2.2, 2.2);
setEffScaleKey( spep_5+23, don, 2, 2);
setEffScaleKey( spep_5+24, don, 2, 2);
setEffScaleKey( spep_5+25, don, 2.2, 2.2);
setEffScaleKey( spep_5+26, don, 2.2, 2.2);
setEffScaleKey( spep_5+27, don, 2, 2);
setEffScaleKey( spep_5+28, don, 2, 2);
setEffScaleKey( spep_5+29, don, 2.2, 2.2);
setEffScaleKey( spep_5+30, don, 2.2, 2.2);
setEffScaleKey( spep_5+31, don, 2, 2);
setEffScaleKey( spep_5+32, don, 2, 2);
setEffScaleKey( spep_5+33, don, 2.2, 2.2);
setEffScaleKey( spep_5+34, don, 2.2, 2.2);
setEffScaleKey( spep_5+35, don, 2, 2);
setEffScaleKey( spep_5+36, don, 2, 2);
setEffScaleKey( spep_5+37, don, 2.2, 2.2);
setEffScaleKey( spep_5+38, don, 2.2, 2.2);
setEffScaleKey( spep_5+39, don, 2, 2);
setEffScaleKey( spep_5+40, don, 2, 2);
setEffScaleKey( spep_5+41, don, 2.2, 2.2);
setEffScaleKey( spep_5+42, don, 2.2, 2.2);
setEffScaleKey( spep_5+43, don, 2, 2);
setEffScaleKey( spep_5+44, don, 2, 2);

-- ** 音 ** --
playSe( spep_5+1, SE_07);
playSe( spep_5+15, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_5+52, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_6 = (spep_5+60);

------------------------------------------------------
-- トス(start493F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** エフェクト等 ** --
tosu1 = entryEffect( spep_6, SP_10, 0x80, -1, 0, 0, 0); --狼牙突進
tosu2 = entryEffect( spep_6, SP_10, 0x100, -1, 0, 0, 0); --狼牙突進
setEffAlphaKey( spep_6, tosu2, 0);
setEffAlphaKey( spep_6+64, tosu2, 0);
setEffAlphaKey( spep_6+65, tosu2, 255);
setEffAlphaKey( spep_6+87, tosu2, 255);
setEffAlphaKey( spep_6, tosu1, 255);
setEffAlphaKey( spep_6+64, tosu1, 255);
setEffAlphaKey( spep_6+65, tosu1, 0);
setEffAlphaKey( spep_6+87, tosu1, 0);


-- ** 集中線 ** --
entryEffectLife( spep_6, 906, 65, 0x100, -1, 0, 0, 0); -- 集中線

okushuchusen2 = entryEffectLife( spep_6+65, 924, 22, 0x100, -1, 0, 455, 300);   -- 奥行き線
setEffScaleKey( spep_6, okushuchusen2, 1.3, 1.3);
setEffRotateKey( spep_6, okushuchusen2, 150);



-- ** 書き文字エントリ ** --
zudodo = entryEffectLife( spep_6, 10014, 64, 0x100, -1, 0, 180, 100); -- ズドドド
setEffRotateKey( spep_6, zudodo, -50);
setEffScaleKey( spep_6, zudodo, 1, 1);
setEffScaleKey( spep_6+64, zudodo, 1.5, 1.5);

setEffMoveKey( spep_6+1, zudodo, 180, 100);
setEffMoveKey( spep_6+2, zudodo, 170, 110);
setEffMoveKey( spep_6+3, zudodo, 170, 110);
setEffMoveKey( spep_6+4, zudodo, 180, 100);
setEffMoveKey( spep_6+5, zudodo, 180, 100);
setEffMoveKey( spep_6+6, zudodo, 170, 110);
setEffMoveKey( spep_6+7, zudodo, 170, 110);
setEffMoveKey( spep_6+8, zudodo, 180, 100);
setEffMoveKey( spep_6+9, zudodo, 180, 100);
setEffMoveKey( spep_6+10, zudodo, 170, 110);
setEffMoveKey( spep_6+11, zudodo, 170, 110);
setEffMoveKey( spep_6+12, zudodo, 180, 100);
setEffMoveKey( spep_6+13, zudodo, 180, 100);
setEffMoveKey( spep_6+14, zudodo, 170, 110);
setEffMoveKey( spep_6+15, zudodo, 170, 110);
setEffMoveKey( spep_6+16, zudodo, 180, 100);
setEffMoveKey( spep_6+17, zudodo, 180, 100);
setEffMoveKey( spep_6+18, zudodo, 170, 110);
setEffMoveKey( spep_6+19, zudodo, 170, 110);
setEffMoveKey( spep_6+20, zudodo, 180, 100);
setEffMoveKey( spep_6+21, zudodo, 180, 100);
setEffMoveKey( spep_6+22, zudodo, 170, 110);
setEffMoveKey( spep_6+23, zudodo, 170, 110);
setEffMoveKey( spep_6+24, zudodo, 180, 100);
setEffMoveKey( spep_6+25, zudodo, 180, 100);
setEffMoveKey( spep_6+26, zudodo, 170, 110);
setEffMoveKey( spep_6+27, zudodo, 170, 110);
setEffMoveKey( spep_6+28, zudodo, 180, 100);
setEffMoveKey( spep_6+29, zudodo, 180, 100);
setEffMoveKey( spep_6+30, zudodo, 170, 110);
setEffMoveKey( spep_6+31, zudodo, 170, 110);
setEffMoveKey( spep_6+32, zudodo, 180, 100);
setEffMoveKey( spep_6+33, zudodo, 180, 100);
setEffMoveKey( spep_6+34, zudodo, 170, 110);
setEffMoveKey( spep_6+35, zudodo, 170, 110);
setEffMoveKey( spep_6+36, zudodo, 180, 100);
setEffMoveKey( spep_6+37, zudodo, 180, 100);
setEffMoveKey( spep_6+38, zudodo, 170, 110);
setEffMoveKey( spep_6+39, zudodo, 170, 110);
setEffMoveKey( spep_6+40, zudodo, 180, 100);
setEffMoveKey( spep_6+41, zudodo, 180, 100);
setEffMoveKey( spep_6+42, zudodo, 170, 110);
setEffMoveKey( spep_6+43, zudodo, 170, 110);
setEffMoveKey( spep_6+44, zudodo, 180, 100);
setEffMoveKey( spep_6+45, zudodo, 180, 100);
setEffMoveKey( spep_6+46, zudodo, 170, 110);
setEffMoveKey( spep_6+47, zudodo, 170, 110);
setEffMoveKey( spep_6+48, zudodo, 180, 100);
setEffMoveKey( spep_6+49, zudodo, 180, 100);
setEffMoveKey( spep_6+50, zudodo, 170, 110);
setEffMoveKey( spep_6+51, zudodo, 170, 110);
setEffMoveKey( spep_6+52, zudodo, 180, 100);
setEffMoveKey( spep_6+53, zudodo, 180, 100);
setEffMoveKey( spep_6+54, zudodo, 170, 110);
setEffMoveKey( spep_6+55, zudodo, 170, 110);
setEffMoveKey( spep_6+56, zudodo, 180, 100);
setEffMoveKey( spep_6+57, zudodo, 180, 100);
setEffMoveKey( spep_6+58, zudodo, 170, 110);
setEffMoveKey( spep_6+59, zudodo, 170, 110);
setEffMoveKey( spep_6+60, zudodo, 180, 100);
setEffMoveKey( spep_6+61, zudodo, 180, 100);
setEffMoveKey( spep_6+62, zudodo, 170, 110);
setEffMoveKey( spep_6+63, zudodo, 170, 110);
setEffMoveKey( spep_6+64, zudodo, 180, 100);


-- ** 敵キャラの動き ** --
setMoveKey( spep_6, 1, -500, 800, 0); 
setScaleKey( spep_6, 1, 2.2, 2.2); --敵のサイズ
setRotateKey( spep_6, 1, 20);	--敵の角度
setMoveKey( spep_6+20, 1, 10, 205, 0);
setScaleKey( spep_6+20, 1, 1.5, 1.5); --敵のサイズ
setRotateKey( spep_6+20, 1, 20);	--敵の角度
setMoveKey( spep_6+64, 1, 10, 205, 0);
setScaleKey( spep_6+64, 1, 1.5, 1.5); --敵のサイズ
setRotateKey( spep_6+64, 1, 20);	--敵の角度
setShakeChara( spep_6+20, 1, 45, 20);

setMoveKey( spep_6+65, 1, 100, 130, 0);
setRotateKey( spep_6+65, 1, 60);	--敵の角度
setMoveKey( spep_6+87, 1, 550, 600, 0);
setRotateKey( spep_6+87, 1, 60);	--敵の角度
setScaleKey( spep_6+87, 1, 2.2, 2.2); --敵のサイズ

-- ** 音 ** --
--playSe( spep_6+3, SE_09);
playSe( spep_6+65, SE_07);

--[[
playSe( spep_6, SE_13);
playSe( spep_6+10, SE_13);
playSe( spep_6+20, SE_13);
playSe( spep_6+30, SE_13);
playSe( spep_6+40, SE_13);
playSe( spep_6+50, SE_13);
playSe( spep_6+60, SE_13);
]]
--4.11調整
SE001 = playSe( spep_6, SE_13);
stopSe(spep_6+20,SE001,5);
SE002 = playSe( spep_6+10, SE_13);
stopSe(spep_6+30,SE002,5);
SE003 = playSe( spep_6+20, SE_13);
stopSe(spep_6+40,SE003,5);
SE004 = playSe( spep_6+30, SE_13);
stopSe(spep_6+50,SE004,5);
SE005 = playSe( spep_6+40, SE_13);
stopSe(spep_6+60,SE005,5);
SE006 = playSe( spep_6+50, SE_13);
stopSe(spep_6+70,SE006,5);
SE007 = playSe( spep_6+60, SE_13);

-- ** ホワイトフェード ** --
entryFade( spep_6+80, 5, 12, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_7 = (spep_6+88);

------------------------------------------------------
-- アタック(start581F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 107, 0, 0, 0, 0, 200); -- ベース暗め　背景

sen = entryEffectLife( spep_7, 921, 107, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen, 45);
setEffScaleKey( spep_7, sen, 1.6, 1.6);

okushuchusen2 = entryEffectLife( spep_7+57, 924, 50, 0x80, -1, 0, 260,-330);   -- 奥行き線
setEffScaleKey( spep_7+57, okushuchusen2, 1.5, 1.5);
setEffRotateKey( spep_7+57, okushuchusen2, -125);


-- ** エフェクト等 ** --
attack1 = entryEffect( spep_7, SP_11, 0x80, -1, 0, 0, 0); --狼牙突進
attack2 = entryEffect( spep_7, SP_11, 0x100, -1, 0, 0, 0); --狼牙突進

setEffAlphaKey( spep_7, attack2, 0);
setEffAlphaKey( spep_7+56, attack2, 0);
setEffAlphaKey( spep_7+57, attack2, 255);
setEffAlphaKey( spep_7+66, attack2, 255);
setEffAlphaKey( spep_7+67, attack2, 0);
setEffAlphaKey( spep_7+107, attack2, 0);
setEffAlphaKey( spep_7, attack1, 255);
setEffAlphaKey( spep_7+56, attack1, 255);
setEffAlphaKey( spep_7+57, attack1, 0);
setEffAlphaKey( spep_7+66, attack1, 0);
setEffAlphaKey( spep_7+67, attack1, 255);
setEffAlphaKey( spep_7+107, attack1, 255);


-- ** 敵キャラの動き ** --
setRotateKey( spep_7, 1, 60);	--敵の角度
setRotateKey( spep_7+56, 1, 60);	--敵の角度
setScaleKey( spep_7, 1, 1.5, 1.5); --敵のサイズ
setMoveKey( spep_7, 1, 100, -800, 0);
setMoveKey( spep_7+56, 1, 50, 0, 0);
setScaleKey( spep_7+56, 1, 1.5, 1.5); --敵のサイズ

setMoveKey( spep_7+57, 1, 130, -30, 0);
changeAnime( spep_7+57, 1, 107); --敵やられポーズ
setScaleKey( spep_7+57, 1, 0.5, 0.5); --敵のサイズ
setRotateKey( spep_7+57, 1, -5);	--敵の角度
setMoveKey( spep_7+107, 1, 250, -400, 0);
setScaleKey( spep_7+107, 1, 1.3, 1.3); --敵のサイズ
setRotateKey( spep_7+107, 1, -5);	--敵の角度
setShakeChara( spep_7+57, 1, 50, 15);


-- ** 書き文字エントリ ** --
bago = entryEffectLife( spep_7+57, 10021, 50, 0x100, -1, 0, 200, 400); -- バゴォッ
setEffRotateKey( spep_7+57, bago, 25);
setEffScaleKey( spep_7+57, bago, 2.7, 2.7);

setEffMoveKey( spep_7+58, bago, 200, 400);
setEffMoveKey( spep_7+59, bago, 215, 400);
setEffMoveKey( spep_7+60, bago, 215, 400);
setEffMoveKey( spep_7+61, bago, 200, 400);
setEffMoveKey( spep_7+62, bago, 200, 400);
setEffMoveKey( spep_7+63, bago, 215, 400);
setEffMoveKey( spep_7+64, bago, 215, 400);
setEffMoveKey( spep_7+65, bago, 200, 400);
setEffMoveKey( spep_7+66, bago, 200, 400);
setEffMoveKey( spep_7+67, bago, 215, 400);
setEffMoveKey( spep_7+68, bago, 215, 400);
setEffMoveKey( spep_7+69, bago, 200, 400);
setEffMoveKey( spep_7+70, bago, 200, 400);
setEffMoveKey( spep_7+71, bago, 215, 400);
setEffMoveKey( spep_7+72, bago, 215, 400);
setEffMoveKey( spep_7+73, bago, 200, 400);
setEffMoveKey( spep_7+74, bago, 200, 400);
setEffMoveKey( spep_7+75, bago, 215, 400);
setEffMoveKey( spep_7+76, bago, 215, 400);
setEffMoveKey( spep_7+77, bago, 200, 400);
setEffMoveKey( spep_7+78, bago, 200, 400);
setEffMoveKey( spep_7+79, bago, 215, 400);
setEffMoveKey( spep_7+80, bago, 215, 400);
setEffMoveKey( spep_7+81, bago, 200, 400);
setEffMoveKey( spep_7+82, bago, 200, 400);
setEffMoveKey( spep_7+83, bago, 215, 400);
setEffMoveKey( spep_7+84, bago, 215, 400);
setEffMoveKey( spep_7+85, bago, 200, 400);
setEffMoveKey( spep_7+86, bago, 200, 400);
setEffMoveKey( spep_7+87, bago, 215, 400);
setEffMoveKey( spep_7+88, bago, 215, 400);
setEffMoveKey( spep_7+89, bago, 200, 400);
setEffMoveKey( spep_7+90, bago, 200, 400);
setEffMoveKey( spep_7+91, bago, 215, 400);
setEffMoveKey( spep_7+92, bago, 215, 400);
setEffMoveKey( spep_7+93, bago, 200, 400);
setEffMoveKey( spep_7+94, bago, 200, 400);
setEffMoveKey( spep_7+95, bago, 215, 400);
setEffMoveKey( spep_7+96, bago, 215, 400);
setEffMoveKey( spep_7+97, bago, 200, 400);
setEffMoveKey( spep_7+98, bago, 200, 400);
setEffMoveKey( spep_7+99, bago, 215, 400);
setEffMoveKey( spep_7+100, bago, 215, 400);
setEffMoveKey( spep_7+101, bago, 200, 400);
setEffMoveKey( spep_7+102, bago, 200, 400);
setEffMoveKey( spep_7+103, bago, 215, 400);
setEffMoveKey( spep_7+104, bago, 215, 400);
setEffMoveKey( spep_7+105, bago, 200, 400);
setEffMoveKey( spep_7+106, bago, 200, 400);
setEffMoveKey( spep_7+107, bago, 215, 400);

-- ** 音 ** --
playSe( spep_7+10, SE_09);
playSe( spep_7+57, SE_10);


-- ** ホワイトフェード ** --
entryFade( spep_7+100, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_8 = (spep_7+113);

------------------------------------------------------
-- 爆発 (694F)
------------------------------------------------------

setDisp( spep_8-1, 1, 0);
setDisp( spep_8, 1, 1);
setDisp( spep_8, 0, 0); --味方非表示
setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_8-1, 1, 100, 0, 0);
setScaleKey( spep_8-1, 1, 1.0, 1.0);
setMoveKey(  spep_8, 1, 0, 0, 128);
setScaleKey( spep_8, 1, 0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_8+8, SE_11);

setMoveKey( spep_8+8, 1, 0, 0, 128); --478
setMoveKey( spep_8+15, 1, -60, -200, -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+7, 6, 15);
setShake( spep_8+13, 15, 10);

setRotateKey( spep_8, 1, 30 );
setRotateKey( spep_8+2, 1, 80 );
setRotateKey( spep_8+4, 1, 120 );
setRotateKey( spep_8+6, 1, 160 );
setRotateKey( spep_8+8, 1, 200 );
setRotateKey( spep_8+10, 1, 260 );
setRotateKey( spep_8+12, 1, 320 );
setRotateKey( spep_8+14, 1, 0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_12);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_8+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_8+16);

entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade

endPhase( spep_8+110);

end