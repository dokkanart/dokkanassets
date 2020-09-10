--人造人間17号_超電圧爆裂斬
print ("[lua]sp0376");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SE_01 = 1018; --セリフカットイン
SE_02 = 1043; --ビリビリ
SE_03 = 1035; --カードカットイン
SE_04 = 1021; --溜め
SE_05 = 1022; --発射
SE_06 = 1024; --ギャン音(つかう)
SE_07 = 1055; --あたり音
--SE_07 = 1023; --あたり音
SE_08 = 1023; --爆破

SP_01 = 150637; --溜め
SP_02 = 150639; --帯電
SP_03 = 150641; --帯電構え
SP_04 = 150643; --放つ
SP_05 = 150645; --ヒット

SP_06 = 150638; --溜め(敵用)
SP_07 = 150640; --帯電(敵用)
SP_08 = 150642; --帯電構え(敵用)
SP_09 = 150644; --放つ(敵用)

SP_10 = 190011; --ギャン(黄緑)


multi_frm = 2;


------------------------------------------------------
-- 気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 103, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラの動き ** --
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen = entryEffectLife( 10, 906, 93, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 17, shuchusen, 0, 0, 0);
setEffScaleKey( 17, shuchusen, 1, 1);
setEffAlphaKey( 10, shuchusen, 0);
setEffAlphaKey( 16, shuchusen, 0);
setEffAlphaKey( 17, shuchusen, 255);
setEffRotateKey( 17, shuchusen, 0);

-- ** エフェクト等 ** --
kidame = entryEffectLife( 0, SP_01, 103, 0x100, -1, 0, 0, 0); --溜め
setEffMoveKey( 0, kidame, 0, 0, 0);
setEffScaleKey( 0, kidame, 1.0, 1.0);
setEffAlphaKey( 0, kidame, 255);
setEffRotateKey( 0, kidame, 0);
setEffShake( 17, kidame, 87, 10);

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( 30, 190006, 73, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( 30, gogogo, 0.7, 0.7);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 16, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 16, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** ホワイトフェード ** --
entryFade( 17, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( 95, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( 15, SE_01);

spep_1 = 104;


------------------------------------------------------
-- 帯電(104F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 128, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
taiden = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --帯電
setEffMoveKey( spep_1, taiden, 0, 0, 0);
setEffScaleKey( spep_1, taiden, 1.0, 1.0);
setEffAlphaKey( spep_1, taiden, 255);
setEffRotateKey( spep_1, taiden, 0);
setEffShake( spep_1+49, taiden, 80, 10);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 128, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.8, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

-- ** 書き文字エントリー ** --
zuo = entryEffectLife( spep_1+50, 10012, 89, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffMoveKey( spep_1+50,zuo, 100, 250);
setEffMoveKey( spep_1+54,zuo, 100, 350);
setEffMoveKey( spep_1+79,zuo, 100, 350);
setEffMoveKey( spep_1+87,zuo, 160, 380);
setEffScaleKey( spep_1+50, zuo, 0.5, 0.5);
setEffScaleKey( spep_1+54, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+79, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+87, zuo, 5.2, 5.2);
setEffRotateKey( spep_1+50, zuo, 20);
setEffAlphaKey( spep_1+50, zuo, 255);
setEffAlphaKey( spep_1+79, zuo, 255);
setEffShake( spep_1+50, zuo, 37, 20);
setEffAlphaKey( spep_1+87, zuo, 0);


-- ** ホワイトフェード ** --
entryFade( spep_1+16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+46, 0, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+121, 5, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_1+51, SE_02);

spep_2 = ( spep_1+129);

------------------------------------------------------
-- カードカットイン(233F)
------------------------------------------------------

speff2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = ( spep_2+92);

------------------------------------------------------
-- 帯電構え(325F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
taiden2 = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --帯電構え
setEffMoveKey( spep_3, taiden2, 0, 0, 0);
setEffScaleKey( spep_3, taiden2, 1.0, 1.0);
setEffAlphaKey( spep_3, taiden2, 255);
setEffRotateKey( spep_3, taiden2, 0);
setEffShake( spep_3, taiden2, 109, 10);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.8, 1.5);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+101, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+2, SE_01);
--playSe( spep_3+22, SE_04);

spep_4 = ( spep_3+110);

------------------------------------------------------
-- 放つ(435F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 116, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hanatu = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --放つ
setEffMoveKey( spep_4, hanatu, 0, 0, 0);
setEffScaleKey( spep_4, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_4, hanatu, 255);
setEffRotateKey( spep_4, hanatu, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.8, 1.5);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 116, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -45);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_4+11, 10014, 105, 0x100, -1, 0, -155, 300);    -- ズドド
setEffShake( spep_4+11, zudodo, 116, 12);
setEffScaleKey( spep_4+11, zudodo, 2.5, 2.5);
setEffRotateKey( spep_4+11, zudodo, 0);
setEffAlphaKey( spep_4+11, zudodo, 255);



-- ** キャラクター ** --
setDisp( spep_4+30, 1, 1); --敵表示
changeAnime( spep_4+30, 1, 100); --敵モーション
setRotateKey( spep_4+30, 1, 0); --敵角度
setMoveKey( spep_4+30, 1, 490, 320, 0); --敵位置
setMoveKey( spep_4+44, 1, 180, 100, 0); --敵位置
setScaleKey( spep_4+30, 1, 1.2, 1.2);
setScaleKey( spep_4+44, 1, 1.6, 1.6);
setScaleKey( spep_4+200, 1, 1.6, 1.6);
setRotateKey( spep_4+46, 1, 0); --敵角度
changeAnime( spep_4+47, 1, 108); --敵モーション
setRotateKey( spep_4+47, 1, 0); --敵角度
setRotateKey( spep_4+49, 1, 0); --敵角度
setRotateKey( spep_4+50, 1, -20); --敵角度
setRotateKey( spep_4+52, 1, -20); --敵角度
setRotateKey( spep_4+53, 1, 0); --敵角度
setRotateKey( spep_4+55, 1, 0); --敵角度
setRotateKey( spep_4+56, 1, -20); --敵角度
setRotateKey( spep_4+58, 1, -20); --敵角度
setRotateKey( spep_4+59, 1, 0); --敵角度
setRotateKey( spep_4+61, 1, 0); --敵角度
setRotateKey( spep_4+62, 1, -20); --敵角度
setRotateKey( spep_4+64, 1, -20); --敵角度
setRotateKey( spep_4+65, 1, 0); --敵角度
setRotateKey( spep_4+67, 1, 0); --敵角度
setRotateKey( spep_4+68, 1, -20); --敵角度
setRotateKey( spep_4+70, 1, -20); --敵角度
setRotateKey( spep_4+71, 1, 0); --敵角度
setRotateKey( spep_4+73, 1, 0); --敵角度
setRotateKey( spep_4+74, 1, -20); --敵角度
setRotateKey( spep_4+76, 1, -20); --敵角度
setRotateKey( spep_4+77, 1, 0); --敵角度
setRotateKey( spep_4+79, 1, 0); --敵角度
setRotateKey( spep_4+80, 1, -20); --敵角度
setRotateKey( spep_4+82, 1, -20); --敵角度
setRotateKey( spep_4+83, 1, 0); --敵角度
setRotateKey( spep_4+85, 1, 0); --敵角度
setRotateKey( spep_4+86, 1, -20); --敵角度
setRotateKey( spep_4+88, 1, -20); --敵角度
setRotateKey( spep_4+89, 1, 0); --敵角度
setRotateKey( spep_4+91, 1, 0); --敵角度
setRotateKey( spep_4+92, 1, -20); --敵角度
setRotateKey( spep_4+94, 1, -20); --敵角度
setRotateKey( spep_4+95, 1, 0); --敵角度
setRotateKey( spep_4+97, 1, 0); --敵角度
setRotateKey( spep_4+98, 1, -20); --敵角度
setRotateKey( spep_4+100, 1, -20); --敵角度
setRotateKey( spep_4+101, 1, 0); --敵角度
setRotateKey( spep_4+103, 1, 0); --敵角度
setRotateKey( spep_4+104, 1, -20); --敵角度
setRotateKey( spep_4+106, 1, -20); --敵角度
setRotateKey( spep_4+107, 1, 0); --敵角度
setRotateKey( spep_4+109, 1, 0); --敵角度
setRotateKey( spep_4+110, 1, -20); --敵角度
setRotateKey( spep_4+112, 1, -20); --敵角度
setRotateKey( spep_4+113, 1, 0); --敵角度
setRotateKey( spep_4+115, 1, 0); --敵角度
setRotateKey( spep_4+116, 1, -20); --敵角度
setRotateKey( spep_4+118, 1, -20); --敵角度
--[[
setRotateKey( spep_4+119, 1, 0); --敵角度
setRotateKey( spep_4+121, 1, 0); --敵角度
setRotateKey( spep_4+122, 1, -20); --敵角度
setRotateKey( spep_4+124, 1, -20); --敵角度
setRotateKey( spep_4+125, 1, 0); --敵角度
setRotateKey( spep_4+127, 1, 0); --敵角度
setRotateKey( spep_4+128, 1, -20); --敵角度
setRotateKey( spep_4+130, 1, -20); --敵角度
setRotateKey( spep_4+131, 1, 0); --敵角度
setRotateKey( spep_4+133, 1, 0); --敵角度
setRotateKey( spep_4+134, 1, -20); --敵角度
setRotateKey( spep_4+136, 1, -20); --敵角度
setRotateKey( spep_4+137, 1, 0); --敵角度
setRotateKey( spep_4+139, 1, 0); --敵角度
setRotateKey( spep_4+140, 1, -20); --敵角度
setRotateKey( spep_4+142, 1, -20); --敵角度
]]--
setDisp( spep_4+114, 1, 0); --敵非表示



-- ** 音 ** --435oooo
playSe( spep_4+15, SE_05);
playSe( spep_4+44, SE_07);
playSe( spep_4+66, SE_07);
playSe( spep_4+82, SE_07);
playSe( spep_4+104, SE_07);


-- ** ホワイトフェード ** --
entryFade( spep_4+9, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_4+44, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_4+66, 0, 3, 2, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+82, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
--entryFade( spep_4+99, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
--entryFade( spep_4+116, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+104, 10, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = ( spep_4+117);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 468; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- ギャン(552Fから)
------------------------------------------------------
-- ** ギャンエフェクト ** --
gyan = entryEffect( spep_5, SP_10, 0x80, -1,  0,  0,  0);   -- ギャン

-- ** 書き文字エントリー ** --
gyantext = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffScaleKey( spep_5, gyantext, 0.1, 0.1);
setEffScaleKey( spep_5+30, gyantext, 3.4, 3.4);
setEffScaleKey( spep_5+54, gyantext, 3.8, 3.8);
setEffAlphaKey( spep_5, gyantext, 255);
setEffAlphaKey( spep_5+50, gyantext, 255);
setEffAlphaKey( spep_5+54, gyantext, 0);
setEffShake( spep_5, gyantext, 99, 20);

-- ** 音 ** --
playSe( spep_5, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_5+50, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( spep_5+54);

spep_6 = ( spep_5+60);

------------------------------------------------------
-- ヒット(612Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 137, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hit = entryEffect( spep_6, SP_05, 0x100, -1, 0, 0, 0); --ヒット
setEffMoveKey( spep_6, hit, 0, 0, 0);
setEffScaleKey( spep_6, hit, 1.0, 1.0);
setEffAlphaKey( spep_6, hit, 255);
setEffRotateKey( spep_6, hit, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 137, 0x100,  -1, 0,  0,  0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 2, 1.7);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);


-- ** 音 ** --
playSe( spep_6+5, SE_08);
playSe( spep_6+20, SE_02);
playSe( spep_6+40, SE_07);
playSe( spep_6+60, SE_02);
playSe( spep_6+80, SE_07);
playSe( spep_6+100, SE_02);
playSe( spep_6+120, SE_07);


-- ダメージ表示
dealDamage( spep_6+50);
--entryFade( spep_6+127, 10, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_6+160 -30);


else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 103, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラの動き ** --
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen = entryEffectLife( 17, 906, 93, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 17, shuchusen, 0, 0, 0);
setEffScaleKey( 17, shuchusen, 1, 1);
--setEffAlphaKey( 10, shuchusen, 0);
--setEffAlphaKey( 16, shuchusen, 0);
setEffAlphaKey( 17, shuchusen, 255);
setEffRotateKey( 17, shuchusen, 0);

-- ** エフェクト等 ** --
kidame = entryEffectLife( 0, SP_06, 103, 0x100, -1, 0, 0, 0); --溜め
setEffMoveKey( 0, kidame, 0, 0, 0);
setEffScaleKey( 0, kidame, 1.0, 1.0);
setEffAlphaKey( 0, kidame, 255);
setEffRotateKey( 0, kidame, 0);
setEffShake( 17, kidame, 87, 10);

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( 30, 190006, 73, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( 30, gogogo, -0.7, 0.7);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 16, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 16, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** ホワイトフェード ** --
entryFade( 17, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( 95, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( 15, SE_01);

spep_1 = 104;


------------------------------------------------------
-- 帯電(104F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 128, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
taiden = entryEffect( spep_1, SP_07, 0x100, -1, 0, 0, 0); --帯電
setEffMoveKey( spep_1, taiden, 0, 0, 0);
setEffScaleKey( spep_1, taiden, 1.0, 1.0);
setEffAlphaKey( spep_1, taiden, 255);
setEffRotateKey( spep_1, taiden, 0);
setEffShake( spep_1+49, taiden, 80, 10);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 128, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.8, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

-- ** 書き文字エントリー ** --
zuo = entryEffectLife( spep_1+50, 10012, 89, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffMoveKey( spep_1+50,zuo, 100, 250);
setEffMoveKey( spep_1+54,zuo, 100, 350);
setEffMoveKey( spep_1+79,zuo, 100, 350);
setEffMoveKey( spep_1+87,zuo, 160, 380);
setEffScaleKey( spep_1+50, zuo, 0.5, 0.5);
setEffScaleKey( spep_1+54, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+79, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+87, zuo, 5.2, 5.2);
setEffRotateKey( spep_1+50, zuo, 20);
setEffAlphaKey( spep_1+50, zuo, 255);
setEffAlphaKey( spep_1+79, zuo, 255);
setEffShake( spep_1+50, zuo, 37, 20);
setEffAlphaKey( spep_1+87, zuo, 0);


-- ** ホワイトフェード ** --
entryFade( spep_1+16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+46, 0, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+121, 5, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_1+51, SE_02);

spep_2 = ( spep_1+129);

------------------------------------------------------
-- カードカットイン(233F)
------------------------------------------------------

speff2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = ( spep_2+92);

------------------------------------------------------
-- 帯電構え(325F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
taiden2 = entryEffect( spep_3, SP_08, 0x100, -1, 0, 0, 0); --帯電構え
setEffMoveKey( spep_3, taiden2, 0, 0, 0);
setEffScaleKey( spep_3, taiden2, 1.0, 1.0);
setEffAlphaKey( spep_3, taiden2, 255);
setEffRotateKey( spep_3, taiden2, 0);
setEffShake( spep_3, taiden2, 109, 10);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.8, 1.5);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+101, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+2, SE_01);
--playSe( spep_3+22, SE_04);

spep_4 = ( spep_3+110);

------------------------------------------------------
-- 放つ(435F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 116, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hanatu = entryEffect( spep_4, SP_09, 0x100, -1, 0, 0, 0); --放つ
setEffMoveKey( spep_4, hanatu, 0, 0, 0);
setEffScaleKey( spep_4, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_4, hanatu, 255);
setEffRotateKey( spep_4, hanatu, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.8, 1.5);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 116, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -45);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_4+11, 10014, 105, 0x100, -1, 0, -155, 300);    -- ズドド
setEffShake( spep_4+11, zudodo, 116, 12);
setEffScaleKey( spep_4+11, zudodo, 2.5, 2.5);
setEffRotateKey( spep_4+11, zudodo, 0);
setEffAlphaKey( spep_4+11, zudodo, 255);



-- ** キャラクター ** --
setDisp( spep_4+30, 1, 1); --敵表示
changeAnime( spep_4+30, 1, 100); --敵モーション
setRotateKey( spep_4+30, 1, 0); --敵角度
setMoveKey( spep_4+30, 1, 490, 320, 0); --敵位置
setMoveKey( spep_4+44, 1, 180, 100, 0); --敵位置
setScaleKey( spep_4+30, 1, 1.2, 1.2);
setScaleKey( spep_4+44, 1, 1.6, 1.6);
setScaleKey( spep_4+200, 1, 1.6, 1.6);
setRotateKey( spep_4+46, 1, 0); --敵角度
changeAnime( spep_4+47, 1, 108); --敵モーション
setRotateKey( spep_4+47, 1, 0); --敵角度
setRotateKey( spep_4+49, 1, 0); --敵角度
setRotateKey( spep_4+50, 1, -20); --敵角度
setRotateKey( spep_4+52, 1, -20); --敵角度
setRotateKey( spep_4+53, 1, 0); --敵角度
setRotateKey( spep_4+55, 1, 0); --敵角度
setRotateKey( spep_4+56, 1, -20); --敵角度
setRotateKey( spep_4+58, 1, -20); --敵角度
setRotateKey( spep_4+59, 1, 0); --敵角度
setRotateKey( spep_4+61, 1, 0); --敵角度
setRotateKey( spep_4+62, 1, -20); --敵角度
setRotateKey( spep_4+64, 1, -20); --敵角度
setRotateKey( spep_4+65, 1, 0); --敵角度
setRotateKey( spep_4+67, 1, 0); --敵角度
setRotateKey( spep_4+68, 1, -20); --敵角度
setRotateKey( spep_4+70, 1, -20); --敵角度
setRotateKey( spep_4+71, 1, 0); --敵角度
setRotateKey( spep_4+73, 1, 0); --敵角度
setRotateKey( spep_4+74, 1, -20); --敵角度
setRotateKey( spep_4+76, 1, -20); --敵角度
setRotateKey( spep_4+77, 1, 0); --敵角度
setRotateKey( spep_4+79, 1, 0); --敵角度
setRotateKey( spep_4+80, 1, -20); --敵角度
setRotateKey( spep_4+82, 1, -20); --敵角度
setRotateKey( spep_4+83, 1, 0); --敵角度
setRotateKey( spep_4+85, 1, 0); --敵角度
setRotateKey( spep_4+86, 1, -20); --敵角度
setRotateKey( spep_4+88, 1, -20); --敵角度
setRotateKey( spep_4+89, 1, 0); --敵角度
setRotateKey( spep_4+91, 1, 0); --敵角度
setRotateKey( spep_4+92, 1, -20); --敵角度
setRotateKey( spep_4+94, 1, -20); --敵角度
setRotateKey( spep_4+95, 1, 0); --敵角度
setRotateKey( spep_4+97, 1, 0); --敵角度
setRotateKey( spep_4+98, 1, -20); --敵角度
setRotateKey( spep_4+100, 1, -20); --敵角度
setRotateKey( spep_4+101, 1, 0); --敵角度
setRotateKey( spep_4+103, 1, 0); --敵角度
setRotateKey( spep_4+104, 1, -20); --敵角度
setRotateKey( spep_4+106, 1, -20); --敵角度
setRotateKey( spep_4+107, 1, 0); --敵角度
setRotateKey( spep_4+109, 1, 0); --敵角度
setRotateKey( spep_4+110, 1, -20); --敵角度
setRotateKey( spep_4+112, 1, -20); --敵角度
setRotateKey( spep_4+113, 1, 0); --敵角度
setRotateKey( spep_4+115, 1, 0); --敵角度
setRotateKey( spep_4+116, 1, -20); --敵角度
setRotateKey( spep_4+118, 1, -20); --敵角度
--[[
setRotateKey( spep_4+119, 1, 0); --敵角度
setRotateKey( spep_4+121, 1, 0); --敵角度
setRotateKey( spep_4+122, 1, -20); --敵角度
setRotateKey( spep_4+124, 1, -20); --敵角度
setRotateKey( spep_4+125, 1, 0); --敵角度
setRotateKey( spep_4+127, 1, 0); --敵角度
setRotateKey( spep_4+128, 1, -20); --敵角度
setRotateKey( spep_4+130, 1, -20); --敵角度
setRotateKey( spep_4+131, 1, 0); --敵角度
setRotateKey( spep_4+133, 1, 0); --敵角度
setRotateKey( spep_4+134, 1, -20); --敵角度
setRotateKey( spep_4+136, 1, -20); --敵角度
setRotateKey( spep_4+137, 1, 0); --敵角度
setRotateKey( spep_4+139, 1, 0); --敵角度
setRotateKey( spep_4+140, 1, -20); --敵角度
setRotateKey( spep_4+142, 1, -20); --敵角度
]]--
setDisp( spep_4+114, 1, 0); --敵非表示



-- ** 音 ** --435oooo
playSe( spep_4+15, SE_05);
playSe( spep_4+44, SE_07);
playSe( spep_4+66, SE_07);
playSe( spep_4+82, SE_07);
playSe( spep_4+104, SE_07);


-- ** ホワイトフェード ** --
entryFade( spep_4+9, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_4+44, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_4+66, 0, 3, 2, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+82, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
--entryFade( spep_4+99, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
--entryFade( spep_4+116, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+104, 10, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = ( spep_4+117);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 468; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- ギャン(552Fから)
------------------------------------------------------
-- ** ギャンエフェクト ** --
gyan = entryEffect( spep_5, SP_10, 0x80, -1,  0,  0,  0);   -- ギャン

-- ** 書き文字エントリー ** --
gyantext = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffScaleKey( spep_5, gyantext, 0.1, 0.1);
setEffScaleKey( spep_5+30, gyantext, 3.4, 3.4);
setEffScaleKey( spep_5+54, gyantext, 3.8, 3.8);
setEffAlphaKey( spep_5, gyantext, 255);
setEffAlphaKey( spep_5+50, gyantext, 255);
setEffAlphaKey( spep_5+54, gyantext, 0);
setEffShake( spep_5, gyantext, 99, 20);

-- ** 音 ** --
playSe( spep_5, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_5+50, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( spep_5+54);

spep_6 = ( spep_5+60);

------------------------------------------------------
-- ヒット(612Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 137, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hit = entryEffect( spep_6, SP_05, 0x100, -1, 0, 0, 0); --ヒット
setEffMoveKey( spep_6, hit, 0, 0, 0);
setEffScaleKey( spep_6, hit, 1.0, 1.0);
setEffAlphaKey( spep_6, hit, 255);
setEffRotateKey( spep_6, hit, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 137, 0x100,  -1, 0,  0,  0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 2, 1.7);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);


-- ** 音 ** --
playSe( spep_6+5, SE_08);
playSe( spep_6+20, SE_02);
playSe( spep_6+40, SE_07);
playSe( spep_6+60, SE_02);
playSe( spep_6+80, SE_07);
playSe( spep_6+100, SE_02);
playSe( spep_6+120, SE_07);



-- ダメージ表示
dealDamage( spep_6+50);
--entryFade( spep_6+127, 10, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_6+160 -30);

end