print ("[lua]sp1121");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SE_01 = 1018; --カットイン
SE_02 = 1035; --カードカットイン
SE_03 = 1042; --!?
SE_04 = 1003; --飴移動
SE_05 = 8; --飴迫る
SE_06 = 36; --キラ
SE_07 = 1009; --パンチ強打ヒット(単打)
SE_08 = 1010; --キック強打ヒット(単打)
SE_09 = 1000; --パンチヒット（単打）
SE_10 = 1001; --キックヒット（単打）
SE_11 = 1054; --割れる音
SE_12 = 1024; --爆破

SP_01 = 150673; --カットイン用
SP_02 = 150674; --踊って迫る
SP_03 = 150675; --敵の前で止まる
SP_04 = 150676; --ラッシュ
SP_05 = 10001; --!?

multi_frm = 2;

------------------------------------------------------
-- カットイン
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** エフェクト等 ** --
cutin = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( 0, cutin, 0, 0, 0);
setEffScaleKey( 0, cutin, 1.0, 1.0);
setEffAlphaKey( 0, cutin, 255);
setEffRotateKey( 0, cutin, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 92, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- ** カットイン&セリフ ** --
speff = entryEffect( 2, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( 2, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);            -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( 15, 190006, 80, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey( 15, ctgogo, 0.7, 0.7);
setEffRotateKey( 15, ctgogo, 10);
setEffAlphaKey( 15, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( 82, 5, 10, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 15, SE_01);

spep_1 = 97;

------------------------------------------------------
-- 踊って迫る(97F)
------------------------------------------------------

-- ** エフェクト等 ** --
odoru = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_1, odoru, 0, 0, 0);
setEffScaleKey( spep_1, odoru, 1.0, 1.0);
setEffAlphaKey( spep_1, odoru, 255);
setEffRotateKey( spep_1, odoru, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+117, 906, 22, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+117, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+117, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+117, shuchusen2, 255);
setEffRotateKey( spep_1+117, shuchusen2, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_1+121, 10012, 18, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_1+121, zuo, 3, 3);
setEffRotateKey( spep_1+121, zuo, 30);
setEffAlphaKey( spep_1+121, zuo, 255);
setEffShake( spep_1+121, zuo, 20, 10);

-- ** ホワイトフェード ** --
entryFade( spep_1+137, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+9, SE_04);
playSe( spep_1+43, SE_04);
seID = playSe( spep_1+118, SE_01);


spep_2 = (spep_1+142);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 216; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_1+118, seID, 0);

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
-- 敵の前で止まる(239F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_2-1, 1, 1); --敵表示
setDisp( spep_2+73, 1, 0); --敵非表示
changeAnime( spep_2-1, 1, 101); --敵モーション
setScaleKey( spep_2-1, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_2+71, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_2-1, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+52, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+53, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+54, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+55, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+56, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+57, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+58, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+59, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+60, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+61, 1, 155, 0, 0); --敵位置

-- ** エフェクト等 ** --
tomaru = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_2, tomaru, 0, 0, 0);
setEffScaleKey( spep_2, tomaru, 1.0, 1.0);
setEffAlphaKey( spep_2, tomaru, 255);
setEffRotateKey( spep_2, tomaru, 0);

-- ** エフェクト!? ** --
bikkuri = entryEffectLife( spep_2+51, SP_05, 21, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_2+51, bikkuri, 110, 215, 0);
setEffScaleKey( spep_2+51, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+52, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+53, bikkuri, 2, 2);
setEffScaleKey( spep_2+54, bikkuri, 2, 2);
setEffScaleKey( spep_2+55, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+56, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+57, bikkuri, 2, 2);
setEffScaleKey( spep_2+58, bikkuri, 2, 2);
setEffScaleKey( spep_2+59, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+60, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+61, bikkuri, 2, 2);
setEffScaleKey( spep_2+62, bikkuri, 2, 2);
setEffScaleKey( spep_2+63, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+64, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+65, bikkuri, 2, 2);
setEffScaleKey( spep_2+66, bikkuri, 2, 2);
setEffScaleKey( spep_2+67, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+68, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+69, bikkuri, 2, 2);
setEffScaleKey( spep_2+70, bikkuri, 2, 2);
setEffAlphaKey( spep_2+51, bikkuri, 255);
setEffRotateKey( spep_2+51, bikkuri, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+70, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --(239F)
--playSe( spep_2+37, SE_06);
playSe( spep_2+52, SE_03);
spep_3 = (spep_2+74);

------------------------------------------------------
-- カードカットイン (313F)
------------------------------------------------------

speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_02);

spep_4 = (spep_3+92);

------------------------------------------------------
-- ラッシュ (406F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 396, 0, 0, 0, 0, 70); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_4-1, 1, 1); --敵表示
changeAnime( spep_4-1, 1, 101); --敵モーション
setScaleKey( spep_4-1, 1, 1.5, 1.5); --敵サイズ
changeAnime( spep_4+11, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4-1, 1, 155, 0, 0);
setMoveKey( spep_4+26, 1, 155, 0, 0);
setMoveKey( spep_4+27, 1, 160, 0 ,0);
setShakeChara( spep_4+11, 1, 27, 10);
changeAnime( spep_4+39, 1, 104); --敵モーション(ガード)
changeAnime( spep_4+157, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4+156, 1, 160, 0 ,0);
setMoveKey( spep_4+170, 1, 165, 5 ,0);
setMoveKey( spep_4+180, 1, 160, 0 ,0);
setShakeChara( spep_4+157, 1, 14, 10);
changeAnime( spep_4+181, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+181, 1, -23); --敵角度
setMoveKey( spep_4+181, 1, 56, 70 ,0);
setShakeChara( spep_4+181, 1, 14, 10);
setRotateKey( spep_4+210, 1, -23); --敵角度
changeAnime( spep_4+211, 1, 108); --敵モーション(くの字)
setRotateKey( spep_4+211, 1, 0); --敵角度
setMoveKey( spep_4+210, 1, 51, 65 ,0);
setMoveKey( spep_4+211, 1, 155, 0, 0);
setShakeChara( spep_4+211, 1, 14, 10);
setMoveKey( spep_4+234, 1, 150, -5, 0);
setRotateKey( spep_4+234, 1, 0); --敵角度
changeAnime( spep_4+235, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+235, 1, -90); --敵角度
setMoveKey( spep_4+235, 1, 0, 50, 0);
setShakeChara( spep_4+235, 1, 14, 10);
setMoveKey( spep_4+268, 1, -5, 45, 0);
setRotateKey( spep_4+268, 1, -90); --敵角度
changeAnime( spep_4+269, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+269, 1, -10); --敵角度
setMoveKey( spep_4+269, 1, 0, 20, 0);
setShakeChara( spep_4+269, 1, 14, 10);
setMoveKey( spep_4+332, 1, 10, 30, 0);
setRotateKey( spep_4+332, 1, -10); --敵角度
changeAnime( spep_4+333, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4+333, 1, 75, 20, 0);
setRotateKey( spep_4+333, 1, 0); --敵角度
setShakeChara( spep_4+343, 1, 52, 15); --敵揺れ(シメ)
setMoveKey( spep_4+345, 1, 75, 20, 0);
setMoveKey( spep_4+346, 1, 90, 35, 0);
setRotateKey( spep_4+346, 1, 0); --敵角度
setScaleKey( spep_4+346, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+347, 1, 90, 35, 0);
setMoveKey( spep_4+395, 1, 350, -300, 0); --敵位置(シメ)
setScaleKey( spep_4+395, 1, 0.5, 0.5); --敵サイズ(シメ)
setRotateKey( spep_4+395, 1, 60); --敵角度(シメ)

-- 書き文字エントリー --
bago = entryEffectLife( spep_4+333, 10021, 63, 0x100, -1, 0, 0, 0);--バゴォッ
setEffScaleKey( spep_4+333, bago, 2, 2);
setEffScaleKey( spep_4+334, bago, 2, 2);
setEffScaleKey( spep_4+335, bago, 2.2, 2.2);
setEffScaleKey( spep_4+336, bago, 2.2, 2.2);
setEffScaleKey( spep_4+337, bago, 2, 2);
setEffScaleKey( spep_4+338, bago, 2, 2);
setEffScaleKey( spep_4+339, bago, 2.2, 2.2);
setEffScaleKey( spep_4+340, bago, 2.2, 2.2);
setEffScaleKey( spep_4+341, bago, 2, 2);
setEffScaleKey( spep_4+342, bago, 2, 2);
setEffScaleKey( spep_4+343, bago, 2.2, 2.2);
setEffScaleKey( spep_4+344, bago, 2.2, 2.2);
setEffScaleKey( spep_4+345, bago, 2, 2);
setEffScaleKey( spep_4+346, bago, 2, 2);
setEffScaleKey( spep_4+347, bago, 2.2, 2.2);
setEffScaleKey( spep_4+348, bago, 2.2, 2.2);
setEffScaleKey( spep_4+349, bago, 2, 2);
setEffScaleKey( spep_4+350, bago, 2, 2);
setEffScaleKey( spep_4+351, bago, 2.2, 2.2);
setEffScaleKey( spep_4+352, bago, 2.2, 2.2);
setEffScaleKey( spep_4+353, bago, 2, 2);
setEffScaleKey( spep_4+354, bago, 2, 2);
setEffScaleKey( spep_4+355, bago, 2.2, 2.2);
setEffScaleKey( spep_4+356, bago, 2.2, 2.2);
setEffScaleKey( spep_4+357, bago, 2, 2);
setEffScaleKey( spep_4+358, bago, 2, 2);
setEffScaleKey( spep_4+359, bago, 2.2, 2.2);
setEffScaleKey( spep_4+360, bago, 2.2, 2.2);
setEffScaleKey( spep_4+361, bago, 2, 2);
setEffScaleKey( spep_4+362, bago, 2, 2);
setEffScaleKey( spep_4+363, bago, 2.2, 2.2);
setEffScaleKey( spep_4+364, bago, 2.2, 2.2);
setEffScaleKey( spep_4+365, bago, 2, 2);
setEffScaleKey( spep_4+366, bago, 2, 2);
setEffScaleKey( spep_4+367, bago, 2.2, 2.2);
setEffScaleKey( spep_4+368, bago, 2.2, 2.2);
setEffScaleKey( spep_4+369, bago, 2, 2);
setEffScaleKey( spep_4+370, bago, 2, 2);
setEffScaleKey( spep_4+371, bago, 2.2, 2.2);
setEffScaleKey( spep_4+372, bago, 2.2, 2.2);
setEffScaleKey( spep_4+373, bago, 2, 2);
setEffScaleKey( spep_4+374, bago, 2, 2);
setEffScaleKey( spep_4+375, bago, 2.2, 2.2);
setEffScaleKey( spep_4+376, bago, 2.2, 2.2);
setEffScaleKey( spep_4+377, bago, 2, 2);
setEffScaleKey( spep_4+378, bago, 2, 2);
setEffScaleKey( spep_4+379, bago, 2.2, 2.2);
setEffScaleKey( spep_4+380, bago, 2.2, 2.2);
setEffScaleKey( spep_4+381, bago, 2, 2);
setEffScaleKey( spep_4+382, bago, 2, 2);
setEffScaleKey( spep_4+383, bago, 2.2, 2.2);
setEffScaleKey( spep_4+384, bago, 2.2, 2.2);
setEffScaleKey( spep_4+385, bago, 2, 2);
setEffScaleKey( spep_4+386, bago, 2, 2);
setEffScaleKey( spep_4+387, bago, 2.2, 2.2);
setEffScaleKey( spep_4+388, bago, 2.2, 2.2);
setEffScaleKey( spep_4+389, bago, 2, 2);
setEffScaleKey( spep_4+390, bago, 2, 2);
setEffScaleKey( spep_4+391, bago, 2.2, 2.2);
setEffScaleKey( spep_4+392, bago, 2.2, 2.2);
setEffScaleKey( spep_4+393, bago, 2, 2);
setEffScaleKey( spep_4+394, bago, 2, 2);
setEffScaleKey( spep_4+395, bago, 2.2, 2.2);
setEffScaleKey( spep_4+396, bago, 2.2, 2.2);
setEffMoveKey( spep_4+333, bago, 0, 280);
setEffAlphaKey( spep_4+333, bago, 255);
setEffRotateKey( spep_4+333, bago, -20);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_4, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen, 0, 0, 0);
setEffRotateKey( spep_4, ryusen, 5);
setEffScaleKey( spep_4, ryusen, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen, 255);

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_4+150, 920, 25, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4+150, ryusen2, 0, 0, 0);
setEffRotateKey( spep_4+150, ryusen2, 10);
setEffScaleKey( spep_4+150, ryusen2, 1.3, 1.3);
setEffAlphaKey( spep_4+150, ryusen2, 255);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4+176, 920, 24, 0x80,  -1,  0,  0,  0); -- 流線(582F)
setEffMoveKey( spep_4+176, ryusen3, 0, 0, 0);
setEffRotateKey( spep_4+176, ryusen3, 20);
setEffScaleKey( spep_4+176, ryusen3, 1.4, 1.4);
setEffAlphaKey( spep_4+176, ryusen3, 255);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4+201, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線(607F)
setEffMoveKey( spep_4+201, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4+201, ryusen4, -40);
setEffScaleKey( spep_4+201, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+201, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_4+229, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線(635F)
setEffMoveKey( spep_4+229, ryusen5, 0, 0, 0);
setEffRotateKey( spep_4+229, ryusen5, -20);
setEffScaleKey( spep_4+229, ryusen5, 1.5, 1.5);
setEffAlphaKey( spep_4+229, ryusen5, 255);

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_4+258, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線(664F)
setEffMoveKey( spep_4+258, ryusen6, 0, 0, 0);
setEffRotateKey( spep_4+258, ryusen6, 2);
setEffScaleKey( spep_4+258, ryusen6, 1.1, 1.1);
setEffAlphaKey( spep_4+258, ryusen6, 255);

-- ** ぶっ飛ばし ** --
buttobashi = entryEffectLife( spep_4+333, 924, 63, 0x80, -1, 0, 0, 0); -- 流線斜め
setEffMoveKey( spep_4+333, buttobashi, 0, 0, 0);
setEffRotateKey( spep_4+333, buttobashi, 0);
setEffScaleKey( spep_4+333, buttobashi, 1.0, 1.0);
setEffAlphaKey( spep_4+333, buttobashi, 255);

-- ** エフェクト等 ** --
rush = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --ラッシュ
setEffMoveKey( spep_4, rush, 0, 0, 0);
setEffScaleKey( spep_4, rush, 1.0, 1.0);
setEffAlphaKey( spep_4, rush, 255);
setEffRotateKey( spep_4, rush, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+390, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --(406F)
playSe( spep_4+10, SE_07);
playSe( spep_4+51, SE_04); --アメ
playSe( spep_4+64, SE_04); --アメ
--playSe( spep_4+72, SE_04); --アメ
playSe( spep_4+84, SE_04); --アメ
playSe( spep_4+97, SE_04); --アメ
playSe( spep_4+114, SE_04); --アメ
playSe( spep_4+124, SE_04); --アメ
playSe( spep_4+156, SE_10); --562F
playSe( spep_4+180, SE_09); --586F
playSe( spep_4+210, SE_10); --616F
playSe( spep_4+234, SE_10); --640F
playSe( spep_4+268, SE_09); --674F
playSe( spep_4+332, SE_08); --738F

spep_5 = (spep_4+398);


------------------------------------------------------
-- 爆発 (804F)
------------------------------------------------------

setScaleKey( spep_4+346, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+347, 1, 90, 35, 0);
setMoveKey( spep_4+395, 1, 350, -300, 0); --敵位置(シメ)
setScaleKey( spep_4+395, 1, 0.5, 0.5); --敵サイズ(シメ)
setRotateKey( spep_4+395, 1, 60); --敵角度(シメ)


-- ** 敵キャラの動き ** --
--setDisp( spep_6-1, 1, 0);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_5-1, 1, 350, -300, 0);
setScaleKey( spep_5-1, 1, 0.5, 0.5);
setRotateKey( spep_5-1, 1, 60);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_12);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットイン
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** エフェクト等 ** --
cutin = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( 0, cutin, 0, 0, 0);
setEffScaleKey( 0, cutin, 1.0, 1.0);
setEffAlphaKey( 0, cutin, 255);
setEffRotateKey( 0, cutin, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 92, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( 2, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( 2, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);            -- セリフ差し替え
]]--

-- 書き文字エントリー
ctgogo = entryEffectLife( 15, 190006, 80, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey( 15, ctgogo, -0.7, 0.7);
setEffRotateKey( 15, ctgogo, 10);
setEffAlphaKey( 15, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( 82, 5, 10, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 15, SE_01);

spep_1 = 97;

------------------------------------------------------
-- 踊って迫る(97F)
------------------------------------------------------

-- ** エフェクト等 ** --
odoru = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_1, odoru, 0, 0, 0);
setEffScaleKey( spep_1, odoru, -1.0, 1.0);
setEffAlphaKey( spep_1, odoru, 255);
setEffRotateKey( spep_1, odoru, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1+117, 906, 22, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+117, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+117, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1+117, shuchusen2, 255);
setEffRotateKey( spep_1+117, shuchusen2, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_1+121, 10012, 18, 0x100, -1, 0, 80, 280); -- ズオッ
setEffScaleKey( spep_1+121, zuo, 3, 3);
setEffRotateKey( spep_1+121, zuo, 30);
setEffAlphaKey( spep_1+121, zuo, 255);
setEffShake( spep_1+121, zuo, 20, 10);

-- ** ホワイトフェード ** --
entryFade( spep_1+137, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+9, SE_04);
playSe( spep_1+43, SE_04);
seID = playSe( spep_1+118, SE_01);

spep_2 = (spep_1+142);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 216; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_1+118, seID, 0);

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
-- 敵の前で止まる(239F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_2-1, 1, 1); --敵表示
setDisp( spep_2+73, 1, 0); --敵非表示
changeAnime( spep_2-1, 1, 101); --敵モーション
setScaleKey( spep_2-1, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_2+71, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_2-1, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+52, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+53, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+54, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+55, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+56, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+57, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+58, 1, 155, 0, 0); --敵位置
setMoveKey( spep_2+59, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+60, 1, 150, 0, 0); --敵位置
setMoveKey( spep_2+61, 1, 155, 0, 0); --敵位置

-- ** エフェクト等 ** --
tomaru = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_2, tomaru, 0, 0, 0);
setEffScaleKey( spep_2, tomaru, 1.0, 1.0);
setEffAlphaKey( spep_2, tomaru, 255);
setEffRotateKey( spep_2, tomaru, 0);

-- ** エフェクト!? ** --
bikkuri = entryEffectLife( spep_2+51, SP_05, 21, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( spep_2+51, bikkuri, 110, 215, 0);
setEffScaleKey( spep_2+51, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+52, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+53, bikkuri, 2, 2);
setEffScaleKey( spep_2+54, bikkuri, 2, 2);
setEffScaleKey( spep_2+55, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+56, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+57, bikkuri, 2, 2);
setEffScaleKey( spep_2+58, bikkuri, 2, 2);
setEffScaleKey( spep_2+59, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+60, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+61, bikkuri, 2, 2);
setEffScaleKey( spep_2+62, bikkuri, 2, 2);
setEffScaleKey( spep_2+63, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+64, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+65, bikkuri, 2, 2);
setEffScaleKey( spep_2+66, bikkuri, 2, 2);
setEffScaleKey( spep_2+67, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+68, bikkuri, 1.6, 1.6);
setEffScaleKey( spep_2+69, bikkuri, 2, 2);
setEffScaleKey( spep_2+70, bikkuri, 2, 2);
setEffAlphaKey( spep_2+51, bikkuri, 255);
setEffRotateKey( spep_2+51, bikkuri, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+70, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --(239F)
--playSe( spep_2+37, SE_06);
playSe( spep_2+52, SE_03);
spep_3 = (spep_2+74);

------------------------------------------------------
-- カードカットイン (313F)
------------------------------------------------------

speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_02);

spep_4 = (spep_3+92);

------------------------------------------------------
-- ラッシュ (406F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 396, 0, 0, 0, 0, 70); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_4-1, 1, 1); --敵表示
changeAnime( spep_4-1, 1, 101); --敵モーション
setScaleKey( spep_4-1, 1, 1.5, 1.5); --敵サイズ
changeAnime( spep_4+11, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4-1, 1, 155, 0, 0);
setMoveKey( spep_4+26, 1, 155, 0, 0);
setMoveKey( spep_4+27, 1, 160, 0 ,0);
setShakeChara( spep_4+11, 1, 27, 10);
changeAnime( spep_4+39, 1, 104); --敵モーション(ガード)
changeAnime( spep_4+157, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4+156, 1, 160, 0 ,0);
setMoveKey( spep_4+170, 1, 165, 5 ,0);
setMoveKey( spep_4+180, 1, 160, 0 ,0);
setShakeChara( spep_4+157, 1, 14, 10);
changeAnime( spep_4+181, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+181, 1, -23); --敵角度
setMoveKey( spep_4+181, 1, 56, 70 ,0);
setShakeChara( spep_4+181, 1, 14, 10);
setRotateKey( spep_4+210, 1, -23); --敵角度
changeAnime( spep_4+211, 1, 108); --敵モーション(くの字)
setRotateKey( spep_4+211, 1, 0); --敵角度
setMoveKey( spep_4+210, 1, 51, 65 ,0);
setMoveKey( spep_4+211, 1, 155, 0, 0);
setShakeChara( spep_4+211, 1, 14, 10);
setMoveKey( spep_4+234, 1, 150, -5, 0);
setRotateKey( spep_4+234, 1, 0); --敵角度
changeAnime( spep_4+235, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+235, 1, -90); --敵角度
setMoveKey( spep_4+235, 1, 0, 50, 0);
setShakeChara( spep_4+235, 1, 14, 10);
setMoveKey( spep_4+268, 1, -5, 45, 0);
setRotateKey( spep_4+268, 1, -90); --敵角度
changeAnime( spep_4+269, 1, 106); --敵モーション(やられ)
setRotateKey( spep_4+269, 1, -10); --敵角度
setMoveKey( spep_4+269, 1, 0, 20, 0);
setShakeChara( spep_4+269, 1, 14, 10);
setMoveKey( spep_4+332, 1, 10, 30, 0);
setRotateKey( spep_4+332, 1, -10); --敵角度
changeAnime( spep_4+333, 1, 108); --敵モーション(くの字)
setMoveKey( spep_4+333, 1, 75, 20, 0);
setRotateKey( spep_4+333, 1, 0); --敵角度
setShakeChara( spep_4+343, 1, 52, 15); --敵揺れ(シメ)
setMoveKey( spep_4+345, 1, 75, 20, 0);
setMoveKey( spep_4+346, 1, 90, 35, 0);
setRotateKey( spep_4+346, 1, 0); --敵角度
setScaleKey( spep_4+346, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+347, 1, 90, 35, 0);
setMoveKey( spep_4+395, 1, 350, -300, 0); --敵位置(シメ)
setScaleKey( spep_4+395, 1, 0.5, 0.5); --敵サイズ(シメ)
setRotateKey( spep_4+395, 1, 60); --敵角度(シメ)

-- 書き文字エントリー --
bago = entryEffectLife( spep_4+333, 10021, 63, 0x100, -1, 0, 0, 0);--バゴォッ
setEffScaleKey( spep_4+333, bago, 2, 2);
setEffScaleKey( spep_4+334, bago, 2, 2);
setEffScaleKey( spep_4+335, bago, 2.2, 2.2);
setEffScaleKey( spep_4+336, bago, 2.2, 2.2);
setEffScaleKey( spep_4+337, bago, 2, 2);
setEffScaleKey( spep_4+338, bago, 2, 2);
setEffScaleKey( spep_4+339, bago, 2.2, 2.2);
setEffScaleKey( spep_4+340, bago, 2.2, 2.2);
setEffScaleKey( spep_4+341, bago, 2, 2);
setEffScaleKey( spep_4+342, bago, 2, 2);
setEffScaleKey( spep_4+343, bago, 2.2, 2.2);
setEffScaleKey( spep_4+344, bago, 2.2, 2.2);
setEffScaleKey( spep_4+345, bago, 2, 2);
setEffScaleKey( spep_4+346, bago, 2, 2);
setEffScaleKey( spep_4+347, bago, 2.2, 2.2);
setEffScaleKey( spep_4+348, bago, 2.2, 2.2);
setEffScaleKey( spep_4+349, bago, 2, 2);
setEffScaleKey( spep_4+350, bago, 2, 2);
setEffScaleKey( spep_4+351, bago, 2.2, 2.2);
setEffScaleKey( spep_4+352, bago, 2.2, 2.2);
setEffScaleKey( spep_4+353, bago, 2, 2);
setEffScaleKey( spep_4+354, bago, 2, 2);
setEffScaleKey( spep_4+355, bago, 2.2, 2.2);
setEffScaleKey( spep_4+356, bago, 2.2, 2.2);
setEffScaleKey( spep_4+357, bago, 2, 2);
setEffScaleKey( spep_4+358, bago, 2, 2);
setEffScaleKey( spep_4+359, bago, 2.2, 2.2);
setEffScaleKey( spep_4+360, bago, 2.2, 2.2);
setEffScaleKey( spep_4+361, bago, 2, 2);
setEffScaleKey( spep_4+362, bago, 2, 2);
setEffScaleKey( spep_4+363, bago, 2.2, 2.2);
setEffScaleKey( spep_4+364, bago, 2.2, 2.2);
setEffScaleKey( spep_4+365, bago, 2, 2);
setEffScaleKey( spep_4+366, bago, 2, 2);
setEffScaleKey( spep_4+367, bago, 2.2, 2.2);
setEffScaleKey( spep_4+368, bago, 2.2, 2.2);
setEffScaleKey( spep_4+369, bago, 2, 2);
setEffScaleKey( spep_4+370, bago, 2, 2);
setEffScaleKey( spep_4+371, bago, 2.2, 2.2);
setEffScaleKey( spep_4+372, bago, 2.2, 2.2);
setEffScaleKey( spep_4+373, bago, 2, 2);
setEffScaleKey( spep_4+374, bago, 2, 2);
setEffScaleKey( spep_4+375, bago, 2.2, 2.2);
setEffScaleKey( spep_4+376, bago, 2.2, 2.2);
setEffScaleKey( spep_4+377, bago, 2, 2);
setEffScaleKey( spep_4+378, bago, 2, 2);
setEffScaleKey( spep_4+379, bago, 2.2, 2.2);
setEffScaleKey( spep_4+380, bago, 2.2, 2.2);
setEffScaleKey( spep_4+381, bago, 2, 2);
setEffScaleKey( spep_4+382, bago, 2, 2);
setEffScaleKey( spep_4+383, bago, 2.2, 2.2);
setEffScaleKey( spep_4+384, bago, 2.2, 2.2);
setEffScaleKey( spep_4+385, bago, 2, 2);
setEffScaleKey( spep_4+386, bago, 2, 2);
setEffScaleKey( spep_4+387, bago, 2.2, 2.2);
setEffScaleKey( spep_4+388, bago, 2.2, 2.2);
setEffScaleKey( spep_4+389, bago, 2, 2);
setEffScaleKey( spep_4+390, bago, 2, 2);
setEffScaleKey( spep_4+391, bago, 2.2, 2.2);
setEffScaleKey( spep_4+392, bago, 2.2, 2.2);
setEffScaleKey( spep_4+393, bago, 2, 2);
setEffScaleKey( spep_4+394, bago, 2, 2);
setEffScaleKey( spep_4+395, bago, 2.2, 2.2);
setEffScaleKey( spep_4+396, bago, 2.2, 2.2);
setEffMoveKey( spep_4+333, bago, 0, 280);
setEffAlphaKey( spep_4+333, bago, 255);
setEffRotateKey( spep_4+333, bago, -20);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_4, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen, 0, 0, 0);
setEffRotateKey( spep_4, ryusen, 5);
setEffScaleKey( spep_4, ryusen, 1.2, 1.2);
setEffAlphaKey( spep_4, ryusen, 255);

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_4+150, 920, 25, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4+150, ryusen2, 0, 0, 0);
setEffRotateKey( spep_4+150, ryusen2, 10);
setEffScaleKey( spep_4+150, ryusen2, 1.3, 1.3);
setEffAlphaKey( spep_4+150, ryusen2, 255);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4+176, 920, 24, 0x80,  -1,  0,  0,  0); -- 流線(582F)
setEffMoveKey( spep_4+176, ryusen3, 0, 0, 0);
setEffRotateKey( spep_4+176, ryusen3, 20);
setEffScaleKey( spep_4+176, ryusen3, 1.4, 1.4);
setEffAlphaKey( spep_4+176, ryusen3, 255);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4+201, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線(607F)
setEffMoveKey( spep_4+201, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4+201, ryusen4, -40);
setEffScaleKey( spep_4+201, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+201, ryusen4, 255);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_4+229, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線(635F)
setEffMoveKey( spep_4+229, ryusen5, 0, 0, 0);
setEffRotateKey( spep_4+229, ryusen5, -20);
setEffScaleKey( spep_4+229, ryusen5, 1.5, 1.5);
setEffAlphaKey( spep_4+229, ryusen5, 255);

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_4+258, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線(664F)
setEffMoveKey( spep_4+258, ryusen6, 0, 0, 0);
setEffRotateKey( spep_4+258, ryusen6, 2);
setEffScaleKey( spep_4+258, ryusen6, 1.1, 1.1);
setEffAlphaKey( spep_4+258, ryusen6, 255);

-- ** ぶっ飛ばし ** --
buttobashi = entryEffectLife( spep_4+333, 924, 63, 0x80, -1, 0, 0, 0); -- 流線斜め
setEffMoveKey( spep_4+333, buttobashi, 0, 0, 0);
setEffRotateKey( spep_4+333, buttobashi, 0);
setEffScaleKey( spep_4+333, buttobashi, 1.0, 1.0);
setEffAlphaKey( spep_4+333, buttobashi, 255);

-- ** エフェクト等 ** --
rush = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --ラッシュ
setEffMoveKey( spep_4, rush, 0, 0, 0);
setEffScaleKey( spep_4, rush, 1.0, 1.0);
setEffAlphaKey( spep_4, rush, 255);
setEffRotateKey( spep_4, rush, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+390, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --(406F)
playSe( spep_4+10, SE_07);
playSe( spep_4+51, SE_04); --アメ
playSe( spep_4+64, SE_04); --アメ
--playSe( spep_4+72, SE_04); --アメ
playSe( spep_4+84, SE_04); --アメ
playSe( spep_4+97, SE_04); --アメ
playSe( spep_4+114, SE_04); --アメ
playSe( spep_4+124, SE_04); --アメ
playSe( spep_4+156, SE_10); --562F
playSe( spep_4+180, SE_09); --586F
playSe( spep_4+210, SE_10); --616F
playSe( spep_4+234, SE_10); --640F
playSe( spep_4+268, SE_09); --674F
playSe( spep_4+332, SE_08); --738F

spep_5 = (spep_4+398);


------------------------------------------------------
-- 爆発 (804F)
------------------------------------------------------

setScaleKey( spep_4+346, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+347, 1, 90, 35, 0);
setMoveKey( spep_4+395, 1, 350, -300, 0); --敵位置(シメ)
setScaleKey( spep_4+395, 1, 0.5, 0.5); --敵サイズ(シメ)
setRotateKey( spep_4+395, 1, 60); --敵角度(シメ)


-- ** 敵キャラの動き ** --
--setDisp( spep_6-1, 1, 0);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_5-1, 1, 350, -300, 0);
setScaleKey( spep_5-1, 1, 0.5, 0.5);
setRotateKey( spep_5-1, 1, 60);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_12);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

end