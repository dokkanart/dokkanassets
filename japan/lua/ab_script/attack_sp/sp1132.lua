print ("[lua]sp1132");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150883;--ダッシュ～キック
SP_02 = 150885;--溜め～パンチ
SP_03 = 150887;--大猿パンチ
SP_04 = 150889;--迫る
SP_05 = 150891;--振り返る～斬る
SP_06 = 150893;--斬撃(共用)
SP_07 = 150894;--爆発

SP_08 = 150884;--ダッシュ～キック(敵用)
SP_09 = 150886;--溜め～パンチ(敵用)
SP_10 = 150888;--大猿パンチ(敵用)
SP_11 = 150890;--迫る(敵用)
SP_12 = 150892;--振り返る～斬る(敵用)
SP_13 = 150895;--爆発(敵用)

SE_01 = 1010; --蹴り音
SE_02 = 44; --飛んでいく
SE_03 = 1018; --カットイン
SE_04 = 1011; --強いパンチ音
SE_05 = 1035; --カードカットイン音
SE_06 = 1026; --手のオーラ音
SE_07 = 1023; --斬撃時・・・
SE_08 = 1069; --爆発


multi_frm = 2;

------------------------------------------------------
-- 移動〜蹴り
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
setDisp( 40, 1, 1); --敵表示

changeAnime( 40, 1, 101);
setMoveKey( 40, 1, 650, 0, 0);
setMoveKey( 50, 1, 100, 0, 0);
setMoveKey( 51, 1, 100, 20, 0);
setMoveKey( 61, 1, 650, 550, 0);
setMoveKey( 76, 1, 2000, 550, 0);
changeAnime( 51, 1, 106);
setRotateKey( 0, 1, 0);
setRotateKey( 50, 1, 0);
setRotateKey( 51, 1, -20);
setScaleKey( 0, 1, 1.2, 1.2);
setScaleKey( 87, 1, 1.2, 1.2);

setDisp( 76, 1, 0);

-- ** 背景 ** --
entryFadeBg( 6, 6, 75, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen = entryEffectLife( 6, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( 6, ryusen, 0, 0, 0);
setEffRotateKey( 6, ryusen, 0);
setEffScaleKey( 6, ryusen, 1.6, 1.6);
setEffAlphaKey( 6, ryusen, 255);

ryusen2 = entryEffectLife( 51, 922, 36, 0x80,  -1,  0,  0,  -50); -- 流線2
setEffRotateKey( 51, ryusen2, -130);
setEffScaleKey( 51, ryusen2, 1.7, 1.7);
setEffMoveKey( 51, ryusen2, 0, -50, 0);

-- ** エフェクト等 ** --
semaru = entryEffect( 0, SP_01, 0x100, -1,  0,  0,  0); --移動〜蹴り
setEffMoveKey( 0, semaru, 0, 0, 0);
setEffScaleKey( 0, semaru, 1.0, 1.0);
setEffAlphaKey( 0, semaru, 255);
setEffRotateKey( 0, semaru, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 51, 906, 36, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 51, shuchusen, 0, 0, 0);
setEffScaleKey( 51, shuchusen, 1.2, 1.2);
setEffAlphaKey( 51, shuchusen, 255);
setEffRotateKey( 51, shuchusen, 0);

-- ** 書き文字 ** --
baki = entryEffectLife( 51, 10020, 16, 0x100, -1, 0, -100, 200); -- バキッ
setEffRotateKey( 51, baki , 0);
setEffAlphaKey( 51, baki , 255);
setEffAlphaKey( 66, baki , 255);
setEffScaleKey( 51, baki , 2.0, 2.0);
setEffScaleKey( 80, baki , 2.0, 2.0);
setEffShake( 51, baki , 100, 20);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 25, SE_03);
playSe( 53, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- 敵飛び(88F開始)
------------------------------------------------------

spep_1 = ( 88); --88F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_1, 922, 40, 0x80,  -1,  0,  0,  -50); -- 流線3
setEffRotateKey( spep_1, ryusen3, -130);
setEffScaleKey( spep_1, ryusen3, 1.7, 1.7);
setEffMoveKey( spep_1, ryusen3, 0, -50, 0);

-- ** キャラクター ** --
setDisp( spep_1-1, 1, 1);

setScaleKey( spep_1-1, 1, 1.2, 1.2);
setScaleKey( spep_1+41, 1, 1.2, 1.2);

setMoveKey( spep_1-1, 1, 2000, 550, 0);
setMoveKey( spep_1, 1, -500, -400, 0);
setMoveKey( spep_1+38, 1, 650, 550, 0);
setMoveKey( spep_1+39, 1, 1000, 550, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 40, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+33, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+3, SE_02);

------------------------------------------------------
-- 強パンチ(130F開始)
------------------------------------------------------

spep_2 = ( spep_1+42); --130F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 96, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_2, 922, 96, 0x80,  -1,  0,  0,  -50); -- 流線4
setEffRotateKey( spep_2, ryusen4, -130);
setEffScaleKey( spep_2, ryusen4, 1.7, 1.7);
setEffMoveKey( spep_2, ryusen4, 0, -50, 0);

-- ** エフェクト等 ** --
panti = entryEffect( spep_2, SP_02, 0x100, -1,  0,  0,  0); --溜め～パンチ
setEffMoveKey( spep_2, panti, 0, 0, 0);
setEffScaleKey( spep_2, panti, 1.0, 1.0);
setEffAlphaKey( spep_2, panti, 255);
setEffRotateKey( spep_2, panti, 0);

saru = entryEffect( spep_2+12, SP_03, 0x80, -1,  0,  0,  0); --大猿パンチ
setEffMoveKey( spep_2+12, saru, 0, 0, 0);
setEffScaleKey( spep_2+12, saru, 1.5, 1.5);
setEffAlphaKey( spep_2+12, saru, 255);
setEffRotateKey( spep_2+12, saru, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+63, 906, 33, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2+63, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+63, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_2+63, shuchusen3, 255);
setEffRotateKey( spep_2+63, shuchusen3, 0);

-- ** キャラクター ** --
changeAnime( spep_2, 1, 106);
setMoveKey( spep_2-2, 1, 1000, 550, 0);
setMoveKey( spep_2-1, 1, 50, 50, 0);

changeAnime( spep_2+63, 1, 108); 
setMoveKey( spep_2+63, 1, 50, 50, 0);
setMoveKey( spep_2+75, 1, 700, 700, 0);
setMoveKey( spep_2+76, 1, 2000, 2000, 0);
setRotateKey( spep_2-1, 1, -20);
setRotateKey( spep_2, 1, -30);

setScaleKey( spep_2-2, 1, 1.2, 1.2);
setScaleKey( spep_2-1, 1, 1.1, 1.1);
setScaleKey( spep_2+96, 1, 1.1, 1.1);

setShakeChara( spep_2, 1, 100, 18);

-- ** ホワイトフェード ** --
entryFade( spep_2+63, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);  
entryFade( spep_2+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); 

-- ** 音 ** --
playSe( spep_2+15, SE_03);
playSe( spep_2+65, SE_04);

------------------------------------------------------
-- 敵飛び2(228F開始)
------------------------------------------------------

spep_3 = ( spep_2+98); --228F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 37, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_3, 922, 37, 0x80,  -1,  0,  0,  -50); -- 流線5
setEffRotateKey( spep_3, ryusen5, -130);
setEffScaleKey( spep_3, ryusen5, 1.7, 1.7);
setEffMoveKey( spep_3, ryusen5, 0, -50, 0);

-- ** キャラクター ** --
setScaleKey( spep_3-1, 1, 1.1, 1.1);
setScaleKey( spep_3, 1, 1.2, 1.2);
setScaleKey( spep_3+41, 1, 1.2, 1.2);

setMoveKey( spep_3-1, 1, 2000, 2000, 0);
setMoveKey( spep_3, 1, -500, -400, 0);
setMoveKey( spep_3+33, 1, 650, 550, 0);
setMoveKey( spep_3+34, 1, 1000, 550, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 37, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+30, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+3, SE_02);

------------------------------------------------------
-- カットイン (267F開始)
------------------------------------------------------

spep_4 = ( spep_3+39); --267F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 97, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** オーラ ** --
aura = entryEffectLife( spep_4, 311, 97, 0x40, 0, 1, -20, -50); -- オーラ
setEffScaleKey( spep_4, aura, 1.5, 1.5);

-- ** キャラクター ** --
setDisp( spep_4, 0, 1); --味方表示
changeAnime( spep_4, 0, 17); -- 溜め!
setAnimeLoop( spep_4, 0, 1);

setMoveKey( spep_4, 0, 0, -54, 0);
setMoveKey( spep_4+97, 0, 0, -54, 0);

setScaleKey( spep_4-1, 1, 1.2, 1.2);
setScaleKey( spep_4, 0, 1.3, 1.3);
setScaleKey( spep_4+97, 0, 1.3, 1.3);

setShakeChara( spep_4, 0, 86, 10);
setDisp( spep_4+98, 0, 0); --味方非表示

-- ** カットイン ** --
entryEffect( spep_4, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_4, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)
speff = entryEffect( spep_4+10, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( spep_4+10, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- 書き文字エントリー --
gogo = entryEffectLife( spep_4+23, 190006, 73, 0x100, -1, 0, 120, 500);  -- ゴゴゴゴ
setEffScaleKey( spep_4+23, gogo, 0.8, 0.8);
setEffScaleKey( spep_4+89, gogo, 0.8, 0.8);
setEffScaleKey( spep_4+95, gogo, 1.4, 1.4);
setEffRotateKey( spep_4+23, gogo, 10);
setEffAlphaKey( spep_4+23, gogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_4+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+5, SE_03);

------------------------------------------------------
-- カードカットイン (366F開始)
------------------------------------------------------

spep_5 = ( spep_4+99); --366F

speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 91, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+3, SE_05);

------------------------------------------------------
-- 迫る (459F開始)
------------------------------------------------------

spep_6 = ( spep_5+93); --459F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 88, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** エフェクト等 ** --
atttack = entryEffect( spep_6, SP_04, 0x100, -1,  0,  0,  0); --溜め～パンチ
setEffMoveKey( spep_6, atttack, 0, 0, 0);
setEffScaleKey( spep_6, atttack, 1.0, 1.0);
setEffAlphaKey( spep_6, atttack, 255);
setEffRotateKey( spep_6, atttack, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6+30, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線6
setEffMoveKey( spep_6+30, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+30, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_6+30, shuchusen6, 255);
setEffRotateKey( spep_6+30, shuchusen6, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+30, 0, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+81, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+2, SE_06);
playSe( spep_6+35, SE_05);

------------------------------------------------------
-- 振り返る～斬る (550F開始)
------------------------------------------------------

spep_7 = ( spep_6+91); --550F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 50, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_7, 922, 49, 0x80, -1, 0, 0, -50); -- 流線6
setEffRotateKey( spep_7, ryusen6, -130);
setEffScaleKey( spep_7, ryusen6, 1.7, 1.7);
setEffMoveKey( spep_7, ryusen6, 0, -50, 0);

-- ** エフェクト等 ** --
kiru = entryEffectLife( spep_7, SP_05, 49, 0x80, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_7, kiru, 0, 0, 0);
setEffScaleKey( spep_7, kiru, 1.0, 1.0);
setEffAlphaKey( spep_7, kiru, 255);
setEffRotateKey( spep_7, kiru, 0);

-- ** キャラクター ** --
setScaleKey( spep_7-1, 1, 1.2, 1.2);
setScaleKey( spep_7+200, 1, 1.2, 1.2);

setMoveKey( spep_7-1, 1, 1000, 550, 0);
setMoveKey( spep_7, 1, -500, -400, 0);
setMoveKey( spep_7+30, 1, 0, 0, 0);

setRotateKey( spep_7-1, 1, -30);
setRotateKey( spep_7, 1, -15);

setShakeChara( spep_7, 1, 200, 10);
setDisp( spep_7+50, 1, 0); --敵非表示

-- ** 音 ** --
playSe( spep_7+2, SE_03);

------------------------------------------------------
-- 斬撃 (600F開始)
------------------------------------------------------

spep_8 = ( spep_7+50); --600F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 255);  -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_8, 906, 80, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_8, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen7, 255);
setEffRotateKey( spep_8, shuchusen7, 0);

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_8, SP_06, 0x100, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_8, zangeki, 0, 0, 0);
setEffScaleKey( spep_8, zangeki, 1.0, 1.0);
setEffAlphaKey( spep_8, zangeki, 255);
setEffRotateKey( spep_8, zangeki, 0);

-- 書き文字エントリー --
zan = entryEffectLife( spep_8, 10010, 80, 0x100, -1, 0, 0, 0);  -- ザン
setEffMoveKey( spep_8, zan, -200, 300, 0);
setEffMoveKey( spep_8+8, zan, -100, 300, 0);
setEffScaleKey( spep_8, zan, 4.8, 4.8);
setEffScaleKey( spep_8+8, zan, 2.6, 2.6);

setEffRotateKey( spep_8, zan, -15);

setEffAlphaKey( spep_8, zan, 100);
setEffAlphaKey( spep_8+8, zan, 255);
setEffShake( spep_8+8, zan, 200, 10);

-- ** ホワイトフェード ** --
entryFade( spep_8+72, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_8+2, SE_07);

------------------------------------------------------
-- 爆発 (681F開始)
------------------------------------------------------

spep_9 = ( spep_8+81); --681F

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9, SP_07, 0x100, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_9, bakuha, 0, 0, 0);
setEffScaleKey( spep_9, bakuha, 1.1, 1.1);
setEffAlphaKey( spep_9, bakuha, 255);
setEffRotateKey( spep_9, bakuha, 0);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_9+36, 906, 182, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_9+36, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_9+36, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_9+36, shuchusen8, 255);
setEffRotateKey( spep_9+36, shuchusen8, 0);

-- ** 集中線(黒) ** --
kuroshuchusen = entryEffectLife( spep_9+54, 911, 164, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_9+54, kuroshuchusen, 0, 0, 0);
setEffScaleKey( spep_9+54, kuroshuchusen, 1.0, 1.0);
setEffAlphaKey( spep_9+54, kuroshuchusen, 150);
setEffAlphaKey( spep_9+60, kuroshuchusen, 255);
setEffRotateKey( spep_9+54, kuroshuchusen, 0);

-- ** 音 ** --
playSe( spep_9+2, SE_08);

-- ダメージ表示
dealDamage( spep_9+50);
entryFade( spep_9+204, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+214);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 移動〜蹴り
------------------------------------------------------

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
setDisp( 40, 1, 1); --敵表示

changeAnime( 40, 1, 101);
setMoveKey( 40, 1, 650, 0, 0);
setMoveKey( 50, 1, 100, 0, 0);
setMoveKey( 51, 1, 100, 20, 0);
setMoveKey( 61, 1, 650, 550, 0);
setMoveKey( 76, 1, 2000, 550, 0);
changeAnime( 51, 1, 106);
setRotateKey( 0, 1, 0);
setRotateKey( 50, 1, 0);
setRotateKey( 51, 1, -20);
setScaleKey( 0, 1, 1.2, 1.2);
setScaleKey( 87, 1, 1.2, 1.2);

setDisp( 76, 1, 0);

-- ** 背景 ** --
entryFadeBg( 6, 6, 75, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen = entryEffectLife( 6, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( 6, ryusen, 0, 0, 0);
setEffRotateKey( 6, ryusen, 0);
setEffScaleKey( 6, ryusen, 1.6, 1.6);
setEffAlphaKey( 6, ryusen, 255);

ryusen2 = entryEffectLife( 51, 922, 36, 0x80,  -1,  0,  0,  -50); -- 流線2
setEffRotateKey( 51, ryusen2, -130);
setEffScaleKey( 51, ryusen2, 1.7, 1.7);
setEffMoveKey( 51, ryusen2, 0, -50, 0);

-- ** エフェクト等 ** --
semaru = entryEffect( 0, SP_08, 0x100, -1,  0,  0,  0); --移動〜蹴り
setEffMoveKey( 0, semaru, 0, 0, 0);
setEffScaleKey( 0, semaru, 1.0, 1.0);
setEffAlphaKey( 0, semaru, 255);
setEffRotateKey( 0, semaru, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 51, 906, 36, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 51, shuchusen, 0, 0, 0);
setEffScaleKey( 51, shuchusen, 1.2, 1.2);
setEffAlphaKey( 51, shuchusen, 255);
setEffRotateKey( 51, shuchusen, 0);

-- ** 書き文字 ** --
baki = entryEffectLife( 51, 10020, 16, 0x100, -1, 0, -100, 200); -- バキッ
setEffRotateKey( 51, baki , 0);
setEffAlphaKey( 51, baki , 255);
setEffAlphaKey( 66, baki , 255);
setEffScaleKey( 51, baki , 2.0, 2.0);
setEffScaleKey( 80, baki , 2.0, 2.0);
setEffShake( 51, baki , 100, 20);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 25, SE_03);
playSe( 53, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- 敵飛び(88F開始)
------------------------------------------------------

spep_1 = ( 88); --88F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_1, 922, 40, 0x80,  -1,  0,  0,  -50); -- 流線3
setEffRotateKey( spep_1, ryusen3, -130);
setEffScaleKey( spep_1, ryusen3, 1.7, 1.7);
setEffMoveKey( spep_1, ryusen3, 0, -50, 0);

-- ** キャラクター ** --
setDisp( spep_1-1, 1, 1);

setScaleKey( spep_1-1, 1, 1.2, 1.2);
setScaleKey( spep_1+41, 1, 1.2, 1.2);

setMoveKey( spep_1-1, 1, 2000, 550, 0);
setMoveKey( spep_1, 1, -500, -400, 0);
setMoveKey( spep_1+38, 1, 650, 550, 0);
setMoveKey( spep_1+39, 1, 1000, 550, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 40, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+33, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+3, SE_02);

------------------------------------------------------
-- 強パンチ(130F開始)
------------------------------------------------------

spep_2 = ( spep_1+42); --130F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 96, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_2, 922, 96, 0x80,  -1,  0,  0,  -50); -- 流線4
setEffRotateKey( spep_2, ryusen4, -130);
setEffScaleKey( spep_2, ryusen4, 1.7, 1.7);
setEffMoveKey( spep_2, ryusen4, 0, -50, 0);

-- ** エフェクト等 ** --
panti = entryEffect( spep_2, SP_09, 0x100, -1,  0,  0,  0); --溜め～パンチ
setEffMoveKey( spep_2, panti, 0, 0, 0);
setEffScaleKey( spep_2, panti, 1.0, 1.0);
setEffAlphaKey( spep_2, panti, 255);
setEffRotateKey( spep_2, panti, 0);

saru = entryEffect( spep_2+12, SP_10, 0x80, -1,  0,  0,  0); --大猿パンチ
setEffMoveKey( spep_2+12, saru, 0, 0, 0);
setEffScaleKey( spep_2+12, saru, 1.5, 1.5);
setEffAlphaKey( spep_2+12, saru, 255);
setEffRotateKey( spep_2+12, saru, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+63, 906, 33, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2+63, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2+63, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_2+63, shuchusen3, 255);
setEffRotateKey( spep_2+63, shuchusen3, 0);

-- ** キャラクター ** --
changeAnime( spep_2, 1, 106);
setMoveKey( spep_2-2, 1, 1000, 550, 0);
setMoveKey( spep_2-1, 1, 50, 50, 0);

changeAnime( spep_2+63, 1, 108); 
setMoveKey( spep_2+63, 1, 50, 50, 0);
setMoveKey( spep_2+75, 1, 700, 700, 0);
setMoveKey( spep_2+76, 1, 2000, 2000, 0);
setRotateKey( spep_2-1, 1, -20);
setRotateKey( spep_2, 1, -30);

setScaleKey( spep_2-2, 1, 1.2, 1.2);
setScaleKey( spep_2-1, 1, 1.1, 1.1);
setScaleKey( spep_2+96, 1, 1.1, 1.1);

setShakeChara( spep_2, 1, 100, 18);

-- ** ホワイトフェード ** --
entryFade( spep_2+63, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);  
entryFade( spep_2+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); 

-- ** 音 ** --
playSe( spep_2+15, SE_03);
playSe( spep_2+65, SE_04);

------------------------------------------------------
-- 敵飛び2(228F開始)
------------------------------------------------------

spep_3 = ( spep_2+98); --228F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 37, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_3, 922, 37, 0x80,  -1,  0,  0,  -50); -- 流線5
setEffRotateKey( spep_3, ryusen5, -130);
setEffScaleKey( spep_3, ryusen5, 1.7, 1.7);
setEffMoveKey( spep_3, ryusen5, 0, -50, 0);

-- ** キャラクター ** --
setScaleKey( spep_3-1, 1, 1.1, 1.1);
setScaleKey( spep_3, 1, 1.2, 1.2);
setScaleKey( spep_3+41, 1, 1.2, 1.2);

setMoveKey( spep_3-1, 1, 2000, 2000, 0);
setMoveKey( spep_3, 1, -500, -400, 0);
setMoveKey( spep_3+33, 1, 650, 550, 0);
setMoveKey( spep_3+34, 1, 1000, 550, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 37, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+30, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+3, SE_02);

------------------------------------------------------
-- カットイン (267F開始)
------------------------------------------------------

spep_4 = ( spep_3+39); --267F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 97, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** オーラ ** --
aura = entryEffectLife( spep_4, 311, 97, 0x40, 0, 1, -20, -50); -- オーラ
setEffScaleKey( spep_4, aura, 1.5, 1.5);

-- ** キャラクター ** --
setDisp( spep_4, 0, 1); --味方表示
changeAnime( spep_4, 0, 17); -- 溜め!
setAnimeLoop( spep_4, 0, 1);

setMoveKey( spep_4, 0, 0, -54, 0);
setMoveKey( spep_4+97, 0, 0, -54, 0);

setScaleKey( spep_4-1, 1, 1.2, 1.2);
setScaleKey( spep_4, 0, 1.3, 1.3);
setScaleKey( spep_4+97, 0, 1.3, 1.3);

setShakeChara( spep_4, 0, 86, 10);
setDisp( spep_4+98, 0, 0); --味方非表示

-- ** カットイン ** --
entryEffect( spep_4, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_4, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)
--[[
speff = entryEffect( spep_4+10, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( spep_4+10, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え
]]--

-- 書き文字エントリー --
gogo = entryEffectLife( spep_4+23, 190006, 73, 0x100, -1, 0, 120, 500);  -- ゴゴゴゴ
setEffScaleKey( spep_4+23, gogo, -0.8, 0.8);
setEffScaleKey( spep_4+89, gogo, -0.8, 0.8);
setEffScaleKey( spep_4+95, gogo, -1.4, 1.4);
setEffRotateKey( spep_4+23, gogo, 10);
setEffAlphaKey( spep_4+23, gogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_4+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+5, SE_03);

------------------------------------------------------
-- カードカットイン (366F開始)
------------------------------------------------------

spep_5 = ( spep_4+99); --366F

speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 91, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+3, SE_05);

------------------------------------------------------
-- 迫る (459F開始)
------------------------------------------------------

spep_6 = ( spep_5+93); --459F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 88, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** エフェクト等 ** --
atttack = entryEffect( spep_6, SP_11, 0x100, -1,  0,  0,  0); --溜め～パンチ
setEffMoveKey( spep_6, atttack, 0, 0, 0);
setEffScaleKey( spep_6, atttack, 1.0, 1.0);
setEffAlphaKey( spep_6, atttack, 255);
setEffRotateKey( spep_6, atttack, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6+30, 906, 58, 0x100, -1, 0, 0, 0); -- 集中線6
setEffMoveKey( spep_6+30, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+30, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_6+30, shuchusen6, 255);
setEffRotateKey( spep_6+30, shuchusen6, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+30, 0, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+81, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+2, SE_06);
playSe( spep_6+35, SE_05);

------------------------------------------------------
-- 振り返る～斬る (550F開始)
------------------------------------------------------

spep_7 = ( spep_6+91); --550F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 50, 0, 10, 10, 10, 180);  -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_7, 922, 49, 0x80, -1, 0, 0, -50); -- 流線6
setEffRotateKey( spep_7, ryusen6, -130);
setEffScaleKey( spep_7, ryusen6, 1.7, 1.7);
setEffMoveKey( spep_7, ryusen6, 0, -50, 0);

-- ** エフェクト等 ** --
kiru = entryEffectLife( spep_7, SP_12, 49, 0x80, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_7, kiru, 0, 0, 0);
setEffScaleKey( spep_7, kiru, 1.0, 1.0);
setEffAlphaKey( spep_7, kiru, 255);
setEffRotateKey( spep_7, kiru, 0);

-- ** キャラクター ** --
setScaleKey( spep_7-1, 1, 1.2, 1.2);
setScaleKey( spep_7+200, 1, 1.2, 1.2);

setMoveKey( spep_7-1, 1, 1000, 550, 0);
setMoveKey( spep_7, 1, -500, -400, 0);
setMoveKey( spep_7+30, 1, 0, 0, 0);

setRotateKey( spep_7-1, 1, -30);
setRotateKey( spep_7, 1, -15);

setShakeChara( spep_7, 1, 200, 10);
setDisp( spep_7+50, 1, 0); --敵非表示

-- ** 音 ** --
playSe( spep_7+2, SE_03);

------------------------------------------------------
-- 斬撃 (600F開始)
------------------------------------------------------

spep_8 = ( spep_7+50); --600F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 255);  -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_8, 906, 80, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_8, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen7, 255);
setEffRotateKey( spep_8, shuchusen7, 0);

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_8, SP_06, 0x100, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_8, zangeki, 0, 0, 0);
setEffScaleKey( spep_8, zangeki, 1.0, 1.0);
setEffAlphaKey( spep_8, zangeki, 255);
setEffRotateKey( spep_8, zangeki, 0);

-- 書き文字エントリー --
zan = entryEffectLife( spep_8, 10010, 80, 0x100, -1, 0, 0, 0);  -- ザン
setEffMoveKey( spep_8, zan, -200, 300, 0);
setEffMoveKey( spep_8+8, zan, -100, 300, 0);
setEffScaleKey( spep_8, zan, 4.8, 4.8);
setEffScaleKey( spep_8+8, zan, 2.6, 2.6);

setEffRotateKey( spep_8, zan, -15);

setEffAlphaKey( spep_8, zan, 100);
setEffAlphaKey( spep_8+8, zan, 255);
setEffShake( spep_8+8, zan, 200, 10);

-- ** ホワイトフェード ** --
entryFade( spep_8+72, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_8+2, SE_07);

------------------------------------------------------
-- 爆発 (681F開始)
------------------------------------------------------

spep_9 = ( spep_8+81); --681F

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9, SP_13, 0x100, -1,  0,  0,  0); --振り返る～斬る
setEffMoveKey( spep_9, bakuha, 0, 0, 0);
setEffScaleKey( spep_9, bakuha, 1.1, 1.1);
setEffAlphaKey( spep_9, bakuha, 255);
setEffRotateKey( spep_9, bakuha, 0);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_9+36, 906, 182, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_9+36, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_9+36, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_9+36, shuchusen8, 255);
setEffRotateKey( spep_9+36, shuchusen8, 0);

-- ** 集中線(黒) ** --
kuroshuchusen = entryEffectLife( spep_9+54, 911, 164, 0x100, -1, 0, 0, 0); -- 集中線7
setEffMoveKey( spep_9+54, kuroshuchusen, 0, 0, 0);
setEffScaleKey( spep_9+54, kuroshuchusen, 1.0, 1.0);
setEffAlphaKey( spep_9+54, kuroshuchusen, 150);
setEffAlphaKey( spep_9+60, kuroshuchusen, 255);
setEffRotateKey( spep_9+54, kuroshuchusen, 0);

-- ** 音 ** --
playSe( spep_9+2, SE_08);

-- ダメージ表示
dealDamage( spep_9+50);
entryFade( spep_9+204, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+214);

end