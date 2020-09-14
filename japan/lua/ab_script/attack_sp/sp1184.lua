--孫悟空(GT)_龍拳 sp1184 　card_id =1014490  speffct = sp_effect_b1_00042


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
SP_01 = 151834;--気弾
SP_02 = 151835;--敵に玉が当たる
SP_03 = 151836;--悟空、上に飛ぶ
SP_04 = 151837;--悟空突進
SP_05 = 151838;--龍を出す
SP_06 = 151839;--貫通(前)
SP_07 = 151840;--貫通(後)


--敵側は味方側に1xをつけてます

SP_11 = 151841;--冒頭
SP_12 = 151842;--貫通前
SP_13 = 151843;--貫通後


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);



kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
-- 18号敵に打つ(130F)
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

kidan = entryEffectLife(spep_0, SP_01, 126, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_0, kidan, 0, 0, 0);
setEffMoveKey(spep_0+126, kidan, 0, 0, 0);

setEffScaleKey(spep_0, kidan, 1.0, 1.0);
setEffScaleKey(spep_0+126, kidan, 1.0, 1.0);

setEffAlphaKey(spep_0, kidan, 255);
setEffAlphaKey(spep_0+126, kidan, 255);

setEffRotateKey(spep_0, kidan, 0);
setEffRotateKey(spep_0+126, kidan, 0);


shuchusen = entryEffectLife(spep_0+35, 906, 21, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_0+35, shuchusen, 0, 0, 0);
setEffMoveKey(spep_0+56, shuchusen, 0, 0, 0);

setEffScaleKey(spep_0+35, shuchusen, 2.0, 1.0);
setEffScaleKey(spep_0+56, shuchusen, 2.0, 1.0);

setEffAlphaKey(spep_0+35, shuchusen, 255);
setEffAlphaKey(spep_0+56, shuchusen, 255);

setEffRotateKey(spep_0+35, shuchusen, 180);
setEffRotateKey(spep_0+56,shuchusen, 180);


ryusen = entryEffectLife(spep_0+55, 920, 72, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_0 + 55, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 60, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 68, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 70, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 72, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 80, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 82, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 84, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 92, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 94, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 96, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 104, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 106, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 108, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 116, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 118, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 120, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 127, ryusen, -123.8, -389.5 , 0 );

setEffScaleKey( spep_0 + 57, ryusen, 7.74, 1.58 );
setEffScaleKey( spep_0 + 130, ryusen, 7.74, 1.58 );

setEffRotateKey( spep_0 + 57, ryusen, -52 );
setEffRotateKey( spep_0 + 130, ryusen, -52 );

setEffAlphaKey( spep_0 + 57, ryusen, 255 );
setEffAlphaKey( spep_0 + 60, ryusen, 255 );
setEffAlphaKey( spep_0 + 128, ryusen, 255 );
setEffAlphaKey( spep_0 + 130, ryusen, 255 );


ctbababa = entryEffectLife(spep_0+57, 10023, 43, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_0 + 57, ctbababa, -55.9, 137.9 , 0 );
setEffMoveKey( spep_0 + 60, ctbababa, -55.9, 137.9 , 0 );
setEffMoveKey( spep_0 + 62, ctbababa, -52.6, 174.2 , 0 );
setEffMoveKey( spep_0 + 64, ctbababa, -57.3, 213.8 , 0 );
setEffMoveKey( spep_0 + 66, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 68, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 70, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 72, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 74, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 76, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 78, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 80, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 82, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 84, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 86, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 88, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 90, ctbababa, -50.5, 259.3 , 0 );
setEffMoveKey( spep_0 + 92, ctbababa, -57.9, 273.2 , 0 );
setEffMoveKey( spep_0 + 94, ctbababa, -57.9, 283.8 , 0 );
setEffMoveKey( spep_0 + 100, ctbababa, -57.9, 283.8 , 0 );


setEffScaleKey( spep_0 + 57, ctbababa, 0.85, 0.85 );
setEffScaleKey( spep_0 + 60, ctbababa, 0.85, 0.85 );
setEffScaleKey( spep_0 + 62, ctbababa, 1.25, 1.25 );
setEffScaleKey( spep_0 + 64, ctbababa, 1.65, 1.65 );
setEffScaleKey( spep_0 + 66, ctbababa, 2.05, 2.05 );
setEffScaleKey( spep_0 + 88, ctbababa, 2.05, 2.05 );
setEffScaleKey( spep_0 + 90, ctbababa, 2.37, 2.37 );
setEffScaleKey( spep_0 + 92, ctbababa, 2.69, 2.69 );
setEffScaleKey( spep_0 + 94, ctbababa, 3.01, 3.01 );
setEffScaleKey( spep_0 + 100, ctbababa, 3.01, 3.01 );


setEffRotateKey( spep_0 + 57, ctbababa, -26.8 );
setEffRotateKey( spep_0 + 60, ctbababa, -26.8 );
setEffRotateKey( spep_0 + 62, ctbababa, -27 );
setEffRotateKey( spep_0 + 100, ctbababa, -27 );


setEffAlphaKey( spep_0 + 57, ctbababa, 255 );
setEffAlphaKey( spep_0 + 60, ctbababa, 255 );
setEffAlphaKey( spep_0 + 88, ctbababa, 255 );
setEffAlphaKey( spep_0 + 90, ctbababa, 170 );
setEffAlphaKey( spep_0 + 92, ctbababa, 85 );
setEffAlphaKey( spep_0 + 94, ctbababa, 0 );
setEffAlphaKey( spep_0 + 100, ctbababa, 0 );

entryFade( spep_0+120, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_0, 0, 288, 0, 0, 0, 0, 255); -- ベース暗め　背景


playSe( spep_0+33, 43);
playSe( spep_0+63, 1016);
playSe( spep_0+73, 1016);


------------------------------------------------------
--回避 
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+83; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge, 1, 130, -130);
setScaleKey(SP_dodge, 1, 1.37, 1.37);
setRotateKey(SP_dodge, 1, -30.2);

setMoveKey(SP_dodge+8, 1, 130, -130);
setScaleKey(SP_dodge+8, 1.37, 1.37);
setRotateKey(SP_dodge+8, 1, -30.2);

setEffAlphaKey(SP_dodge+8, kidan, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, kidan, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--回避 終わり
------------------------------------------------------

--[[
playSe( spep_0+83, 1016);
playSe( spep_0+93, 1016);
playSe( spep_0+103, 1016);
playSe( spep_0+113, 1016);
playSe( spep_0+123, 1016);
]]
--4.11
SE001 = playSe( spep_0+83, 1016);
stopSe(spep_0+103,SE001,5);
SE002 = playSe( spep_0+93, 1016);
stopSe(spep_0+113,SE002,5);
SE003 = playSe( spep_0+103, 1016);
stopSe(spep_0+123,SE003,5);
SE004 = playSe( spep_0+113, 1016);
stopSe(spep_0+133,SE004,5);
SE005 = playSe( spep_0+123, 1016);

------------------------------------------------------------------------------------------------------------
-- 敵に気弾ヒット(60F)
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0+128;

kidan2 = entryEffectLife(spep_1+3, SP_02, 55, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, kidan, 0, 0, 0);
setEffMoveKey(spep_1+55, kidan, 0, 0, 0);

setEffScaleKey(spep_1, kidan, 1.0, 1.0);
setEffScaleKey(spep_1+55, kidan, 1.0, 1.0);

setEffAlphaKey(spep_1, kidan, 255);
setEffAlphaKey(spep_1+55, kidan, 255);

setEffRotateKey(spep_1, kidan, 0);
setEffRotateKey(spep_1+55, kidan, 0);


shuchusen2 = entryEffectLife(spep_1, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_1, shuchusen2, 0, 0, 0);
setEffMoveKey(spep_1+58, shuchusen2, 0, 0, 0);

setEffScaleKey(spep_1, shuchusen2, 2.0, 1.0);
setEffScaleKey(spep_1+58, shuchusen2, 2.0, 1.0);

setEffAlphaKey(spep_1, shuchusen2, 255);
setEffAlphaKey(spep_1+58, shuchusen2, 255);

setEffRotateKey(spep_1, shuchusen2, 180);
setEffRotateKey(spep_1+58, shuchusen2, 180);


ryusen2 = entryEffectLife( spep_1, 920, 58, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_1 + 0, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 2, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 4, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 6, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 8, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 10, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 12, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 14, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 16, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 18, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 20, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 22, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 24, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 26, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 28, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 30, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 32, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 34, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 36, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 38, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 40, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 42, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 44, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 46, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 48, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 50, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 52, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 54, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 56, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 58, ryusen2, 783.2, 845.3 , 0 );



setEffScaleKey( spep_1 + 0, ryusen2, 3.37, 1.32 );
setEffScaleKey( spep_1 + 58, ryusen2, 3.37, 1.32 );


setEffRotateKey( spep_1 + 0, ryusen2, 132.3 );
setEffRotateKey( spep_1 + 58, ryusen2, 132.3 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 58, ryusen2, 255 );


ctzudodo = entryEffectLife( spep_1, 10014, 58, 0x100, -1, -28, 348, 0);

setEffMoveKey( spep_1 + 0, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 4, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 6, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 8, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 10, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 12, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 14, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 16, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 18, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 20, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 22, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 24, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 26, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 30, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 32, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 34, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 36, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 38, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 40, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 42, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 44, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 46, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 48, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 50, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 52, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 54, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 56, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 58, ctzudodo, -25.6, 325.2 , 0 );


setEffScaleKey( spep_1 + 0, ctzudodo, 2.7, 2.7);
setEffScaleKey( spep_1 + 58, ctzudodo, 2.7, 2.7);


setEffRotateKey( spep_1 + 0, ctzudodo, 15 );
setEffRotateKey( spep_1 + 58, ctzudodo, 15 );


setEffAlphaKey( spep_1 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_1 + 58, ctzudodo, 255 );


ctzudodo2 = entryEffectLife( spep_1+3, 10014, 55, 0x100, -1, -28, 348, 0);

setEffMoveKey( spep_1 + 3, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 4, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 6, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 8, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 10, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 12, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 14, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 16, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 18, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 20, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 22, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 24, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 26, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 30, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 32, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 34, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 36, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 38, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 40, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 42, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 44, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 46, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 48, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 50, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 52, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 54, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 56, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 58, ctzudodo2, -25.6, 325.2 , 0 );


setEffScaleKey( spep_1 + 0, ctzudodo2, 2.7, 2.7);
setEffScaleKey( spep_1 + 58, ctzudodo2, 2.7, 2.7);


setEffRotateKey( spep_1 + 0, ctzudodo2, 15 );
setEffRotateKey( spep_1 + 58, ctzudodo2, 15 );


setEffAlphaKey( spep_1 + 0, ctzudodo2, 255 );
setEffAlphaKey( spep_1 + 58, ctzudodo2, 255 );



------------------------------------------------------------------------------------------------------------
--敵の動き
------------------------------------------------------------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 100); 
changeAnime( spep_1 + 10, 1, 104 );
setDisp( spep_1+60, 1, 0);

setMoveKey( spep_1 , 1, 170.9, 183.4 , 0 );
setMoveKey( spep_1 + 2, 1, 170.9, 183.4 , 0 );
setMoveKey( spep_1 + 4, 1, 116.4, 115.4 , 0 );
setMoveKey( spep_1 + 6, 1, 53.8, 62.8 , 0 );
setMoveKey( spep_1 + 9, 1, -2.3, -3.3 , 0 );
setMoveKey( spep_1 + 10, 1, 35.1, 11.8 , 0 );
setMoveKey( spep_1 + 12, 1, 34, 13 , 0 );
setMoveKey( spep_1 + 14, 1, 32.5, 9.7 , 0 );
setMoveKey( spep_1 + 16, 1, 38.5, 6.7 , 0 );
setMoveKey( spep_1 + 18, 1, 30.1, 14.1 , 0 );
setMoveKey( spep_1 + 20, 1, 33.5, 12 , 0 );
setMoveKey( spep_1 + 22, 1, 38, 11.3 , 0 );
setMoveKey( spep_1 + 24, 1, 37.9, 13.4 , 0 );
setMoveKey( spep_1 + 26, 1, 35.2, 16.9 , 0 );
setMoveKey( spep_1 + 28, 1, 40, 13 , 0 );
setMoveKey( spep_1 + 30, 1, 33, 13.6 , 0 );
setMoveKey( spep_1 + 32, 1, 37.5, 12.5 , 0 );
setMoveKey( spep_1 + 34, 1, 40.6, 18.4 , 0 );
setMoveKey( spep_1 + 36, 1, 39.5, 19.7 , 0 );
setMoveKey( spep_1 + 38, 1, 38, 16.6 , 0 );
setMoveKey( spep_1 + 40, 1, 43.9, 13.4 , 0 );
setMoveKey( spep_1 + 42, 1, 35.7, 20.8 , 0 );
setMoveKey( spep_1 + 44, 1, 39, 18.7 , 0 );
setMoveKey( spep_1 + 46, 1, 43.5, 18.1 , 0 );
setMoveKey( spep_1 + 48, 1, 43.3, 20.2 , 0 );
setMoveKey( spep_1 + 50, 1, 40.7, 23.7 , 0 );
setMoveKey( spep_1 + 52, 1, 45.5, 19.6 , 0 );
setMoveKey( spep_1 + 54, 1, 38.5, 20.5 , 0 );
setMoveKey( spep_1 + 56, 1, 42.8, 19.1 , 0 );
setMoveKey( spep_1 + 58, 1, 46.1, 25.2 , 0 );
setMoveKey( spep_1 + 60, 1, 46.1, 25.2 , 0 );


setScaleKey( spep_1 , 1, 1.3, 1.3 );
setScaleKey( spep_1 + 9, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 18, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 54, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 56, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 60, 1, 1.34, 1.34 );


setRotateKey( spep_1 , 1, 0 );
setRotateKey( spep_1 + 9, 1, 0 );
setRotateKey( spep_1 + 10, 1, -9.3 );
setRotateKey( spep_1 + 12, 1, -9.5 );
setRotateKey( spep_1 + 60, 1, -9.5 );


setEffAlphaKey( spep_1 + 0, 1, 255 );
setEffAlphaKey( spep_1 + 60, 1, 255 );


playSe( spep_1+10, 1006);
playSe( spep_1+30, 1006);
playSe( spep_1+40, 1006);
playSe( spep_1+50, 1006);




entryFade( spep_1+56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 正面18号
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+60;

front = entryEffectLife(spep_2, SP_03, 88, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_2, front, 0, 0, 0);
setEffMoveKey(spep_2+88, front, 0, 0, 0);

setEffScaleKey(spep_2, front, 1.0, 1.0);
setEffScaleKey(spep_2+88, front, 1.0, 1.0);

setEffAlphaKey(spep_2, front, 255);
setEffAlphaKey(spep_2+88, front, 255);

setEffRotateKey(spep_2, front, 0);
setEffRotateKey(spep_2+88, front, 0);


shuchusen3 = entryEffectLife(spep_2, 906, 88, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, shuchusen3, 0, 0, 0);
setEffMoveKey(spep_2+88, shuchusen3, 0, 0, 0);

setEffScaleKey(spep_2, shuchusen3, 2.0, 1.0);
setEffScaleKey(spep_2+88, shuchusen3, 2.0, 1.0);

setEffAlphaKey(spep_2, shuchusen3, 255);
setEffAlphaKey(spep_2+88, shuchusen3, 255);

setEffRotateKey(spep_2, shuchusen3, 180);
setEffRotateKey(spep_2+88, shuchusen3, 180);


ctdon = entryEffectLife( spep_2+29, 10019, 33, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_2 + 29, ctdon, 16, 6 , 0 );
setEffMoveKey( spep_2 + 34, ctdon, 7.8, 54.3 , 0 );
setEffMoveKey( spep_2 + 36, ctdon, 18.6, 121.9 , 0 );
setEffMoveKey( spep_2 + 38, ctdon, 3.9, 163.8 , 0 );
setEffMoveKey( spep_2 + 40, ctdon, 20, 180 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, 3.4, 163.3 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, 20, 179.9 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, 2.9, 162.8 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, 20.1, 180 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, 2.3, 162.2 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, 20, 179.9 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, 1.8, 161.8 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, 20.1, 179.9 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, 1.3, 161.2 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, 1.1, 161 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, 1.1, 161 , 0 );


setEffScaleKey( spep_2 + 29, ctdon, 1, 1 );
setEffScaleKey( spep_2 + 34, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 36, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2 + 38, ctdon, 2.56, 2.56 );
setEffScaleKey( spep_2 + 40, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_2 + 42, ctdon, 2.64, 2.64 );
setEffScaleKey( spep_2 + 44, ctdon, 2.68, 2.68 );
setEffScaleKey( spep_2 + 46, ctdon, 2.72, 2.72 );
setEffScaleKey( spep_2 + 48, ctdon, 2.77, 2.77 );
setEffScaleKey( spep_2 + 50, ctdon, 2.81, 2.81 );
setEffScaleKey( spep_2 + 52, ctdon, 2.85, 2.85 );
setEffScaleKey( spep_2 + 54, ctdon, 2.89, 2.89 );
setEffScaleKey( spep_2 + 56, ctdon, 2.93, 2.93 );
setEffScaleKey( spep_2 + 58, ctdon, 2.97, 2.97 );
setEffScaleKey( spep_2 + 60, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_2 + 62, ctdon, 3.01, 3.01 );


setEffRotateKey( spep_2 + 29, ctdon, 0 );
setEffRotateKey( spep_2 + 62, ctdon, 0 );


setEffAlphaKey( spep_2 + 29, ctdon, 255 );
setEffAlphaKey( spep_2 + 52, ctdon, 255 );
setEffAlphaKey( spep_2 + 54, ctdon, 191 );
setEffAlphaKey( spep_2 + 56, ctdon, 128 );
setEffAlphaKey( spep_2 + 58, ctdon, 64 );
setEffAlphaKey( spep_2 + 60, ctdon, 0 );
setEffAlphaKey( spep_2 + 62, ctdon, 0 );


playSe( spep_2+15, 43);
playSe( spep_2+30, 1014);

entryFade( spep_2+78, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 正面突進
------------------------------------------------------------------------------------------------------------


-- ** 次の準備 ** --
spep_3 = spep_2+88;


front2 = entryEffectLife(spep_3, SP_04, 88, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_3, front2, 0, 0, 0);
setEffMoveKey(spep_3+88, front2, 0, 0, 0);

setEffScaleKey(spep_3, front2, 1.0, 1.0);
setEffScaleKey(spep_3+88, front2, 1.0, 1.0);

setEffAlphaKey(spep_3, front2, 255);
setEffAlphaKey(spep_3+88, front2, 255);

setEffRotateKey(spep_3, front2, 0);
setEffRotateKey(spep_3+88, front2, 0);


shuchusen4 = entryEffectLife(spep_3, 906, 88, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_3+88, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_3, shuchusen4, 2.0, 1.0);
setEffScaleKey(spep_3+88, shuchusen4, 2.0, 1.0);

setEffAlphaKey(spep_3, shuchusen4, 255);
setEffAlphaKey(spep_3+88, shuchusen4, 255);

setEffRotateKey(spep_3, shuchusen4, 180);
setEffRotateKey(spep_3+88, shuchusen4, 180);


--顔＆セリフカットイン

speff = entryEffect(spep_3+2, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

speff1 = entryEffect(spep_3+2, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_3+15, 190006, 71, 0x100, -1, 0, 190, 460, 0);--ゴゴゴ

setEffMoveKey( spep_3+15, ctgogo, 190, 460, 0);
setEffMoveKey( spep_3+86, ctgogo, 190, 460, 0);

setEffScaleKey( spep_3+15, ctgogo, 0.8, 0.8);
setEffScaleKey( spep_3+86, ctgogo, 0.8, 0.8);

setEffAlphaKey( spep_3+15, ctgogo, 255);
setEffAlphaKey( spep_3+86, ctgogo, 255);

setEffRotateKey(spep_3+15, ctgogo, 30);
setEffRotateKey(spep_3+86, ctgogo, 30);



playSe(  spep_3+16,  SE_04);  --カットイン音


entryFade( spep_3+81, 7, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 龍を出す
------------------------------------------------------

spep_4 = spep_3+88;

ryu = entryEffectLife(spep_4, SP_05, 78, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, ryu, 0, 0, 0);
setEffMoveKey(spep_4+78, ryu, 0, 0, 0);

setEffScaleKey(spep_4, ryu, 1.0, 1.0);
setEffScaleKey(spep_4+78, ryu, 1.0, 1.0);

setEffAlphaKey(spep_4, ryu, 255);
setEffAlphaKey(spep_4+78, ryu, 255);

setEffRotateKey(spep_4, ryu, 0);
setEffRotateKey(spep_4+78, ryu, 0);


shuchusen5 = entryEffectLife(spep_4, 906, 78, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_4, shuchusen5, 0, 0, 0);
setEffMoveKey(spep_4+78, shuchusen5, 0, 0, 0);

setEffScaleKey(spep_4, shuchusen5, 2.0, 1.0);
setEffScaleKey(spep_4+78, shuchusen5, 2.0, 1.0);

setEffAlphaKey(spep_4, shuchusen5, 255);
setEffAlphaKey(spep_4+78, shuchusen5, 255);

setEffRotateKey(spep_4, shuchusen5, 180);
setEffRotateKey(spep_4+78, shuchusen5, 180);


ctzuo = entryEffectLife( spep_4+1, 10012, 69, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_4 + 1, ctzuo, -141.1, 350.3 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -141.1, 350.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -141.9, 351.5 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -142.7, 352.7 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 50, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, -143.8, 354.3 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, -144.1, 354.8 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, -144.3, 355.2 , 0 );


setEffScaleKey( spep_4 + 1, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 12, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_4 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 34, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 36, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 38, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 40, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 42, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 44, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 46, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 48, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 52, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 54, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 56, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 58, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 60, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 62, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 70, ctzuo, 3.15, 3.15 );


setEffRotateKey( spep_4 + 1, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 10, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 12, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 62, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 70, ctzuo, -26.2 );


setEffAlphaKey( spep_4 + 1, ctzuo, 255 );
setEffAlphaKey( spep_4 + 8, ctzuo, 255 );
setEffAlphaKey( spep_4 + 10, ctzuo, 255 );
setEffAlphaKey( spep_4 + 64, ctzuo, 255 );
setEffAlphaKey( spep_4 + 66, ctzuo, 170 );
setEffAlphaKey( spep_4 + 68, ctzuo, 85 );
setEffAlphaKey( spep_4 + 70, ctzuo, 0 );

playSe( spep_4+5, 9);

entryFade( spep_4+70, 5, 6, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------------------------------------------------------------------

--次の準備
spep_5 = spep_4+78;

playSe(spep_5,SE_05);

speff2=entryEffect(spep_5, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

shuchusen6 = entryEffectLife(spep_5, 906, 90, 0x100, -1, 20, 0, 0);-- 集中線

setEffScaleKey(spep_5, shuchusen6, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_5+86, 2,5,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_5, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--龍拳
------------------------------------------------------------------------------------------------------------------


spep_6 = spep_5+90;

ryukenf = entryEffectLife(spep_6, SP_06, 90, 0x100, -1, 0, 0, 0);


setEffMoveKey(spep_6, ryukenf, 0, 0, 0);
setEffMoveKey(spep_6+90, ryukenf, 0, 0, 0);

setEffScaleKey(spep_6, ryukenf, 1.0, 1.0);
setEffScaleKey(spep_6+90, ryukenf, 1.0, 1.0);

setEffRotateKey(spep_6, ryukenf, 0);
setEffRotateKey(spep_6+90, ryukenf, 0);

setEffAlphaKey(spep_6, ryukenf, 255);
setEffAlphaKey(spep_6+90, ryukenf, 255);


ryukenb = entryEffectLife(spep_6+2, SP_07, 88, 0x80, -1, 0, 0, 0);


setEffMoveKey(spep_6+2, ryukenb, 0, 0, 0);
setEffMoveKey(spep_6+88, ryukenb, 0, 0, 0);

setEffScaleKey(spep_6+2, ryukenb, 1.0, 1.0);
setEffScaleKey(spep_6+88, ryukenb, 1.0, 1.0);

setEffRotateKey(spep_6+2, ryukenb, 0);
setEffRotateKey(spep_6+88, ryukenb, 0);


setEffAlphaKey(spep_6+2, ryukenb, 255);
setEffAlphaKey(spep_6+88, ryukenb, 255);


ryusen3 = entryEffectLife( spep_6, 920, 28, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_6 + 0, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 2, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 4, ryusen3, 204.5, 209.3 , 0 );
setEffMoveKey( spep_6 + 6, ryusen3, 397.4, 421.3 , 0 );
setEffMoveKey( spep_6 + 8, ryusen3, 590.3, 633.3 , 0 );
setEffMoveKey( spep_6 + 10, ryusen3, 783.2, 845.3 , 0 );
setEffMoveKey( spep_6 + 12, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 14, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 16, ryusen3, 204.5, 209.3 , 0 );
setEffMoveKey( spep_6 + 18, ryusen3, 397.4, 421.3 , 0 );
setEffMoveKey( spep_6 + 20, ryusen3, 590.3, 633.3 , 0 );
setEffMoveKey( spep_6 + 22, ryusen3, 783.2, 845.3 , 0 );
setEffMoveKey( spep_6 + 24, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 26, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 28, ryusen3, 204.5, 209.3 , 0 );


setEffScaleKey( spep_6 + 0, ryusen3, 3.37, 1.32 );
setEffScaleKey( spep_6 + 28, ryusen3, 3.37, 1.32 );


setEffRotateKey( spep_6 + 0, ryusen3, 132.3 );
setEffRotateKey( spep_6 + 28, ryusen3, 132.3 );


setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 28, ryusen3, 255 );


shuchusen7 = entryEffectLife(spep_6+22, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_6+22, shuchusen7, 0, 0, 0);
setEffMoveKey(spep_6+80, shuchusen7, 0, 0, 0);

setEffScaleKey(spep_6+22, shuchusen7, 2.0, 1.0);
setEffScaleKey(spep_6+80, shuchusen7, 2.0, 1.0);

setEffAlphaKey(spep_6+22, shuchusen7, 255);
setEffAlphaKey(spep_6+80, shuchusen7, 255);

setEffRotateKey(spep_6+22, shuchusen7, 180);
setEffRotateKey(spep_6+80, shuchusen7, 180);


------------------------------------------------------------------------------------------------------------
--敵の動き
------------------------------------------------------------------------------------------------------------

setDisp( spep_6, 1, 1);
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 + 27, 1, 108 );
changeAnime( spep_6 + 28, 1, 108 );

setDisp( spep_6+90, 1, 0);


setMoveKey( spep_6 + 0, 1, -70.7, -22.6 , 0 );
setMoveKey( spep_6 + 2, 1, -59.8, -26.2 , 0 );
setMoveKey( spep_6 + 4, 1, -69.6, -34.6 , 0 );
setMoveKey( spep_6 + 6, 1, -57.3, -29.1 , 0 );
setMoveKey( spep_6 + 8, 1, -68.5, -21.5 , 0 );
setMoveKey( spep_6 + 10, 1, -57.6, -17 , 0 );
setMoveKey( spep_6 + 12, 1, -67.3, -33.5 , 0 );
setMoveKey( spep_6 + 14, 1, -55, -28 , 0 );
setMoveKey( spep_6 + 16, 1, -66.3, -20.3 , 0 );
setMoveKey( spep_6 + 18, 1, -55.3, -15.9 , 0 );
setMoveKey( spep_6 + 20, 1, -65, -32.4 , 0 );
setMoveKey( spep_6 + 22, 1, -52.8, -26.8 , 0 );
setMoveKey( spep_6 + 25, 1, -64, -19.2 , 0 );
setMoveKey( spep_6 + 27, 1, -43.9, -13.9 , 0 );
setMoveKey( spep_6 + 28, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 30, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 32, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 34, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 36, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 38, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 40, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 42, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 44, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 46, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 48, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 50, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 52, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 54, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 56, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 58, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 60, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 62, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 64, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 66, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 68, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 70, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 72, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 74, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 76, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 78, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 80, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 82, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 84, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 86, 1, -58.9, 5.7 , 0 );
setMoveKey( spep_6 + 88, 1, -56, 0.2 , 0 );


setScaleKey( spep_6 + 1, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 88, 1, 1.75, 1.75 );

setRotateKey( spep_6 + 0, 1, -9.3 );
setRotateKey( spep_6 + 25, 1, -9.3 );
setRotateKey( spep_6 + 27, 1, -58.4 );
setRotateKey( spep_6 + 28, 1, -28.1 );


setEffAlphaKey( spep_6 + 0, 1, 255 );
setEffAlphaKey( spep_6 + 90, 1, 255 );

playSe( spep_6+27, 1060);

entryFade(spep_6+20, 4,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+77, 7,7,14,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


entryFadeBg(spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 空中爆発 (120f)
------------------------------------------------------------------------------------------------------------

spep_7 = spep_6+90;

bakuha = entryEffect(spep_7, 1676, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_7, bakuha, 0, 0, 0);
setEffMoveKey(spep_7+120, bakuha, 0, 0, 0);

setEffScaleKey(spep_7, bakuha, 1.3, 1.3);
setEffScaleKey(spep_7+120, bakuha, 1.3, 1.3);

setEffAlphaKey(spep_7, bakuha, 255);
setEffAlphaKey(spep_7+120, bakuha, 255);

setEffRotateKey(spep_7, bakuha, 0);
setEffRotateKey(spep_7+120, bakuha, 0);

playSe( spep_7+37, 1024);

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+148);

else

-------------------------------------------------------------------------------------------------------------------------------------
-- 敵側
-------------------------------------------------------------------------------------------------------------------------------------


spep_0 = 0;

kidan = entryEffectLife(spep_0, SP_11, 126, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_0, kidan, 0, 0, 0);
setEffMoveKey(spep_0+126, kidan, 0, 0, 0);

setEffScaleKey(spep_0, kidan, 1.0, 1.0);
setEffScaleKey(spep_0+126, kidan, 1.0, 1.0);

setEffAlphaKey(spep_0, kidan, 255);
setEffAlphaKey(spep_0+126, kidan, 255);

setEffRotateKey(spep_0, kidan, 0);
setEffRotateKey(spep_0+126, kidan, 0);


shuchusen = entryEffectLife(spep_0+35, 906, 21, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_0+35, shuchusen, 0, 0, 0);
setEffMoveKey(spep_0+56, shuchusen, 0, 0, 0);

setEffScaleKey(spep_0+35, shuchusen, 2.0, 1.0);
setEffScaleKey(spep_0+56, shuchusen, 2.0, 1.0);

setEffAlphaKey(spep_0+35, shuchusen, 255);
setEffAlphaKey(spep_0+56, shuchusen, 255);

setEffRotateKey(spep_0+35, shuchusen, 180);
setEffRotateKey(spep_0+56,shuchusen, 180);


ryusen = entryEffectLife(spep_0+55, 920, 72, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_0 + 55, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 60, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 68, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 70, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 72, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 80, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 82, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 84, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 92, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 94, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 96, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 104, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 106, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 108, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 116, ryusen, -123.8, -389.5 , 0 );
setEffMoveKey( spep_0 + 118, ryusen, -528.7, -907.7 , 0 );
setEffMoveKey( spep_0 + 120, ryusen, -933.5, -1425.8 , 0 );
setEffMoveKey( spep_0 + 127, ryusen, -123.8, -389.5 , 0 );

setEffScaleKey( spep_0 + 57, ryusen, 7.74, 1.58 );
setEffScaleKey( spep_0 + 130, ryusen, 7.74, 1.58 );

setEffRotateKey( spep_0 + 57, ryusen, -52 );
setEffRotateKey( spep_0 + 130, ryusen, -52 );

setEffAlphaKey( spep_0 + 57, ryusen, 255 );
setEffAlphaKey( spep_0 + 60, ryusen, 255 );
setEffAlphaKey( spep_0 + 128, ryusen, 255 );
setEffAlphaKey( spep_0 + 130, ryusen, 255 );


ctbababa = entryEffectLife(spep_0+57, 10023, 43, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_0 + 57, ctbababa, -55.9, 137.9 , 0 );
setEffMoveKey( spep_0 + 60, ctbababa, -55.9, 137.9 , 0 );
setEffMoveKey( spep_0 + 62, ctbababa, -52.6, 174.2 , 0 );
setEffMoveKey( spep_0 + 64, ctbababa, -57.3, 213.8 , 0 );
setEffMoveKey( spep_0 + 66, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 68, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 70, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 72, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 74, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 76, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 78, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 80, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 82, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 84, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 86, ctbababa, -51.5, 249 , 0 );
setEffMoveKey( spep_0 + 88, ctbababa, -57.9, 251.8 , 0 );
setEffMoveKey( spep_0 + 90, ctbababa, -50.5, 259.3 , 0 );
setEffMoveKey( spep_0 + 92, ctbababa, -57.9, 273.2 , 0 );
setEffMoveKey( spep_0 + 94, ctbababa, -57.9, 283.8 , 0 );
setEffMoveKey( spep_0 + 100, ctbababa, -57.9, 283.8 , 0 );


setEffScaleKey( spep_0 + 57, ctbababa, 0.85, 0.85 );
setEffScaleKey( spep_0 + 60, ctbababa, 0.85, 0.85 );
setEffScaleKey( spep_0 + 62, ctbababa, 1.25, 1.25 );
setEffScaleKey( spep_0 + 64, ctbababa, 1.65, 1.65 );
setEffScaleKey( spep_0 + 66, ctbababa, 2.05, 2.05 );
setEffScaleKey( spep_0 + 88, ctbababa, 2.05, 2.05 );
setEffScaleKey( spep_0 + 90, ctbababa, 2.37, 2.37 );
setEffScaleKey( spep_0 + 92, ctbababa, 2.69, 2.69 );
setEffScaleKey( spep_0 + 94, ctbababa, 3.01, 3.01 );
setEffScaleKey( spep_0 + 100, ctbababa, 3.01, 3.01 );


setEffRotateKey( spep_0 + 57, ctbababa, -26.8 );
setEffRotateKey( spep_0 + 60, ctbababa, -26.8 );
setEffRotateKey( spep_0 + 62, ctbababa, -27 );
setEffRotateKey( spep_0 + 100, ctbababa, -27 );


setEffAlphaKey( spep_0 + 57, ctbababa, 255 );
setEffAlphaKey( spep_0 + 60, ctbababa, 255 );
setEffAlphaKey( spep_0 + 88, ctbababa, 255 );
setEffAlphaKey( spep_0 + 90, ctbababa, 170 );
setEffAlphaKey( spep_0 + 92, ctbababa, 85 );
setEffAlphaKey( spep_0 + 94, ctbababa, 0 );
setEffAlphaKey( spep_0 + 100, ctbababa, 0 );

entryFade( spep_0+120, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_0, 0, 288, 0, 0, 0, 0, 255); -- ベース暗め　背景


playSe( spep_0+33, 43);
playSe( spep_0+63, 1016);
playSe( spep_0+73, 1016);


------------------------------------------------------
--回避 
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+83; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge, 1, 130, -130);
setScaleKey(SP_dodge, 1, 1.37, 1.37);
setRotateKey(SP_dodge, 1, -30.2);

setMoveKey(SP_dodge+8, 1, 130, -130);
setScaleKey(SP_dodge+8, 1.37, 1.37);
setRotateKey(SP_dodge+8, 1, -30.2);

setEffAlphaKey(SP_dodge+8, kidan, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, kidan, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--回避 終わり
------------------------------------------------------

--[[
playSe( spep_0+83, 1016);
playSe( spep_0+93, 1016);
playSe( spep_0+103, 1016);
playSe( spep_0+113, 1016);
playSe( spep_0+123, 1016);
]]
--4.11
SE001 = playSe( spep_0+83, 1016);
stopSe(spep_0+103,SE001,5);
SE002 = playSe( spep_0+93, 1016);
stopSe(spep_0+113,SE002,5);
SE003 = playSe( spep_0+103, 1016);
stopSe(spep_0+123,SE003,5);
SE004 = playSe( spep_0+113, 1016);
stopSe(spep_0+133,SE004,5);
SE005 = playSe( spep_0+123, 1016);


------------------------------------------------------------------------------------------------------------
-- 敵に気弾ヒット(60F)
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = spep_0+128;

kidan2 = entryEffectLife(spep_1+3, SP_02, 55, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, kidan, 0, 0, 0);
setEffMoveKey(spep_1+55, kidan, 0, 0, 0);

setEffScaleKey(spep_1, kidan, 1.0, 1.0);
setEffScaleKey(spep_1+55, kidan, 1.0, 1.0);

setEffAlphaKey(spep_1, kidan, 255);
setEffAlphaKey(spep_1+55, kidan, 255);

setEffRotateKey(spep_1, kidan, 0);
setEffRotateKey(spep_1+55, kidan, 0);


shuchusen2 = entryEffectLife(spep_1, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_1, shuchusen2, 0, 0, 0);
setEffMoveKey(spep_1+58, shuchusen2, 0, 0, 0);

setEffScaleKey(spep_1, shuchusen2, 2.0, 1.0);
setEffScaleKey(spep_1+58, shuchusen2, 2.0, 1.0);

setEffAlphaKey(spep_1, shuchusen2, 255);
setEffAlphaKey(spep_1+58, shuchusen2, 255);

setEffRotateKey(spep_1, shuchusen2, 180);
setEffRotateKey(spep_1+58, shuchusen2, 180);


ryusen2 = entryEffectLife( spep_1, 920, 58, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_1 + 0, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 2, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 4, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 6, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 8, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 10, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 12, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 14, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 16, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 18, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 20, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 22, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 24, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 26, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 28, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 30, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 32, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 34, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 36, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 38, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 40, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 42, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 44, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 46, ryusen2, 783.2, 845.3 , 0 );
setEffMoveKey( spep_1 + 48, ryusen2, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_1 + 50, ryusen2, 11.6, -2.7 , 0 );
setEffMoveKey( spep_1 + 52, ryusen2, 204.5, 209.3 , 0 );
setEffMoveKey( spep_1 + 54, ryusen2, 397.4, 421.3 , 0 );
setEffMoveKey( spep_1 + 56, ryusen2, 590.3, 633.3 , 0 );
setEffMoveKey( spep_1 + 58, ryusen2, 783.2, 845.3 , 0 );



setEffScaleKey( spep_1 + 0, ryusen2, 3.37, 1.32 );
setEffScaleKey( spep_1 + 58, ryusen2, 3.37, 1.32 );


setEffRotateKey( spep_1 + 0, ryusen2, 132.3 );
setEffRotateKey( spep_1 + 58, ryusen2, 132.3 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 58, ryusen2, 255 );


ctzudodo = entryEffectLife( spep_1, 10014, 58, 0x100, -1, -28, 348, 0);

setEffMoveKey( spep_1 + 0, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 4, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 6, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 8, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 10, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 12, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 14, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 16, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 18, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 20, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 22, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 24, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 26, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 30, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 32, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 34, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 36, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 38, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 40, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 42, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 44, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 46, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 48, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 50, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 52, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 54, ctzudodo, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 56, ctzudodo, -28, 348 , 0 );
setEffMoveKey( spep_1 + 58, ctzudodo, -25.6, 325.2 , 0 );


setEffScaleKey( spep_1 + 0, ctzudodo, 2.7, 2.7);
setEffScaleKey( spep_1 + 58, ctzudodo, 2.7, 2.7);


setEffRotateKey( spep_1 + 0, ctzudodo, 306 );
setEffRotateKey( spep_1 + 58, ctzudodo, 306 );


setEffAlphaKey( spep_1 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_1 + 58, ctzudodo, 255 );


ctzudodo2 = entryEffectLife( spep_1+3, 10014, 55, 0x100, -1, -28, 348, 0);

setEffMoveKey( spep_1 + 3, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 4, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 6, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 8, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 10, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 12, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 14, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 16, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 18, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 20, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 22, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 24, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 26, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 28, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 30, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 32, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 34, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 36, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 38, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 40, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 42, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 44, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 46, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 48, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 50, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 52, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 54, ctzudodo2, -25.6, 325.2 , 0 );
setEffMoveKey( spep_1 + 56, ctzudodo2, -28, 348 , 0 );
setEffMoveKey( spep_1 + 58, ctzudodo2, -25.6, 325.2 , 0 );


setEffScaleKey( spep_1 + 0, ctzudodo2, 2.7, 2.7);
setEffScaleKey( spep_1 + 58, ctzudodo2, 2.7, 2.7);


setEffRotateKey( spep_1 + 0, ctzudodo2, 306 );
setEffRotateKey( spep_1 + 58, ctzudodo2, 306 );


setEffAlphaKey( spep_1 + 0, ctzudodo2, 255 );
setEffAlphaKey( spep_1 + 58, ctzudodo2, 255 );



------------------------------------------------------------------------------------------------------------
--敵の動き
------------------------------------------------------------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 100); 
changeAnime( spep_1 + 10, 1, 104 );
setDisp( spep_1+60, 1, 0);

setMoveKey( spep_1 , 1, 170.9, 183.4 , 0 );
setMoveKey( spep_1 + 2, 1, 170.9, 183.4 , 0 );
setMoveKey( spep_1 + 4, 1, 116.4, 115.4 , 0 );
setMoveKey( spep_1 + 6, 1, 53.8, 62.8 , 0 );
setMoveKey( spep_1 + 9, 1, -2.3, -3.3 , 0 );
setMoveKey( spep_1 + 10, 1, 35.1, 11.8 , 0 );
setMoveKey( spep_1 + 12, 1, 34, 13 , 0 );
setMoveKey( spep_1 + 14, 1, 32.5, 9.7 , 0 );
setMoveKey( spep_1 + 16, 1, 38.5, 6.7 , 0 );
setMoveKey( spep_1 + 18, 1, 30.1, 14.1 , 0 );
setMoveKey( spep_1 + 20, 1, 33.5, 12 , 0 );
setMoveKey( spep_1 + 22, 1, 38, 11.3 , 0 );
setMoveKey( spep_1 + 24, 1, 37.9, 13.4 , 0 );
setMoveKey( spep_1 + 26, 1, 35.2, 16.9 , 0 );
setMoveKey( spep_1 + 28, 1, 40, 13 , 0 );
setMoveKey( spep_1 + 30, 1, 33, 13.6 , 0 );
setMoveKey( spep_1 + 32, 1, 37.5, 12.5 , 0 );
setMoveKey( spep_1 + 34, 1, 40.6, 18.4 , 0 );
setMoveKey( spep_1 + 36, 1, 39.5, 19.7 , 0 );
setMoveKey( spep_1 + 38, 1, 38, 16.6 , 0 );
setMoveKey( spep_1 + 40, 1, 43.9, 13.4 , 0 );
setMoveKey( spep_1 + 42, 1, 35.7, 20.8 , 0 );
setMoveKey( spep_1 + 44, 1, 39, 18.7 , 0 );
setMoveKey( spep_1 + 46, 1, 43.5, 18.1 , 0 );
setMoveKey( spep_1 + 48, 1, 43.3, 20.2 , 0 );
setMoveKey( spep_1 + 50, 1, 40.7, 23.7 , 0 );
setMoveKey( spep_1 + 52, 1, 45.5, 19.6 , 0 );
setMoveKey( spep_1 + 54, 1, 38.5, 20.5 , 0 );
setMoveKey( spep_1 + 56, 1, 42.8, 19.1 , 0 );
setMoveKey( spep_1 + 58, 1, 46.1, 25.2 , 0 );
setMoveKey( spep_1 + 60, 1, 46.1, 25.2 , 0 );


setScaleKey( spep_1 , 1, 1.3, 1.3 );
setScaleKey( spep_1 + 9, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 18, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 38, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 54, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 56, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 60, 1, 1.34, 1.34 );


setRotateKey( spep_1 , 1, 0 );
setRotateKey( spep_1 + 9, 1, 0 );
setRotateKey( spep_1 + 10, 1, -9.3 );
setRotateKey( spep_1 + 12, 1, -9.5 );
setRotateKey( spep_1 + 60, 1, -9.5 );


setEffAlphaKey( spep_1 + 0, 1, 255 );
setEffAlphaKey( spep_1 + 60, 1, 255 );


playSe( spep_1+10, 1006);
playSe( spep_1+30, 1006);
playSe( spep_1+40, 1006);
playSe( spep_1+50, 1006);




entryFade( spep_1+56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 正面18号
------------------------------------------------------------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+60;

front = entryEffectLife(spep_2, SP_03, 88, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_2, front, 0, 0, 0);
setEffMoveKey(spep_2+88, front, 0, 0, 0);

setEffScaleKey(spep_2, front, -1.0, 1.0);
setEffScaleKey(spep_2+88, front, -1.0, 1.0);

setEffAlphaKey(spep_2, front, 255);
setEffAlphaKey(spep_2+88, front, 255);

setEffRotateKey(spep_2, front, 0);
setEffRotateKey(spep_2+88, front, 0);


shuchusen3 = entryEffectLife(spep_2, 906, 88, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_2, shuchusen3, 0, 0, 0);
setEffMoveKey(spep_2+88, shuchusen3, 0, 0, 0);

setEffScaleKey(spep_2, shuchusen3, 2.0, 1.0);
setEffScaleKey(spep_2+88, shuchusen3, 2.0, 1.0);

setEffAlphaKey(spep_2, shuchusen3, 255);
setEffAlphaKey(spep_2+88, shuchusen3, 255);

setEffRotateKey(spep_2, shuchusen3, 180);
setEffRotateKey(spep_2+88, shuchusen3, 180);


ctdon = entryEffectLife( spep_2+29, 10019, 33, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_2 + 29, ctdon, 16, 6 , 0 );
setEffMoveKey( spep_2 + 34, ctdon, 7.8, 54.3 , 0 );
setEffMoveKey( spep_2 + 36, ctdon, 18.6, 121.9 , 0 );
setEffMoveKey( spep_2 + 38, ctdon, 3.9, 163.8 , 0 );
setEffMoveKey( spep_2 + 40, ctdon, 20, 180 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, 3.4, 163.3 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, 20, 179.9 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, 2.9, 162.8 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, 20.1, 180 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, 2.3, 162.2 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, 20, 179.9 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, 1.8, 161.8 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, 20.1, 179.9 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, 1.3, 161.2 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, 1.1, 161 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, 1.1, 161 , 0 );


setEffScaleKey( spep_2 + 29, ctdon, 1, 1 );
setEffScaleKey( spep_2 + 34, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 36, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2 + 38, ctdon, 2.56, 2.56 );
setEffScaleKey( spep_2 + 40, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_2 + 42, ctdon, 2.64, 2.64 );
setEffScaleKey( spep_2 + 44, ctdon, 2.68, 2.68 );
setEffScaleKey( spep_2 + 46, ctdon, 2.72, 2.72 );
setEffScaleKey( spep_2 + 48, ctdon, 2.77, 2.77 );
setEffScaleKey( spep_2 + 50, ctdon, 2.81, 2.81 );
setEffScaleKey( spep_2 + 52, ctdon, 2.85, 2.85 );
setEffScaleKey( spep_2 + 54, ctdon, 2.89, 2.89 );
setEffScaleKey( spep_2 + 56, ctdon, 2.93, 2.93 );
setEffScaleKey( spep_2 + 58, ctdon, 2.97, 2.97 );
setEffScaleKey( spep_2 + 60, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_2 + 62, ctdon, 3.01, 3.01 );


setEffRotateKey( spep_2 + 29, ctdon, 0 );
setEffRotateKey( spep_2 + 62, ctdon, 0 );


setEffAlphaKey( spep_2 + 29, ctdon, 255 );
setEffAlphaKey( spep_2 + 52, ctdon, 255 );
setEffAlphaKey( spep_2 + 54, ctdon, 191 );
setEffAlphaKey( spep_2 + 56, ctdon, 128 );
setEffAlphaKey( spep_2 + 58, ctdon, 64 );
setEffAlphaKey( spep_2 + 60, ctdon, 0 );
setEffAlphaKey( spep_2 + 62, ctdon, 0 );


playSe( spep_2+15, 43);
playSe( spep_2+30, 1014);

entryFade( spep_2+78, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 正面突進
------------------------------------------------------------------------------------------------------------


-- ** 次の準備 ** --
spep_3 = spep_2+88;


front2 = entryEffectLife(spep_3, SP_04, 88, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_3, front2, 0, 0, 0);
setEffMoveKey(spep_3+88, front2, 0, 0, 0);

setEffScaleKey(spep_3, front2, -1.0, 1.0);
setEffScaleKey(spep_3+88, front2, -1.0, 1.0);

setEffAlphaKey(spep_3, front2, 255);
setEffAlphaKey(spep_3+88, front2, 255);

setEffRotateKey(spep_3, front2, 0);
setEffRotateKey(spep_3+88, front2, 0);


shuchusen4 = entryEffectLife(spep_3, 906, 88, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_3, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_3+88, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_3, shuchusen4, 2.0, 1.0);
setEffScaleKey(spep_3+88, shuchusen4, 2.0, 1.0);

setEffAlphaKey(spep_3, shuchusen4, 255);
setEffAlphaKey(spep_3+88, shuchusen4, 255);

setEffRotateKey(spep_3, shuchusen4, 180);
setEffRotateKey(spep_3+88, shuchusen4, 180);


--顔＆セリフカットイン

--speff = entryEffect(spep_3+2, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

--speff1 = entryEffect(spep_3+2, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_3+15, 190006, 71, 0x100, -1, 0, 190, 460, 0);--ゴゴゴ

setEffMoveKey( spep_3+15, ctgogo, 190, 460, 0);
setEffMoveKey( spep_3+86, ctgogo, 190, 460, 0);

setEffScaleKey( spep_3+15, ctgogo, -0.8, 0.8);
setEffScaleKey( spep_3+86, ctgogo, -0.8, 0.8);

setEffAlphaKey( spep_3+15, ctgogo, 255);
setEffAlphaKey( spep_3+86, ctgogo, 255);

setEffRotateKey(spep_3+15, ctgogo, 30);
setEffRotateKey(spep_3+86, ctgogo, 30);



playSe(  spep_3+16,  SE_04);  --カットイン音


entryFade( spep_3+81, 7, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 龍を出す
------------------------------------------------------

spep_4 = spep_3+88;

ryu = entryEffectLife(spep_4, SP_05, 78, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, ryu, 0, 0, 0);
setEffMoveKey(spep_4+78, ryu, 0, 0, 0);

setEffScaleKey(spep_4, ryu, -1.0, 1.0);
setEffScaleKey(spep_4+78, ryu, -1.0, 1.0);

setEffAlphaKey(spep_4, ryu, 255);
setEffAlphaKey(spep_4+78, ryu, 255);

setEffRotateKey(spep_4, ryu, 0);
setEffRotateKey(spep_4+78, ryu, 0);


shuchusen5 = entryEffectLife(spep_4, 906, 78, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_4, shuchusen5, 0, 0, 0);
setEffMoveKey(spep_4+78, shuchusen5, 0, 0, 0);

setEffScaleKey(spep_4, shuchusen5, 2.0, 1.0);
setEffScaleKey(spep_4+78, shuchusen5, 2.0, 1.0);

setEffAlphaKey(spep_4, shuchusen5, 255);
setEffAlphaKey(spep_4+78, shuchusen5, 255);

setEffRotateKey(spep_4, shuchusen5, 180);
setEffRotateKey(spep_4+78, shuchusen5, 180);


ctzuo = entryEffectLife( spep_4+1, 10012, 69, 0x100, -1, 110, 500, 0);

setEffMoveKey( spep_4 + 1, ctzuo, -141.1, 350.3 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -141.1, 350.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -141.9, 351.5 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -142.7, 352.7 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 40, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 42, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 44, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 46, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 48, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 50, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 52, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 54, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 56, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 58, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, -143.5, 353.9 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, -143.5, 354 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, -143.8, 354.3 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, -144.1, 354.8 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, -144.3, 355.2 , 0 );


setEffScaleKey( spep_4 + 1, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 12, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_4 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 34, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 36, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 38, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 40, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 42, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 44, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 46, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 48, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 52, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 54, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 56, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 58, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 60, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 62, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 70, ctzuo, 3.15, 3.15 );


setEffRotateKey( spep_4 + 1, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 10, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 12, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 62, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 70, ctzuo, -26.2 );


setEffAlphaKey( spep_4 + 1, ctzuo, 255 );
setEffAlphaKey( spep_4 + 8, ctzuo, 255 );
setEffAlphaKey( spep_4 + 10, ctzuo, 255 );
setEffAlphaKey( spep_4 + 64, ctzuo, 255 );
setEffAlphaKey( spep_4 + 66, ctzuo, 170 );
setEffAlphaKey( spep_4 + 68, ctzuo, 85 );
setEffAlphaKey( spep_4 + 70, ctzuo, 0 );

playSe( spep_4+5, 9);

entryFade( spep_4+70, 5, 6, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------------------------------------------------------------------

--次の準備
spep_5 = spep_4+78;

playSe(spep_5,SE_05);

speff2=entryEffect(spep_5, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

shuchusen6 = entryEffectLife(spep_5, 906, 90, 0x100, -1, 20, 0, 0);-- 集中線

setEffScaleKey(spep_5, shuchusen6, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_5+86, 2,5,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_5, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------------
--龍拳
------------------------------------------------------------------------------------------------------------------


spep_6 = spep_5+90;

ryukenf = entryEffectLife(spep_6, SP_12, 90, 0x100, -1, 0, 0, 0);


setEffMoveKey(spep_6, ryukenf, 0, 0, 0);
setEffMoveKey(spep_6+90, ryukenf, 0, 0, 0);

setEffScaleKey(spep_6, ryukenf, 1.0, 1.0);
setEffScaleKey(spep_6+90, ryukenf, 1.0, 1.0);

setEffRotateKey(spep_6, ryukenf, 0);
setEffRotateKey(spep_6+90, ryukenf, 0);

setEffAlphaKey(spep_6, ryukenf, 255);
setEffAlphaKey(spep_6+90, ryukenf, 255);


ryukenb = entryEffectLife(spep_6+2, SP_13, 88, 0x80, -1, 0, 0, 0);


setEffMoveKey(spep_6+2, ryukenb, 0, 0, 0);
setEffMoveKey(spep_6+88, ryukenb, 0, 0, 0);

setEffScaleKey(spep_6+2, ryukenb, 1.0, 1.0);
setEffScaleKey(spep_6+88, ryukenb, 1.0, 1.0);

setEffRotateKey(spep_6+2, ryukenb, 0);
setEffRotateKey(spep_6+88, ryukenb, 0);


setEffAlphaKey(spep_6+2, ryukenb, 255);
setEffAlphaKey(spep_6+88, ryukenb, 255);


ryusen3 = entryEffectLife( spep_6, 920, 28, 0x80, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_6 + 0, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 2, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 4, ryusen3, 204.5, 209.3 , 0 );
setEffMoveKey( spep_6 + 6, ryusen3, 397.4, 421.3 , 0 );
setEffMoveKey( spep_6 + 8, ryusen3, 590.3, 633.3 , 0 );
setEffMoveKey( spep_6 + 10, ryusen3, 783.2, 845.3 , 0 );
setEffMoveKey( spep_6 + 12, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 14, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 16, ryusen3, 204.5, 209.3 , 0 );
setEffMoveKey( spep_6 + 18, ryusen3, 397.4, 421.3 , 0 );
setEffMoveKey( spep_6 + 20, ryusen3, 590.3, 633.3 , 0 );
setEffMoveKey( spep_6 + 22, ryusen3, 783.2, 845.3 , 0 );
setEffMoveKey( spep_6 + 24, ryusen3, 976.1, 1057.3 , 0 );
setEffMoveKey( spep_6 + 26, ryusen3, 11.6, -2.7 , 0 );
setEffMoveKey( spep_6 + 28, ryusen3, 204.5, 209.3 , 0 );


setEffScaleKey( spep_6 + 0, ryusen3, 3.37, 1.32 );
setEffScaleKey( spep_6 + 28, ryusen3, 3.37, 1.32 );


setEffRotateKey( spep_6 + 0, ryusen3, 132.3 );
setEffRotateKey( spep_6 + 28, ryusen3, 132.3 );


setEffAlphaKey( spep_6 + 0, ryusen3, 255 );
setEffAlphaKey( spep_6 + 28, ryusen3, 255 );


shuchusen7 = entryEffectLife(spep_6+22, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey(spep_6+22, shuchusen7, 0, 0, 0);
setEffMoveKey(spep_6+80, shuchusen7, 0, 0, 0);

setEffScaleKey(spep_6+22, shuchusen7, 2.0, 1.0);
setEffScaleKey(spep_6+80, shuchusen7, 2.0, 1.0);

setEffAlphaKey(spep_6+22, shuchusen7, 255);
setEffAlphaKey(spep_6+80, shuchusen7, 255);

setEffRotateKey(spep_6+22, shuchusen7, 180);
setEffRotateKey(spep_6+80, shuchusen7, 180);


------------------------------------------------------------------------------------------------------------
--敵の動き
------------------------------------------------------------------------------------------------------------

setDisp( spep_6, 1, 1);
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 + 27, 1, 108 );
changeAnime( spep_6 + 28, 1, 108 );

setDisp( spep_6+90, 1, 0);


setMoveKey( spep_6 + 0, 1, -70.7, -22.6 , 0 );
setMoveKey( spep_6 + 2, 1, -59.8, -26.2 , 0 );
setMoveKey( spep_6 + 4, 1, -69.6, -34.6 , 0 );
setMoveKey( spep_6 + 6, 1, -57.3, -29.1 , 0 );
setMoveKey( spep_6 + 8, 1, -68.5, -21.5 , 0 );
setMoveKey( spep_6 + 10, 1, -57.6, -17 , 0 );
setMoveKey( spep_6 + 12, 1, -67.3, -33.5 , 0 );
setMoveKey( spep_6 + 14, 1, -55, -28 , 0 );
setMoveKey( spep_6 + 16, 1, -66.3, -20.3 , 0 );
setMoveKey( spep_6 + 18, 1, -55.3, -15.9 , 0 );
setMoveKey( spep_6 + 20, 1, -65, -32.4 , 0 );
setMoveKey( spep_6 + 22, 1, -52.8, -26.8 , 0 );
setMoveKey( spep_6 + 25, 1, -64, -19.2 , 0 );
setMoveKey( spep_6 + 27, 1, -43.9, -13.9 , 0 );
setMoveKey( spep_6 + 28, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 30, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 32, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 34, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 36, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 38, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 40, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 42, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 44, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 46, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 48, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 50, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 52, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 54, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 56, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 58, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 60, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 62, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 64, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 66, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 68, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 70, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 72, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 74, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 76, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 78, 1, -58.9, -2.3 , 0 );
setMoveKey( spep_6 + 80, 1, -64, 0.2 , 0 );
setMoveKey( spep_6 + 82, 1, -54.9, 5.9 , 0 );
setMoveKey( spep_6 + 84, 1, -63.7, -4.6 , 0 );
setMoveKey( spep_6 + 86, 1, -58.9, 5.7 , 0 );
setMoveKey( spep_6 + 88, 1, -56, 0.2 , 0 );


setScaleKey( spep_6 + 1, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 88, 1, 1.75, 1.75 );

setRotateKey( spep_6 + 0, 1, -9.3 );
setRotateKey( spep_6 + 25, 1, -9.3 );
setRotateKey( spep_6 + 27, 1, -58.4 );
setRotateKey( spep_6 + 28, 1, -28.1 );


setEffAlphaKey( spep_6 + 0, 1, 255 );
setEffAlphaKey( spep_6 + 90, 1, 255 );

playSe( spep_6+27, 1060);

entryFade(spep_6+20, 4,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+77, 7,7,14,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


entryFadeBg(spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------------------------------------------------------------
-- 空中爆発 (120f)
------------------------------------------------------------------------------------------------------------

spep_7 = spep_6+90;

bakuha = entryEffect(spep_7, 1676, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_7, bakuha, 0, 0, 0);
setEffMoveKey(spep_7+120, bakuha, 0, 0, 0);

setEffScaleKey(spep_7, bakuha, 1.3, 1.3);
setEffScaleKey(spep_7+120, bakuha, 1.3, 1.3);

setEffAlphaKey(spep_7, bakuha, 255);
setEffAlphaKey(spep_7+120, bakuha, 255);

setEffRotateKey(spep_7, bakuha, 0);
setEffRotateKey(spep_7+120, bakuha, 0);

playSe( spep_7+37, 1024);


-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+148);


end


