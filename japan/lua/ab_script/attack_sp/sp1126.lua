print ("[lua]sp1126");

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

SP_01 = 150782; --溜め
SP_02 = 150784; --天津ラッシュ
SP_03 = 150786; --餃子ラッシュ
SP_04 = 150785; --天津ラッシュ（敵）
SP_05 = 150787; --どどんぱ溜め
SP_06 = 150788; --どどんぱ溜め（敵）
SP_07 = 150789; --発射
SP_08 = 150790; --発射（敵）
SP_09 = 150781; --迫る命中
SP_10 = 150783; --溜め（敵）

multi_frm = 2;

------------------------------------------------------
-- 手前に突っ込む
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 125, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
tame = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --溜め
setEffMoveKey( 0, tame, 0, 0, 0);
setEffScaleKey( 0, tame, 1.0, 1.0);
setEffAlphaKey( 0, tame, 255);
setEffRotateKey( 0, tame, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 125, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 13, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( 13, gogogo, 0.6, 0.6);
setEffAlphaKey( 13, gogogo, 255);
setEffRotateKey( 13, gogogo, 0);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( 118, 6, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 5, SE_01);
seID = playSe( 92, SE_02);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 115; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 92, seID, 0);

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
-- 天津飯アタック(128F開始)
------------------------------------------------------

spep_1 = 128;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 71, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
ten_attack = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --天津飯アタック
setEffMoveKey( spep_1, ten_attack, 0, 0, 0);
setEffScaleKey( spep_1, ten_attack, 1.0, 1.0);
setEffAlphaKey( spep_1, ten_attack, 255);
setEffRotateKey( spep_1, ten_attack, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_1, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen, 0, 0, 0);
setEffRotateKey( spep_1, ryusen, 0);
setEffScaleKey( spep_1, ryusen, 1, 1);
setEffAlphaKey( spep_1, ryusen, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+17, 906, 21, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1+17, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+17, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+17, shuchusen2, 255);
setEffRotateKey( spep_1+17, shuchusen2, 0);

-- ** 書き文字エントリ ** --
gagaga = entryEffectLife( spep_1+17, 10002, 21, 0x100, -1, 0, -80, 300); -- ガガガ
setEffScaleKey( spep_1+17, gagaga, 2.6, 2.6);
setEffAlphaKey( spep_1+17, gagaga, 255);
setEffRotateKey( spep_1+17, gagaga, 0);
setEffShake( spep_1+17, gagaga, 24, 15);

-- ** 書き文字エントリ ** --
ga = entryEffectLife( spep_1+45, 10005, 15, 0x100, -1, 0, 0, 0); -- ガ
setEffMoveKey( spep_1+45, ga, -50, 250, 0);
setEffScaleKey( spep_1+45, ga, 2.2, 2.2);
setEffRotateKey( spep_1+45, ga, -10);
setEffRotateKey( spep_1+50, ga, -10);
setEffRotateKey( spep_1+51, ga, -20);
setEffRotateKey( spep_1+52, ga, -20);
setEffRotateKey( spep_1+53, ga, -10);
setEffRotateKey( spep_1+57, ga, -10);
setEffRotateKey( spep_1+58, ga, -20);
setEffRotateKey( spep_1+59, ga, -20);
setEffRotateKey( spep_1+60, ga, -10);
setEffAlphaKey( spep_1+45, ga, 255);

-- ** ぶっ飛ばし ** --
buttobashi = entryEffectLife( spep_1+45, 924, 23, 0x80, -1, 0, 0, 0); -- ぶっ飛ばし流線
setEffMoveKey( spep_1+45, buttobashi, -280, 80, 0);
setEffRotateKey( spep_1+45, buttobashi, -25);
setEffScaleKey( spep_1+45, buttobashi, 1.6, 1.4);
setEffAlphaKey( spep_1+45, buttobashi, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1-1, 1, 1); -- 敵表示
changeAnime( spep_1-1, 1, 101); -- 敵モーション
setMoveKey( spep_1-1, 1, 0, -50, 0); -- 敵位置
setMoveKey( spep_1, 1, 0, -50, 0); -- 敵位置
setMoveKey( spep_1+14, 1, 80, -40, 0); -- 敵位置
setMoveKey( spep_1+16, 1, 80, -40, 0); -- 敵位置
setMoveKey( spep_1+17, 1, 80, 0, 0); -- 敵位置
setMoveKey( spep_1+44, 1, 80, 0, 0); -- 敵位置
setMoveKey( spep_1+45, 1, 100, 50, 0); -- 敵位置
setMoveKey( spep_1+48, 1, 100, 50, 0); -- 敵位置
setMoveKey( spep_1+70, 1, 320, 400, 0); -- 敵位置


setScaleKey( spep_1-1, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_1+44, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_1+45, 1, 1.6, 1.6); -- 敵サイズ(調整版)
setScaleKey( spep_1+48, 1, 1.6, 1.6); -- 敵サイズ(調整版)
setScaleKey( spep_1+51, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_1+70, 1, 0.5, 0.5); -- 敵サイズ

changeAnime( spep_1+17, 1, 108); -- 敵モーション
setShakeChara( spep_1+17, 1, 27, 10); -- 敵揺れ

-- ** ホワイトフェード ** --
entryFade( spep_1+65, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --128
playSe( spep_1+17, SE_03); --145
playSe( spep_1+23, SE_04); --151
playSe( spep_1+31, SE_05); --159
playSe( spep_1+45, SE_06); --173

------------------------------------------------------
-- 餃子アタック(200F開始)
------------------------------------------------------

spep_2 = (spep_1+72); --200F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 82, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 29, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 30, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -50);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.7, 1.7);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_2+40, 921, 37, 0x80, -1, 0, 200, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_2+40, okuyukiryusennaname2, 0, 200, 0);
setEffRotateKey( spep_2+40, okuyukiryusennaname2, 90);
setEffScaleKey( spep_2+40, okuyukiryusennaname2, 2, 0.8);
setEffAlphaKey( spep_2+40, okuyukiryusennaname2, 255);

-- ** 敵キャラの動き ** --
setMoveKey( spep_2-1, 1, 320, 400, 0); -- 敵位置
setMoveKey( spep_2, 1, -350, -460, 0); -- 敵位置
--setMoveKey( spep_2+12, 1, -20, -20, 0); -- 敵位置(調整)
setMoveKey( spep_2+29, 1, -20, -20, 0); -- 敵位置(調整)
setMoveKey( spep_2+30, 1, -100, -80, 0); -- 敵位置
setMoveKey( spep_2+45, 1, 0, -250, 0); -- 敵位置
setMoveKey( spep_2+75, 1, 0, -500, 0); -- 敵位置
setMoveKey( spep_2+77, 1, 0, -550, 0); -- 敵位置
setMoveKey( spep_2+79, 1, 0, -1000, 0); -- 敵位置

setScaleKey( spep_2-1, 1, 0.5, 0.5); -- 敵サイズ
setScaleKey( spep_2, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_2+12, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_2+29, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_2+30, 1, 2.5, 2.5); -- 敵サイズ
setScaleKey( spep_2+45, 1, 1, 1); -- 敵サイズ
setScaleKey( spep_2+75, 1, 0.5, 0.5); -- 敵サイズ
setScaleKey( spep_2+79, 1, 0.5, 0.5); -- 敵サイズ
setShakeChara( spep_2, 1, 30, 10); -- 敵揺れ

setRotateKey( spep_2+30, 1, 35); -- 敵回転
setRotateKey( spep_2+60, 1, 90); -- 敵回転
setRotateKey( spep_2+77, 1, 90); -- 敵回転

setDisp( spep_2+78, 1, 0); -- 敵非表示

-- ** エフェクト等 ** --
chao_attack = entryEffect( spep_2+1, SP_03, 0x100, -1, 0, 0, 0); --餃子アタック
setEffMoveKey( spep_2+1, chao_attack, 0, 0, 0);
setEffScaleKey( spep_2+1, chao_attack, 1.0, 1.0);
setEffAlphaKey( spep_2+1, chao_attack, 255);
setEffRotateKey( spep_2+1, chao_attack, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+30, 906, 14, 0x100, -1, 0, -300, 0); -- 集中線3
setEffMoveKey( spep_2+30, shuchusen3, 0, -300, 0);
setEffScaleKey( spep_2+30, shuchusen3, 1.3, 1.5);
setEffAlphaKey( spep_2+30, shuchusen3, 255);
setEffRotateKey( spep_2+30, shuchusen3, 0);

-- ** 書き文字エントリ ** --
baki = entryEffectLife( spep_2+30, 10020, 14, 0x100, -1, 0, -100, 200); -- バキ
setEffScaleKey( spep_2+30, baki, 2, 2);
setEffShake( spep_2+30, baki, 14, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+73, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --200
playSe( spep_2+30, SE_05); --230

------------------------------------------------------
-- どどん波溜め(282F開始)
------------------------------------------------------

spep_3 = (spep_2+82); --282F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 56, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 56, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** エフェクト等 ** --
dodonpatame = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --どどん波溜め
setEffMoveKey( spep_3, dodonpatame, 0, 0, 0);
setEffScaleKey( spep_3, dodonpatame, 1.0, 1.0);
setEffAlphaKey( spep_3, dodonpatame, 255);
setEffRotateKey( spep_3, dodonpatame, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+50, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --282
playSe( spep_3+16, SE_01); --298

------------------------------------------------------
-- カードカットイン(341F開始)
------------------------------------------------------

spep_4 = (spep_3+59); --341F

speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_02);

------------------------------------------------------
-- どどん波発射(434F開始)
------------------------------------------------------

spep_5 = (spep_4+93); --434F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 76, 0, 0, 0, 0, 255); -- ベース黒　背景

-- ** エフェクト等 ** --
dodonpa = entryEffectLife( spep_5, SP_07, 76, 0x100, -1, 0, 0, 0); --どどん波発射
setEffMoveKey( spep_5, dodonpa, 0, 0, 0);
setEffScaleKey( spep_5, dodonpa, 1.0, 1.0);
setEffAlphaKey( spep_5, dodonpa, 255);
setEffRotateKey( spep_5, dodonpa, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname3 = entryEffectLife( spep_5, 921, 76, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め3
setEffMoveKey( spep_5, okuyukiryusennaname3, 0, 30, 0);
setEffRotateKey( spep_5, okuyukiryusennaname3, -20);
setEffScaleKey( spep_5, okuyukiryusennaname3, 1.6, 1.6);
setEffAlphaKey( spep_5, okuyukiryusennaname3, 255);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5, 906, 29, 0x100,  -1, 0,  0,  0);   -- 集中線6
setEffMoveKey( spep_5, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen6, 255);
setEffRotateKey( spep_5, shuchusen6, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_5, 10012, 29, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_5, zuo, 0, 350, 0);
setEffMoveKey( spep_5+1, zuo, 0, 350, 0);
setEffMoveKey( spep_5+2, zuo, -10, 360, 0);
setEffMoveKey( spep_5+3, zuo, -10, 360, 0);
setEffMoveKey( spep_5+4, zuo, 0, 350, 0);
setEffMoveKey( spep_5+5, zuo, 0, 350, 0);
setEffMoveKey( spep_5+6, zuo, -10, 360, 0);
setEffMoveKey( spep_5+7, zuo, -10, 360, 0);
setEffMoveKey( spep_5+8, zuo, 0, 350, 0);
setEffMoveKey( spep_5+9, zuo, 0, 350, 0);
setEffMoveKey( spep_5+10, zuo, -10, 360, 0);
setEffMoveKey( spep_5+11, zuo, -10, 360, 0);
setEffMoveKey( spep_5+12, zuo, 0, 350, 0);
setEffMoveKey( spep_5+13, zuo, 0, 350, 0);
setEffMoveKey( spep_5+14, zuo, -10, 360, 0);
setEffMoveKey( spep_5+15, zuo, -10, 360, 0);
setEffMoveKey( spep_5+16, zuo, 0, 350, 0);
setEffMoveKey( spep_5+17, zuo, 0, 350, 0);
setEffMoveKey( spep_5+18, zuo, -10, 360, 0);
setEffMoveKey( spep_5+19, zuo, -10, 360, 0);
setEffMoveKey( spep_5+20, zuo, 0, 350, 0);
setEffMoveKey( spep_5+21, zuo, 0, 350, 0);
setEffMoveKey( spep_5+22, zuo, -10, 360, 0);
setEffMoveKey( spep_5+23, zuo, -10, 360, 0);
setEffMoveKey( spep_5+24, zuo, 0, 350, 0);
setEffMoveKey( spep_5+25, zuo, 0, 350, 0);
setEffMoveKey( spep_5+26, zuo, -10, 360, 0);
setEffMoveKey( spep_5+27, zuo, -10, 360, 0);
setEffMoveKey( spep_5+28, zuo, 0, 350, 0);
setEffMoveKey( spep_5+29, zuo, 0, 350, 0);
setEffScaleKey( spep_5, zuo, 2, 2);
setEffRotateKey( spep_5, zuo, 25);
setEffAlphaKey( spep_5, zuo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_5+69, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --434
playSe( spep_5, SE_07); --434
playSe( spep_5+20, SE_08); --454

------------------------------------------------------
-- 命中(513F開始)
------------------------------------------------------

spep_6 = (spep_5+79); --513F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 77, 0, 0, 0, 0, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
ataru = entryEffect( spep_6, SP_09, 0x100, -1, 0, 0, 0); --迫る命中
setEffMoveKey( spep_6, ataru, 0, 0, 0);
setEffScaleKey( spep_6, ataru, 1.0, 1.0);
setEffAlphaKey( spep_6, ataru, 255);
setEffRotateKey( spep_6, ataru, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname4 = entryEffectLife( spep_6, 921, 77, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め4
setEffMoveKey( spep_6, okuyukiryusennaname4, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname4, 0);
setEffScaleKey( spep_6, okuyukiryusennaname4, 1, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname4, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_6, 10014, 77, 0x100, -1, 0, 0, 0); -- ズドド
setEffMoveKey( spep_6, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+1, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+2, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+3, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+4, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+5, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+6, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+7, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+8, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+9, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+10, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+11, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+12, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+13, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+14, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+15, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+16, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+17, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+18, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+19, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+20, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+21, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+22, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+23, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+24, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+25, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+26, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+27, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+28, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+29, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+30, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+31, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+32, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+33, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+34, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+35, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+36, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+37, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+38, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+39, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+40, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+41, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+42, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+43, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+44, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+45, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+46, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+47, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+48, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+49, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+50, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+51, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+52, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+53, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+54, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+55, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+56, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+57, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+58, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+59, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+60, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+61, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+62, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+63, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+64, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+65, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+66, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+67, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+68, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+69, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+70, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+71, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+72, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+73, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+74, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+75, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+76, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+77, zudodo, 70, 310, 0);

setEffScaleKey( spep_6, zudodo, 2, 2);
setEffRotateKey( spep_6, zudodo, 75);
setEffAlphaKey( spep_6, zudodo, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_6-1, 1, 1); --敵表示
changeAnime( spep_6-1, 1, 108); -- 敵モーション
setMoveKey( spep_6-1, 1, 0, -1000, 0); -- 敵位置
setScaleKey( spep_6-1, 1, 0.5, 0.5); -- 敵サイズ
setRotateKey( spep_6-1, 1, 90); -- 敵回転

setMoveKey( spep_6, 1, 190, 600, 0); -- 敵位置
setMoveKey( spep_6+20, 1, 190, 150, 0); -- 敵位置
setMoveKey( spep_6+42, 1, 190, -80, 0); -- 敵位置
setMoveKey( spep_6+43, 1, 190, 0, 0); -- 敵位置
setMoveKey( spep_6+55, 1, 300, 0, 0); -- 敵位置
setMoveKey( spep_6+77, 1, 330, 0, 0); -- 敵位置

setScaleKey( spep_6, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_6+10, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_6+22, 1, 1.5, 1.5); -- 敵サイズ
setScaleKey( spep_6+42, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_6+43, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_6+77, 1, 0.3, 0.3); -- 敵サイズ

setRotateKey( spep_6+42, 1, 90); -- 敵回転
setRotateKey( spep_6+43, 1, 0); -- 敵回転


-- ** ホワイトフェード ** --
entryFade( spep_6+71, 5, 9, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --513
playSe( spep_6+43, SE_09);

------------------------------------------------------
-- 爆発 (804F)
------------------------------------------------------

spep_7 = (spep_6+77); --594F

-- ** 敵キャラの動き ** --
setMoveKey(  spep_7-1, 1, 330, 0, 0);
setScaleKey( spep_7-1, 1, 0.3, 0.3);
setRotateKey( spep_7-1, 1, 0);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_11);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5, 10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_10);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);


else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手前に突っ込む
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 125, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
tame = entryEffect( 0, SP_10, 0x100, -1, 0, 0, 0); --溜め
setEffMoveKey( 0, tame, 0, 0, 0);
setEffScaleKey( 0, tame, 1.0, 1.0);
setEffAlphaKey( 0, tame, 255);
setEffRotateKey( 0, tame, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 125, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 13, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( 13, gogogo, -0.6, 0.6);
setEffAlphaKey( 13, gogogo, 255);
setEffRotateKey( 13, gogogo, 0);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( 118, 6, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 5, SE_01);
seID = playSe( 92, SE_02);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 115; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 92, seID, 0);

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
-- 天津飯アタック(128F開始)
------------------------------------------------------

spep_1 = 128;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 71, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
ten_attack = entryEffect( spep_1, SP_04, 0x100, -1, 0, 0, 0); --天津飯アタック
setEffMoveKey( spep_1, ten_attack, 0, 0, 0);
setEffScaleKey( spep_1, ten_attack, 1.0, 1.0);
setEffAlphaKey( spep_1, ten_attack, 255);
setEffRotateKey( spep_1, ten_attack, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_1, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen, 0, 0, 0);
setEffRotateKey( spep_1, ryusen, 0);
setEffScaleKey( spep_1, ryusen, 1, 1);
setEffAlphaKey( spep_1, ryusen, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+17, 906, 21, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_1+17, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+17, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+17, shuchusen2, 255);
setEffRotateKey( spep_1+17, shuchusen2, 0);

-- ** 書き文字エントリ ** --
gagaga = entryEffectLife( spep_1+17, 10002, 21, 0x100, -1, 0, -80, 300); -- ガガガ
setEffScaleKey( spep_1+17, gagaga, 2.6, 2.6);
setEffAlphaKey( spep_1+17, gagaga, 255);
setEffRotateKey( spep_1+17, gagaga, 0);
setEffShake( spep_1+17, gagaga, 24, 15);

-- ** 書き文字エントリ ** --
ga = entryEffectLife( spep_1+45, 10005, 15, 0x100, -1, 0, 0, 0); -- ガ
setEffMoveKey( spep_1+45, ga, -50, 250, 0);
setEffScaleKey( spep_1+45, ga, 2.2, 2.2);
setEffRotateKey( spep_1+45, ga, -10);
setEffRotateKey( spep_1+50, ga, -10);
setEffRotateKey( spep_1+51, ga, -20);
setEffRotateKey( spep_1+52, ga, -20);
setEffRotateKey( spep_1+53, ga, -10);
setEffRotateKey( spep_1+57, ga, -10);
setEffRotateKey( spep_1+58, ga, -20);
setEffRotateKey( spep_1+59, ga, -20);
setEffRotateKey( spep_1+60, ga, -10);
setEffAlphaKey( spep_1+45, ga, 255);

-- ** ぶっ飛ばし ** --
buttobashi = entryEffectLife( spep_1+45, 924, 23, 0x80, -1, 0, 0, 0); -- ぶっ飛ばし流線
setEffMoveKey( spep_1+45, buttobashi, -280, 80, 0);
setEffRotateKey( spep_1+45, buttobashi, -25);
setEffScaleKey( spep_1+45, buttobashi, 1.6, 1.4);
setEffAlphaKey( spep_1+45, buttobashi, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1-1, 1, 1); -- 敵表示
changeAnime( spep_1-1, 1, 101); -- 敵モーション
setMoveKey( spep_1-1, 1, 0, -50, 0); -- 敵位置
setMoveKey( spep_1, 1, 0, -50, 0); -- 敵位置
setMoveKey( spep_1+14, 1, 80, -40, 0); -- 敵位置
setMoveKey( spep_1+16, 1, 80, -40, 0); -- 敵位置
setMoveKey( spep_1+17, 1, 80, 0, 0); -- 敵位置
setMoveKey( spep_1+44, 1, 80, 0, 0); -- 敵位置
setMoveKey( spep_1+45, 1, 100, 50, 0); -- 敵位置
setMoveKey( spep_1+48, 1, 100, 50, 0); -- 敵位置
setMoveKey( spep_1+70, 1, 320, 400, 0); -- 敵位置


setScaleKey( spep_1-1, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_1+44, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_1+45, 1, 1.6, 1.6); -- 敵サイズ(調整版)
setScaleKey( spep_1+48, 1, 1.6, 1.6); -- 敵サイズ(調整版)
setScaleKey( spep_1+51, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_1+70, 1, 0.5, 0.5); -- 敵サイズ

changeAnime( spep_1+17, 1, 108); -- 敵モーション
setShakeChara( spep_1+17, 1, 27, 10); -- 敵揺れ

-- ** ホワイトフェード ** --
entryFade( spep_1+65, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --128
playSe( spep_1+17, SE_03); --145
playSe( spep_1+23, SE_04); --151
playSe( spep_1+31, SE_05); --159
playSe( spep_1+45, SE_06); --173

------------------------------------------------------
-- 餃子アタック(200F開始)
------------------------------------------------------

spep_2 = (spep_1+72); --200F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 82, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 29, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 30, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -50);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.7, 1.7);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_2+40, 921, 37, 0x80, -1, 0, 200, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_2+40, okuyukiryusennaname2, 0, 200, 0);
setEffRotateKey( spep_2+40, okuyukiryusennaname2, 90);
setEffScaleKey( spep_2+40, okuyukiryusennaname2, 2, 0.8);
setEffAlphaKey( spep_2+40, okuyukiryusennaname2, 255);

-- ** 敵キャラの動き ** --
setMoveKey( spep_2-1, 1, 320, 400, 0); -- 敵位置
setMoveKey( spep_2, 1, -350, -460, 0); -- 敵位置
--setMoveKey( spep_2+12, 1, -20, -20, 0); -- 敵位置(調整)
setMoveKey( spep_2+29, 1, -20, -20, 0); -- 敵位置(調整)
setMoveKey( spep_2+30, 1, -100, -80, 0); -- 敵位置
setMoveKey( spep_2+45, 1, 0, -250, 0); -- 敵位置
setMoveKey( spep_2+75, 1, 0, -500, 0); -- 敵位置
setMoveKey( spep_2+77, 1, 0, -550, 0); -- 敵位置
setMoveKey( spep_2+79, 1, 0, -1000, 0); -- 敵位置

setScaleKey( spep_2-1, 1, 0.5, 0.5); -- 敵サイズ
setScaleKey( spep_2, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_2+12, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_2+29, 1, 1.3, 1.3); -- 敵サイズ
setScaleKey( spep_2+30, 1, 2.5, 2.5); -- 敵サイズ
setScaleKey( spep_2+45, 1, 1, 1); -- 敵サイズ
setScaleKey( spep_2+75, 1, 0.5, 0.5); -- 敵サイズ
setScaleKey( spep_2+79, 1, 0.5, 0.5); -- 敵サイズ
setShakeChara( spep_2, 1, 30, 10); -- 敵揺れ

setRotateKey( spep_2+30, 1, 35); -- 敵回転
setRotateKey( spep_2+60, 1, 90); -- 敵回転
setRotateKey( spep_2+77, 1, 90); -- 敵回転

setDisp( spep_2+78, 1, 0); -- 敵非表示

-- ** エフェクト等 ** --
chao_attack = entryEffect( spep_2+1, SP_03, 0x100, -1, 0, 0, 0); --餃子アタック
setEffMoveKey( spep_2+1, chao_attack, 0, 0, 0);
setEffScaleKey( spep_2+1, chao_attack, 1.0, 1.0);
setEffAlphaKey( spep_2+1, chao_attack, 255);
setEffRotateKey( spep_2+1, chao_attack, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2+30, 906, 14, 0x100, -1, 0, -300, 0); -- 集中線3
setEffMoveKey( spep_2+30, shuchusen3, 0, -300, 0);
setEffScaleKey( spep_2+30, shuchusen3, 1.3, 1.5);
setEffAlphaKey( spep_2+30, shuchusen3, 255);
setEffRotateKey( spep_2+30, shuchusen3, 0);

-- ** 書き文字エントリ ** --
baki = entryEffectLife( spep_2+30, 10020, 14, 0x100, -1, 0, -100, 200); -- バキ
setEffScaleKey( spep_2+30, baki, 2, 2);
setEffShake( spep_2+30, baki, 14, 15);

-- ** ホワイトフェード ** --
entryFade( spep_2+73, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --200
playSe( spep_2+30, SE_05); --230

------------------------------------------------------
-- どどん波溜め(282F開始)
------------------------------------------------------

spep_3 = (spep_2+82); --282F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 56, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 56, 0x100, -1, 0, 0, 0); -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** エフェクト等 ** --
dodonpatame = entryEffect( spep_3, SP_06, 0x100, -1, 0, 0, 0); --どどん波溜め
setEffMoveKey( spep_3, dodonpatame, 0, 0, 0);
setEffScaleKey( spep_3, dodonpatame, 1.0, 1.0);
setEffAlphaKey( spep_3, dodonpatame, 255);
setEffRotateKey( spep_3, dodonpatame, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+50, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --282
playSe( spep_3+16, SE_01); --298

------------------------------------------------------
-- カードカットイン(341F開始)
------------------------------------------------------

spep_4 = (spep_3+59); --341F

speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_02);

------------------------------------------------------
-- どどん波発射(434F開始)
------------------------------------------------------

spep_5 = (spep_4+93); --434F

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 76, 0, 0, 0, 0, 255); -- ベース黒　背景

-- ** エフェクト等 ** --
dodonpa = entryEffectLife( spep_5, SP_08, 76, 0x100, -1, 0, 0, 0); --どどん波発射
setEffMoveKey( spep_5, dodonpa, 0, 0, 0);
setEffScaleKey( spep_5, dodonpa, 1.0, 1.0);
setEffAlphaKey( spep_5, dodonpa, 255);
setEffRotateKey( spep_5, dodonpa, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname3 = entryEffectLife( spep_5, 921, 76, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め3
setEffMoveKey( spep_5, okuyukiryusennaname3, 0, 30, 0);
setEffRotateKey( spep_5, okuyukiryusennaname3, -20);
setEffScaleKey( spep_5, okuyukiryusennaname3, 1.6, 1.6);
setEffAlphaKey( spep_5, okuyukiryusennaname3, 255);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5, 906, 29, 0x100,  -1, 0,  0,  0);   -- 集中線6
setEffMoveKey( spep_5, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen6, 255);
setEffRotateKey( spep_5, shuchusen6, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_5, 10012, 29, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_5, zuo, 0, 350, 0);
setEffMoveKey( spep_5+1, zuo, 0, 350, 0);
setEffMoveKey( spep_5+2, zuo, -10, 360, 0);
setEffMoveKey( spep_5+3, zuo, -10, 360, 0);
setEffMoveKey( spep_5+4, zuo, 0, 350, 0);
setEffMoveKey( spep_5+5, zuo, 0, 350, 0);
setEffMoveKey( spep_5+6, zuo, -10, 360, 0);
setEffMoveKey( spep_5+7, zuo, -10, 360, 0);
setEffMoveKey( spep_5+8, zuo, 0, 350, 0);
setEffMoveKey( spep_5+9, zuo, 0, 350, 0);
setEffMoveKey( spep_5+10, zuo, -10, 360, 0);
setEffMoveKey( spep_5+11, zuo, -10, 360, 0);
setEffMoveKey( spep_5+12, zuo, 0, 350, 0);
setEffMoveKey( spep_5+13, zuo, 0, 350, 0);
setEffMoveKey( spep_5+14, zuo, -10, 360, 0);
setEffMoveKey( spep_5+15, zuo, -10, 360, 0);
setEffMoveKey( spep_5+16, zuo, 0, 350, 0);
setEffMoveKey( spep_5+17, zuo, 0, 350, 0);
setEffMoveKey( spep_5+18, zuo, -10, 360, 0);
setEffMoveKey( spep_5+19, zuo, -10, 360, 0);
setEffMoveKey( spep_5+20, zuo, 0, 350, 0);
setEffMoveKey( spep_5+21, zuo, 0, 350, 0);
setEffMoveKey( spep_5+22, zuo, -10, 360, 0);
setEffMoveKey( spep_5+23, zuo, -10, 360, 0);
setEffMoveKey( spep_5+24, zuo, 0, 350, 0);
setEffMoveKey( spep_5+25, zuo, 0, 350, 0);
setEffMoveKey( spep_5+26, zuo, -10, 360, 0);
setEffMoveKey( spep_5+27, zuo, -10, 360, 0);
setEffMoveKey( spep_5+28, zuo, 0, 350, 0);
setEffMoveKey( spep_5+29, zuo, 0, 350, 0);
setEffScaleKey( spep_5, zuo, 2, 2);
setEffRotateKey( spep_5, zuo, 25);
setEffAlphaKey( spep_5, zuo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_5+69, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --434
playSe( spep_5, SE_07); --434
playSe( spep_5+20, SE_08); --454

------------------------------------------------------
-- 命中(513F開始)
------------------------------------------------------

spep_6 = (spep_5+79); --513F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 77, 0, 0, 0, 0, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
ataru = entryEffect( spep_6, SP_09, 0x100, -1, 0, 0, 0); --迫る命中
setEffMoveKey( spep_6, ataru, 0, 0, 0);
setEffScaleKey( spep_6, ataru, 1.0, 1.0);
setEffAlphaKey( spep_6, ataru, 255);
setEffRotateKey( spep_6, ataru, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname4 = entryEffectLife( spep_6, 921, 77, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め4
setEffMoveKey( spep_6, okuyukiryusennaname4, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname4, 0);
setEffScaleKey( spep_6, okuyukiryusennaname4, 1, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname4, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_6, 10014, 77, 0x100, -1, 0, 0, 0); -- ズドド
setEffMoveKey( spep_6, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+1, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+2, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+3, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+4, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+5, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+6, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+7, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+8, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+9, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+10, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+11, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+12, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+13, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+14, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+15, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+16, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+17, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+18, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+19, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+20, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+21, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+22, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+23, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+24, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+25, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+26, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+27, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+28, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+29, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+30, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+31, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+32, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+33, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+34, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+35, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+36, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+37, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+38, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+39, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+40, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+41, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+42, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+43, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+44, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+45, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+46, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+47, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+48, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+49, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+50, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+51, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+52, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+53, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+54, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+55, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+56, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+57, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+58, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+59, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+60, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+61, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+62, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+63, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+64, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+65, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+66, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+67, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+68, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+69, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+70, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+71, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+72, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+73, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+74, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+75, zudodo, 80, 320, 0);
setEffMoveKey( spep_6+76, zudodo, 70, 310, 0);
setEffMoveKey( spep_6+77, zudodo, 70, 310, 0);

setEffScaleKey( spep_6, zudodo, 2, 2);
setEffRotateKey( spep_6, zudodo, -75);
setEffAlphaKey( spep_6, zudodo, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_6-1, 1, 1); --敵表示
changeAnime( spep_6-1, 1, 108); -- 敵モーション
setMoveKey( spep_6-1, 1, 0, -1000, 0); -- 敵位置
setScaleKey( spep_6-1, 1, 0.5, 0.5); -- 敵サイズ
setRotateKey( spep_6-1, 1, 90); -- 敵回転

setMoveKey( spep_6, 1, 190, 600, 0); -- 敵位置
setMoveKey( spep_6+20, 1, 190, 150, 0); -- 敵位置
setMoveKey( spep_6+42, 1, 190, -80, 0); -- 敵位置
setMoveKey( spep_6+43, 1, 190, 0, 0); -- 敵位置
setMoveKey( spep_6+55, 1, 300, 0, 0); -- 敵位置
setMoveKey( spep_6+77, 1, 330, 0, 0); -- 敵位置

setScaleKey( spep_6, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_6+10, 1, 1.2, 1.2); -- 敵サイズ
setScaleKey( spep_6+22, 1, 1.5, 1.5); -- 敵サイズ
setScaleKey( spep_6+42, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_6+43, 1, 2, 2); -- 敵サイズ
setScaleKey( spep_6+77, 1, 0.3, 0.3); -- 敵サイズ

setRotateKey( spep_6+42, 1, 90); -- 敵回転
setRotateKey( spep_6+43, 1, 0); -- 敵回転


-- ** ホワイトフェード ** --
entryFade( spep_6+71, 5, 9, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --513
playSe( spep_6+43, SE_09);

------------------------------------------------------
-- 爆発 (804F)
------------------------------------------------------

spep_7 = (spep_6+77); --594F

-- ** 敵キャラの動き ** --
setMoveKey(  spep_7-1, 1, 330, 0, 0);
setScaleKey( spep_7-1, 1, 0.3, 0.3);
setRotateKey( spep_7-1, 1, 0);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_11);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5, 10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_10);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);


end