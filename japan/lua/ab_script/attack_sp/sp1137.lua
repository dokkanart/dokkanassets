print ("[lua]sp1137");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1018; --カットイン
SE_02 = 1035; --カードカットイン
SE_03 = 1000; --パンチ
SE_04 = 1001; --蹴り
SE_05 = 1009; --強いパンチ
SE_06 = 1010; --強い蹴り
SE_07 = 1022; --どどん波発射
SE_08 = 1021; --どどん波発射後
SE_09 = 1025; --当たり
SE_10 = 1054; --割れる音
SE_11 = 1024; --爆破
SE_12 = 44; --飛んでいく
SE_13 = 1023; --ギャン

SP_01 = 150860; --怒り爆煙
SP_02 = 150861; --突進
SP_03 = 150862; --ラッシュ1
SP_04 = 150863; --横ダッシュ
SP_05 = 150864; --ラッシュ2
SP_06 = 150865; --上昇
SP_07 = 150866; --発射(前面)
SP_08 = 150867; --溜め_発射(後面)
SP_09 = 150868; --大爆発
SP_10 = 150873; --溜め_発射(後面)の敵側

multi_frm = 2;

------------------------------------------------------
-- 怒り爆煙(0F開始)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 158, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(縦) ** --
ryusen = entryEffectLife( 0, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen, 0, 0, 0);
setEffRotateKey( 0, ryusen, 90);
setEffScaleKey( 0, ryusen, 1.6, 1);
setEffAlphaKey( 0, ryusen, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 89, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 89, shuchusen, 0, 0, 0);
setEffScaleKey( 89, shuchusen, 1, 1);
setEffAlphaKey( 89, shuchusen, 255);
setEffRotateKey( 89, shuchusen, 0);

-- ** エフェクト等 ** --
ikari = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --怒り爆煙
setEffMoveKey( 0, ikari, 0, 0, 0);
setEffScaleKey( 0, ikari, 1.0, 1.0);
setEffAlphaKey( 0, ikari, 255);
setEffRotateKey( 0, ikari, 0);

-- ** ホワイトフェード ** --
entryFade( 150, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 16, SE_01);
playSe( 92, SE_02);


------------------------------------------------------
-- 突進(159F開始)
------------------------------------------------------

spep_1 = 159; --159F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 49, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
attack = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --突進
setEffMoveKey( spep_1, attack, 0, 0, 0);
setEffScaleKey( spep_1, attack, 1.0, 1.0);
setEffAlphaKey( spep_1, attack, 255);
setEffRotateKey( spep_1, attack, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 49, 0x100, -1, 0, 0, 0);   -- 集中線1
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+41, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
seID = playSe( spep_1+5, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 189; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_1+5, seID, 0);

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
-- ラッシュ1(209F開始)
------------------------------------------------------

spep_2 = ( spep_1+50); --209F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 77, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_2, rush, 0, 0, 0);
setEffScaleKey( spep_2, rush, 1.0, 1.0);
setEffAlphaKey( spep_2, rush, 255);
setEffRotateKey( spep_2, rush, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_2, 920, 77, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen1, 0, 0, 0);
setEffRotateKey( spep_2, ryusen1, -20);
setEffRotateKey( spep_2+4, ryusen1, -20);
setEffRotateKey( spep_2+5, ryusen1, 0);
setEffRotateKey( spep_2+40, ryusen1, 0);
setEffScaleKey( spep_2, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen1, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 104); --敵モーション
changeAnime( spep_2+3, 1, 106); --敵モーション
changeAnime( spep_2+57, 1, 108); --敵モーション
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+77, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_2+14, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_2+26, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_2+27, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+40, 1, 140, 0, 0); --敵位置
setMoveKey( spep_2+41, 1, 145, 40, 0); --敵位置
setMoveKey( spep_2+56, 1, 155, 40, 0); --敵位置
setMoveKey( spep_2+57, 1, 175, 30, 0); --敵位置
setMoveKey( spep_2+65, 1, 600, 100, 0); --敵位置(吹っ飛び)
setMoveKey( spep_2+77, 1, 1200, 100, 0); --敵位置(吹っ飛び)

setRotateKey( spep_2, 1, 0); --敵角度
setRotateKey( spep_2+2, 1, 0); --敵角度
setRotateKey( spep_2+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_2+14, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_2+15, 1, -35); --敵角度(2発目)
setRotateKey( spep_2+26, 1, -35); --敵角度
setRotateKey( spep_2+27, 1, -75); --敵角度
setRotateKey( spep_2+40, 1, -75); --敵角度
setRotateKey( spep_2+41, 1, -30); --敵角度
setRotateKey( spep_2+56, 1, -30); --敵角度
setRotateKey( spep_2+57, 1, -20); --敵角度

setShakeChara( spep_2+3, 1, 98, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+70, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --209F
playSe( spep_2+5, SE_03);
playSe( spep_2+17, SE_03);
playSe( spep_2+29, SE_04);
playSe( spep_2+43, SE_03);
playSe( spep_2+59, SE_05);

------------------------------------------------------
-- 敵飛んでいく(288F開始)
------------------------------------------------------

spep_3 = ( spep_2+79); --288F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 38, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_3, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffScaleKey( spep_3, ryusen2, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen2, 255);

-- ** 敵キャラの動き ** --
setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+40, 1, 1.4, 1.4); --敵サイズ
setRotateKey( spep_3-1, 1, -20); --敵角度
setRotateKey( spep_3, 1, 0); --敵角度
setMoveKey( spep_3-1, 1, 1200, 30, 0); --敵位置
setMoveKey( spep_3, 1, -600, 0, 0); --敵位置
setMoveKey( spep_3+6, 1, -70, 0, 0); --敵位置
setMoveKey( spep_3+26, 1, 30, 0, 0); --敵位置
setMoveKey( spep_3+38, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_3+39, 1, 1200, 0, 0); --敵位置
setDisp( spep_3+40, 1, 0); --敵非表示

-- ** ホワイトフェード ** --
entryFade( spep_3+31, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+1, SE_12);

------------------------------------------------------
-- 横ダッシュ(328F開始)
------------------------------------------------------

spep_4 = ( spep_3+40); --328F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 47, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4, 920, 47, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_4, ryusen3, 0, 0, 0);
setEffRotateKey( spep_4, ryusen3, 0);
setEffScaleKey( spep_4, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen3, 255);

-- ** エフェクト等 ** --
dash = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --横ダッシュ
setEffMoveKey( spep_4, dash, 0, 0, 0);
setEffScaleKey( spep_4, dash, 1.0, 1.0);
setEffAlphaKey( spep_4, dash, 255);
setEffRotateKey( spep_4, dash, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+39, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+1, SE_01);

------------------------------------------------------
-- ラッシュ2(376F開始)
------------------------------------------------------

spep_5 = ( spep_4+48); --376F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_5, 920, 8, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_5, ryusen4, 0, 0, 0);
setEffRotateKey( spep_5, ryusen4, 0);
setEffScaleKey( spep_5, ryusen4, 1.2, 1.2);
setEffAlphaKey( spep_5, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5+52, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線5
setEffMoveKey( spep_5+52, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5+52, ryusen5, 90);
setEffScaleKey( spep_5+52, ryusen5, 1.6, 1);
setEffAlphaKey( spep_5+52, ryusen5, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5+9, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep_5+9, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_5+9, shuchusen2, 1, 1);
setEffAlphaKey( spep_5+9, shuchusen2, 255);
setEffRotateKey( spep_5+9, shuchusen2, 0);

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --ラッシュ2
setEffMoveKey( spep_5, rush2, 0, 0, 0);
setEffScaleKey( spep_5, rush2, 1.0, 1.0);
setEffAlphaKey( spep_5, rush2, 255);
setEffRotateKey( spep_5, rush2, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1); --敵表示

changeAnime( spep_5+9, 1, 106); --敵モーション
changeAnime( spep_5+27, 1, 108); --敵モーション

setScaleKey( spep_5-1, 1, 1.4, 1.4);
setScaleKey( spep_5, 1, 1.4, 1.4);
setScaleKey( spep_5+10, 1, 1.4, 1.4);
setScaleKey( spep_5+11, 1, 1.8, 1.8); --(1発目デカ)
setScaleKey( spep_5+24, 1, 1.4, 1.4);
setScaleKey( spep_5+28, 1, 1.4, 1.4);
setScaleKey( spep_5+29, 1, 1.8, 1.8); --(2発目デカ)
setScaleKey( spep_5+41, 1, 1.4, 1.4);
setScaleKey( spep_5+49, 1, 1.4, 1.4);
setScaleKey( spep_5+50, 1, 1.4, 1.4);
setScaleKey( spep_5+51, 1, 1.8, 1.8); --(3発目デカ)
setScaleKey( spep_5+86, 1, 1.8, 1.8);

setMoveKey( spep_5-1, 1, 1200, 0, 0); --敵位置
setMoveKey( spep_5, 1, 300, 15, 0); --敵位置
setMoveKey( spep_5+8, 1, 160, 15, 0); --敵位置
setMoveKey( spep_5+9, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+10, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+11, 1, 150, 25, 0); --敵位置(1発目デカ高さ調整)
setMoveKey( spep_5+24, 1, 150, 45, 0); --敵位置(1発目戻り)
setMoveKey( spep_5+26, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+27, 1, 160, 120, 0); --敵位置(2発目)
setMoveKey( spep_5+43, 1, 160, 120, 0); --敵位置(2発目戻り)
setMoveKey( spep_5+48, 1, 160, 120, 0); --敵位置(2発目戻り)
setMoveKey( spep_5+49, 1, 140, 110, 0); --敵位置(3発目)
setMoveKey( spep_5+50, 1, 140, 110, 0); --敵位置(3発目)
setMoveKey( spep_5+65, 1, 140, 800, 0); --敵位置
setMoveKey( spep_5+66, 1, 140, 1200, 0); --敵位置

setRotateKey( spep_5-1, 1, 0); --敵角度
setRotateKey( spep_5+8, 1, 0); --敵角度
setRotateKey( spep_5+9, 1, -45); --敵角度(1発目)
setRotateKey( spep_5+26, 1, -45); --敵角度(1発目)
setRotateKey( spep_5+27, 1, -38); --敵角度(2発目)
setRotateKey( spep_5+60, 1, -38); --敵角度(2発目)
setRotateKey( spep_5+65, 1, -75); --敵角度

setShakeChara( spep_5+9, 1, 77, 15);

-- ** ホワイトフェード ** --
entryFade( spep_5+79, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --376F
playSe( spep_5+11, SE_03);
playSe( spep_5+29, SE_04);
playSe( spep_5+51, SE_06);

------------------------------------------------------
-- 上昇(464F開始)
------------------------------------------------------

spep_6 = ( spep_5+88); --464F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 117, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 117, 0x80,  -1,  0,  0,  0); -- 流線6
setEffMoveKey( spep_6, ryusen6, 0, 0, 0);
setEffRotateKey( spep_6, ryusen6, 90);
setEffScaleKey( spep_6, ryusen6, 1.6, 1);
setEffAlphaKey( spep_6, ryusen6, 255);

-- ** エフェクト等 ** --
agaru = entryEffect( spep_6, SP_06, 0x80, -1, 0, 0, 0); --上昇
setEffMoveKey( spep_6, agaru, 0, 0, 0);
setEffScaleKey( spep_6, agaru, 1.0, 1.0);
setEffAlphaKey( spep_6, agaru, 255);
setEffRotateKey( spep_6, agaru, 0);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_6+13, 190006, 71, 0x100, -1, 0, 50, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_6+13, gogogo, 0.6, 0.6);
setEffAlphaKey( spep_6+13, gogogo, 255);
setEffRotateKey( spep_6+13, gogogo, 0);

-- ** 敵キャラの動き ** --
setMoveKey( spep_6+86, 1, 140, 1200, 0); --敵位置
setScaleKey( spep_6+86, 1, 1.8, 1.8); --敵サイズ
setScaleKey( spep_6+87, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_6+117, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_6+87, 1, 140, 700, 0); --敵位置
setMoveKey( spep_6+115, 1, 140, -200, 0); --敵位置

-- ** ホワイトフェード ** --
entryFade( spep_6+110, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+1, SE_01);

------------------------------------------------------
-- カードカットイン(582F開始)
------------------------------------------------------

spep_7 = ( spep_6+118); --582F

speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_7, shuchusen3, 255);
setEffRotateKey( spep_7, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_7+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_7+1, SE_02);

------------------------------------------------------
-- 放つ(675F開始)
------------------------------------------------------

spep_8 = ( spep_7+93); --675F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 97, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_8, 920, 34, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_8, ryusen7, 0, 0, 0);
setEffRotateKey( spep_8, ryusen7, 90);
setEffScaleKey( spep_8, ryusen7, 1.6, 1);
setEffAlphaKey( spep_8, ryusen7, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_8, 921, 97, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_8, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_8, okuyukiryusennaname, -135);
setEffScaleKey( spep_8, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_8, okuyukiryusennaname, 0);
setEffAlphaKey( spep_8+34, okuyukiryusennaname, 0);
setEffAlphaKey( spep_8+35, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8+35, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_8+35, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_8+35, shuchusen4, 1.3, 1.3);
setEffAlphaKey( spep_8+35, shuchusen4, 255);
setEffRotateKey( spep_8+35, shuchusen4, 0);

-- ** エフェクト等 ** --
tame = entryEffect( spep_8, SP_08, 0x80, -1, 0, 0, 0); --溜め_発射(後面)
setEffMoveKey( spep_8, tame, 0, 0, 0);
setEffScaleKey( spep_8, tame, 1.0, 1.0);
setEffAlphaKey( spep_8, tame, 255);
setEffRotateKey( spep_8, tame, 0);

hassya = entryEffect( spep_8, SP_07, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_8, hassya, 0, 0, 0);
setEffScaleKey( spep_8, hassya, 1.0, 1.0);
setEffAlphaKey( spep_8, hassya, 255);
setEffRotateKey( spep_8, hassya, 0);

-- ** 敵キャラの動き ** --
setScaleKey( spep_8-1, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_8-1, 1, 140, -200, 0); --敵位置

setScaleKey( spep_8, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_8+35, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_8+100, 1, 2, 2); --敵サイズ
setMoveKey( spep_8, 1, 35, 0, 0); --敵位置
setMoveKey( spep_8+35, 1, 35, 0, 0); --敵位置
setMoveKey( spep_8+80, 1, 60, -40, 0); --敵位置

setShakeChara( spep_8, 1, 35, 15);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_8+35, 10012, 33, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_8+35, zuo, 2, 2);
setEffRotateKey( spep_8+35, zuo, 28);
setEffAlphaKey( spep_8+35, zuo, 255);
setEffMoveKey( spep_8+35, zuo, 180, 300, 0);
setEffMoveKey( spep_8+36, zuo, 180, 300, 0);
setEffMoveKey( spep_8+37, zuo, 195, 285, 0);
setEffMoveKey( spep_8+38, zuo, 195, 285, 0);
setEffMoveKey( spep_8+39, zuo, 180, 300, 0);
setEffMoveKey( spep_8+40, zuo, 180, 300, 0);
setEffMoveKey( spep_8+41, zuo, 195, 285, 0);
setEffMoveKey( spep_8+42, zuo, 195, 285, 0);
setEffMoveKey( spep_8+43, zuo, 180, 300, 0);
setEffMoveKey( spep_8+44, zuo, 180, 300, 0);
setEffMoveKey( spep_8+45, zuo, 195, 285, 0);
setEffMoveKey( spep_8+46, zuo, 195, 285, 0);
setEffMoveKey( spep_8+47, zuo, 180, 300, 0);
setEffMoveKey( spep_8+48, zuo, 180, 300, 0);
setEffMoveKey( spep_8+49, zuo, 195, 285, 0);
setEffMoveKey( spep_8+50, zuo, 195, 285, 0);
setEffMoveKey( spep_8+51, zuo, 180, 300, 0);
setEffMoveKey( spep_8+52, zuo, 180, 300, 0);
setEffMoveKey( spep_8+53, zuo, 195, 285, 0);
setEffMoveKey( spep_8+54, zuo, 195, 285, 0);
setEffMoveKey( spep_8+55, zuo, 180, 300, 0);
setEffMoveKey( spep_8+56, zuo, 180, 300, 0);
setEffMoveKey( spep_8+57, zuo, 195, 285, 0);
setEffMoveKey( spep_8+58, zuo, 195, 285, 0);
setEffMoveKey( spep_8+59, zuo, 180, 300, 0);
setEffMoveKey( spep_8+60, zuo, 180, 300, 0);
setEffMoveKey( spep_8+61, zuo, 195, 285, 0);
setEffMoveKey( spep_8+62, zuo, 195, 285, 0);
setEffMoveKey( spep_8+63, zuo, 180, 300, 0);
setEffMoveKey( spep_8+64, zuo, 180, 300, 0);
setEffMoveKey( spep_8+65, zuo, 195, 285, 0);
setEffMoveKey( spep_8+66, zuo, 195, 285, 0);
setEffMoveKey( spep_8+67, zuo, 180, 300, 0);
setEffMoveKey( spep_8+68, zuo, 180, 300, 0);

-- ** ホワイトフェード ** --
entryFade( spep_8+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_8+1, SE_08);
playSe( spep_8+37, SE_07);


------------------------------------------------------
-- 爆発(774F開始)
------------------------------------------------------

spep_9 = ( spep_8+99); --774F

setDisp( spep_9-2, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_9, 0, 160, 0, fcolor_r, fcolor_g, fcolor_b, 100); -- ベース暗め　背景

bakuhatu = entryEffect( spep_9, SP_09, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_9, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_9, bakuhatu, 1.0, 1.0);
setEffAlphaKey( spep_9, bakuhatu, 255);
setEffRotateKey( spep_9, bakuhatu, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_9+88, 906, 72, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_9+88, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_9+88, shuchusen5, 1.3, 1.3);
setEffAlphaKey( spep_9+88, shuchusen5, 255);
setEffRotateKey( spep_9+88, shuchusen5, 0);

-- ** 音 ** --
playSe( spep_9+5, SE_13);
playSe( spep_9+30, SE_13);
playSe( spep_9+55, SE_13);
playSe( spep_9+80, SE_11);


-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+150, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase(spep_9+160);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 怒り爆煙(0F開始)
------------------------------------------------------

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 158, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(縦) ** --
ryusen = entryEffectLife( 0, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen, 0, 0, 0);
setEffRotateKey( 0, ryusen, 90);
setEffScaleKey( 0, ryusen, 1.6, 1);
setEffAlphaKey( 0, ryusen, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 89, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 89, shuchusen, 0, 0, 0);
setEffScaleKey( 89, shuchusen, 1, 1);
setEffAlphaKey( 89, shuchusen, 255);
setEffRotateKey( 89, shuchusen, 0);

-- ** エフェクト等 ** --
ikari = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --怒り爆煙
setEffMoveKey( 0, ikari, 0, 0, 0);
setEffScaleKey( 0, ikari, 1.0, 1.0);
setEffAlphaKey( 0, ikari, 255);
setEffRotateKey( 0, ikari, 0);

-- ** ホワイトフェード ** --
entryFade( 150, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 16, SE_01);
playSe( 92, SE_02);


------------------------------------------------------
-- 突進(159F開始)
------------------------------------------------------

spep_1 = 159; --159F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 49, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
attack = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --突進
setEffMoveKey( spep_1, attack, 0, 0, 0);
setEffScaleKey( spep_1, attack, 1.0, 1.0);
setEffAlphaKey( spep_1, attack, 255);
setEffRotateKey( spep_1, attack, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 49, 0x100, -1, 0, 0, 0);   -- 集中線1
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+41, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
seID = playSe( spep_1+5, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 189; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_1+5, seID, 0);

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
-- ラッシュ1(209F開始)
------------------------------------------------------

spep_2 = ( spep_1+50); --209F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 77, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_2, rush, 0, 0, 0);
setEffScaleKey( spep_2, rush, 1.0, 1.0);
setEffAlphaKey( spep_2, rush, 255);
setEffRotateKey( spep_2, rush, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_2, 920, 77, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen1, 0, 0, 0);
setEffRotateKey( spep_2, ryusen1, -20);
setEffRotateKey( spep_2+4, ryusen1, -20);
setEffRotateKey( spep_2+5, ryusen1, 0);
setEffRotateKey( spep_2+40, ryusen1, 0);
setEffScaleKey( spep_2, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen1, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 104); --敵モーション
changeAnime( spep_2+3, 1, 106); --敵モーション
changeAnime( spep_2+57, 1, 108); --敵モーション
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+77, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_2+14, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_2+26, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_2+27, 1, 130, 0, 0); --敵位置
setMoveKey( spep_2+40, 1, 140, 0, 0); --敵位置
setMoveKey( spep_2+41, 1, 145, 40, 0); --敵位置
setMoveKey( spep_2+56, 1, 155, 40, 0); --敵位置
setMoveKey( spep_2+57, 1, 175, 30, 0); --敵位置
setMoveKey( spep_2+65, 1, 600, 100, 0); --敵位置(吹っ飛び)
setMoveKey( spep_2+77, 1, 1200, 100, 0); --敵位置(吹っ飛び)

setRotateKey( spep_2, 1, 0); --敵角度
setRotateKey( spep_2+2, 1, 0); --敵角度
setRotateKey( spep_2+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_2+14, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_2+15, 1, -35); --敵角度(2発目)
setRotateKey( spep_2+26, 1, -35); --敵角度
setRotateKey( spep_2+27, 1, -75); --敵角度
setRotateKey( spep_2+40, 1, -75); --敵角度
setRotateKey( spep_2+41, 1, -30); --敵角度
setRotateKey( spep_2+56, 1, -30); --敵角度
setRotateKey( spep_2+57, 1, -20); --敵角度

setShakeChara( spep_2+3, 1, 98, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+70, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --209F
playSe( spep_2+5, SE_03);
playSe( spep_2+17, SE_03);
playSe( spep_2+29, SE_04);
playSe( spep_2+43, SE_03);
playSe( spep_2+59, SE_05);

------------------------------------------------------
-- 敵飛んでいく(288F開始)
------------------------------------------------------

spep_3 = ( spep_2+79); --288F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 38, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_3, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffScaleKey( spep_3, ryusen2, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen2, 255);

-- ** 敵キャラの動き ** --
setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+40, 1, 1.4, 1.4); --敵サイズ
setRotateKey( spep_3-1, 1, -20); --敵角度
setRotateKey( spep_3, 1, 0); --敵角度
setMoveKey( spep_3-1, 1, 1200, 30, 0); --敵位置
setMoveKey( spep_3, 1, -600, 0, 0); --敵位置
setMoveKey( spep_3+6, 1, -70, 0, 0); --敵位置
setMoveKey( spep_3+26, 1, 30, 0, 0); --敵位置
setMoveKey( spep_3+38, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_3+39, 1, 1200, 0, 0); --敵位置
setDisp( spep_3+40, 1, 0); --敵非表示

-- ** ホワイトフェード ** --
entryFade( spep_3+31, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+1, SE_12);

------------------------------------------------------
-- 横ダッシュ(328F開始)
------------------------------------------------------

spep_4 = ( spep_3+40); --328F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 47, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4, 920, 47, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_4, ryusen3, 0, 0, 0);
setEffRotateKey( spep_4, ryusen3, 0);
setEffScaleKey( spep_4, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen3, 255);

-- ** エフェクト等 ** --
dash = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --横ダッシュ
setEffMoveKey( spep_4, dash, 0, 0, 0);
setEffScaleKey( spep_4, dash, 1.0, 1.0);
setEffAlphaKey( spep_4, dash, 255);
setEffRotateKey( spep_4, dash, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+39, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+1, SE_01);

------------------------------------------------------
-- ラッシュ2(376F開始)
------------------------------------------------------

spep_5 = ( spep_4+48); --376F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_5, 920, 8, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_5, ryusen4, 0, 0, 0);
setEffRotateKey( spep_5, ryusen4, 0);
setEffScaleKey( spep_5, ryusen4, 1.2, 1.2);
setEffAlphaKey( spep_5, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5+52, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線5
setEffMoveKey( spep_5+52, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5+52, ryusen5, 90);
setEffScaleKey( spep_5+52, ryusen5, 1.6, 1);
setEffAlphaKey( spep_5+52, ryusen5, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5+9, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep_5+9, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_5+9, shuchusen2, 1, 1);
setEffAlphaKey( spep_5+9, shuchusen2, 255);
setEffRotateKey( spep_5+9, shuchusen2, 0);

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --ラッシュ2
setEffMoveKey( spep_5, rush2, 0, 0, 0);
setEffScaleKey( spep_5, rush2, 1.0, 1.0);
setEffAlphaKey( spep_5, rush2, 255);
setEffRotateKey( spep_5, rush2, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1); --敵表示

changeAnime( spep_5+9, 1, 106); --敵モーション
changeAnime( spep_5+27, 1, 108); --敵モーション

setScaleKey( spep_5-1, 1, 1.4, 1.4);
setScaleKey( spep_5, 1, 1.4, 1.4);
setScaleKey( spep_5+10, 1, 1.4, 1.4);
setScaleKey( spep_5+11, 1, 1.8, 1.8); --(1発目デカ)
setScaleKey( spep_5+24, 1, 1.4, 1.4);
setScaleKey( spep_5+28, 1, 1.4, 1.4);
setScaleKey( spep_5+29, 1, 1.8, 1.8); --(2発目デカ)
setScaleKey( spep_5+41, 1, 1.4, 1.4);
setScaleKey( spep_5+49, 1, 1.4, 1.4);
setScaleKey( spep_5+50, 1, 1.4, 1.4);
setScaleKey( spep_5+51, 1, 1.8, 1.8); --(3発目デカ)
setScaleKey( spep_5+86, 1, 1.8, 1.8);

setMoveKey( spep_5-1, 1, 1200, 0, 0); --敵位置
setMoveKey( spep_5, 1, 300, 15, 0); --敵位置
setMoveKey( spep_5+8, 1, 160, 15, 0); --敵位置
setMoveKey( spep_5+9, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+10, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+11, 1, 150, 25, 0); --敵位置(1発目デカ高さ調整)
setMoveKey( spep_5+24, 1, 150, 45, 0); --敵位置(1発目戻り)
setMoveKey( spep_5+26, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_5+27, 1, 160, 120, 0); --敵位置(2発目)
setMoveKey( spep_5+43, 1, 160, 120, 0); --敵位置(2発目戻り)
setMoveKey( spep_5+48, 1, 160, 120, 0); --敵位置(2発目戻り)
setMoveKey( spep_5+49, 1, 140, 110, 0); --敵位置(3発目)
setMoveKey( spep_5+50, 1, 140, 110, 0); --敵位置(3発目)
setMoveKey( spep_5+65, 1, 140, 800, 0); --敵位置
setMoveKey( spep_5+66, 1, 140, 1200, 0); --敵位置

setRotateKey( spep_5-1, 1, 0); --敵角度
setRotateKey( spep_5+8, 1, 0); --敵角度
setRotateKey( spep_5+9, 1, -45); --敵角度(1発目)
setRotateKey( spep_5+26, 1, -45); --敵角度(1発目)
setRotateKey( spep_5+27, 1, -38); --敵角度(2発目)
setRotateKey( spep_5+60, 1, -38); --敵角度(2発目)
setRotateKey( spep_5+65, 1, -75); --敵角度

setShakeChara( spep_5+9, 1, 77, 15);

-- ** ホワイトフェード ** --
entryFade( spep_5+79, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --376F
playSe( spep_5+11, SE_03);
playSe( spep_5+29, SE_04);
playSe( spep_5+51, SE_06);

------------------------------------------------------
-- 上昇(464F開始)
------------------------------------------------------

spep_6 = ( spep_5+88); --464F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 117, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 117, 0x80,  -1,  0,  0,  0); -- 流線6
setEffMoveKey( spep_6, ryusen6, 0, 0, 0);
setEffRotateKey( spep_6, ryusen6, 90);
setEffScaleKey( spep_6, ryusen6, 1.6, 1);
setEffAlphaKey( spep_6, ryusen6, 255);

-- ** エフェクト等 ** --
agaru = entryEffect( spep_6, SP_06, 0x80, -1, 0, 0, 0); --上昇
setEffMoveKey( spep_6, agaru, 0, 0, 0);
setEffScaleKey( spep_6, agaru, 1.0, 1.0);
setEffAlphaKey( spep_6, agaru, 255);
setEffRotateKey( spep_6, agaru, 0);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_6+13, 190006, 71, 0x100, -1, 0, 50, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_6+13, gogogo, -0.6, 0.6);
setEffAlphaKey( spep_6+13, gogogo, 255);
setEffRotateKey( spep_6+13, gogogo, 0);

-- ** 敵キャラの動き ** --
setMoveKey( spep_6+86, 1, 140, 1200, 0); --敵位置
setScaleKey( spep_6+86, 1, 1.8, 1.8); --敵サイズ
setScaleKey( spep_6+87, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_6+117, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_6+87, 1, 140, 700, 0); --敵位置
setMoveKey( spep_6+115, 1, 140, -200, 0); --敵位置

-- ** ホワイトフェード ** --
entryFade( spep_6+110, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+1, SE_01);

------------------------------------------------------
-- カードカットイン(582F開始)
------------------------------------------------------

spep_7 = ( spep_6+118); --582F

speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_7, shuchusen3, 255);
setEffRotateKey( spep_7, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_7+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_7+1, SE_02);

------------------------------------------------------
-- 放つ(675F開始)
------------------------------------------------------

spep_8 = ( spep_7+93); --675F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 97, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_8, 920, 34, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_8, ryusen7, 0, 0, 0);
setEffRotateKey( spep_8, ryusen7, 90);
setEffScaleKey( spep_8, ryusen7, 1.6, 1);
setEffAlphaKey( spep_8, ryusen7, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_8, 921, 97, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_8, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_8, okuyukiryusennaname, -135);
setEffScaleKey( spep_8, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_8, okuyukiryusennaname, 0);
setEffAlphaKey( spep_8+34, okuyukiryusennaname, 0);
setEffAlphaKey( spep_8+35, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8+35, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_8+35, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_8+35, shuchusen4, 1.3, 1.3);
setEffAlphaKey( spep_8+35, shuchusen4, 255);
setEffRotateKey( spep_8+35, shuchusen4, 0);

-- ** エフェクト等 ** --
tame = entryEffect( spep_8, SP_10, 0x80, -1, 0, 0, 0); --溜め_発射(後面)
setEffMoveKey( spep_8, tame, 0, 0, 0);
setEffScaleKey( spep_8, tame, 1.0, 1.0);
setEffAlphaKey( spep_8, tame, 255);
setEffRotateKey( spep_8, tame, 0);

hassya = entryEffect( spep_8, SP_07, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_8, hassya, 0, 0, 0);
setEffScaleKey( spep_8, hassya, 1.0, 1.0);
setEffAlphaKey( spep_8, hassya, 255);
setEffRotateKey( spep_8, hassya, 0);

-- ** 敵キャラの動き ** --
setScaleKey( spep_8-1, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_8-1, 1, 140, -200, 0); --敵位置

setScaleKey( spep_8, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_8+35, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_8+100, 1, 2, 2); --敵サイズ
setMoveKey( spep_8, 1, 35, 0, 0); --敵位置
setMoveKey( spep_8+35, 1, 35, 0, 0); --敵位置
setMoveKey( spep_8+80, 1, 60, -40, 0); --敵位置

setShakeChara( spep_8, 1, 35, 15);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_8+35, 10012, 33, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_8+35, zuo, 2, 2);
setEffRotateKey( spep_8+35, zuo, 28);
setEffAlphaKey( spep_8+35, zuo, 255);
setEffMoveKey( spep_8+35, zuo, 180, 300, 0);
setEffMoveKey( spep_8+36, zuo, 180, 300, 0);
setEffMoveKey( spep_8+37, zuo, 195, 285, 0);
setEffMoveKey( spep_8+38, zuo, 195, 285, 0);
setEffMoveKey( spep_8+39, zuo, 180, 300, 0);
setEffMoveKey( spep_8+40, zuo, 180, 300, 0);
setEffMoveKey( spep_8+41, zuo, 195, 285, 0);
setEffMoveKey( spep_8+42, zuo, 195, 285, 0);
setEffMoveKey( spep_8+43, zuo, 180, 300, 0);
setEffMoveKey( spep_8+44, zuo, 180, 300, 0);
setEffMoveKey( spep_8+45, zuo, 195, 285, 0);
setEffMoveKey( spep_8+46, zuo, 195, 285, 0);
setEffMoveKey( spep_8+47, zuo, 180, 300, 0);
setEffMoveKey( spep_8+48, zuo, 180, 300, 0);
setEffMoveKey( spep_8+49, zuo, 195, 285, 0);
setEffMoveKey( spep_8+50, zuo, 195, 285, 0);
setEffMoveKey( spep_8+51, zuo, 180, 300, 0);
setEffMoveKey( spep_8+52, zuo, 180, 300, 0);
setEffMoveKey( spep_8+53, zuo, 195, 285, 0);
setEffMoveKey( spep_8+54, zuo, 195, 285, 0);
setEffMoveKey( spep_8+55, zuo, 180, 300, 0);
setEffMoveKey( spep_8+56, zuo, 180, 300, 0);
setEffMoveKey( spep_8+57, zuo, 195, 285, 0);
setEffMoveKey( spep_8+58, zuo, 195, 285, 0);
setEffMoveKey( spep_8+59, zuo, 180, 300, 0);
setEffMoveKey( spep_8+60, zuo, 180, 300, 0);
setEffMoveKey( spep_8+61, zuo, 195, 285, 0);
setEffMoveKey( spep_8+62, zuo, 195, 285, 0);
setEffMoveKey( spep_8+63, zuo, 180, 300, 0);
setEffMoveKey( spep_8+64, zuo, 180, 300, 0);
setEffMoveKey( spep_8+65, zuo, 195, 285, 0);
setEffMoveKey( spep_8+66, zuo, 195, 285, 0);
setEffMoveKey( spep_8+67, zuo, 180, 300, 0);
setEffMoveKey( spep_8+68, zuo, 180, 300, 0);

-- ** ホワイトフェード ** --
entryFade( spep_8+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_8+1, SE_08);
playSe( spep_8+37, SE_07);


------------------------------------------------------
-- 爆発(774F開始)
------------------------------------------------------

spep_9 = ( spep_8+99); --774F

setDisp( spep_9-2, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_9, 0, 160, 0, fcolor_r, fcolor_g, fcolor_b, 100); -- ベース暗め　背景

bakuhatu = entryEffect( spep_9, SP_09, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_9, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_9, bakuhatu, 1.0, 1.0);
setEffAlphaKey( spep_9, bakuhatu, 255);
setEffRotateKey( spep_9, bakuhatu, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_9+88, 906, 72, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_9+88, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_9+88, shuchusen5, 1.3, 1.3);
setEffAlphaKey( spep_9+88, shuchusen5, 255);
setEffRotateKey( spep_9+88, shuchusen5, 0);

-- ** 音 ** --
playSe( spep_9+5, SE_13);
playSe( spep_9+30, SE_13);
playSe( spep_9+55, SE_13);
playSe( spep_9+80, SE_11);


-- ダメージ表示
dealDamage(spep_9+16);
entryFade( spep_9+150, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase(spep_9+160);

end