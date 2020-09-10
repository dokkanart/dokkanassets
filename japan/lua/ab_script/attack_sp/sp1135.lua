print ("[lua]sp1135");

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

SP_01 = 150861; --突進
SP_02 = 150869; --ラッシュ1
SP_03 = 150870; --横ダッシュ
SP_04 = 150871; --ラッシュ2
SP_05 = 150872; --上昇
SP_06 = 150866; --発射(前面)
SP_07 = 150867; --溜め_発射(後面)
SP_08 = 150873; --溜め_発射(後面)の敵側


multi_frm = 2;

------------------------------------------------------
-- 突進(0F開始)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 49, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
attack = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --突進
setEffMoveKey( 0, attack, 0, 0, 0);
setEffScaleKey( 0, attack, 1.0, 1.0);
setEffAlphaKey( 0, attack, 255);
setEffRotateKey( 0, attack, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 49, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( 41, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--playSe( 5, SE_01);
seID = playSe( 5, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

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
-- ラッシュ1(50F開始)
------------------------------------------------------

spep_1 = 50; --50F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 59, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_1, rush, 0, 0, 0);
setEffScaleKey( spep_1, rush, 1.0, 1.0);
setEffAlphaKey( spep_1, rush, 255);
setEffRotateKey( spep_1, rush, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_1, 920, 59, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen, 0, 0, 0);
setEffRotateKey( spep_1, ryusen, -20);
setEffRotateKey( spep_1+4, ryusen, -20);
setEffRotateKey( spep_1+5, ryusen, 0);
setEffRotateKey( spep_1+40, ryusen, 0);
setEffScaleKey( spep_1, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 104); --敵モーション
changeAnime( spep_1+3, 1, 106); --敵モーション
changeAnime( spep_1+41, 1, 108); --敵モーション
setScaleKey( spep_1, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_1+77, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_1, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_1+10, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_1+11, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_1+18, 1, 145, 0, 0); --敵位置(2発目余韻)
setMoveKey( spep_1+19, 1, 140, 0, 0); --敵位置(3発目)
setMoveKey( spep_1+28, 1, 140, 0, 0); --敵位置(3発目余韻)
setMoveKey( spep_1+29, 1, 145, 40, 0); --敵位置(4発目)
setMoveKey( spep_1+40, 1, 145, 40, 0); --敵位置(4発目余韻)
setMoveKey( spep_1+41, 1, 175, 30, 0); --敵位置
setMoveKey( spep_1+48, 1, 600, 30, 0); --敵位置(吹っ飛び)
setMoveKey( spep_1+49, 1, 1200, 30, 0); --敵位置(吹っ飛び)

setRotateKey( spep_1, 1, 0); --敵角度
setRotateKey( spep_1+2, 1, 0); --敵角度
setRotateKey( spep_1+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_1+10, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_1+11, 1, -35); --敵角度(2発目)
setRotateKey( spep_1+18, 1, -35); --敵角度(2発目余韻)
setRotateKey( spep_1+19, 1, -75); --敵角度(3発目)
setRotateKey( spep_1+28, 1, -75); --敵角度(3発目余韻)
setRotateKey( spep_1+29, 1, -30); --敵角度(4発目)
setRotateKey( spep_1+40, 1, -30); --敵角度(4発目余韻)
setRotateKey( spep_1+41, 1, -20); --敵角度

setShakeChara( spep_1+3, 1, 90, 15);

-- ** ホワイトフェード ** --
entryFade( spep_1+51, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_03);
playSe( spep_1+13, SE_03);
playSe( spep_1+21, SE_04);
playSe( spep_1+31, SE_03);
playSe( spep_1+43, SE_05);

------------------------------------------------------
-- 敵飛んでいく(110F開始)
------------------------------------------------------

spep_2 = ( spep_1+60); --110F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 38, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_2, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_2, ryusen2, 0, 0, 0);
setEffRotateKey( spep_2, ryusen2, 0);
setEffScaleKey( spep_2, ryusen2, 1.2, 1.2);
setEffAlphaKey( spep_2, ryusen2, 255);

-- ** 敵キャラの動き ** --
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setRotateKey( spep_2-1, 1, -20); --敵角度
setRotateKey( spep_2, 1, 0); --敵角度
setMoveKey( spep_2-1, 1, 1200, 30, 0); --敵位置
setMoveKey( spep_2, 1, -600, 0, 0); --敵位置
setMoveKey( spep_2+6, 1, -70, 0, 0); --敵位置
setMoveKey( spep_2+26, 1, 30, 0, 0); --敵位置
setMoveKey( spep_2+38, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_2+39, 1, 1200, 0, 0); --敵位置
setDisp( spep_2+40, 1, 0); --敵非表示

-- ** ホワイトフェード ** --
entryFade( spep_2+31, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+1, SE_12);

------------------------------------------------------
-- 横ダッシュ(150F開始)
------------------------------------------------------

spep_3 = ( spep_2+40); --150F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 98, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 920, 98, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 0);
setEffScaleKey( spep_3, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen3, 255);

-- ** エフェクト等 ** --
dash = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --横ダッシュ
setEffMoveKey( spep_3, dash, 0, 0, 0);
setEffScaleKey( spep_3, dash, 1.0, 1.0);
setEffAlphaKey( spep_3, dash, 255);
setEffRotateKey( spep_3, dash, 0);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_3, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_3, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+13, 190006, 71, 0x100, -1, 0, -150, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+13, gogogo, 0.6, 0.6);
setEffAlphaKey( spep_3+13, gogogo, 255);
setEffRotateKey( spep_3+13, gogogo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+91, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+1, SE_01);

------------------------------------------------------
-- ラッシュ2(250F開始)
------------------------------------------------------

spep_4 = ( spep_3+100); --250F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 68, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 920, 8, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4, 0);
setEffScaleKey( spep_4, ryusen4, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_4+35, 920, 33, 0x80,  -1,  0,  0,  0); -- 流線5
setEffMoveKey( spep_4+35, ryusen5, 0, 0, 0);
setEffRotateKey( spep_4+35, ryusen5, 90);
setEffScaleKey( spep_4+35, ryusen5, 1.6, 1);
setEffAlphaKey( spep_4+35, ryusen5, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4+9, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep_4+9, shuchusen, 0, 0, 0);
setEffScaleKey( spep_4+9, shuchusen, 1, 1);
setEffAlphaKey( spep_4+9, shuchusen, 255);
setEffRotateKey( spep_4+9, shuchusen, 0);

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --ラッシュ2
setEffMoveKey( spep_4, rush2, 0, 0, 0);
setEffScaleKey( spep_4, rush2, 1.0, 1.0);
setEffAlphaKey( spep_4, rush2, 255);
setEffRotateKey( spep_4, rush2, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_4-1, 1, 1); --敵表示

changeAnime( spep_4+9, 1, 106); --敵モーション
changeAnime( spep_4+21, 1, 108); --敵モーション

setScaleKey( spep_4-1, 1, 1.4, 1.4);
setScaleKey( spep_4, 1, 1.4, 1.4);
setScaleKey( spep_4+66, 1, 1.4, 1.4);
setMoveKey( spep_4-1, 1, 1200, 0, 0); --敵位置
setMoveKey( spep_4, 1, 300, 15, 0); --敵位置
setMoveKey( spep_4+8, 1, 160, 15, 0); --敵位置
setMoveKey( spep_4+9, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_4+20, 1, 160, 45, 0); --敵位置(1発目余韻)
setMoveKey( spep_4+21, 1, 160, 110, 0); --敵位置(2発目)
setMoveKey( spep_4+36, 1, 160, 110, 0); --敵位置(2発目余韻)
setMoveKey( spep_4+36, 1, 140, 115, 0); --敵位置(3発目1)
setMoveKey( spep_4+37, 1, 160, 200, 0); --敵位置(3発目2)
setMoveKey( spep_4+52, 1, 160, 800, 0); --敵位置(2発目)
setMoveKey( spep_4+53, 1, 160, 1200, 0); --敵位置(2発目)

setRotateKey( spep_4-1, 1, 0); --敵角度
setRotateKey( spep_4+8, 1, 0); --敵角度
setRotateKey( spep_4+9, 1, -45); --敵角度(1発目)
setRotateKey( spep_4+20, 1, -45); --敵角度(1発目余韻)
setRotateKey( spep_4+21, 1, -40); --敵角度(2発目)
setRotateKey( spep_4+36, 1, -40); --敵角度(2発目余韻)
setRotateKey( spep_4+37, 1, -50); --敵角度(3発目)
setRotateKey( spep_4+52, 1, -75); --敵角度

setShakeChara( spep_4+9, 1, 44, 15);

-- ** ホワイトフェード ** --
entryFade( spep_4+60, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --250F
playSe( spep_4+11, SE_03);
playSe( spep_4+23, SE_04);
playSe( spep_4+37, SE_06);

------------------------------------------------------
-- 上昇(319F開始)
------------------------------------------------------

spep_5 = ( spep_4+69); --319F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_5, 920, 58, 0x80,  -1,  0,  0,  0); -- 流線6
setEffMoveKey( spep_5, ryusen6, 0, 0, 0);
setEffRotateKey( spep_5, ryusen6, 90);
setEffScaleKey( spep_5, ryusen6, 1.6, 1);
setEffAlphaKey( spep_5, ryusen6, 255);

-- ** エフェクト等 ** --
agaru = entryEffect( spep_5, SP_05, 0x80, -1, 0, 0, 0); --上昇
setEffMoveKey( spep_5, agaru, 0, 0, 0);
setEffScaleKey( spep_5, agaru, 1.0, 1.0);
setEffAlphaKey( spep_5, agaru, 255);
setEffRotateKey( spep_5, agaru, 0);

-- ** 敵キャラの動き ** --
setMoveKey( spep_5-1, 1, 160, 1200, 0); --敵位置
setScaleKey( spep_5-1, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_5+58, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_5+29, 1, 140, 700, 0); --敵位置
setMoveKey( spep_5+57, 1, 140, -200, 0); --敵位置

-- ** ホワイトフェード ** --
entryFade( spep_5+50, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+1, SE_01);

------------------------------------------------------
-- カードカットイン(378F開始)
------------------------------------------------------

spep_6 = ( spep_5+59); --378F

speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_6, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_6, shuchusen2, 255);
setEffRotateKey( spep_6, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+1, SE_02);

------------------------------------------------------
-- 放つ(378F開始)
------------------------------------------------------

spep_7 = ( spep_6+93); --471F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 97, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_7, 920, 34, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_7, ryusen7, 0, 0, 0);
setEffRotateKey( spep_7, ryusen7, 90);
setEffScaleKey( spep_7, ryusen7, 1.6, 1);
setEffAlphaKey( spep_7, ryusen7, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_7, 921, 97, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_7, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname, -135);
setEffScaleKey( spep_7, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_7, okuyukiryusennaname, 0);
setEffAlphaKey( spep_7+34, okuyukiryusennaname, 0);
setEffAlphaKey( spep_7+35, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7+35, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7+35, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_7+35, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_7+35, shuchusen3, 255);
setEffRotateKey( spep_7+35, shuchusen3, 0);

-- ** エフェクト等 ** --
tame = entryEffect( spep_7, SP_07, 0x80, -1, 0, 0, 0); --溜め_発射(後面)
setEffMoveKey( spep_7, tame, 0, 0, 0);
setEffScaleKey( spep_7, tame, 1.0, 1.0);
setEffAlphaKey( spep_7, tame, 255);
setEffRotateKey( spep_7, tame, 0);

hassya = entryEffect( spep_7, SP_06, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_7, hassya, 0, 0, 0);
setEffScaleKey( spep_7, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7, hassya, 255);
setEffRotateKey( spep_7, hassya, 0);

-- ** 敵キャラの動き ** --
setScaleKey( spep_7-1, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_7-1, 1, 140, -250, 0); --敵位置

setScaleKey( spep_7, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+35, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+100, 1, 2, 2); --敵サイズ
setMoveKey( spep_7, 1, 35, 0, 0); --敵位置
setMoveKey( spep_7+35, 1, 35, 0, 0); --敵位置
setMoveKey( spep_7+80, 1, 60, -40, 0); --敵位置



setShakeChara( spep_7, 1, 35, 15);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_7+35, 10012, 33, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_7+35, zuo, 2, 2);
setEffRotateKey( spep_7+35, zuo, 28);
setEffAlphaKey( spep_7+35, zuo, 255);
setEffMoveKey( spep_7+35, zuo, 180, 300, 0);
setEffMoveKey( spep_7+36, zuo, 180, 300, 0);
setEffMoveKey( spep_7+37, zuo, 195, 285, 0);
setEffMoveKey( spep_7+38, zuo, 195, 285, 0);
setEffMoveKey( spep_7+39, zuo, 180, 300, 0);
setEffMoveKey( spep_7+40, zuo, 180, 300, 0);
setEffMoveKey( spep_7+41, zuo, 195, 285, 0);
setEffMoveKey( spep_7+42, zuo, 195, 285, 0);
setEffMoveKey( spep_7+43, zuo, 180, 300, 0);
setEffMoveKey( spep_7+44, zuo, 180, 300, 0);
setEffMoveKey( spep_7+45, zuo, 195, 285, 0);
setEffMoveKey( spep_7+46, zuo, 195, 285, 0);
setEffMoveKey( spep_7+47, zuo, 180, 300, 0);
setEffMoveKey( spep_7+48, zuo, 180, 300, 0);
setEffMoveKey( spep_7+49, zuo, 195, 285, 0);
setEffMoveKey( spep_7+50, zuo, 195, 285, 0);
setEffMoveKey( spep_7+51, zuo, 180, 300, 0);
setEffMoveKey( spep_7+52, zuo, 180, 300, 0);
setEffMoveKey( spep_7+53, zuo, 195, 285, 0);
setEffMoveKey( spep_7+54, zuo, 195, 285, 0);
setEffMoveKey( spep_7+55, zuo, 180, 300, 0);
setEffMoveKey( spep_7+56, zuo, 180, 300, 0);
setEffMoveKey( spep_7+57, zuo, 195, 285, 0);
setEffMoveKey( spep_7+58, zuo, 195, 285, 0);
setEffMoveKey( spep_7+59, zuo, 180, 300, 0);
setEffMoveKey( spep_7+60, zuo, 180, 300, 0);
setEffMoveKey( spep_7+61, zuo, 195, 285, 0);
setEffMoveKey( spep_7+62, zuo, 195, 285, 0);
setEffMoveKey( spep_7+63, zuo, 180, 300, 0);
setEffMoveKey( spep_7+64, zuo, 180, 300, 0);
setEffMoveKey( spep_7+65, zuo, 195, 285, 0);
setEffMoveKey( spep_7+66, zuo, 195, 285, 0);
setEffMoveKey( spep_7+67, zuo, 180, 300, 0);
setEffMoveKey( spep_7+68, zuo, 180, 300, 0);

-- ** ホワイトフェード ** --
entryFade( spep_7+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --471F
--playSe( spep_7+1, SE_01);
playSe( spep_7+1, SE_08);
playSe( spep_7+37, SE_07);
--playSe( spep_7+57, SE_08);

------------------------------------------------------
-- ギャン(570F開始)
------------------------------------------------------

spep_8 = ( spep_7+99); --570F

setDisp( spep_8-2, 1, 0);

-- ** エフェクト等 ** --
gyan = entryEffect( spep_8, 190001, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_8, gyan, 0, 0, 0);
setEffScaleKey( spep_8, gyan, 1.0, 1.0);
setEffAlphaKey( spep_8, gyan, 255);
setEffRotateKey( spep_8, gyan, 0);

-- 書き文字エントリー --
ctg = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_8, ctg, 99, 20);
setEffScaleKey( spep_8, ctg, 0.1, 0.1);
setEffScaleKey( spep_8+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_8+54, ctg, 3.8, 3.8);
setEffAlphaKey( spep_8, ctg, 255);
setEffAlphaKey( spep_8+50, ctg, 255);
setEffAlphaKey( spep_8+54, ctg, 0);

-- ** ホワイトフェード ** --
entryFade( spep_8+50, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_8+1, SE_13);

------------------------------------------------------
-- バリン(627F開始)
------------------------------------------------------

spep_9 = ( spep_8+57); --627F空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1, 1, 60, -40, 0);
setScaleKey( spep_9-1, 1, 2, 2);
setRotateKey( spep_9-1, 1, -75);
setMoveKey(  spep_9, 1, 0, 0, 128);
setScaleKey( spep_9, 1, 0.1, 0.1);
changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_9+8, SE_11);

setMoveKey( spep_9+8, 1, 0, 0, 128); --478
setMoveKey( spep_9+15, 1, -60, -200, -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake( spep_9+7, 6, 15);
setShake( spep_9+13, 15, 10);

setRotateKey( spep_9, 1, 30 );
setRotateKey( spep_9+2, 1, 80 );
setRotateKey( spep_9+4, 1, 120 );
setRotateKey( spep_9+6, 1, 160 );
setRotateKey( spep_9+8, 1, 200 );
setRotateKey( spep_9+10, 1, 260 );
setRotateKey( spep_9+12, 1, 320 );
setRotateKey( spep_9+14, 1, 0 );

setShakeChara( spep_9+15, 1, 5, 10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_10);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_9+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_9+16);
--entryFade( spep_9+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+110);

else

------------------------------------------------------
-- 敵側開始
------------------------------------------------------
------------------------------------------------------
-- 突進(0F開始)
------------------------------------------------------

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 49, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
attack = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --突進
setEffMoveKey( 0, attack, 0, 0, 0);
setEffScaleKey( 0, attack, 1.0, 1.0);
setEffAlphaKey( 0, attack, 255);
setEffRotateKey( 0, attack, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 49, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( 41, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--playSe( 5, SE_01);
seID = playSe( 5, SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

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
-- ラッシュ1(50F開始)
------------------------------------------------------

spep_1 = 50; --50F

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 59, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_1, rush, 0, 0, 0);
setEffScaleKey( spep_1, rush, 1.0, 1.0);
setEffAlphaKey( spep_1, rush, 255);
setEffRotateKey( spep_1, rush, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_1, 920, 59, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen, 0, 0, 0);
setEffRotateKey( spep_1, ryusen, -20);
setEffRotateKey( spep_1+4, ryusen, -20);
setEffRotateKey( spep_1+5, ryusen, 0);
setEffRotateKey( spep_1+40, ryusen, 0);
setEffScaleKey( spep_1, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 104); --敵モーション
changeAnime( spep_1+3, 1, 106); --敵モーション
changeAnime( spep_1+41, 1, 108); --敵モーション
setScaleKey( spep_1, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_1+77, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_1, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_1+10, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_1+11, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_1+18, 1, 145, 0, 0); --敵位置(2発目余韻)
setMoveKey( spep_1+19, 1, 140, 0, 0); --敵位置(3発目)
setMoveKey( spep_1+28, 1, 140, 0, 0); --敵位置(3発目余韻)
setMoveKey( spep_1+29, 1, 145, 40, 0); --敵位置(4発目)
setMoveKey( spep_1+40, 1, 145, 40, 0); --敵位置(4発目余韻)
setMoveKey( spep_1+41, 1, 175, 30, 0); --敵位置
setMoveKey( spep_1+48, 1, 600, 30, 0); --敵位置(吹っ飛び)
setMoveKey( spep_1+49, 1, 1200, 30, 0); --敵位置(吹っ飛び)

setRotateKey( spep_1, 1, 0); --敵角度
setRotateKey( spep_1+2, 1, 0); --敵角度
setRotateKey( spep_1+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_1+10, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_1+11, 1, -35); --敵角度(2発目)
setRotateKey( spep_1+18, 1, -35); --敵角度(2発目余韻)
setRotateKey( spep_1+19, 1, -75); --敵角度(3発目)
setRotateKey( spep_1+28, 1, -75); --敵角度(3発目余韻)
setRotateKey( spep_1+29, 1, -30); --敵角度(4発目)
setRotateKey( spep_1+40, 1, -30); --敵角度(4発目余韻)
setRotateKey( spep_1+41, 1, -20); --敵角度

setShakeChara( spep_1+3, 1, 90, 15);

-- ** ホワイトフェード ** --
entryFade( spep_1+51, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_03);
playSe( spep_1+13, SE_03);
playSe( spep_1+21, SE_04);
playSe( spep_1+31, SE_03);
playSe( spep_1+43, SE_05);

------------------------------------------------------
-- 敵飛んでいく(110F開始)
------------------------------------------------------

spep_2 = ( spep_1+60); --110F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 38, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_2, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_2, ryusen2, 0, 0, 0);
setEffRotateKey( spep_2, ryusen2, 0);
setEffScaleKey( spep_2, ryusen2, 1.2, 1.2);
setEffAlphaKey( spep_2, ryusen2, 255);

-- ** 敵キャラの動き ** --
setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setRotateKey( spep_2-1, 1, -20); --敵角度
setRotateKey( spep_2, 1, 0); --敵角度
setMoveKey( spep_2-1, 1, 1200, 30, 0); --敵位置
setMoveKey( spep_2, 1, -600, 0, 0); --敵位置
setMoveKey( spep_2+6, 1, -70, 0, 0); --敵位置
setMoveKey( spep_2+26, 1, 30, 0, 0); --敵位置
setMoveKey( spep_2+38, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_2+39, 1, 1200, 0, 0); --敵位置
setDisp( spep_2+40, 1, 0); --敵非表示

-- ** ホワイトフェード ** --
entryFade( spep_2+31, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+1, SE_12);

------------------------------------------------------
-- 横ダッシュ(150F開始)
------------------------------------------------------

spep_3 = ( spep_2+40); --150F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 98, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 920, 98, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 0);
setEffScaleKey( spep_3, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen3, 255);

-- ** エフェクト等 ** --
dash = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --横ダッシュ
setEffMoveKey( spep_3, dash, 0, 0, 0);
setEffScaleKey( spep_3, dash, 1.0, 1.0);
setEffAlphaKey( spep_3, dash, 255);
setEffRotateKey( spep_3, dash, 0);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_3, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_3, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+13, 190006, 71, 0x100, -1, 0, -100, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+13, gogogo, -0.6, 0.6);
setEffAlphaKey( spep_3+13, gogogo, 255);
setEffRotateKey( spep_3+13, gogogo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+91, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+1, SE_01);

------------------------------------------------------
-- ラッシュ2(250F開始)
------------------------------------------------------

spep_4 = ( spep_3+100); --250F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 68, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 920, 8, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4, 0);
setEffScaleKey( spep_4, ryusen4, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_4+35, 920, 33, 0x80,  -1,  0,  0,  0); -- 流線5
setEffMoveKey( spep_4+35, ryusen5, 0, 0, 0);
setEffRotateKey( spep_4+35, ryusen5, 90);
setEffScaleKey( spep_4+35, ryusen5, 1.6, 1);
setEffAlphaKey( spep_4+35, ryusen5, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4+9, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep_4+9, shuchusen, 0, 0, 0);
setEffScaleKey( spep_4+9, shuchusen, 1, 1);
setEffAlphaKey( spep_4+9, shuchusen, 255);
setEffRotateKey( spep_4+9, shuchusen, 0);

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --ラッシュ2
setEffMoveKey( spep_4, rush2, 0, 0, 0);
setEffScaleKey( spep_4, rush2, 1.0, 1.0);
setEffAlphaKey( spep_4, rush2, 255);
setEffRotateKey( spep_4, rush2, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_4-1, 1, 1); --敵表示

changeAnime( spep_4+9, 1, 106); --敵モーション
changeAnime( spep_4+21, 1, 108); --敵モーション

setScaleKey( spep_4-1, 1, 1.4, 1.4);
setScaleKey( spep_4, 1, 1.4, 1.4);
setScaleKey( spep_4+66, 1, 1.4, 1.4);
setMoveKey( spep_4-1, 1, 1200, 0, 0); --敵位置
setMoveKey( spep_4, 1, 300, 15, 0); --敵位置
setMoveKey( spep_4+8, 1, 160, 15, 0); --敵位置
setMoveKey( spep_4+9, 1, 150, 45, 0); --敵位置(1発目)
setMoveKey( spep_4+20, 1, 160, 45, 0); --敵位置(1発目余韻)
setMoveKey( spep_4+21, 1, 160, 110, 0); --敵位置(2発目)
setMoveKey( spep_4+36, 1, 160, 110, 0); --敵位置(2発目余韻)
setMoveKey( spep_4+36, 1, 140, 115, 0); --敵位置(3発目1)
setMoveKey( spep_4+37, 1, 160, 200, 0); --敵位置(3発目2)
setMoveKey( spep_4+52, 1, 160, 800, 0); --敵位置(2発目)
setMoveKey( spep_4+53, 1, 160, 1200, 0); --敵位置(2発目)

setRotateKey( spep_4-1, 1, 0); --敵角度
setRotateKey( spep_4+8, 1, 0); --敵角度
setRotateKey( spep_4+9, 1, -45); --敵角度(1発目)
setRotateKey( spep_4+20, 1, -45); --敵角度(1発目余韻)
setRotateKey( spep_4+21, 1, -40); --敵角度(2発目)
setRotateKey( spep_4+36, 1, -40); --敵角度(2発目余韻)
setRotateKey( spep_4+37, 1, -50); --敵角度(3発目)
setRotateKey( spep_4+52, 1, -75); --敵角度

setShakeChara( spep_4+9, 1, 44, 15);

-- ** ホワイトフェード ** --
entryFade( spep_4+60, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --250F
playSe( spep_4+11, SE_03);
playSe( spep_4+23, SE_04);
playSe( spep_4+37, SE_06);

------------------------------------------------------
-- 上昇(319F開始)
------------------------------------------------------

spep_5 = ( spep_4+69); --319F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 58, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_5, 920, 58, 0x80,  -1,  0,  0,  0); -- 流線6
setEffMoveKey( spep_5, ryusen6, 0, 0, 0);
setEffRotateKey( spep_5, ryusen6, 90);
setEffScaleKey( spep_5, ryusen6, 1.6, 1);
setEffAlphaKey( spep_5, ryusen6, 255);

-- ** エフェクト等 ** --
agaru = entryEffect( spep_5, SP_05, 0x80, -1, 0, 0, 0); --上昇
setEffMoveKey( spep_5, agaru, 0, 0, 0);
setEffScaleKey( spep_5, agaru, 1.0, 1.0);
setEffAlphaKey( spep_5, agaru, 255);
setEffRotateKey( spep_5, agaru, 0);

-- ** 敵キャラの動き ** --
setMoveKey( spep_5-1, 1, 160, 1200, 0); --敵位置
setScaleKey( spep_5-1, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_5+58, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_5+29, 1, 140, 700, 0); --敵位置
setMoveKey( spep_5+57, 1, 140, -200, 0); --敵位置

-- ** ホワイトフェード ** --
entryFade( spep_5+50, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+1, SE_01);

------------------------------------------------------
-- カードカットイン(378F開始)
------------------------------------------------------

spep_6 = ( spep_5+59); --378F

speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_6, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_6, shuchusen2, 255);
setEffRotateKey( spep_6, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+1, SE_02);

------------------------------------------------------
-- 放つ(378F開始)
------------------------------------------------------

spep_7 = ( spep_6+93); --471F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 97, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_7, 920, 34, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_7, ryusen7, 0, 0, 0);
setEffRotateKey( spep_7, ryusen7, 90);
setEffScaleKey( spep_7, ryusen7, 1.6, 1);
setEffAlphaKey( spep_7, ryusen7, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_7, 921, 97, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_7, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname, -135);
setEffScaleKey( spep_7, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_7, okuyukiryusennaname, 0);
setEffAlphaKey( spep_7+34, okuyukiryusennaname, 0);
setEffAlphaKey( spep_7+35, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_7+35, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7+35, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_7+35, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_7+35, shuchusen3, 255);
setEffRotateKey( spep_7+35, shuchusen3, 0);

-- ** エフェクト等 ** --
tame = entryEffect( spep_7, SP_08, 0x80, -1, 0, 0, 0); --溜め_発射(後面)
setEffMoveKey( spep_7, tame, 0, 0, 0);
setEffScaleKey( spep_7, tame, 1.0, 1.0);
setEffAlphaKey( spep_7, tame, 255);
setEffRotateKey( spep_7, tame, 0);

hassya = entryEffect( spep_7, SP_06, 0x100, -1, 0, 0, 0); --発射(前面)
setEffMoveKey( spep_7, hassya, 0, 0, 0);
setEffScaleKey( spep_7, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7, hassya, 255);
setEffRotateKey( spep_7, hassya, 0);

-- ** 敵キャラの動き ** --
setScaleKey( spep_7-1, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_7-1, 1, 140, -250, 0); --敵位置

setScaleKey( spep_7, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+35, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+100, 1, 2, 2); --敵サイズ
setMoveKey( spep_7, 1, 35, 0, 0); --敵位置
setMoveKey( spep_7+35, 1, 35, 0, 0); --敵位置
setMoveKey( spep_7+80, 1, 60, -40, 0); --敵位置

setShakeChara( spep_7, 1, 35, 15);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_7+35, 10012, 33, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_7+35, zuo, 2, 2);
setEffRotateKey( spep_7+35, zuo, 28);
setEffAlphaKey( spep_7+35, zuo, 255);
setEffMoveKey( spep_7+35, zuo, 180, 300, 0);
setEffMoveKey( spep_7+36, zuo, 180, 300, 0);
setEffMoveKey( spep_7+37, zuo, 195, 285, 0);
setEffMoveKey( spep_7+38, zuo, 195, 285, 0);
setEffMoveKey( spep_7+39, zuo, 180, 300, 0);
setEffMoveKey( spep_7+40, zuo, 180, 300, 0);
setEffMoveKey( spep_7+41, zuo, 195, 285, 0);
setEffMoveKey( spep_7+42, zuo, 195, 285, 0);
setEffMoveKey( spep_7+43, zuo, 180, 300, 0);
setEffMoveKey( spep_7+44, zuo, 180, 300, 0);
setEffMoveKey( spep_7+45, zuo, 195, 285, 0);
setEffMoveKey( spep_7+46, zuo, 195, 285, 0);
setEffMoveKey( spep_7+47, zuo, 180, 300, 0);
setEffMoveKey( spep_7+48, zuo, 180, 300, 0);
setEffMoveKey( spep_7+49, zuo, 195, 285, 0);
setEffMoveKey( spep_7+50, zuo, 195, 285, 0);
setEffMoveKey( spep_7+51, zuo, 180, 300, 0);
setEffMoveKey( spep_7+52, zuo, 180, 300, 0);
setEffMoveKey( spep_7+53, zuo, 195, 285, 0);
setEffMoveKey( spep_7+54, zuo, 195, 285, 0);
setEffMoveKey( spep_7+55, zuo, 180, 300, 0);
setEffMoveKey( spep_7+56, zuo, 180, 300, 0);
setEffMoveKey( spep_7+57, zuo, 195, 285, 0);
setEffMoveKey( spep_7+58, zuo, 195, 285, 0);
setEffMoveKey( spep_7+59, zuo, 180, 300, 0);
setEffMoveKey( spep_7+60, zuo, 180, 300, 0);
setEffMoveKey( spep_7+61, zuo, 195, 285, 0);
setEffMoveKey( spep_7+62, zuo, 195, 285, 0);
setEffMoveKey( spep_7+63, zuo, 180, 300, 0);
setEffMoveKey( spep_7+64, zuo, 180, 300, 0);
setEffMoveKey( spep_7+65, zuo, 195, 285, 0);
setEffMoveKey( spep_7+66, zuo, 195, 285, 0);
setEffMoveKey( spep_7+67, zuo, 180, 300, 0);
setEffMoveKey( spep_7+68, zuo, 180, 300, 0);

-- ** ホワイトフェード ** --
entryFade( spep_7+90, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--playSe( spep_7+1, SE_01);
playSe( spep_7+1, SE_08);
playSe( spep_7+37, SE_07);
--playSe( spep_7+57, SE_08);

------------------------------------------------------
-- ギャン(570F開始)
------------------------------------------------------

spep_8 = ( spep_7+99); --570F

setDisp( spep_8-2, 1, 0);

-- ** エフェクト等 ** --
gyan = entryEffect( spep_8, 190001, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_8, gyan, 0, 0, 0);
setEffScaleKey( spep_8, gyan, 1.0, 1.0);
setEffAlphaKey( spep_8, gyan, 255);
setEffRotateKey( spep_8, gyan, 0);

-- 書き文字エントリー --
ctg = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_8, ctg, 99, 20);
setEffScaleKey( spep_8, ctg, 0.1, 0.1);
setEffScaleKey( spep_8+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_8+54, ctg, 3.8, 3.8);
setEffAlphaKey( spep_8, ctg, 255);
setEffAlphaKey( spep_8+50, ctg, 255);
setEffAlphaKey( spep_8+54, ctg, 0);

-- ** ホワイトフェード ** --
entryFade( spep_8+50, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_8+1, SE_13);

------------------------------------------------------
-- バリン(627F開始)
------------------------------------------------------

spep_9 = ( spep_8+57); --627F空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1, 1, 60, -40, 0);
setScaleKey( spep_9-1, 1, 2, 2);
setRotateKey( spep_9-1, 1, -75);
setMoveKey(  spep_9, 1, 0, 0, 128);
setScaleKey( spep_9, 1, 0.1, 0.1);
changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_9+8, SE_11);

setMoveKey( spep_9+8, 1, 0, 0, 128); --478
setMoveKey( spep_9+15, 1, -60, -200, -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake( spep_9+7, 6, 15);
setShake( spep_9+13, 15, 10);

setRotateKey( spep_9, 1, 30 );
setRotateKey( spep_9+2, 1, 80 );
setRotateKey( spep_9+4, 1, 120 );
setRotateKey( spep_9+6, 1, 160 );
setRotateKey( spep_9+8, 1, 200 );
setRotateKey( spep_9+10, 1, 260 );
setRotateKey( spep_9+12, 1, 320 );
setRotateKey( spep_9+14, 1, 0 );

setShakeChara( spep_9+15, 1, 5, 10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_10);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_9+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_9+16);
--entryFade( spep_9+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+110);

end
