print ("[lua]sp1136");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1018; --カットイン
SE_02 = 1035; --カードカットイン
SE_03 = 1022; --龍拳発動
SE_04 = 1024; --爆破
SE_05 = 1025; --火炎登場
SE_06 = 1044; --火炎登場2
SE_07 = 1067; --空

SP_01 = 150906; --気溜め
SP_02 = 150907; --迫る
SP_03 = 150908; --龍拳
SP_04 = 150909; --爆発
SP_05 = 150910; --炎から龍へ(前)
SP_06 = 150911; --炎から龍へ(後ろ）
SP_07 = 150912; --オーラ晴れ
SP_08 = 150913; --上る光


multi_frm = 2;

------------------------------------------------------
-- 気溜め(104F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 101, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( 0, SP_01, 21, 0x80, -1, 0, 0, 0); --気溜め
setEffMoveKey( 0, kidame, 0, 0, 0);
setEffScaleKey( 0, kidame, 1.0, 1.0);
setEffAlphaKey( 0, kidame, 255);
setEffAlphaKey( 19, kidame, 255);
setEffAlphaKey( 20, kidame, 0);
setEffRotateKey( 0, kidame, 0);

kidame2 = entryEffectLife( 20, SP_01, 81, 0x80, -1, 0, 0, 0); --気溜め(カットインとの調整用)
setEffMoveKey( 20, kidame2, 0, 0, 0);
setEffScaleKey( 20, kidame2, 1.0, 1.0);
setEffAlphaKey( 20, kidame2, 255);
setEffRotateKey( 20, kidame2, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 101, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

-- ** カットイン&セリフ ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( 13, 190006, 65, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey( 13, ctgogo, 0.6, 0.6);
setEffRotateKey( 13, ctgogo, 5);
setEffAlphaKey( 13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( 95, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 2, SE_01);

------------------------------------------------------
-- 迫る(59F)
------------------------------------------------------

spep_1 = 104;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --気溜め(カットインとの調整用)
setEffMoveKey( spep_1, semaru, 0, 0, 0);
setEffScaleKey( spep_1, semaru, 1.0, 1.0);
setEffAlphaKey( spep_1, semaru, 255);
setEffRotateKey( spep_1, semaru, 0);

-- 書き文字エントリー
ctdon = entryEffectLife( spep_1+6, 10019, 31, 0x100, -1, 0, 0, 0); -- ドンッ
setEffScaleKey( spep_1+6, ctdon, 2, 2);
setEffRotateKey( spep_1+6, ctdon, 45);
setEffMoveKey( spep_1+6, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+7, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+8, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+9, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+10, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+11, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+12, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+13, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+14, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+15, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+16, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+17, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+18, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+19, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+20, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+21, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+22, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+23, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+24, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+25, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+26, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+27, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+28, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+29, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+30, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+31, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+32, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+33, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+34, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+35, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+36, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+37, ctdon, 120, 360, 0);
setEffAlphaKey( spep_1+6, ctdon, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+10, 906, 48, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1+10, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+10, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+10, shuchusen2, 255);
setEffRotateKey( spep_1+10, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+49, 5, 0, 0, 248, 253, 0, 255); -- 黄色
entryFade( spep_1+54, 0, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_02);

------------------------------------------------------
-- 龍拳(80F)
------------------------------------------------------

spep_2 = (spep_1+59); --163F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 78, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
ryuken = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --龍拳
setEffMoveKey( spep_2, ryuken, 0, 0, 0);
setEffScaleKey( spep_2, ryuken, 1.0, 1.0);
setEffAlphaKey( spep_2, ryuken, 255);
setEffRotateKey( spep_2, ryuken, 0);

-- ** 流線(斜め) ** --
ryusen = entryEffectLife( spep_2, 913, 78, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 80);
setEffScaleKey( spep_2, ryusen, 1.4, 1.4);
setEffAlphaKey( spep_2, ryusen, 255);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_2+15, 10012, 63, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_2+15, zuo, 0, 350, 0);
setEffMoveKey( spep_2+21, zuo, 0, 350, 0);
setEffMoveKey( spep_2+22, zuo, 0, 350, 0);
setEffMoveKey( spep_2+23, zuo, 0, 360, 0);
setEffMoveKey( spep_2+24, zuo, 0, 360, 0);
setEffMoveKey( spep_2+25, zuo, 0, 350, 0);
setEffMoveKey( spep_2+26, zuo, 0, 350, 0);
setEffMoveKey( spep_2+27, zuo, 0, 360, 0);
setEffMoveKey( spep_2+28, zuo, 0, 360, 0);
setEffMoveKey( spep_2+29, zuo, 0, 350, 0);
setEffMoveKey( spep_2+30, zuo, 0, 350, 0);
setEffMoveKey( spep_2+31, zuo, 0, 360, 0);
setEffMoveKey( spep_2+32, zuo, 0, 360, 0);
setEffMoveKey( spep_2+33, zuo, 0, 350, 0);
setEffMoveKey( spep_2+34, zuo, 0, 350, 0);
setEffMoveKey( spep_2+35, zuo, 0, 360, 0);
setEffMoveKey( spep_2+36, zuo, 0, 360, 0);
setEffMoveKey( spep_2+37, zuo, 0, 350, 0);
setEffMoveKey( spep_2+38, zuo, 0, 350, 0);
setEffMoveKey( spep_2+39, zuo, 0, 360, 0);
setEffMoveKey( spep_2+40, zuo, 0, 360, 0);
setEffMoveKey( spep_2+41, zuo, 0, 350, 0);
setEffMoveKey( spep_2+42, zuo, 0, 350, 0);
setEffMoveKey( spep_2+43, zuo, 0, 360, 0);
setEffMoveKey( spep_2+44, zuo, 0, 360, 0);
setEffMoveKey( spep_2+45, zuo, 0, 350, 0);
setEffMoveKey( spep_2+46, zuo, 0, 350, 0);
setEffMoveKey( spep_2+47, zuo, 0, 360, 0);
setEffMoveKey( spep_2+48, zuo, 0, 360, 0);
setEffMoveKey( spep_2+49, zuo, 0, 350, 0);
setEffMoveKey( spep_2+50, zuo, 0, 350, 0);
setEffMoveKey( spep_2+51, zuo, 0, 360, 0);
setEffMoveKey( spep_2+52, zuo, 0, 360, 0);
setEffMoveKey( spep_2+53, zuo, 0, 350, 0);
setEffMoveKey( spep_2+54, zuo, 0, 350, 0);
setEffMoveKey( spep_2+55, zuo, 0, 360, 0);
setEffMoveKey( spep_2+56, zuo, 0, 360, 0);
setEffMoveKey( spep_2+57, zuo, 0, 350, 0);
setEffMoveKey( spep_2+58, zuo, 0, 350, 0);
setEffMoveKey( spep_2+59, zuo, 0, 360, 0);
setEffMoveKey( spep_2+60, zuo, 0, 360, 0);
setEffMoveKey( spep_2+61, zuo, 0, 350, 0);
setEffMoveKey( spep_2+62, zuo, 0, 350, 0);
setEffMoveKey( spep_2+63, zuo, 0, 360, 0);
setEffMoveKey( spep_2+64, zuo, 0, 360, 0);
setEffMoveKey( spep_2+65, zuo, 0, 350, 0);
setEffMoveKey( spep_2+66, zuo, 0, 350, 0);
setEffMoveKey( spep_2+67, zuo, 0, 360, 0);
setEffMoveKey( spep_2+68, zuo, 0, 360, 0);
setEffMoveKey( spep_2+69, zuo, 0, 350, 0);
setEffMoveKey( spep_2+70, zuo, 0, 350, 0);
setEffMoveKey( spep_2+71, zuo, 0, 360, 0);
setEffMoveKey( spep_2+72, zuo, 0, 360, 0);
setEffMoveKey( spep_2+73, zuo, 0, 350, 0);
setEffMoveKey( spep_2+74, zuo, 0, 350, 0);
setEffMoveKey( spep_2+75, zuo, 0, 360, 0);
setEffMoveKey( spep_2+76, zuo, 0, 360, 0);
setEffMoveKey( spep_2+77, zuo, 0, 350, 0);
setEffMoveKey( spep_2+78, zuo, 0, 350, 0);
setEffScaleKey( spep_2+37, zuo, 0.8, 0.8);
setEffScaleKey( spep_2+38, zuo, 2.2, 2.2);
setEffRotateKey( spep_2+39, zuo, 40);
setEffAlphaKey( spep_2+40, zuo, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+46, 906, 32, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_2+46, shuchusen3, 0, -200, 0);
setEffScaleKey( spep_2+46, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_2+46, shuchusen3, 255);
setEffRotateKey( spep_2+46, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+71, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+37, SE_03);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 185; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seID0 = playSe( spep_2+37, SE_03);
stopSe( spep_2+37, seID0, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆破(60F)
------------------------------------------------------

spep_3 = (spep_2+80); --243F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 58, 0, 0, 0, 0, 255); -- ベース暗め　背景黒

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); --爆破
setEffMoveKey( spep_3, bakuha, 200, -350, 0);
setEffScaleKey( spep_3, bakuha, 1.0, 1.0);
setEffAlphaKey( spep_3, bakuha, 255);
setEffRotateKey( spep_3, bakuha, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 100, -350, 0);
setEffScaleKey( spep_3, shuchusen4, 1.5, 1.8);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- 書き文字エントリー
ctdogon = entryEffectLife( spep_3+9, 10018, 49, 0x100, -1, 0, 0, 0); -- ドゴォン
setEffMoveKey( spep_3+9, ctdogon, 50, 250, 0);
setEffMoveKey( spep_3+24, ctdogon, -100, 380, 0);
setEffRotateKey( spep_3+9, ctdogon, -25);
setEffAlphaKey( spep_3+9, ctdogon, 255);
setEffScaleKey( spep_3+9, ctdogon, 1.5, 1.5);
setEffScaleKey( spep_3+24, ctdogon, 2.4, 2.4);
setEffShake( spep_3+24, ctdogon, 32, 10);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_3, 921, 58, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_3, okuyukiryusennaname, 80);
setEffScaleKey( spep_3, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_3, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_3+51, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);

------------------------------------------------------
-- 龍(228F)
------------------------------------------------------

spep_4 = (spep_3+60); --303F

-- ** キャラクター ** --
setDisp( spep_4, 1, 1); --敵表示
setScaleKey( spep_4, 1, 1.0, 1.0); --サイズ
setMoveKey( spep_4, 1, 0, 0, 0); --位置
setRotateKey( spep_4+12, 1, -30); --キャラ角度
changeAnime( spep_4, 1, 104); --敵モーション
changeAnime( spep_4+12, 1, 106); --敵モーション
setShakeChara( spep_4, 1, 200, 15); --キャラクター
setDisp( spep_4+227, 1, 0); --敵非表示


-- ** エフェクト等 ** --
dragon = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0); --炎から龍へ(前)
setEffMoveKey( spep_4, dragon, 0, 0, 0);
setEffScaleKey( spep_4, dragon, 1.0, 1.0);
setEffAlphaKey( spep_4, dragon, 255);
setEffRotateKey( spep_4, dragon, 0);

dragon2 = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0, 0); --炎から龍へ(後ろ）
setEffMoveKey( spep_4, dragon2, 0, 0, 0);
setEffScaleKey( spep_4, dragon2, 1.0, 1.0);
setEffAlphaKey( spep_4, dragon2, 255);
setEffRotateKey( spep_4, dragon2, 0);

-- ** 集中線 ** --
kuroshuchusen = entryEffectLife( spep_4+125, 911, 101, 0x100, -1, 0, 0, 0); -- 集中線黒
setEffMoveKey( spep_4+125, kuroshuchusen, 0, 0, 0);
setEffScaleKey( spep_4+125, kuroshuchusen, 1.6, 1.6);
setEffAlphaKey( spep_4+125, kuroshuchusen, 255);
setEffRotateKey( spep_4+125, kuroshuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+219, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
seId = playSe( spep_4+2, SE_06);
stopSe( spep_4+140, seId, 10);
--playSeLife( spep_4+2, seId, 137, 0);
playSe( spep_4+180, SE_03);

------------------------------------------------------
-- オーラ晴れ(93F)
------------------------------------------------------

spep_5 = (spep_4+228); --531F

-- ** エフェクト等 ** --
aurahare = entryEffect( spep_5, SP_07, 0x100, -1, 0, 0, 0); --オーラ晴れ
setEffMoveKey( spep_5, aurahare, 0, 0, 0);
setEffScaleKey( spep_5, aurahare, 1.0, 1.0);
setEffAlphaKey( spep_5, aurahare, 255);
setEffRotateKey( spep_5, aurahare, 0);

-- 書き文字エントリー
ctka = entryEffectLife( spep_5+10, 10004, 50, 0x100, -1, 0, 0, 500); --カッ
setEffMoveKey( spep_5+10, ctka , 130, 280, 0);
setEffScaleKey( spep_5+10, ctka, 0.6, 0.6);
setEffScaleKey( spep_5+16, ctka, 2.2, 2.2);
setEffScaleKey( spep_5+52, ctka, 2.2, 2.2);
setEffScaleKey( spep_5+60, ctka, 3.2, 3.2);
setEffRotateKey( spep_5+10, ctka, 30);
setEffAlphaKey( spep_5+10, ctka, 255);
setEffShake( spep_5+10, ctka, 50, 15);

-- ** ホワイトフェード ** --
entryFade( spep_5+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_6 = (spep_5+98); --629F

speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_6, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_6, shuchusen5, 255);
setEffRotateKey( spep_6, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6, SE_02);

------------------------------------------------------
-- 上る光(200F)
------------------------------------------------------

spep_7 = (spep_6+93); --722F

-- ** エフェクト等 ** --
hikaru = entryEffect( spep_7, SP_08, 0x100, -1, 0, 0, 0); --上る光
setEffMoveKey( spep_7, hikaru, 0, 0, 0);
setEffScaleKey( spep_7, hikaru, 1.0, 1.0);
setEffAlphaKey( spep_7, hikaru, 255);
setEffRotateKey( spep_7, hikaru, 0);

-- ** 音 ** --
playSe( spep_7, SE_07);

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+190, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+200);

else

------------------------------------------------------
-- 気溜め(104F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 101, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( 0, SP_01, 21, 0x80, -1, 0, 0, 0); --気溜め
setEffMoveKey( 0, kidame, 0, 0, 0);
setEffScaleKey( 0, kidame, -1.0, 1.0);
setEffAlphaKey( 0, kidame, 255);
setEffAlphaKey( 19, kidame, 255);
setEffAlphaKey( 20, kidame, 0);
setEffRotateKey( 0, kidame, 0);

kidame2 = entryEffectLife( 20, SP_01, 81, 0x80, -1, 0, 0, 0); --気溜め(カットインとの調整用)
setEffMoveKey( 20, kidame2, 0, 0, 0);
setEffScaleKey( 20, kidame2, -1.0, 1.0);
setEffAlphaKey( 20, kidame2, 255);
setEffRotateKey( 20, kidame2, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 101, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え
]]--

-- 書き文字エントリー
ctgogo = entryEffectLife( 13, 190006, 65, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey( 13, ctgogo, -0.6, 0.6);
setEffRotateKey( 13, ctgogo, 5);
setEffAlphaKey( 13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( 95, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 2, SE_01);

------------------------------------------------------
-- 迫る(59F)
------------------------------------------------------

spep_1 = 104;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --気溜め(カットインとの調整用)
setEffMoveKey( spep_1, semaru, 0, 0, 0);
setEffScaleKey( spep_1, semaru, -1.0, 1.0);
setEffAlphaKey( spep_1, semaru, 255);
setEffRotateKey( spep_1, semaru, 0);

-- 書き文字エントリー
ctdon = entryEffectLife( spep_1+6, 10019, 31, 0x100, -1, 0, 0, 0); -- ドンッ
setEffScaleKey( spep_1+6, ctdon, 2, 2);
setEffRotateKey( spep_1+6, ctdon, 45);
setEffMoveKey( spep_1+6, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+7, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+8, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+9, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+10, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+11, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+12, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+13, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+14, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+15, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+16, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+17, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+18, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+19, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+20, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+21, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+22, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+23, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+24, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+25, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+26, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+27, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+28, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+29, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+30, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+31, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+32, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+33, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+34, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+35, ctdon, 120, 350, 0);
setEffMoveKey( spep_1+36, ctdon, 120, 360, 0);
setEffMoveKey( spep_1+37, ctdon, 120, 360, 0);
setEffAlphaKey( spep_1+6, ctdon, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+10, 906, 48, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1+10, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+10, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+10, shuchusen2, 255);
setEffRotateKey( spep_1+10, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+49, 5, 0, 0, 248, 253, 0, 255); -- 黄色
entryFade( spep_1+54, 0, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_02);

------------------------------------------------------
-- 龍拳(80F)
------------------------------------------------------

spep_2 = (spep_1+59); --163F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 78, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
ryuken = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --龍拳
setEffMoveKey( spep_2, ryuken, 0, 0, 0);
setEffScaleKey( spep_2, ryuken, -1.0, 1.0);
setEffAlphaKey( spep_2, ryuken, 255);
setEffRotateKey( spep_2, ryuken, 0);

-- ** 流線(斜め) ** --
ryusen = entryEffectLife( spep_2, 913, 78, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 120);
setEffScaleKey( spep_2, ryusen, 1.4, 1.4);
setEffAlphaKey( spep_2, ryusen, 255);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_2+15, 10012, 63, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_2+15, zuo, 0, 350, 0);
setEffMoveKey( spep_2+21, zuo, 0, 350, 0);
setEffMoveKey( spep_2+22, zuo, 0, 350, 0);
setEffMoveKey( spep_2+23, zuo, 0, 360, 0);
setEffMoveKey( spep_2+24, zuo, 0, 360, 0);
setEffMoveKey( spep_2+25, zuo, 0, 350, 0);
setEffMoveKey( spep_2+26, zuo, 0, 350, 0);
setEffMoveKey( spep_2+27, zuo, 0, 360, 0);
setEffMoveKey( spep_2+28, zuo, 0, 360, 0);
setEffMoveKey( spep_2+29, zuo, 0, 350, 0);
setEffMoveKey( spep_2+30, zuo, 0, 350, 0);
setEffMoveKey( spep_2+31, zuo, 0, 360, 0);
setEffMoveKey( spep_2+32, zuo, 0, 360, 0);
setEffMoveKey( spep_2+33, zuo, 0, 350, 0);
setEffMoveKey( spep_2+34, zuo, 0, 350, 0);
setEffMoveKey( spep_2+35, zuo, 0, 360, 0);
setEffMoveKey( spep_2+36, zuo, 0, 360, 0);
setEffMoveKey( spep_2+37, zuo, 0, 350, 0);
setEffMoveKey( spep_2+38, zuo, 0, 350, 0);
setEffMoveKey( spep_2+39, zuo, 0, 360, 0);
setEffMoveKey( spep_2+40, zuo, 0, 360, 0);
setEffMoveKey( spep_2+41, zuo, 0, 350, 0);
setEffMoveKey( spep_2+42, zuo, 0, 350, 0);
setEffMoveKey( spep_2+43, zuo, 0, 360, 0);
setEffMoveKey( spep_2+44, zuo, 0, 360, 0);
setEffMoveKey( spep_2+45, zuo, 0, 350, 0);
setEffMoveKey( spep_2+46, zuo, 0, 350, 0);
setEffMoveKey( spep_2+47, zuo, 0, 360, 0);
setEffMoveKey( spep_2+48, zuo, 0, 360, 0);
setEffMoveKey( spep_2+49, zuo, 0, 350, 0);
setEffMoveKey( spep_2+50, zuo, 0, 350, 0);
setEffMoveKey( spep_2+51, zuo, 0, 360, 0);
setEffMoveKey( spep_2+52, zuo, 0, 360, 0);
setEffMoveKey( spep_2+53, zuo, 0, 350, 0);
setEffMoveKey( spep_2+54, zuo, 0, 350, 0);
setEffMoveKey( spep_2+55, zuo, 0, 360, 0);
setEffMoveKey( spep_2+56, zuo, 0, 360, 0);
setEffMoveKey( spep_2+57, zuo, 0, 350, 0);
setEffMoveKey( spep_2+58, zuo, 0, 350, 0);
setEffMoveKey( spep_2+59, zuo, 0, 360, 0);
setEffMoveKey( spep_2+60, zuo, 0, 360, 0);
setEffMoveKey( spep_2+61, zuo, 0, 350, 0);
setEffMoveKey( spep_2+62, zuo, 0, 350, 0);
setEffMoveKey( spep_2+63, zuo, 0, 360, 0);
setEffMoveKey( spep_2+64, zuo, 0, 360, 0);
setEffMoveKey( spep_2+65, zuo, 0, 350, 0);
setEffMoveKey( spep_2+66, zuo, 0, 350, 0);
setEffMoveKey( spep_2+67, zuo, 0, 360, 0);
setEffMoveKey( spep_2+68, zuo, 0, 360, 0);
setEffMoveKey( spep_2+69, zuo, 0, 350, 0);
setEffMoveKey( spep_2+70, zuo, 0, 350, 0);
setEffMoveKey( spep_2+71, zuo, 0, 360, 0);
setEffMoveKey( spep_2+72, zuo, 0, 360, 0);
setEffMoveKey( spep_2+73, zuo, 0, 350, 0);
setEffMoveKey( spep_2+74, zuo, 0, 350, 0);
setEffMoveKey( spep_2+75, zuo, 0, 360, 0);
setEffMoveKey( spep_2+76, zuo, 0, 360, 0);
setEffMoveKey( spep_2+77, zuo, 0, 350, 0);
setEffMoveKey( spep_2+78, zuo, 0, 350, 0);
setEffScaleKey( spep_2+37, zuo, 0.8, 0.8);
setEffScaleKey( spep_2+38, zuo, 2.2, 2.2);
setEffRotateKey( spep_2+39, zuo, 40);
setEffAlphaKey( spep_2+40, zuo, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+46, 906, 32, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_2+46, shuchusen3, 0, -200, 0);
setEffScaleKey( spep_2+46, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_2+46, shuchusen3, 255);
setEffRotateKey( spep_2+46, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+71, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+37, SE_03);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 185; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
seID0 = playSe( spep_2+37, SE_03);
stopSe( spep_2+37, seID0, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆破(60F)
------------------------------------------------------

spep_3 = (spep_2+80); --243F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 58, 0, 0, 0, 0, 255); -- ベース暗め　背景黒

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); --爆破
setEffMoveKey( spep_3, bakuha, -200, -350, 0);
setEffScaleKey( spep_3, bakuha, -1.0, 1.0);
setEffAlphaKey( spep_3, bakuha, 255);
setEffRotateKey( spep_3, bakuha, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, -100, -350, 0);
setEffScaleKey( spep_3, shuchusen4, 1.5, 1.8);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- 書き文字エントリー
ctdogon = entryEffectLife( spep_3+9, 10018, 49, 0x100, -1, 0, 0, 0); -- ドゴォン
setEffMoveKey( spep_3+9, ctdogon, -50, 250, 0);
setEffMoveKey( spep_3+24, ctdogon, 100, 380, 0);
setEffRotateKey( spep_3+9, ctdogon, 25);
setEffAlphaKey( spep_3+9, ctdogon, 255);
setEffScaleKey( spep_3+9, ctdogon, 1.5, 1.5);
setEffScaleKey( spep_3+24, ctdogon, 2.4, 2.4);
setEffShake( spep_3+24, ctdogon, 32, 10);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_3, 921, 58, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_3, okuyukiryusennaname, 120);
setEffScaleKey( spep_3, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_3, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_3+51, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);

------------------------------------------------------
-- 龍(228F)
------------------------------------------------------

spep_4 = (spep_3+60); --303F

-- ** キャラクター ** --
setDisp( spep_4, 1, 1); --敵表示
setScaleKey( spep_4, 1, 1.0, 1.0); --サイズ
setMoveKey( spep_4, 1, 0, 0, 0); --位置
setRotateKey( spep_4+12, 1, -30); --キャラ角度
changeAnime( spep_4, 1, 104); --敵モーション
changeAnime( spep_4+12, 1, 106); --敵モーション
setShakeChara( spep_4, 1, 200, 15); --キャラクター
setDisp( spep_4+227, 1, 0); --敵非表示


-- ** エフェクト等 ** --
dragon = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0); --炎から龍へ(前)
setEffMoveKey( spep_4, dragon, 0, 0, 0);
setEffScaleKey( spep_4, dragon, 1.0, 1.0);
setEffAlphaKey( spep_4, dragon, 255);
setEffRotateKey( spep_4, dragon, 0);

dragon2 = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0, 0); --炎から龍へ(後ろ）
setEffMoveKey( spep_4, dragon2, 0, 0, 0);
setEffScaleKey( spep_4, dragon2, 1.0, 1.0);
setEffAlphaKey( spep_4, dragon2, 255);
setEffRotateKey( spep_4, dragon2, 0);

-- ** 集中線 ** --
kuroshuchusen = entryEffectLife( spep_4+125, 911, 101, 0x100, -1, 0, 0, 0); -- 集中線黒
setEffMoveKey( spep_4+125, kuroshuchusen, 0, 0, 0);
setEffScaleKey( spep_4+125, kuroshuchusen, 1.6, 1.6);
setEffAlphaKey( spep_4+125, kuroshuchusen, 255);
setEffRotateKey( spep_4+125, kuroshuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+219, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
seId = playSe( spep_4+2, SE_06);
stopSe( spep_4+140, seId, 10);
--playSeLife( spep_4+2, seId, 137, 0);
playSe( spep_4+180, SE_03);

------------------------------------------------------
-- オーラ晴れ(93F)
------------------------------------------------------

spep_5 = (spep_4+228); --531F

-- ** エフェクト等 ** --
aurahare = entryEffect( spep_5, SP_07, 0x100, -1, 0, 0, 0); --オーラ晴れ
setEffMoveKey( spep_5, aurahare, 0, 0, 0);
setEffScaleKey( spep_5, aurahare, -1.0, 1.0);
setEffAlphaKey( spep_5, aurahare, 255);
setEffRotateKey( spep_5, aurahare, 0);

-- 書き文字エントリー
ctka = entryEffectLife( spep_5+10, 10004, 50, 0x100, -1, 0, 0, 500); --カッ
setEffMoveKey( spep_5+10, ctka , 130, 280, 0);
setEffScaleKey( spep_5+10, ctka, 0.6, 0.6);
setEffScaleKey( spep_5+16, ctka, 2.2, 2.2);
setEffScaleKey( spep_5+52, ctka, 2.2, 2.2);
setEffScaleKey( spep_5+60, ctka, 3.2, 3.2);
setEffRotateKey( spep_5+10, ctka, 30);
setEffAlphaKey( spep_5+10, ctka, 255);
setEffShake( spep_5+10, ctka, 50, 15);

-- ** ホワイトフェード ** --
entryFade( spep_5+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_6 = (spep_5+98); --629F

speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_6, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_6, shuchusen5, 255);
setEffRotateKey( spep_6, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6, SE_02);

------------------------------------------------------
-- 上る光(200F)
------------------------------------------------------

spep_7 = (spep_6+93); --722F

-- ** エフェクト等 ** --
hikaru = entryEffect( spep_7, SP_08, 0x100, -1, 0, 0, 0); --上る光
setEffMoveKey( spep_7, hikaru, 0, 0, 0);
setEffScaleKey( spep_7, hikaru, -1.0, 1.0);
setEffAlphaKey( spep_7, hikaru, 255);
setEffRotateKey( spep_7, hikaru, 0);

-- ** 音 ** --
playSe( spep_7, SE_07);

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+190, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+200);

end
