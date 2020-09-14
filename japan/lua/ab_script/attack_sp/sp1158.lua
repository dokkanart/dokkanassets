--sp1158 ターレス カラミティブラスター

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 151448;--迫る
SP_02 = 151449;--連撃
SP_03 = 151450;--叩きつけ
SP_04 = 151451;--連射
SP_05 = 151452;--連射地面
SP_06 = 151453;--ジャンプ
SP_07 = 151454;--発射
SP_08 = 151455;--爆発

--敵側追記予定
SP_01x = 151456;--迫る
SP_02x = 151457;--連撃
SP_03x = 151458;--叩きつけ

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
------------------------------------------------------
-- 突進(56F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1 = 0;

-- ** フェード
entryFade(spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 0, 0, 0, 230);       -- ベース暗め　背景

-- ** 集中線
shuchusen1 = entryEffectLife(spep_1, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.2, 1.2);

-- ** エフェクト
tosshin = entryEffect( spep_1, SP_01, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_1, tosshin, 60, 10);
setEffMoveKey( spep_1, tosshin,  0,  0,  0);
setEffMoveKey( spep_1+60, tosshin,  0,  0,  0);
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffScaleKey( spep_1+60, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1+60, tosshin, 255);
setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1+60, tosshin, 0);


playSe(spep_1+5, 9);


------------------------------------------------------
-- パンチ→打ち下ろし(204F)
------------------------------------------------------
spep_2 = spep_1+56;

-- ** フェード
entryFade(spep_2-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 204, 0, 0, 0, 0, 230);       -- ベース暗め　背景

-- ** エフェクト
otosu = entryEffect( spep_2, SP_02, 0x100, -1,  0,  0,  0);   -- temae
setEffShake(spep_2, otosu, 204, 10);
setEffMoveKey( spep_2, otosu,  0,  0,  0);
setEffMoveKey( spep_2+204, otosu,  0,  0,  0);
setEffScaleKey( spep_2, otosu, 1.0, 1.0);
setEffScaleKey( spep_2+204, otosu, 1.0, 1.0);
setEffAlphaKey( spep_2, otosu, 255);
setEffAlphaKey( spep_2+204, otosu, 255);
setEffAlphaKey( spep_2+205, otosu, 0);
setEffRotateKey( spep_2, otosu, 0);
setEffRotateKey( spep_2+204, otosu, 0);

-- ** 流線(横→縦) ** --
ryusen = entryEffectLife( spep_2, 920, 204, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, -5);
setEffRotateKey( spep_2+204, ryusen, -5);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffScaleKey( spep_2+204, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);
setEffAlphaKey( spep_2+204, ryusen, 255);

-- ** エフェクト
usiro = entryEffect( spep_2, SP_03, 0x80, -1,  0,  0,  0);   -- 後ろ
setEffShake(spep_2, usiro, 204, 10);
setEffMoveKey( spep_2, usiro,  0,  0,  0);
setEffMoveKey( spep_2+204, usiro,  0,  0,  0);
setEffScaleKey( spep_2, usiro, 1.0, 1.0);
setEffScaleKey( spep_2+204, usiro, 1.0, 1.0);
setEffAlphaKey( spep_2, usiro, 255);
setEffAlphaKey( spep_2+204, usiro, 255);
setEffAlphaKey( spep_2+205, usiro, 0);
setEffRotateKey( spep_2, usiro, 0);
setEffRotateKey( spep_2+204, usiro, 0);


-- ** 集中線
shuchusen2 = entryEffectLife(spep_2, 906, 204, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104); --敵モーション登場ガード

setRotateKey( spep_2, 1, 0); --敵角度

setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, -300, 0, 0); --敵位置




------------------------------------------------------
-- 回避(spep_1+12)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 73; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,10,10,0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,10,10,0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
changeAnime( spep_2+25, 1, 108); --敵モーション初撃やられ
changeAnime( spep_2+113, 1, 106); --敵モーションキックやられ
changeAnime( spep_2+175, 1, 108); --敵モーション打ち下ろしやられ
setShakeChara( spep_2+25, 1, 185, 15);

setRotateKey( spep_2+174, 1, 0); --敵角度
setRotateKey( spep_2+175, 1, 90); --敵角度
setRotateKey( spep_2+204, 1, 90); --敵角度

setMoveKey( spep_2+20, 1, 10, 10, 0); --敵位置
setMoveKey( spep_2+25, 1, 60, 30, 0); --敵位置しょげきやられ
setMoveKey( spep_2+106, 1, 100, 80, 0); --敵位置しょげきやられ
setMoveKey( spep_2+113, 1, 130, 100, 0); --敵位置しょげきやられ
setMoveKey( spep_2+130, 1, 130, 110, 0); --敵位置しょげきやられ

setMoveKey( spep_2+160, 1, -100, 30, 0); --敵位置
setMoveKey( spep_2+174, 1, -30, 70, 0); --敵位置
setMoveKey( spep_2+175, 1, -30, 70, 0); --敵位置
setMoveKey( spep_2+204, 1, 0, -600, 0); --敵位置2発目

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+24, 10017, 96, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+24, ctDokgaga, 20);
setEffShake(spep_2+24, ctDokgaga, 96, 15);
setEffAlphaKey(spep_2+24, ctDokgaga, 255);
setEffAlphaKey(spep_2+110, ctDokgaga, 255);
setEffAlphaKey(spep_2+120, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+120, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+24, ctDokgaga,  50,  250,  0);
setEffMoveKey( spep_2+120, ctDokgaga,  50,  250,  0);


-- 書き文字エントリー
ctBaki = entryEffectLife( spep_2+175, 10020, 22, 0, -1, 0, -100, 350); -- バキッ
setEffRotateKey(spep_2+175, ctBaki, -10);
setEffRotateKey(spep_2+176, ctBaki, -10);
setEffRotateKey(spep_2+177, ctBaki, 0);
setEffRotateKey(spep_2+178, ctBaki, 0);
setEffRotateKey(spep_2+179, ctBaki, -10);
setEffRotateKey(spep_2+180, ctBaki, -10);
setEffRotateKey(spep_2+181, ctBaki, 0);
setEffRotateKey(spep_2+182, ctBaki, 0);
setEffRotateKey(spep_2+183, ctBaki, -10);
setEffShake(spep_2+175, ctBaki, 22, 5);
setEffAlphaKey(spep_2+175, ctBaki, 255);
setEffAlphaKey(spep_2+196, ctBaki, 255);
setEffAlphaKey(spep_2+197, ctBaki, 0);
setEffScaleKey(spep_2+175, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_2+176, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_2+177, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_2+197, ctBaki, 2.4, 2.4);


playSe( spep_2+25, 1009);
playSe( spep_2+35, 1000);
playSe( spep_2+43, 1001);
playSe( spep_2+53, 1000);
playSe( spep_2+59, 1009);
playSe( spep_2+65, 1000);
playSe( spep_2+71, 1001);
playSe( spep_2+77, 1001);
playSe( spep_2+87, 1009);
playSe( spep_2+113, 1010);
playSe( spep_2+175, 1009);

------------------------------------------------------
-- 溜め(180F)
------------------------------------------------------
spep_3 = spep_2+204;

-- ** フェード
entryFade(spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_3+53, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト(背面)

zimen = entryEffect( spep_3, SP_05, 0x80, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, zimen, 180, 10);
setEffMoveKey( spep_3, zimen,  0,  0,  0);
setEffMoveKey( spep_3+40, zimen,  0,  0,  0);
setEffScaleKey( spep_3, zimen, 1.0, 1.0);
setEffScaleKey( spep_3+180, zimen, 1.0, 1.0);
setEffAlphaKey( spep_3, zimen, 255);
setEffAlphaKey( spep_3+180, zimen, 255);
setEffAlphaKey( spep_3+181, zimen, 0);
setEffRotateKey( spep_3, zimen, 0);
setEffRotateKey( spep_3+180, zimen, 0);

-- ** エフェクト(前面)

tame = entryEffect( spep_3, SP_04, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, tame, 180, 10);
setEffMoveKey( spep_3, tame,  0,  0,  0);
setEffMoveKey( spep_3+40, tame,  0,  0,  0);
setEffScaleKey( spep_3, tame, 1.0, 1.0);
setEffScaleKey( spep_3+180, tame, 1.0, 1.0);
setEffAlphaKey( spep_3, tame, 255);
setEffAlphaKey( spep_3+180, tame, 255);
setEffAlphaKey( spep_3+181, tame, 0);
setEffRotateKey( spep_3, tame, 0);
setEffRotateKey( spep_3+180, tame, 0);

-- ** 流線(縦) 最背面** --
ryusen3 = entryEffectLife( spep_3, 920, 14, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3+14, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 90);
setEffRotateKey( spep_3+14, ryusen3, 90);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffScaleKey( spep_3+14, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+14, ryusen3, 255);

-- ** 集中線(最前面)

shuchusen3 = entryEffectLife(spep_3+30, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3+30, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+60, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+61, shuchusen3, 0, 0, 0);
setEffMoveKey( spep_3+180, shuchusen3, 0, 0, 0);
setEffScaleKey(spep_3+30, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+60, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+61, shuchusen3, 1.6, 1.6);
setEffScaleKey(spep_3+180, shuchusen3, 1.6, 1.6);
setEffAlphaKey( spep_3+30, shuchusen3, 255);
setEffAlphaKey( spep_3+140, shuchusen3, 255);
setEffRotateKey( spep_3+30, shuchusen3, 0);
setEffRotateKey( spep_3+180, shuchusen3, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_3, 1, 1);
setDisp( spep_3+180, 1, 0);
changeAnime( spep_3, 1, 108); --敵モーション登場
changeAnime( spep_3+27, 1, 106); --敵モーション初撃やられ

setShakeChara( spep_3, 1, 80, 10);

setRotateKey( spep_3, 1, 90); --敵角度
setRotateKey( spep_3+26, 1, 90); --敵角度
setRotateKey( spep_3+27, 1, 20); --敵角度
setRotateKey( spep_3+180, 1, 20); --敵角度

setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+26, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+30, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+40, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+45, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+180, 1, 1.7, 1.7); --敵サイズ
setMoveKey( spep_3+1, 1, 0, 300, 0); --敵位置
setMoveKey( spep_3+10, 1, 0, 0, 0); --敵位置
setMoveKey( spep_3+27, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+40, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+50, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+60, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+80, 1, 0, -400, 0); --敵位置
--setMoveKey( spep_3+60, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+100, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+140, 1, 0, -1500, 0); --敵位置
setMoveKey( spep_3+180, 1, 0, -10000, 0); --敵位置


playSe( spep_3+27, SE_09);
--[[
playSe( spep_3+70, 1011);
playSe( spep_3+80, 1011);
playSe( spep_3+90, 1011);
playSe( spep_3+100, 1011);
playSe( spep_3+110, 1011);
playSe( spep_3+120, 1011);
playSe( spep_3+130, 1011);
playSe( spep_3+140, 1011);
]]
--4.11調整
SE001 = playSe( spep_3+70, 1011);
stopSe( spep_3+90,SE001,5);
SE002 = playSe( spep_3+80, 1011);
stopSe( spep_3+100,SE002,5);
SE003 = playSe( spep_3+90, 1011);
stopSe( spep_3+110,SE003,5);
SE004 = playSe( spep_3+100, 1011);
stopSe( spep_3+120,SE004,5);
SE005 = playSe( spep_3+110, 1011);
stopSe( spep_3+130,SE005,5);
SE006 = playSe( spep_3+120, 1011);
stopSe( spep_3+140,SE006,5);
SE007 = playSe( spep_3+130, 1011);
stopSe( spep_3+150,SE007,5);
SE008 = playSe( spep_3+140, 1011);

------------------------------------------------------
-- 正面溜め(120F)
------------------------------------------------------
spep_4 = spep_3+180;

-- ** フェード
entryFade(spep_4-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 230);       -- ベース暗め　背景
entryFade(spep_4+115, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト
tameaa = entryEffect( spep_4, SP_06, 0x100, -1,  0,  0,  0);   -- 突進
setEffMoveKey( spep_4, tameaa,  0,  0,  0);
setEffMoveKey( spep_4+120, tameaa,  0,  0,  0);
setEffScaleKey( spep_4, tameaa, 1.0, 1.0);
setEffScaleKey( spep_4+120, tameaa, 1.0, 1.0);
setEffAlphaKey( spep_4, tameaa, 255);
setEffAlphaKey( spep_4+120, tameaa, 255);
setEffRotateKey( spep_4, tameaa, 0);
setEffRotateKey( spep_4+120, tameaa, 0);

-- ** 集中線
shuchusen4 = entryEffectLife(spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);

-- ** カットイン
speff = entryEffect( spep_4+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_4+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_4+35, SE_04);

--** 書き文字エントリー
ctgogo = entryEffectLife( spep_4+40, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_4+40,ctgogo,-250,500,0);
setEffScaleKey( spep_4+40, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_4+40, ctgogo, -30);
setEffAlphaKey( spep_4+40, ctgogo, 255);
setEffShake(spep_4+40, ctgogo, 69, 10);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4+120;

playSe( spep_5, SE_05);

shuchusen5 = entryEffectLife(spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5, shuchusen5, 1.6, 1.6);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_5+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(90F)
------------------------------------------------------
spep_6 = spep_5+90;

-- ** フェード

entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_6+14, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(前面)

beam = entryEffect( spep_6, SP_07, 0x100,  -1,  0,  0,  0);   -- 放つ(キャラクター)
setEffMoveKey(  spep_6,beam, 0,  0,   0);
setEffMoveKey(  spep_6+90,beam, 0,  0,   0);
setEffScaleKey( spep_6,beam, 1.0, 1.0);
setEffScaleKey( spep_6+90,beam, 1.0, 1.0);
setEffRotateKey( spep_6,beam, 0);
setEffRotateKey( spep_6+90,beam, 0);
setEffAlphaKey( spep_6,beam, 255);
setEffAlphaKey( spep_6+90,beam, 255);
setEffAlphaKey( spep_6+91,beam, 0);
setEffShake(spep_6 , beam, 90, 10);


-- ** 集中線(最前面)

shuchusen6 = entryEffectLife(spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffMoveKey( spep_6+90, shuchusen6, 0, 0, 0);
setEffScaleKey(spep_6, shuchusen6, 1.4, 1.4);
setEffScaleKey(spep_6+90, shuchusen6, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffAlphaKey( spep_6+90, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
setEffRotateKey( spep_6+90, shuchusen6, 0);

playSe( spep_6+2, SE_06);
playSe( spep_6+24, SE_07);

sen2 = entryEffectLife( spep_6+18, 921, 72, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6+18, sen2, 270);
setEffScaleKey(  spep_6+18, sen2, 1.5, 1.2);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_6+18, 10012, 42, 0, -1, 0, 0, 0); -- ズオッ
setEffMoveKey(spep_6+18, ctzuo, -100, -100,0);
setEffMoveKey(spep_6+24, ctzuo, -100, 0,0);
setEffMoveKey(spep_6+60, ctzuo, -100, 0,0);
setEffShake(spep_6+18, ctzuo, 32, 15);
setEffAlphaKey(spep_6+18, ctzuo, 255);
setEffAlphaKey(spep_6+54, ctzuo, 255);
setEffAlphaKey(spep_6+60, ctzuo, 0);
setEffScaleKey(spep_6+18, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_6+24, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_6+54, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_6+60, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_6+18, ctzuo, -10);
setEffRotateKey(spep_6+60, ctzuo, -10);

------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_7  = spep_6+90;

-- ** フェード
entryFadeBg( spep_7 , 0, 160, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_7-4, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

exp = entryEffect( spep_7, SP_08, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_7, exp, 0, 0, 0);
setEffScaleKey( spep_7, exp, 1.1, 1.1);
setEffAlphaKey( spep_7, exp, 255);
setEffRotateKey( spep_7, exp, 0);
setEffShake(spep_7 , exp, 160, 10);

playSe( spep_7+6, SE_10);

shuchusen7 = entryEffectLife(spep_7, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_7, shuchusen7, 1.3, 1.3);

-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+156);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(56F)
------------------------------------------------------

spep_1 = 0;

-- ** フェード
entryFade(spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 0, 0, 0, 230);       -- ベース暗め　背景

-- ** 集中線
shuchusen1 = entryEffectLife(spep_1, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.2, 1.2);

-- ** エフェクト
tosshin = entryEffect( spep_1, SP_01x, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_1, tosshin, 60, 10);
setEffMoveKey( spep_1, tosshin,  0,  0,  0);
setEffMoveKey( spep_1+60, tosshin,  0,  0,  0);
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffScaleKey( spep_1+60, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1+60, tosshin, 255);
setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1+60, tosshin, 0);


playSe(spep_1+5, 9);


------------------------------------------------------
-- パンチ→打ち下ろし(204F)
------------------------------------------------------
spep_2 = spep_1+56;

-- ** フェード
entryFade(spep_2-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 204, 0, 0, 0, 0, 230);       -- ベース暗め　背景

-- ** エフェクト
otosu = entryEffect( spep_2, SP_02x, 0x100, -1,  0,  0,  0);   -- temae
setEffShake(spep_2, otosu, 204, 10);
setEffMoveKey( spep_2, otosu,  0,  0,  0);
setEffMoveKey( spep_2+204, otosu,  0,  0,  0);
setEffScaleKey( spep_2, otosu, 1.0, 1.0);
setEffScaleKey( spep_2+204, otosu, 1.0, 1.0);
setEffAlphaKey( spep_2, otosu, 255);
setEffAlphaKey( spep_2+204, otosu, 255);
setEffAlphaKey( spep_2+205, otosu, 0);
setEffRotateKey( spep_2, otosu, 0);
setEffRotateKey( spep_2+204, otosu, 0);

-- ** 流線(横→縦) ** --
ryusen = entryEffectLife( spep_2, 920, 204, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, -5);
setEffRotateKey( spep_2+204, ryusen, -5);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffScaleKey( spep_2+204, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);
setEffAlphaKey( spep_2+204, ryusen, 255);

-- ** エフェクト
usiro = entryEffect( spep_2, SP_03x, 0x80, -1,  0,  0,  0);   -- 後ろ
setEffShake(spep_2, usiro, 204, 10);
setEffMoveKey( spep_2, usiro,  0,  0,  0);
setEffMoveKey( spep_2+204, usiro,  0,  0,  0);
setEffScaleKey( spep_2, usiro, 1.0, 1.0);
setEffScaleKey( spep_2+204, usiro, 1.0, 1.0);
setEffAlphaKey( spep_2, usiro, 255);
setEffAlphaKey( spep_2+204, usiro, 255);
setEffAlphaKey( spep_2+205, usiro, 0);
setEffRotateKey( spep_2, usiro, 0);
setEffRotateKey( spep_2+204, usiro, 0);


-- ** 集中線
shuchusen2 = entryEffectLife(spep_2, 906, 204, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104); --敵モーション登場ガード

setRotateKey( spep_2, 1, 0); --敵角度

setScaleKey( spep_2, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_2+100, 1, 1.4, 1.4); --敵サイズ
setMoveKey( spep_2, 1, -300, 0, 0); --敵位置




------------------------------------------------------
-- 回避(spep_1+12)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 73; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,10,10,0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,10,10,0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
changeAnime( spep_2+25, 1, 108); --敵モーション初撃やられ
changeAnime( spep_2+113, 1, 106); --敵モーションキックやられ
changeAnime( spep_2+175, 1, 108); --敵モーション打ち下ろしやられ
setShakeChara( spep_2+25, 1, 185, 15);

setRotateKey( spep_2+174, 1, 0); --敵角度
setRotateKey( spep_2+175, 1, 90); --敵角度
setRotateKey( spep_2+204, 1, 90); --敵角度

setMoveKey( spep_2+20, 1, 10, 10, 0); --敵位置
setMoveKey( spep_2+25, 1, 60, 30, 0); --敵位置しょげきやられ
setMoveKey( spep_2+106, 1, 100, 80, 0); --敵位置しょげきやられ
setMoveKey( spep_2+113, 1, 130, 100, 0); --敵位置しょげきやられ
setMoveKey( spep_2+130, 1, 130, 110, 0); --敵位置しょげきやられ

setMoveKey( spep_2+160, 1, -100, 30, 0); --敵位置
setMoveKey( spep_2+174, 1, -30, 70, 0); --敵位置
setMoveKey( spep_2+175, 1, -30, 70, 0); --敵位置
setMoveKey( spep_2+204, 1, 0, -600, 0); --敵位置2発目

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+24, 10017, 96, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+24, ctDokgaga, 20);
setEffShake(spep_2+24, ctDokgaga, 96, 15);
setEffAlphaKey(spep_2+24, ctDokgaga, 255);
setEffAlphaKey(spep_2+110, ctDokgaga, 255);
setEffAlphaKey(spep_2+120, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+120, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+24, ctDokgaga,  50,  250,  0);
setEffMoveKey( spep_2+120, ctDokgaga,  50,  250,  0);


-- 書き文字エントリー
ctBaki = entryEffectLife( spep_2+175, 10020, 22, 0, -1, 0, -100, 350); -- バキッ
setEffRotateKey(spep_2+175, ctBaki, -10);
setEffRotateKey(spep_2+176, ctBaki, -10);
setEffRotateKey(spep_2+177, ctBaki, 0);
setEffRotateKey(spep_2+178, ctBaki, 0);
setEffRotateKey(spep_2+179, ctBaki, -10);
setEffRotateKey(spep_2+180, ctBaki, -10);
setEffRotateKey(spep_2+181, ctBaki, 0);
setEffRotateKey(spep_2+182, ctBaki, 0);
setEffRotateKey(spep_2+183, ctBaki, -10);
setEffShake(spep_2+175, ctBaki, 22, 5);
setEffAlphaKey(spep_2+175, ctBaki, 255);
setEffAlphaKey(spep_2+196, ctBaki, 255);
setEffAlphaKey(spep_2+197, ctBaki, 0);
setEffScaleKey(spep_2+175, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_2+176, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_2+177, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_2+197, ctBaki, 2.4, 2.4);


playSe( spep_2+25, 1009);
playSe( spep_2+35, 1000);
playSe( spep_2+43, 1001);
playSe( spep_2+53, 1000);
playSe( spep_2+59, 1009);
playSe( spep_2+65, 1000);
playSe( spep_2+71, 1001);
playSe( spep_2+77, 1001);
playSe( spep_2+87, 1009);
playSe( spep_2+113, 1010);
playSe( spep_2+175, 1009);

------------------------------------------------------
-- 溜め(180F)
------------------------------------------------------
spep_3 = spep_2+204;

-- ** フェード
entryFade(spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_3+53, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト(背面)

zimen = entryEffect( spep_3, SP_05, 0x80, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, zimen, 180, 10);
setEffMoveKey( spep_3, zimen,  0,  0,  0);
setEffMoveKey( spep_3+40, zimen,  0,  0,  0);
setEffScaleKey( spep_3, zimen, -1.0, 1.0);
setEffScaleKey( spep_3+180, zimen, -1.0, 1.0);
setEffAlphaKey( spep_3, zimen, 255);
setEffAlphaKey( spep_3+180, zimen, 255);
setEffAlphaKey( spep_3+181, zimen, 0);
setEffRotateKey( spep_3, zimen, 0);
setEffRotateKey( spep_3+180, zimen, 0);

-- ** エフェクト(前面)

tame = entryEffect( spep_3, SP_04, 0x100, -1,  0,  0,  0);   -- 突進
setEffShake(spep_3, tame, 180, 10);
setEffMoveKey( spep_3, tame,  0,  0,  0);
setEffMoveKey( spep_3+40, tame,  0,  0,  0);
setEffScaleKey( spep_3, tame, -1.0, 1.0);
setEffScaleKey( spep_3+180, tame, -1.0, 1.0);
setEffAlphaKey( spep_3, tame, 255);
setEffAlphaKey( spep_3+180, tame, 255);
setEffAlphaKey( spep_3+181, tame, 0);
setEffRotateKey( spep_3, tame, 0);
setEffRotateKey( spep_3+180, tame, 0);

-- ** 流線(縦) 最背面** --
ryusen3 = entryEffectLife( spep_3, 920, 14, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3+14, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 90);
setEffRotateKey( spep_3+14, ryusen3, 90);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffScaleKey( spep_3+14, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+14, ryusen3, 255);

-- ** 集中線(最前面)

shuchusen3 = entryEffectLife(spep_3+30, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3+30, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+60, shuchusen3, 0, -200, 0);
setEffMoveKey( spep_3+61, shuchusen3, 0, 0, 0);
setEffMoveKey( spep_3+180, shuchusen3, 0, 0, 0);
setEffScaleKey(spep_3+30, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+60, shuchusen3, 1.4, 2);
setEffScaleKey(spep_3+61, shuchusen3, 1.6, 1.6);
setEffScaleKey(spep_3+180, shuchusen3, 1.6, 1.6);
setEffAlphaKey( spep_3+30, shuchusen3, 255);
setEffAlphaKey( spep_3+140, shuchusen3, 255);
setEffRotateKey( spep_3+30, shuchusen3, 0);
setEffRotateKey( spep_3+180, shuchusen3, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_3, 1, 1);
setDisp( spep_3+180, 1, 0);
changeAnime( spep_3, 1, 108); --敵モーション登場
changeAnime( spep_3+27, 1, 106); --敵モーション初撃やられ

setShakeChara( spep_3, 1, 80, 10);

setRotateKey( spep_3, 1, 90); --敵角度
setRotateKey( spep_3+26, 1, 90); --敵角度
setRotateKey( spep_3+27, 1, 20); --敵角度
setRotateKey( spep_3+180, 1, 20); --敵角度

setScaleKey( spep_3, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+26, 1, 1.4, 1.4); --敵サイズ
setScaleKey( spep_3+30, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+40, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+45, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_3+180, 1, 1.7, 1.7); --敵サイズ
setMoveKey( spep_3+1, 1, 0, 300, 0); --敵位置
setMoveKey( spep_3+10, 1, 0, 0, 0); --敵位置
setMoveKey( spep_3+27, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+40, 1, 0, -300, 0); --敵位置
setMoveKey( spep_3+50, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+60, 1, 0, -340, 0); --敵位置
setMoveKey( spep_3+80, 1, 0, -400, 0); --敵位置
--setMoveKey( spep_3+60, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+100, 1, 0, -500, 0); --敵位置
setMoveKey( spep_3+140, 1, 0, -1500, 0); --敵位置
setMoveKey( spep_3+180, 1, 0, -10000, 0); --敵位置

playSe( spep_3+27, SE_09);
--[[
playSe( spep_3+70, 1011);
playSe( spep_3+80, 1011);
playSe( spep_3+90, 1011);
playSe( spep_3+100, 1011);
playSe( spep_3+110, 1011);
playSe( spep_3+120, 1011);
playSe( spep_3+130, 1011);
playSe( spep_3+140, 1011);
]]
--4.11調整
SE001 = playSe( spep_3+70, 1011);
stopSe( spep_3+90,SE001,5);
SE002 = playSe( spep_3+80, 1011);
stopSe( spep_3+100,SE002,5);
SE003 = playSe( spep_3+90, 1011);
stopSe( spep_3+110,SE003,5);
SE004 = playSe( spep_3+100, 1011);
stopSe( spep_3+120,SE004,5);
SE005 = playSe( spep_3+110, 1011);
stopSe( spep_3+130,SE005,5);
SE006 = playSe( spep_3+120, 1011);
stopSe( spep_3+140,SE006,5);
SE007 = playSe( spep_3+130, 1011);
stopSe( spep_3+150,SE007,5);
SE008 = playSe( spep_3+140, 1011);

------------------------------------------------------
-- 正面溜め(120F)
------------------------------------------------------
spep_4 = spep_3+180;

-- ** フェード
entryFade(spep_4-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 230);       -- ベース暗め　背景
entryFade(spep_4+115, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト
tameaa = entryEffect( spep_4, SP_06, 0x100, -1,  0,  0,  0);   -- 突進
setEffMoveKey( spep_4, tameaa,  0,  0,  0);
setEffMoveKey( spep_4+120, tameaa,  0,  0,  0);
setEffScaleKey( spep_4, tameaa, -1.0, 1.0);
setEffScaleKey( spep_4+120, tameaa, -1.0, 1.0);
setEffAlphaKey( spep_4, tameaa, 255);
setEffAlphaKey( spep_4+120, tameaa, 255);
setEffRotateKey( spep_4, tameaa, 0);
setEffRotateKey( spep_4+120, tameaa, 0);

-- ** 集中線
shuchusen4 = entryEffectLife(spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);

-- ** カットイン
--speff = entryEffect( spep_4+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep_4+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_4+35, SE_04);

--** 書き文字エントリー
ctgogo = entryEffectLife( spep_4+40, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_4+40,ctgogo,-100,500,0);
setEffScaleKey( spep_4+40, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_4+40, ctgogo, -30);
setEffAlphaKey( spep_4+40, ctgogo, 255);
setEffShake(spep_4+40, ctgogo, 69, 10);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4+120;

playSe( spep_5, SE_05);

shuchusen5 = entryEffectLife(spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5, shuchusen5, 1.6, 1.6);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade( spep_5+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(90F)
------------------------------------------------------
spep_6 = spep_5+90;

-- ** フェード

entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_6+14, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト(前面)

beam = entryEffect( spep_6, SP_07, 0x100,  -1,  0,  0,  0);   -- 放つ(キャラクター)
setEffMoveKey(  spep_6,beam, 0,  0,   0);
setEffMoveKey(  spep_6+90,beam, 0,  0,   0);
setEffScaleKey( spep_6,beam, -1.0, 1.0);
setEffScaleKey( spep_6+90,beam, -1.0, 1.0);
setEffRotateKey( spep_6,beam, 0);
setEffRotateKey( spep_6+90,beam, 0);
setEffAlphaKey( spep_6,beam, 255);
setEffAlphaKey( spep_6+90,beam, 255);
setEffAlphaKey( spep_6+91,beam, 0);
setEffShake(spep_6 , beam, 90, 10);


-- ** 集中線(最前面)

shuchusen6 = entryEffectLife(spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffMoveKey( spep_6+90, shuchusen6, 0, 0, 0);
setEffScaleKey(spep_6, shuchusen6, 1.4, 1.4);
setEffScaleKey(spep_6+90, shuchusen6, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffAlphaKey( spep_6+90, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
setEffRotateKey( spep_6+90, shuchusen6, 0);

playSe( spep_6+2, SE_06);
playSe( spep_6+24, SE_07);

sen2 = entryEffectLife( spep_6+18, 921, 72, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6+18, sen2, 270);
setEffScaleKey(  spep_6+18, sen2, 1.5, 1.2);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_6+18, 10012, 42, 0, -1, 0, 0, 0); -- ズオッ
setEffMoveKey(spep_6+18, ctzuo, -100, -100,0);
setEffMoveKey(spep_6+24, ctzuo, -100, 0,0);
setEffMoveKey(spep_6+60, ctzuo, -100, 0,0);
setEffShake(spep_6+18, ctzuo, 32, 15);
setEffAlphaKey(spep_6+18, ctzuo, 255);
setEffAlphaKey(spep_6+54, ctzuo, 255);
setEffAlphaKey(spep_6+60, ctzuo, 0);
setEffScaleKey(spep_6+18, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_6+24, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_6+54, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_6+60, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_6+18, ctzuo, -10);
setEffRotateKey(spep_6+60, ctzuo, -10);

------------------------------------------------------
-- 大爆発(160F)
------------------------------------------------------
spep_7  = spep_6+90;

-- ** フェード
entryFadeBg( spep_7 , 0, 160, 0,0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_7-4, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

exp = entryEffect( spep_7, SP_08, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_7, exp, 0, 0, 0);
setEffScaleKey( spep_7, exp, -1.1, 1.1);
setEffAlphaKey( spep_7, exp, 255);
setEffRotateKey( spep_7, exp, 0);
setEffShake(spep_7 , exp, 160, 10);

playSe( spep_7+6, SE_10);

shuchusen7 = entryEffectLife(spep_7, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_7, shuchusen7, 1.3, 1.3);

-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+156);

end
