-- 魔人ブウ(アル飯吸収)：スーパーゴーストカミカゼアタック spXXXX カードID = 1014670 sp_effect_a3_00050


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
SP_01 = 152210;--構え
SP_02 = 152211;--ゴースト迫る
SP_03 = 152212;--ゴースト気弾撃つ(かめはめ波)
SP_04 = 152213;--ゴースト気弾撃つ(魔閃
SP_05 = 152214;--ナビ、放って敵に当たるまで。
SP_06 = 152215;--ヤムチャのところの煙


--敵側は味方側に1xをつけてます
SP_11 = 152216;--構え
SP_12 = 152217;--ゴースト迫る
SP_13 = 152218;--ゴースト気弾撃つ(かめはめ波)
SP_14 = 152219;--ゴースト気弾撃つ(魔閃光)
SP_15 = 152220;--ナビ、放って敵に当たるまで。
SP_16 = 152221;--ヤムチャのところの煙

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(  0,  0,  0, -3000,  0);
setMoveKey(  0,  1,  0, -3000,  0);
setMoveKey(  1,  0,  0, -3000,  0);
setMoveKey(  1,  1,  0, -3000,  0);
setMoveKey(  2,  0,  0, -3000,  0);
setMoveKey(  2,  1,  0, -3000,  0);
setMoveKey(  3,  0,  0, -3000,  0);
setMoveKey(  3,  1,  0, -3000,  0);

setScaleKey(  1,  0, 1.6, 1.6);
setScaleKey(  1,  1, 1.6, 1.6);
setRotateKey(  1,  1, 0);
setRotateKey(  1,  0, 0);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め(120F)
------------------------------------------------------

spep_0 = 0;

entryFade( spep_0, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

tame = entryEffectLife( spep_0, SP_01,210, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_0, tame, 1.0, 1.0);
setEffScaleKey( spep_0+210, tame, 1.0, 1.0);

setEffMoveKey( spep_0, tame, 0, 0);
setEffMoveKey( spep_0+210, tame, 0, 0);

setEffRotateKey( spep_0, tame, 0);
setEffRotateKey( spep_0+210, tame, 0);

setEffAlphaKey( spep_0, tame, 255);
setEffAlphaKey( spep_0+210, tame, 255);

setEffAlphaKey( spep_0, tame, 0);
setEffAlphaKey( spep_0+210, tame, 0);


shuchusen1 = entryEffectLife( spep_0, 906, 186, 0x100, -1, 0, 0, 0);  -- 集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.43, 2.03 );
setEffScaleKey( spep_0 + 186, shuchusen1, 1.43, 2.03 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 186, shuchusen1, 180 );


setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 186, shuchusen1, 255 );


--***カットイン***32
speff = entryEffect( spep_0+20,  1504, 0, -1, 0, 0, 0);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);              -- カットイン差し替え
speff = entryEffect( spep_0+20,  1505, 0, -1, 0, 0, 0);  -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);              -- セリフ差し替え

--[[
-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+28, 190006, 76, 0x100, -1, 0, -88.9, 521.8 );  -- ゴゴゴゴ


setEffMoveKey( spep_0 + 28, ctgogo, -88.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 92, ctgogo, -88.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -106.6, 510.2 , 0 );
setEffMoveKey( spep_0 + 96, ctgogo, -129.4, 521.8 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -145.9, 505.1 , 0 );
setEffMoveKey( spep_0 + 100, ctgogo, -165.6, 502.5 , 0 );
setEffMoveKey( spep_0 + 104, ctgogo, -165.6, 502.5 , 0 );


setEffScaleKey( spep_0 + 28, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 92, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 94, ctgogo, 0.64, 0.64 );
setEffScaleKey( spep_0 + 96, ctgogo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 98, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.07, 1.07 );


setEffRotateKey( spep_0 + 28, ctgogo, 0 );
setEffRotateKey( spep_0 + 104, ctgogo, 0 );


setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 92, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 191 );
setEffAlphaKey( spep_0 + 96, ctgogo, 128 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );
setEffAlphaKey( spep_0 + 104, ctgogo, 0 );
]]

--文字エントリー
ctgogo=entryEffectLife(spep_0+34,190006,70,0x100,-1,160,520);--ゴゴゴ
setEffMoveKey(spep_0+34,ctgogo,-160,520,0);
setEffMoveKey(spep_0+104,ctgogo,-160,520,0);
setEffScaleKey(spep_0+34, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+104, ctgogo, 0.7, 0.7);

ctba = entryEffectLife( spep_0 + 108, 10022, 14, 0x100, -1, 0, 49.7, 370.5 );

setEffMoveKey( spep_0 + 108, ctba, -46.8, 396.2 , 0 );
setEffMoveKey( spep_0 + 110, ctba, -46.7, 396.2 , 0 );
setEffMoveKey( spep_0 + 112, ctba, -54.9, 400.5 , 0 );
setEffMoveKey( spep_0 + 114, ctba, -46.9, 396.2 , 0 );
setEffMoveKey( spep_0 + 116, ctba, -53.2, 400.2 , 0 );
setEffMoveKey( spep_0 + 118, ctba, -53.1, 400.2 , 0 );
setEffMoveKey( spep_0 + 120, ctba, -46.8, 396.2 , 0 );
setEffMoveKey( spep_0 + 122, ctba, -46.9, 396.2 , 0 );


setEffScaleKey( spep_0 + 108, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 + 110, ctba, 2.26, 2.26 );
setEffScaleKey( spep_0 + 112, ctba, 1.9, 1.9 );
setEffScaleKey( spep_0 + 114, ctba, 1.55, 1.55 );
setEffScaleKey( spep_0 + 122, ctba, 1.55, 1.55 );


setEffRotateKey( spep_0 + 108, ctba, -9.7 );
setEffRotateKey( spep_0 + 110, ctba, -17.1 );
setEffRotateKey( spep_0 + 112, ctba, -13.4 );
setEffRotateKey( spep_0 + 114, ctba, -9.7 );
setEffRotateKey( spep_0 + 122, ctba, -9.7 );


setEffAlphaKey( spep_0 + 108, ctba, 0 );
setEffAlphaKey( spep_0 + 109, ctba, 255 );
setEffAlphaKey( spep_0 + 110, ctba, 255 );
setEffAlphaKey( spep_0 + 118, ctba, 255 );
setEffAlphaKey( spep_0 + 120, ctba, 128 );
setEffAlphaKey( spep_0 + 122, ctba, 0 );


ctba2 = entryEffectLife( spep_0 + 118, 10022, 14, 0x100, -1, 0, 49.7, 370.5 );

setEffMoveKey( spep_0 + 118, ctba2, 189.8, 248 , 0 );
setEffMoveKey( spep_0 + 122, ctba2, 189.7, 248.1 , 0 );
setEffMoveKey( spep_0 + 124, ctba2, 186.8, 256.8 , 0 );
setEffMoveKey( spep_0 + 126, ctba2, 189.6, 248.2 , 0 );
setEffMoveKey( spep_0 + 128, ctba2, 187.8, 255.4 , 0 );
setEffMoveKey( spep_0 + 130, ctba2, 187.8, 255.4 , 0 );
setEffMoveKey( spep_0 + 132, ctba2, 189.7, 248.2 , 0 );


setEffScaleKey( spep_0 + 118, ctba2, 1.15, 1.15 );
setEffScaleKey( spep_0 + 122, ctba2, 2.26, 2.26 );
setEffScaleKey( spep_0 + 124, ctba2, 1.9, 1.9 );
setEffScaleKey( spep_0 + 126, ctba2, 1.55, 1.55 );
setEffScaleKey( spep_0 + 132, ctba2, 1.55, 1.55 );


setEffRotateKey( spep_0 + 118, ctba2, 33.8 );
setEffRotateKey( spep_0 + 122, ctba2, 26.3 );
setEffRotateKey( spep_0 + 124, ctba2, 30.1 );
setEffRotateKey( spep_0 + 126, ctba2, 33.8 );
setEffRotateKey( spep_0 + 132, ctba2, 33.8 );


setEffAlphaKey( spep_0 + 120, ctba2, 255 );
setEffAlphaKey( spep_0 + 126, ctba2, 255 );
setEffAlphaKey( spep_0 + 128, ctba2, 255 );
setEffAlphaKey( spep_0 + 130, ctba2, 128 );
setEffAlphaKey( spep_0 + 132, ctba2, 0 );



entryFade(spep_0 + 144, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


entryFade(spep_0 + 182, 4, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_0, 0, 186, 0, 0, 0, 0, 180);


--SE
playSe( spep_0+24, SE_04); --ゴゴゴ
playSe( spep_0+108, 1003);--ポーズ1
playSe( spep_0+118, 1004);--ポーズ2
playSe( spep_0+148, 1013);--ポーズ2

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_1 = spep_0+186;

--***フェードと背景***

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,  1507,  0, -1, 0, 0, 0);  -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);             -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                 -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1, shuchusen2, 0, 0);
setEffMoveKey( spep_1+90, shuchusen2, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.6, 1.6);
setEffScaleKey( spep_1+90, shuchusen2, 1.6, 1.6);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffRotateKey( spep_1+90, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffAlphaKey( spep_1+90, shuchusen2, 255);

entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


------------------------------------------------------
-- ゴースト飛ぶシーン
------------------------------------------------------

spep_2 = spep_1+90;

ghost = entryEffectLife( spep_2, SP_02, 96,0x100, -1, 0, 0, 0);

setEffScaleKey( spep_2, ghost, 1.0, 1.0);
setEffScaleKey( spep_2+96, ghost, 1.0, 1.0);

setEffMoveKey( spep_2, ghost, 0, 0);
setEffMoveKey( spep_2+96, ghost, 0, 0);

setEffRotateKey( spep_2, ghost, 0);
setEffRotateKey( spep_2+96, ghost, 0);

setEffAlphaKey( spep_2, ghost, 255);
setEffAlphaKey( spep_2+96, ghost, 255);

setEffAlphaKey( spep_2, ghost, 0);
setEffAlphaKey( spep_2+96, ghost, 0);



yoko = entryEffectLife( spep_2, 914, 56, 0x80, -1, 0, 0, 0);--横線


setEffMoveKey( spep_2 + 0, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 2, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 4, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 6, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 8, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 10, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 12, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 14, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 16, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 18, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 20, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 22, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 24, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 26, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 28, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 30, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 32, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 34, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 36, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 38, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 40, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 42, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 44, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 46, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 48, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 50, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 52, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 54, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 56, yoko, -1356.3, -20 , 0 );


setEffScaleKey( spep_2 + 0, yoko, 3.46, 1.35 );
setEffScaleKey( spep_2 + 56, yoko, 3.46, 1.35 );


setEffRotateKey( spep_2 + 0, yoko, 0 );
setEffRotateKey( spep_2 + 56, yoko, 0 );


setEffAlphaKey( spep_2 + 0, yoko, 255 );
setEffAlphaKey( spep_2 + 56, yoko, 255 );


shuchusen3 = entryEffectLife( spep_2, 906, 96, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 2, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );


setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6);
--setEffScaleKey( spep_2 + 2, shuchusen3, 1.2, 1.2 );
--setEffScaleKey( spep_2 + 82, shuchusen3, 1.2, 1.2 );
--etEffScaleKey( spep_2 + 84, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.6, 1.6 );


setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );


setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );



entryFade( spep_2+54, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


entryFade( spep_2+92, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_2, 0, 96, 0, 0, 0, 0, 180); -- ベース暗め　背景

--SE
playSe( spep_2, 44); --近くやつ
playSe( spep_2+54, SE_04); --近くやつ

--------------------------------------------------------------------
-- ゴースト気弾
--------------------------------------------------------------------

spep_3 = spep_2+96;


ghost_kidan1 = entryEffectLife( spep_3, SP_03,196, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_3, ghost_kidan1, 1.0, 1.0);
setEffScaleKey( spep_3+196, ghost_kidan1, 1.0, 1.0);

setEffMoveKey( spep_3, ghost_kidan1, 0, 0);
setEffMoveKey( spep_3+196, ghost_kidan1, 0, 0);

setEffRotateKey( spep_3, ghost_kidan1, 0);
setEffRotateKey( spep_3+196, ghost_kidan1, 0);

setEffAlphaKey( spep_3, ghost_kidan1, 255);
setEffAlphaKey( spep_3+196, ghost_kidan1, 255);

setEffAlphaKey( spep_3, ghost_kidan1, 0);
setEffAlphaKey( spep_3+196, ghost_kidan1, 0);

ryusen = entryEffectLife( spep_3, 921, 150, 0x80, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_3 + 0, ryusen, 23.5, 12.9 , 0 );
setEffMoveKey( spep_3 + 150, ryusen, 23.5, 12.9 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 1.89, 1.42 );
setEffScaleKey( spep_3 + 150, ryusen, 1.89, 1.42 );

setEffRotateKey( spep_3 + 0, ryusen, 318 );
setEffRotateKey( spep_3 + 150, ryusen, 318 );

setEffAlphaKey( spep_3 + 0, ryusen, 255 );
setEffAlphaKey( spep_3 + 138, ryusen, 255 );
setEffAlphaKey( spep_3 + 146, ryusen, 180 );
setEffAlphaKey( spep_3 + 150, ryusen, 0 );


ghost_kidan2 = entryEffectLife( spep_3, SP_04,196, 0x80, -1, 0, 0, 0);

setEffScaleKey( spep_3, ghost_kidan2, 1.0, 1.0);
setEffScaleKey( spep_3+196, ghost_kidan2, 1.0, 1.0);

setEffMoveKey( spep_3, ghost_kidan2, 0, 0);
setEffMoveKey( spep_3+196, ghost_kidan2, 0, 0);

setEffRotateKey( spep_3, ghost_kidan2, 0);
setEffRotateKey( spep_3+196, ghost_kidan2, 0);

setEffAlphaKey( spep_3, ghost_kidan2, 255);
setEffAlphaKey( spep_3+196, ghost_kidan2, 255);

setEffAlphaKey( spep_3, ghost_kidan2, 0);
setEffAlphaKey( spep_3+196, ghost_kidan2, 0);




shuchusen4 = entryEffectLife( spep_3, 906, 196, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 196, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.32, 1.92 );
setEffScaleKey( spep_3 + 196, shuchusen4, 1.32, 1.92 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 196, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 196, shuchusen4, 255 );


ctbikkuri = entryEffectLife( spep_3 + 24, 10001, 22, 0x100, -1, 0, 18.6, 329.5 );

setEffMoveKey( spep_3 + 24, ctbikkuri, 18.6, 329.5 , 0 );
setEffMoveKey( spep_3 + 26, ctbikkuri, 9.5, 361.5 , 0 );
setEffMoveKey( spep_3 + 28, ctbikkuri, 2.5, 350.2 , 0 );
setEffMoveKey( spep_3 + 30, ctbikkuri, 18.3, 328.5 , 0 );
setEffMoveKey( spep_3 + 32, ctbikkuri, 8.1, 338.1 , 0 );
setEffMoveKey( spep_3 + 34, ctbikkuri, 17.2, 339 , 0 );
setEffMoveKey( spep_3 + 36, ctbikkuri, 7, 348.5 , 0 );
setEffMoveKey( spep_3 + 38, ctbikkuri, 16.1, 349.4 , 0 );
setEffMoveKey( spep_3 + 40, ctbikkuri, 15.5, 354.6 , 0 );
setEffMoveKey( spep_3 + 42, ctbikkuri, 5.9, 359 , 0 );
setEffMoveKey( spep_3 + 44, ctbikkuri, 15.5, 354.6 , 0 );
setEffMoveKey( spep_3 + 46, ctbikkuri, 15.5, 354.6 , 0 );


--setEffScaleKey( spep_3 + 26, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 24, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 26, ctbikkuri, 3.41, 3.41 );
setEffScaleKey( spep_3 + 28, ctbikkuri, 2.95, 2.95 );
setEffScaleKey( spep_3 + 30, ctbikkuri, 2.49, 2.49 );
setEffScaleKey( spep_3 + 46, ctbikkuri, 2.49, 2.49 );


setEffRotateKey( spep_3 + 24, ctbikkuri, -20.7 );
setEffRotateKey( spep_3 + 46, ctbikkuri, -20.7 );


setEffAlphaKey( spep_3 + 24, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 30, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 42, ctbikkuri, 170 );
setEffAlphaKey( spep_3 + 44, ctbikkuri, 85 );
setEffAlphaKey( spep_3 + 46, ctbikkuri, 0 );


ctzuo = entryEffectLife( spep_3 + 64, 10012, 32, 0x100, -1, 0, -172.5, 379.7 );


setEffMoveKey( spep_3 + 64, ctzuo, -172.5, 379.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzuo, -161.2, 382.1 , 0 );
setEffMoveKey( spep_3 + 68, ctzuo, -167.4, 386.2 , 0 );
setEffMoveKey( spep_3 + 70, ctzuo, -164.9, 389.5 , 0 );
setEffMoveKey( spep_3 + 72, ctzuo, -146.9, 388.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzuo, -164.2, 390.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzuo, -145.1, 388.9 , 0 );
setEffMoveKey( spep_3 + 78, ctzuo, -163.6, 391.2 , 0 );
setEffMoveKey( spep_3 + 80, ctzuo, -143.4, 389.6 , 0 );
setEffMoveKey( spep_3 + 82, ctzuo, -162.9, 392 , 0 );
setEffMoveKey( spep_3 + 84, ctzuo, -141.7, 390.3 , 0 );
setEffMoveKey( spep_3 + 86, ctzuo, -162.3, 392.8 , 0 );
setEffMoveKey( spep_3 + 88, ctzuo, -140, 391 , 0 );
setEffMoveKey( spep_3 + 90, ctzuo, -160.5, 395.1 , 0 );
setEffMoveKey( spep_3 + 92, ctzuo, -132.3, 394.3 , 0 );
setEffMoveKey( spep_3 + 94, ctzuo, -157.6, 398.9 , 0 );
setEffMoveKey( spep_3 + 96, ctzuo, -156.2, 400.7 , 0 );


setEffScaleKey( spep_3 + 64, ctzuo, 0.55, 0.55 );
setEffScaleKey( spep_3 + 66, ctzuo, 1.06, 1.06 );
setEffScaleKey( spep_3 + 68, ctzuo, 1.57, 1.57 );
setEffScaleKey( spep_3 + 70, ctzuo, 2.08, 2.08 );
setEffScaleKey( spep_3 + 72, ctzuo, 2.15, 2.15 );
setEffScaleKey( spep_3 + 74, ctzuo, 2.21, 2.21 );
setEffScaleKey( spep_3 + 76, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_3 + 78, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3 + 80, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 82, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3 + 84, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_3 + 86, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_3 + 88, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_3 + 90, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 92, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_3 + 94, ctzuo, 3.53, 3.53 );
setEffScaleKey( spep_3 + 96, ctzuo, 3.82, 3.82 );

setEffRotateKey( spep_3 + 64, ctzuo, -12 );
setEffRotateKey( spep_3 + 96, ctzuo, -12 );

setEffAlphaKey( spep_3 + 64, ctzuo, 255 );
setEffAlphaKey( spep_3 + 88, ctzuo, 255 );
setEffAlphaKey( spep_3 + 90, ctzuo, 191 );
setEffAlphaKey( spep_3 + 92, ctzuo, 128 );
setEffAlphaKey( spep_3 + 94, ctzuo, 64 );
setEffAlphaKey( spep_3 + 96, ctzuo, 0 );


entryFadeBg( spep_3, 0, 198, 0, 0, 0, 0, 180); -- ベース暗め　背景

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 106, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 24, 1, 104 );

setMoveKey( spep_3 + 0, 1, -90.4, -142.8 , 0 );
setMoveKey( spep_3 + 2, 1, -81, -129.2 , 0 );
setMoveKey( spep_3 + 4, 1, -65, -105.4 , 0 );
setMoveKey( spep_3 + 6, 1, -42, -71.4 , 0 );
setMoveKey( spep_3 + 8, 1, -11.9, -27.3 , 0 );
setMoveKey( spep_3 + 10, 1, 24.8, 27 , 0 );
setMoveKey( spep_3 + 12, 1, 27, 31.6 , 0 );
setMoveKey( spep_3 + 14, 1, 29.2, 36.2 , 0 );
setMoveKey( spep_3 + 16, 1, 31.3, 40.7 , 0 );
setMoveKey( spep_3 + 18, 1, 33.5, 45.3 , 0 );
setMoveKey( spep_3 + 20, 1, 35.7, 49.9 , 0 );
setMoveKey( spep_3 + 22, 1, 37.9, 54.5 , 0 );
--setMoveKey( spep_3 + 24, 1, 40, 59.1 , 0 );
setMoveKey( spep_3 + 24, 1, 71.6, 65.6 , 0 );
setMoveKey( spep_3 + 28, 1, 73.5, 70.2 , 0 );
setMoveKey( spep_3 + 30, 1, 75.3, 74.8 , 0 );
setMoveKey( spep_3 + 32, 1, 77.2, 79.3 , 0 );
setMoveKey( spep_3 + 34, 1, 79.1, 83.9 , 0 );
setMoveKey( spep_3 + 36, 1, 80.9, 88.4 , 0 );
setMoveKey( spep_3 + 38, 1, 82.8, 93 , 0 );
setMoveKey( spep_3 + 40, 1, 84.7, 97.5 , 0 );

setScaleKey( spep_3 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 2, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 10, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 14, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 22, 1, 1.02, 1.02 );
--setScaleKey( spep_3 + 25, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 40, 1, 1.01, 1.01 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 22, 1, 0 );
setRotateKey( spep_3 + 23, 1, 0 );
setRotateKey( spep_3 + 24, 1, -9.2 );
setRotateKey( spep_3 + 40, 1, -9.2 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 84.7, 97.5, 0 );
setScaleKey(SP_dodge , 1, 1.01, 1.01  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 84.7, 97.5, 0 );
setScaleKey(SP_dodge+8 , 1, 1.01, 1.01  );
setRotateKey(SP_dodge+8,   1, -9.2);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.01, 1.01 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.01, 1.01);
setRotateKey(SP_dodge+10,   1, -9.2);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------
setMoveKey( spep_3 + 42, 1, 86.5, 102.1 , 0 );
setMoveKey( spep_3 + 44, 1, 88.4, 106.6 , 0 );
setMoveKey( spep_3 + 46, 1, 90.3, 111.2 , 0 );
setMoveKey( spep_3 + 48, 1, 92.1, 115.8 , 0 );
setMoveKey( spep_3 + 50, 1, 94, 120.3 , 0 );
setMoveKey( spep_3 + 52, 1, 95.9, 124.9 , 0 );
setMoveKey( spep_3 + 54, 1, 97.7, 129.4 , 0 );
setMoveKey( spep_3 + 56, 1, 99.6, 134 , 0 );
setMoveKey( spep_3 + 58, 1, 101.5, 138.5 , 0 );
setMoveKey( spep_3 + 60, 1, 103.4, 143.1 , 0 );
setMoveKey( spep_3 + 62, 1, 105.2, 147.7 , 0 );
setMoveKey( spep_3 + 64, 1, 107.1, 152.2 , 0 );
setMoveKey( spep_3 + 66, 1, 106.1, 148.2 , 0 );
setMoveKey( spep_3 + 68, 1, 105.6, 150.4 , 0 );
setMoveKey( spep_3 + 70, 1, 100.6, 147.1 , 0 );
setMoveKey( spep_3 + 72, 1, 101.4, 145.4 , 0 );
setMoveKey( spep_3 + 74, 1, 97.7, 138.9 , 0 );
setMoveKey( spep_3 + 76, 1, 95.8, 138.5 , 0 );
setMoveKey( spep_3 + 78, 1, 88.8, 133.3 , 0 );
setMoveKey( spep_3 + 80, 1, 88.7, 129.9 , 0 );
setMoveKey( spep_3 + 82, 1, 83.1, 121 , 0 );
setMoveKey( spep_3 + 84, 1, 80, 119.5 , 0 );
setMoveKey( spep_3 + 86, 1, 70.7, 112.2 , 0 );
setMoveKey( spep_3 + 88, 1, 69.8, 107.3 , 0 );
setMoveKey( spep_3 + 90, 1, 62.5, 95.6 , 0 );
setMoveKey( spep_3 + 92, 1, 58, 93.2 , 0 );
setMoveKey( spep_3 + 94, 1, 46.3, 83.7 , 0 );
setMoveKey( spep_3 + 96, 1, 44.8, 77.4 , 0 );
setMoveKey( spep_3 + 98, 1, 35.7, 64.7 , 0 );
setMoveKey( spep_3 + 100, 1, 30.1, 59.6 , 0 );
setMoveKey( spep_3 + 102, 1, 20, 45.6 , 0 );
setMoveKey( spep_3 + 104, 1, 13.8, 40.1 , 0 );
setMoveKey( spep_3 + 106, 1, 2.7, 22.3 , 0 );

setScaleKey( spep_3 + 42, 1, 1, 1 );
setScaleKey( spep_3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 46, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 48, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 50, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 52, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 56, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 58, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 60, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 62, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 66, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 68, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 70, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 76, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 78, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 80, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 82, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 84, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 88, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 96, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 98, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 100, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 102, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 104, 1, 2.02, 2.02 );
setScaleKey( spep_3 + 106, 1, 2.12, 2.12 );

setRotateKey( spep_3 + 106, 1, -9.2 );

ctdokon = entryEffectLife( spep_3 + 116, 10018, 38, 0x100, -1, 0, -5.2, 393.7 );

setEffMoveKey( spep_3 + 116, ctdokon, -5.2, 393.7 , 0 );
setEffMoveKey( spep_3 + 120, ctdokon, -3.9, 392.8 , 0 );
setEffMoveKey( spep_3 + 122, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 124, ctdokon, -6.5, 394.2 , 0 );
setEffMoveKey( spep_3 + 126, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 128, ctdokon, -6.1, 394 , 0 );
setEffMoveKey( spep_3 + 130, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 132, ctdokon, -6, 393.9 , 0 );
setEffMoveKey( spep_3 + 134, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 136, ctdokon, -6, 393.8 , 0 );
setEffMoveKey( spep_3 + 138, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 140, ctdokon, -5.9, 393.8 , 0 );
setEffMoveKey( spep_3 + 142, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 144, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 146, ctdokon, -5.9, 393.7 , 0 );
setEffMoveKey( spep_3 + 148, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 150, ctdokon, -5.8, 393.7 , 0 );
setEffMoveKey( spep_3 + 152, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 154, ctdokon, -5.8, 393.7 , 0 );


setEffScaleKey( spep_3 + 116, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_3 + 120, ctdokon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 122, ctdokon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 124, ctdokon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 126, ctdokon, 3.11, 3.11 );
setEffScaleKey( spep_3 + 128, ctdokon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 130, ctdokon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 132, ctdokon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 134, ctdokon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 136, ctdokon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 138, ctdokon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 140, ctdokon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 142, ctdokon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 144, ctdokon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 146, ctdokon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 148, ctdokon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 150, ctdokon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 152, ctdokon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 154, ctdokon, 2.46, 2.46 );
setEffScaleKey( spep_3 + 156, ctdokon, 2.45, 2.45 );


setEffRotateKey( spep_3 + 116, ctdokon, -6.8 );
setEffRotateKey( spep_3 + 130, ctdokon, -6.8 );
setEffRotateKey( spep_3 + 132, ctdokon, -6.7 );
setEffRotateKey( spep_3 + 138, ctdokon, -6.7 );
setEffRotateKey( spep_3 + 140, ctdokon, -6.6 );
setEffRotateKey( spep_3 + 156, ctdokon, -6.6 );


setEffAlphaKey( spep_3 + 116, ctdokon, 255 );
setEffAlphaKey( spep_3 + 144, ctdokon, 255 );
setEffAlphaKey( spep_3 + 146, ctdokon, 213 );
setEffAlphaKey( spep_3 + 148, ctdokon, 170 );
setEffAlphaKey( spep_3 + 150, ctdokon, 128 );
setEffAlphaKey( spep_3 + 152, ctdokon, 85 );
setEffAlphaKey( spep_3 + 154, ctdokon, 42 );
setEffAlphaKey( spep_3 + 156, ctdokon, 0 );


ctsyun = entryEffectLife( spep_3 + 156, 10011, 20, 0x100, -1, 0, -155.9, 202.7 );

setEffMoveKey( spep_3 + 156, ctsyun, -155.9, 202.7 , 0 );
setEffMoveKey( spep_3 + 164, ctsyun, -155.9, 202.7 , 0 );
setEffMoveKey( spep_3 + 166, ctsyun, -155.8, 202.6 , 0 );
setEffMoveKey( spep_3 + 170, ctsyun, -155.8, 202.6 , 0 );
setEffMoveKey( spep_3 + 172, ctsyun, -155.9, 202.6 , 0 );
setEffMoveKey( spep_3 + 174, ctsyun, -155.9, 202.6 , 0 );
setEffMoveKey( spep_3 + 176, ctsyun, -155.9, 202.7 , 0 );


setEffScaleKey( spep_3 + 156, ctsyun, 1.65, 1.65 );
setEffScaleKey( spep_3 + 162, ctsyun, 2.78, 2.78 );
setEffScaleKey( spep_3 + 164, ctsyun, 2.46, 2.46 );
setEffScaleKey( spep_3 + 166, ctsyun, 2.14, 2.14 );
setEffScaleKey( spep_3 + 168, ctsyun, 1.82, 1.82 );
setEffScaleKey( spep_3 + 170, ctsyun, 1.79, 1.79 );
setEffScaleKey( spep_3 + 172, ctsyun, 1.77, 1.77 );
setEffScaleKey( spep_3 + 174, ctsyun, 1.74, 1.74 );
setEffScaleKey( spep_3 + 176, ctsyun, 1.71, 1.71 );


setEffRotateKey( spep_3 + 156, ctsyun, 4.8 );
setEffRotateKey( spep_3 + 176, ctsyun, 4.8 );

setEffAlphaKey( spep_3 + 156, ctsyun, 0 );
setEffAlphaKey( spep_3 + 157, ctsyun, 255 );
setEffAlphaKey( spep_3 + 158, ctsyun, 255 );
setEffAlphaKey( spep_3 + 168, ctsyun, 255 );
setEffAlphaKey( spep_3 + 170, ctsyun, 191 );
setEffAlphaKey( spep_3 + 172, ctsyun, 128 );
setEffAlphaKey( spep_3 + 174, ctsyun, 64 );
setEffAlphaKey( spep_3 + 176, ctsyun, 0 );



entryFade( spep_3+62, 0, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_3+100, 4, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_3+192, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


--SE
playSe( spep_3+24, SE_03); --ため
playSe( spep_3+44, SE_03); --ため
playSe( spep_3+64, SE_06); --発射
playSe( spep_3+116, 1023); --爆発
playSe( spep_3+156, 43); --瞬間移動

----------------------------------------------------------------------------------------
-- 魔人ブウ構え〜放つ
----------------------------------------------------------------------------------------

spep_4 = spep_3+196;


buu_kidan1 = entryEffectLife( spep_4, SP_05,216, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_4, buu_kidan1, 1.0, 1.0);
setEffScaleKey( spep_4+216, buu_kidan1, 1.0, 1.0);

setEffMoveKey( spep_4, buu_kidan1, 0, 0);
setEffMoveKey( spep_4+216, buu_kidan1, 0, 0);

setEffRotateKey( spep_4, buu_kidan1, 0);
setEffRotateKey( spep_4+216, buu_kidan1, 0);

setEffAlphaKey( spep_4, buu_kidan1, 255);
setEffAlphaKey( spep_4+216, buu_kidan1, 255);

setEffAlphaKey( spep_4, buu_kidan1, 0);
setEffAlphaKey( spep_4+216, buu_kidan1, 0);

shuchusen5 = entryEffectLife( spep_4, 906, 216, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.4, 1.75 );
setEffScaleKey( spep_4 + 216, shuchusen5, 1.4, 1.75 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 216, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 216, shuchusen5, 255 );



ryusen2 = entryEffectLife( spep_4 + 0, 923, 216, 0x80, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_4 + 156, ryusen2, 7.2, 4.1 , 0 );
setEffMoveKey( spep_4 + 216, ryusen2, 7.2, 4.1 , 0 );

setEffScaleKey( spep_4 + 156, ryusen2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 216, ryusen2, 1.0, 1.0 );

setEffRotateKey( spep_4 + 156, ryusen2,0 );
setEffRotateKey( spep_4 + 216, ryusen2, 0 );


setEffAlphaKey( spep_4 + 0, ryusen2, 0 );
setEffAlphaKey( spep_4 + 154, ryusen2, 0 );
setEffAlphaKey( spep_4 + 155, ryusen2, 0 );
setEffAlphaKey( spep_4 + 156, ryusen2, 255 );
setEffAlphaKey( spep_4 + 216, ryusen2, 255 );

buu_kidan2 = entryEffectLife( spep_4, SP_06,216, 0x80, -1, 0, 0, 0);

setEffScaleKey( spep_4, buu_kidan2, 1.0, 1.0);
setEffScaleKey( spep_4+216, buu_kidan2, 1.0, 1.0);

setEffMoveKey( spep_4, buu_kidan2, 0, 0);
setEffMoveKey( spep_4+216, buu_kidan2, 0, 0);

setEffRotateKey( spep_4, buu_kidan2, 0);
setEffRotateKey( spep_4+216, buu_kidan2, 0);

setEffAlphaKey( spep_4, buu_kidan2, 255);
setEffAlphaKey( spep_4+216, buu_kidan2, 255);

setEffAlphaKey( spep_4, buu_kidan2, 0);
setEffAlphaKey( spep_4+216, buu_kidan2, 0);



setDisp(spep_4+160,1,1);
setDisp(spep_4+218,1,0);
changeAnime(spep_4+160,1,106);

setMoveKey( spep_4 + 160, 1, -32.4, -94.7 , 0 );
setMoveKey( spep_4 + 162, 1, -36.2, -68.5 , 0 );
setMoveKey( spep_4 + 164, 1, -29.1, -56.2 , 0 );
setMoveKey( spep_4 + 166, 1, -43.4, -30.7 , 0 );
setMoveKey( spep_4 + 168, 1, -25.9, -18.3 , 0 );
setMoveKey( spep_4 + 170, 1, -27.2, 11.1 , 0 );
setMoveKey( spep_4 + 172, 1, -26.8, 7 , 0 );
setMoveKey( spep_4 + 174, 1, -29.3, 44.4 , 0 );
setMoveKey( spep_4 + 176, 1, -31.7, 51.8 , 0 );
setMoveKey( spep_4 + 178, 1, -20.5, 82.4 , 0 );
setMoveKey( spep_4 + 180, 1, -20.7, 84 , 0 );
setMoveKey( spep_4 + 182, 1, -22.6, 101.5 , 0 );
setMoveKey( spep_4 + 184, 1, -23.6, 95.9 , 0 );
setMoveKey( spep_4 + 186, 1, -17, 111.2 , 0 );
setMoveKey( spep_4 + 188, 1, -18.4, 99.6 , 0 );
setMoveKey( spep_4 + 190, 1, -27.9, 96.5 , 0 );
setMoveKey( spep_4 + 192, 1, -17.3, 107.2 , 0 );
setMoveKey( spep_4 + 194, 1, -30.6, 113.7 , 0 );
setMoveKey( spep_4 + 196, 1, -16.2, 114.6 , 0 );
setMoveKey( spep_4 + 198, 1, -25.2, 111 , 0 );
setMoveKey( spep_4 + 200, 1, -19.2, 109.9 , 0 );
setMoveKey( spep_4 + 202, 1, -22.3, 113.7 , 0 );
setMoveKey( spep_4 + 204, 1, -18.1, 117 , 0 );
setMoveKey( spep_4 + 206, 1, -28.6, 122.9 , 0 );
setMoveKey( spep_4 + 208, 1, -17.1, 124 , 0 );
setMoveKey( spep_4 + 210, 1, -20.1, 127.2 , 0 );
setMoveKey( spep_4 + 212, 1, -16.1, 130.9 , 0 );
setMoveKey( spep_4 + 214, 1, -26.1, 136.2 , 0 );
setMoveKey( spep_4 + 216, 1, -15.1, 137.6 , 0 );
setMoveKey( spep_4 + 218, 1, -18, 140 , 0 );

setScaleKey( spep_4 + 160, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 162, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 164, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 166, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 170, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 172, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 174, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 176, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 178, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 180, 1, 1.12, 1.12 );
setScaleKey( spep_4 + 182, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 184, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 186, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 188, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 190, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 192, 1, 1, 1 );
setScaleKey( spep_4 + 194, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 196, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 198, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 200, 1, 0.92, 0.92 );
setScaleKey( spep_4 + 202, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 204, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 206, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 208, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 210, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 212, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 214, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 216, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 218, 1, 0.74, 0.74 );

setRotateKey( spep_4 + 160, 1, -16.6 );
setRotateKey( spep_4 + 218, 1, -16.6 );








yoko_2 = entryEffectLife( spep_4+88, 914, 66, 0x80, -1, 0, 02, 0);--横線

--[[
setEffMoveKey( spep_4 + 88, yoko_2, -572, 307.5 , 0 );
setEffMoveKey( spep_4 + 92, yoko_2, -1052.3, 564 , 0 );
setEffMoveKey( spep_4 + 94, yoko_2, -1532.6, 820.4 , 0 );
setEffMoveKey( spep_4 + 96, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 98, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 100, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 102, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 104, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 106, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 108, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 110, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 112, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 114, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 116, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 118, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 120, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 122, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 124, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 126, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 128, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 130, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 132, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 134, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 136, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 138, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 140, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 142, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 144, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 146, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 148, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 150, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 152, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 154, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 156, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 144, yoko_2, 388.6, -205.4 , 0 );
]]

setEffMoveKey( spep_4 + 88, yoko_2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 154, yoko_2,0, 0 , 0 );

setEffScaleKey( spep_4 + 88, yoko_2, 4.91, 1.46 );
setEffScaleKey( spep_4 + 154, yoko_2, 4.91, 1.46 );


setEffRotateKey( spep_4 + 88, yoko_2, 28.1 );
setEffRotateKey( spep_4 + 154, yoko_2, 28.1 );


setEffAlphaKey( spep_4 + 88, yoko_2, 255 );
setEffAlphaKey( spep_4 + 154, yoko_2, 255 );


ctzuo2 = entryEffectLife( spep_4 + 96, 10012, 48, 0x100, -1, 0, 135.3, 350.3 );

setEffMoveKey( spep_4 + 96, ctzuo2, 135.3, 350.3 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo2, 143.8, 345.4 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo2, 141.4, 351.6 , 0 );
setEffMoveKey( spep_4 + 106, ctzuo2, 154.3, 342.2 , 0 );
setEffMoveKey( spep_4 + 108, ctzuo2, 147.5, 353 , 0 );
setEffMoveKey( spep_4 + 110, ctzuo2, 160.2, 340.5 , 0 );
setEffMoveKey( spep_4 + 112, ctzuo2, 148.2, 353.1 , 0 );
setEffMoveKey( spep_4 + 114, ctzuo2, 161.4, 340.1 , 0 );
setEffMoveKey( spep_4 + 116, ctzuo2, 148.9, 353.3 , 0 );
setEffMoveKey( spep_4 + 118, ctzuo2, 162.7, 339.7 , 0 );
setEffMoveKey( spep_4 + 120, ctzuo2, 149.6, 353.4 , 0 );
setEffMoveKey( spep_4 + 122, ctzuo2, 163.9, 339.4 , 0 );
setEffMoveKey( spep_4 + 124, ctzuo2, 150.3, 353.6 , 0 );
setEffMoveKey( spep_4 + 126, ctzuo2, 165.1, 339 , 0 );
setEffMoveKey( spep_4 + 128, ctzuo2, 151.1, 353.7 , 0 );
setEffMoveKey( spep_4 + 130, ctzuo2, 166.4, 338.6 , 0 );
setEffMoveKey( spep_4 + 132, ctzuo2, 151.8, 353.9 , 0 );
setEffMoveKey( spep_4 + 134, ctzuo2, 167.6, 338.2 , 0 );
setEffMoveKey( spep_4 + 136, ctzuo2, 154, 354.4 , 0 );
setEffMoveKey( spep_4 + 138, ctzuo2, 174, 336.3 , 0 );
setEffMoveKey( spep_4 + 140, ctzuo2, 157.7, 355.2 , 0 );
setEffMoveKey( spep_4 + 142, ctzuo2, 180.4, 334.4 , 0 );
setEffMoveKey( spep_4 + 144, ctzuo2, 183.6, 333.4 , 0 );

setEffScaleKey( spep_4 + 96, ctzuo2, 0.55, 0.55 );
setEffScaleKey( spep_4 + 102, ctzuo2, 0.93, 0.93 );
setEffScaleKey( spep_4 + 104, ctzuo2, 1.32, 1.32 );
setEffScaleKey( spep_4 + 106, ctzuo2, 1.7, 1.7 );
setEffScaleKey( spep_4 + 108, ctzuo2, 2.08, 2.08 );
setEffScaleKey( spep_4 + 110, ctzuo2, 2.13, 2.13 );
setEffScaleKey( spep_4 + 112, ctzuo2, 2.17, 2.17 );
setEffScaleKey( spep_4 + 114, ctzuo2, 2.22, 2.22 );
setEffScaleKey( spep_4 + 116, ctzuo2, 2.26, 2.26 );
setEffScaleKey( spep_4 + 118, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_4 + 120, ctzuo2, 2.35, 2.35 );
setEffScaleKey( spep_4 + 122, ctzuo2, 2.39, 2.39 );
setEffScaleKey( spep_4 + 124, ctzuo2, 2.44, 2.44 );
setEffScaleKey( spep_4 + 126, ctzuo2, 2.48, 2.48 );
setEffScaleKey( spep_4 + 128, ctzuo2, 2.53, 2.53 );
setEffScaleKey( spep_4 + 130, ctzuo2, 2.57, 2.57 );
setEffScaleKey( spep_4 + 132, ctzuo2, 2.62, 2.62 );
setEffScaleKey( spep_4 + 134, ctzuo2, 2.66, 2.66 );
setEffScaleKey( spep_4 + 136, ctzuo2, 2.89, 2.89 );
setEffScaleKey( spep_4 + 138, ctzuo2, 3.13, 3.13 );
setEffScaleKey( spep_4 + 140, ctzuo2, 3.36, 3.36 );
setEffScaleKey( spep_4 + 142, ctzuo2, 3.59, 3.59 );
setEffScaleKey( spep_4 + 144, ctzuo2, 3.82, 3.82 );

setEffRotateKey( spep_4 + 96, ctzuo2, 27.7 );
setEffRotateKey( spep_4 + 144, ctzuo2, 27.7 );

setEffAlphaKey( spep_4 + 96, ctzuo2, 0 );
setEffAlphaKey( spep_4 + 97, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 98, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 134, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 136, ctzuo2, 204 );
setEffAlphaKey( spep_4 + 138, ctzuo2, 153 );
setEffAlphaKey( spep_4 + 140, ctzuo2, 102 );
setEffAlphaKey( spep_4 + 142, ctzuo2, 51 );
setEffAlphaKey( spep_4 + 144, ctzuo2, 0 );

setEffShake(96,ctzuo2,48,15);

ctzudodo = entryEffectLife( spep_4 + 158, 10014, 60, 0x100, -1, 0, 11.5, 373.1 );

setEffMoveKey( spep_4 + 158, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 162, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 164, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 166, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 168, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 170, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 172, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 174, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 176, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 178, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 180, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 182, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 184, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 186, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 188, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 190, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 192, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 194, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 196, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 198, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 200, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 202, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 204, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 206, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 208, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 210, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 212, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 214, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 216, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 218, ctzudodo, 13.4, 350.6 , 0 );


setEffScaleKey( spep_4 + 158, ctzudodo, 2.53, 2.53 );
setEffScaleKey( spep_4 + 218, ctzudodo, 2.53, 2.53 );


setEffRotateKey( spep_4 + 158, ctzudodo, 12.3 );
setEffRotateKey( spep_4 + 218, ctzudodo, 12.3 );


setEffAlphaKey( spep_4 + 158, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 218, ctzudodo, 255 );


entryFade( spep_4+84, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_4+152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_4+210, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_4, 0, 216, 0, 0, 0, 0, 180); -- ベース暗め　背景
--SE
playSe( spep_4, SE_03); --ため
playSe( spep_4+20, SE_03); --ため
playSe( spep_4+40, SE_03); --ため
playSe( spep_4+60, SE_03); --ため
playSe( spep_4+80, SE_03); --ため
playSe( spep_4+96, SE_06); --発射
playSe( spep_4+158, SE_07); --伸びる

-- ------------------------------------------------------
-- -- Scene06 ギャン
-- ------------------------------------------------------
spep_5 = spep_4+216;

entryFade(spep_5+40,16,6,0,255,255,255,255);
entryFadeBg(spep_5,0,58,0,10,10,10,255);

GyanEff = entryEffectLife( spep_5, 190000, 58, 0x80 , -1, 0, 0, 0);
setEffMoveKey( spep_5, GyanEff, 0, 0, 0);
setEffScaleKey( spep_5, GyanEff, 1.0, 1.0);
setEffAlphaKey( spep_5, GyanEff, 255);

-- 書き文字　ギャン 10006
ctGyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 );
setEffMoveKey( spep_5 + 0, ctGyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctGyan, 2.2, 2.2 );
setEffScaleKey( spep_5 + 2, ctGyan, 2.4, 2.4 );
setEffScaleKey( spep_5 + 4, ctGyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 6, ctGyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 8, ctGyan, 3, 3 );
setEffScaleKey( spep_5 + 10, ctGyan, 3.01, 3.01 );
setEffScaleKey( spep_5 + 12, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_5 + 14, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_5 + 16, ctGyan, 3.03, 3.03 );
setEffScaleKey( spep_5 + 18, ctGyan, 3.04, 3.04 );
setEffScaleKey( spep_5 + 20, ctGyan, 3.05, 3.05 );
setEffScaleKey( spep_5 + 22, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_5 + 24, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_5 + 26, ctGyan, 3.07, 3.07 );
setEffScaleKey( spep_5 + 28, ctGyan, 3.08, 3.08 );
setEffScaleKey( spep_5 + 30, ctGyan, 3.09, 3.09 );
setEffScaleKey( spep_5 + 32, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 34, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 36, ctGyan, 3.11, 3.11 );
setEffScaleKey( spep_5 + 38, ctGyan, 3.12, 3.12 );
setEffScaleKey( spep_5 + 40, ctGyan, 3.13, 3.13 );
setEffScaleKey( spep_5 + 42, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_5 + 44, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_5 + 46, ctGyan, 3.15, 3.15 );
setEffScaleKey( spep_5 + 48, ctGyan, 3.16, 3.16 );
setEffScaleKey( spep_5 + 50, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_5 + 52, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_5 + 54, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_5 + 56, ctGyan, 3.19, 3.19 );
setEffScaleKey( spep_5 + 58, ctGyan, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctGyan, 0 );
setEffRotateKey( spep_5 + 58, ctGyan, 0 );

setEffAlphaKey( spep_5 + 0, ctGyan, 255 );
setEffAlphaKey( spep_5 + 58, ctGyan, 255 );

playSe(spep_5,SE_09);

-- ------------------------------------------------------
-- 爆発
-- ------------------------------------------------------

spep_6 = spep_5+60;

bakuha = entryEffect(spep_6, 1925, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_6, bakuha, 0, 0, 0);
setEffMoveKey(spep_6+240, bakuha, 0, 0, 0);

setEffScaleKey(spep_6, bakuha, 1.0, 1.0);
setEffScaleKey(spep_6+240, bakuha, 1.0, 1.0);

setEffAlphaKey(spep_6, bakuha, 255);
setEffAlphaKey(spep_6+240, bakuha, 255);

setEffRotateKey(spep_6, bakuha, 0);
setEffRotateKey(spep_6+240, bakuha, 0);

shuchusen6 = entryEffectLife( spep_6, 906, 240, 0x100, -1, 0, 0, 0);  -- 集中線

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 240, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.43, 2.03 );
setEffScaleKey( spep_6 + 240, shuchusen6, 1.43, 2.03 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 240, shuchusen6, 180 );


setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 240, shuchusen6, 255 );

playSe(spep_6,1024);

------------------------------------------------------
-- 
------------------------------------------------------

-- ダメージ表示
dealDamage( spep_6+100);
entryFade( spep_6+220, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+230);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(120F)
------------------------------------------------------

spep_0 = 0;

entryFade( spep_0, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

tame = entryEffectLife( spep_0, SP_11,210, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_0, tame, 1.0, 1.0);
setEffScaleKey( spep_0+210, tame, 1.0, 1.0);

setEffMoveKey( spep_0, tame, 0, 0);
setEffMoveKey( spep_0+210, tame, 0, 0);

setEffRotateKey( spep_0, tame, 0);
setEffRotateKey( spep_0+210, tame, 0);

setEffAlphaKey( spep_0, tame, 255);
setEffAlphaKey( spep_0+210, tame, 255);

setEffAlphaKey( spep_0, tame, 0);
setEffAlphaKey( spep_0+210, tame, 0);


shuchusen1 = entryEffectLife( spep_0, 906, 186, 0x100, -1, 0, 0, 0);  -- 集中線

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.43, 2.03 );
setEffScaleKey( spep_0 + 186, shuchusen1, 1.43, 2.03 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 186, shuchusen1, 180 );


setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 186, shuchusen1, 255 );


--***カットイン***32
--speff = entryEffect( spep_0+20,  1504, 0, -1, 0, 0, 0);  -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);              -- カットイン差し替え
--speff = entryEffect( spep_0+20,  1505, 0, -1, 0, 0, 0);  -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);              -- セリフ差し替え

--[[
-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+28, 190006, 76, 0x100, -1, 0, -88.9, 521.8 );  -- ゴゴゴゴ


setEffMoveKey( spep_0 + 28, ctgogo, -88.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 92, ctgogo, -88.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -106.6, 510.2 , 0 );
setEffMoveKey( spep_0 + 96, ctgogo, -129.4, 521.8 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -145.9, 505.1 , 0 );
setEffMoveKey( spep_0 + 100, ctgogo, -165.6, 502.5 , 0 );
setEffMoveKey( spep_0 + 104, ctgogo, -165.6, 502.5 , 0 );


setEffScaleKey( spep_0 + 28, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 92, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 94, ctgogo, 0.64, 0.64 );
setEffScaleKey( spep_0 + 96, ctgogo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 98, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.07, 1.07 );


setEffRotateKey( spep_0 + 28, ctgogo, 0 );
setEffRotateKey( spep_0 + 104, ctgogo, 0 );


setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 92, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 191 );
setEffAlphaKey( spep_0 + 96, ctgogo, 128 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );
setEffAlphaKey( spep_0 + 104, ctgogo, 0 );
]]

--文字エントリー
ctgogo=entryEffectLife(spep_0+34,190006,70,0x100,-1,160,520);--ゴゴゴ
setEffMoveKey(spep_0+34,ctgogo,-160,520,0);
setEffMoveKey(spep_0+104,ctgogo,-160,520,0);
setEffScaleKey(spep_0+34, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+104, ctgogo, -0.7, 0.7);

ctba = entryEffectLife( spep_0 + 108, 10022, 14, 0x100, -1, 0, 49.7, 370.5 );

setEffMoveKey( spep_0 + 108, ctba, -46.8, 396.2 , 0 );
setEffMoveKey( spep_0 + 110, ctba, -46.7, 396.2 , 0 );
setEffMoveKey( spep_0 + 112, ctba, -54.9, 400.5 , 0 );
setEffMoveKey( spep_0 + 114, ctba, -46.9, 396.2 , 0 );
setEffMoveKey( spep_0 + 116, ctba, -53.2, 400.2 , 0 );
setEffMoveKey( spep_0 + 118, ctba, -53.1, 400.2 , 0 );
setEffMoveKey( spep_0 + 120, ctba, -46.8, 396.2 , 0 );
setEffMoveKey( spep_0 + 122, ctba, -46.9, 396.2 , 0 );


setEffScaleKey( spep_0 + 108, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 + 110, ctba, 2.26, 2.26 );
setEffScaleKey( spep_0 + 112, ctba, 1.9, 1.9 );
setEffScaleKey( spep_0 + 114, ctba, 1.55, 1.55 );
setEffScaleKey( spep_0 + 122, ctba, 1.55, 1.55 );


setEffRotateKey( spep_0 + 108, ctba, -9.7 );
setEffRotateKey( spep_0 + 110, ctba, -17.1 );
setEffRotateKey( spep_0 + 112, ctba, -13.4 );
setEffRotateKey( spep_0 + 114, ctba, -9.7 );
setEffRotateKey( spep_0 + 122, ctba, -9.7 );


setEffAlphaKey( spep_0 + 108, ctba, 0 );
setEffAlphaKey( spep_0 + 109, ctba, 255 );
setEffAlphaKey( spep_0 + 110, ctba, 255 );
setEffAlphaKey( spep_0 + 118, ctba, 255 );
setEffAlphaKey( spep_0 + 120, ctba, 128 );
setEffAlphaKey( spep_0 + 122, ctba, 0 );


ctba2 = entryEffectLife( spep_0 + 118, 10022, 14, 0x100, -1, 0, 49.7, 370.5 );

setEffMoveKey( spep_0 + 118, ctba2, 189.8, 248 , 0 );
setEffMoveKey( spep_0 + 122, ctba2, 189.7, 248.1 , 0 );
setEffMoveKey( spep_0 + 124, ctba2, 186.8, 256.8 , 0 );
setEffMoveKey( spep_0 + 126, ctba2, 189.6, 248.2 , 0 );
setEffMoveKey( spep_0 + 128, ctba2, 187.8, 255.4 , 0 );
setEffMoveKey( spep_0 + 130, ctba2, 187.8, 255.4 , 0 );
setEffMoveKey( spep_0 + 132, ctba2, 189.7, 248.2 , 0 );


setEffScaleKey( spep_0 + 118, ctba2, 1.15, 1.15 );
setEffScaleKey( spep_0 + 122, ctba2, 2.26, 2.26 );
setEffScaleKey( spep_0 + 124, ctba2, 1.9, 1.9 );
setEffScaleKey( spep_0 + 126, ctba2, 1.55, 1.55 );
setEffScaleKey( spep_0 + 132, ctba2, 1.55, 1.55 );


setEffRotateKey( spep_0 + 118, ctba2, 33.8 );
setEffRotateKey( spep_0 + 122, ctba2, 26.3 );
setEffRotateKey( spep_0 + 124, ctba2, 30.1 );
setEffRotateKey( spep_0 + 126, ctba2, 33.8 );
setEffRotateKey( spep_0 + 132, ctba2, 33.8 );


setEffAlphaKey( spep_0 + 120, ctba2, 255 );
setEffAlphaKey( spep_0 + 126, ctba2, 255 );
setEffAlphaKey( spep_0 + 128, ctba2, 255 );
setEffAlphaKey( spep_0 + 130, ctba2, 128 );
setEffAlphaKey( spep_0 + 132, ctba2, 0 );



entryFade(spep_0 + 144, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


entryFade(spep_0 + 182, 4, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_0, 0, 186, 0, 0, 0, 0, 180);


--SE
playSe( spep_0+24, SE_04); --ゴゴゴ
playSe( spep_0+108, 1003);--ポーズ1
playSe( spep_0+118, 1004);--ポーズ2
playSe( spep_0+148, 1013);--ポーズ2

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_1 = spep_0+186;

--***フェードと背景***

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,  1507,  0, -1, 0, 0, 0);  -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);             -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                 -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_1, shuchusen2, 0, 0);
setEffMoveKey( spep_1+90, shuchusen2, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.6, 1.6);
setEffScaleKey( spep_1+90, shuchusen2, 1.6, 1.6);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffRotateKey( spep_1+90, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffAlphaKey( spep_1+90, shuchusen2, 255);

entryFade( spep_1 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


------------------------------------------------------
-- ゴースト飛ぶシーン
------------------------------------------------------

spep_2 = spep_1+90;

ghost = entryEffectLife( spep_2, SP_12, 96,0x100, -1, 0, 0, 0);

setEffScaleKey( spep_2, ghost, 1.0, 1.0);
setEffScaleKey( spep_2+96, ghost, 1.0, 1.0);

setEffMoveKey( spep_2, ghost, 0, 0);
setEffMoveKey( spep_2+96, ghost, 0, 0);

setEffRotateKey( spep_2, ghost, 0);
setEffRotateKey( spep_2+96, ghost, 0);

setEffAlphaKey( spep_2, ghost, 255);
setEffAlphaKey( spep_2+96, ghost, 255);

setEffAlphaKey( spep_2, ghost, 0);
setEffAlphaKey( spep_2+96, ghost, 0);



yoko = entryEffectLife( spep_2, 914, 56, 0x80, -1, 0, 0, 0);--横線


setEffMoveKey( spep_2 + 0, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 2, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 4, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 6, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 8, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 10, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 12, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 14, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 16, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 18, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 20, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 22, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 24, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 26, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 28, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 30, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 32, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 34, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 36, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 38, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 40, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 42, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 44, yoko, -1356.3, -20 , 0 );
-- setEffMoveKey( spep_2 + 46, yoko, -1740.1, -20 , 0 );
setEffMoveKey( spep_2 + 48, yoko, 178.8, -20 , 0 );
setEffMoveKey( spep_2 + 50, yoko, -205, -20 , 0 );
setEffMoveKey( spep_2 + 52, yoko, -588.8, -20 , 0 );
-- setEffMoveKey( spep_2 + 54, yoko, -972.5, -20 , 0 );
-- setEffMoveKey( spep_2 + 56, yoko, -1356.3, -20 , 0 );


setEffScaleKey( spep_2 + 0, yoko, 3.46, 1.35 );
setEffScaleKey( spep_2 + 56, yoko, 3.46, 1.35 );


setEffRotateKey( spep_2 + 0, yoko, 0 );
setEffRotateKey( spep_2 + 56, yoko, 0 );


setEffAlphaKey( spep_2 + 0, yoko, 255 );
setEffAlphaKey( spep_2 + 56, yoko, 255 );


shuchusen3 = entryEffectLife( spep_2, 906, 96, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 2, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );


setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6);
--setEffScaleKey( spep_2 + 2, shuchusen3, 1.2, 1.2 );
--setEffScaleKey( spep_2 + 82, shuchusen3, 1.2, 1.2 );
--etEffScaleKey( spep_2 + 84, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.6, 1.6 );


setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );


setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );



entryFade( spep_2+54, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


entryFade( spep_2+92, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_2, 0, 96, 0, 0, 0, 0, 180); -- ベース暗め　背景

--SE
playSe( spep_2+0, 44); --近くやつ
playSe( spep_2+54, SE_04); --近くやつ

--------------------------------------------------------------------
-- ゴースト気弾
--------------------------------------------------------------------

spep_3 = spep_2+96;


ghost_kidan1 = entryEffectLife( spep_3, SP_13,196, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_3, ghost_kidan1, 1.0, 1.0);
setEffScaleKey( spep_3+196, ghost_kidan1, 1.0, 1.0);

setEffMoveKey( spep_3, ghost_kidan1, 0, 0);
setEffMoveKey( spep_3+196, ghost_kidan1, 0, 0);

setEffRotateKey( spep_3, ghost_kidan1, 0);
setEffRotateKey( spep_3+196, ghost_kidan1, 0);

setEffAlphaKey( spep_3, ghost_kidan1, 255);
setEffAlphaKey( spep_3+196, ghost_kidan1, 255);

setEffAlphaKey( spep_3, ghost_kidan1, 0);
setEffAlphaKey( spep_3+196, ghost_kidan1, 0);

ryusen = entryEffectLife( spep_3, 921, 150, 0x80, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_3 + 0, ryusen, 23.5, 12.9 , 0 );
setEffMoveKey( spep_3 + 150, ryusen, 23.5, 12.9 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 1.89, 1.42 );
setEffScaleKey( spep_3 + 150, ryusen, 1.89, 1.42 );

setEffRotateKey( spep_3 + 0, ryusen, 318 );
setEffRotateKey( spep_3 + 150, ryusen, 318 );

setEffAlphaKey( spep_3 + 0, ryusen, 255 );
setEffAlphaKey( spep_3 + 138, ryusen, 255 );
setEffAlphaKey( spep_3 + 146, ryusen, 180 );
setEffAlphaKey( spep_3 + 150, ryusen, 0 );


ghost_kidan2 = entryEffectLife( spep_3, SP_14,196, 0x80, -1, 0, 0, 0);

setEffScaleKey( spep_3, ghost_kidan2, 1.0, 1.0);
setEffScaleKey( spep_3+196, ghost_kidan2, 1.0, 1.0);

setEffMoveKey( spep_3, ghost_kidan2, 0, 0);
setEffMoveKey( spep_3+196, ghost_kidan2, 0, 0);

setEffRotateKey( spep_3, ghost_kidan2, 0);
setEffRotateKey( spep_3+196, ghost_kidan2, 0);

setEffAlphaKey( spep_3, ghost_kidan2, 255);
setEffAlphaKey( spep_3+196, ghost_kidan2, 255);

setEffAlphaKey( spep_3, ghost_kidan2, 0);
setEffAlphaKey( spep_3+196, ghost_kidan2, 0);




shuchusen4 = entryEffectLife( spep_3, 906, 196, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 196, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.32, 1.92 );
setEffScaleKey( spep_3 + 196, shuchusen4, 1.32, 1.92 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 196, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 196, shuchusen4, 255 );


ctbikkuri = entryEffectLife( spep_3 + 24, 10001, 22, 0x100, -1, 0, 18.6, 329.5 );

setEffMoveKey( spep_3 + 24, ctbikkuri, 18.6, 329.5 , 0 );
setEffMoveKey( spep_3 + 26, ctbikkuri, 9.5, 361.5 , 0 );
setEffMoveKey( spep_3 + 28, ctbikkuri, 2.5, 350.2 , 0 );
setEffMoveKey( spep_3 + 30, ctbikkuri, 18.3, 328.5 , 0 );
setEffMoveKey( spep_3 + 32, ctbikkuri, 8.1, 338.1 , 0 );
setEffMoveKey( spep_3 + 34, ctbikkuri, 17.2, 339 , 0 );
setEffMoveKey( spep_3 + 36, ctbikkuri, 7, 348.5 , 0 );
setEffMoveKey( spep_3 + 38, ctbikkuri, 16.1, 349.4 , 0 );
setEffMoveKey( spep_3 + 40, ctbikkuri, 15.5, 354.6 , 0 );
setEffMoveKey( spep_3 + 42, ctbikkuri, 5.9, 359 , 0 );
setEffMoveKey( spep_3 + 44, ctbikkuri, 15.5, 354.6 , 0 );
setEffMoveKey( spep_3 + 46, ctbikkuri, 15.5, 354.6 , 0 );


--setEffScaleKey( spep_3 + 26, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 24, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 26, ctbikkuri, 3.41, 3.41 );
setEffScaleKey( spep_3 + 28, ctbikkuri, 2.95, 2.95 );
setEffScaleKey( spep_3 + 30, ctbikkuri, 2.49, 2.49 );
setEffScaleKey( spep_3 + 46, ctbikkuri, 2.49, 2.49 );


setEffRotateKey( spep_3 + 24, ctbikkuri, -20.7 );
setEffRotateKey( spep_3 + 46, ctbikkuri, -20.7 );


setEffAlphaKey( spep_3 + 24, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 30, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 42, ctbikkuri, 170 );
setEffAlphaKey( spep_3 + 44, ctbikkuri, 85 );
setEffAlphaKey( spep_3 + 46, ctbikkuri, 0 );


ctzuo = entryEffectLife( spep_3 + 64, 10012, 32, 0x100, -1, 0, -172.5, 379.7 );


setEffMoveKey( spep_3 + 64, ctzuo, -172.5, 379.7 , 0 );
setEffMoveKey( spep_3 + 66, ctzuo, -161.2, 382.1 , 0 );
setEffMoveKey( spep_3 + 68, ctzuo, -167.4, 386.2 , 0 );
setEffMoveKey( spep_3 + 70, ctzuo, -164.9, 389.5 , 0 );
setEffMoveKey( spep_3 + 72, ctzuo, -146.9, 388.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzuo, -164.2, 390.4 , 0 );
setEffMoveKey( spep_3 + 76, ctzuo, -145.1, 388.9 , 0 );
setEffMoveKey( spep_3 + 78, ctzuo, -163.6, 391.2 , 0 );
setEffMoveKey( spep_3 + 80, ctzuo, -143.4, 389.6 , 0 );
setEffMoveKey( spep_3 + 82, ctzuo, -162.9, 392 , 0 );
setEffMoveKey( spep_3 + 84, ctzuo, -141.7, 390.3 , 0 );
setEffMoveKey( spep_3 + 86, ctzuo, -162.3, 392.8 , 0 );
setEffMoveKey( spep_3 + 88, ctzuo, -140, 391 , 0 );
setEffMoveKey( spep_3 + 90, ctzuo, -160.5, 395.1 , 0 );
setEffMoveKey( spep_3 + 92, ctzuo, -132.3, 394.3 , 0 );
setEffMoveKey( spep_3 + 94, ctzuo, -157.6, 398.9 , 0 );
setEffMoveKey( spep_3 + 96, ctzuo, -156.2, 400.7 , 0 );


setEffScaleKey( spep_3 + 64, ctzuo, 0.55, 0.55 );
setEffScaleKey( spep_3 + 66, ctzuo, 1.06, 1.06 );
setEffScaleKey( spep_3 + 68, ctzuo, 1.57, 1.57 );
setEffScaleKey( spep_3 + 70, ctzuo, 2.08, 2.08 );
setEffScaleKey( spep_3 + 72, ctzuo, 2.15, 2.15 );
setEffScaleKey( spep_3 + 74, ctzuo, 2.21, 2.21 );
setEffScaleKey( spep_3 + 76, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_3 + 78, ctzuo, 2.34, 2.34 );
setEffScaleKey( spep_3 + 80, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 82, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3 + 84, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_3 + 86, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_3 + 88, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_3 + 90, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_3 + 92, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_3 + 94, ctzuo, 3.53, 3.53 );
setEffScaleKey( spep_3 + 96, ctzuo, 3.82, 3.82 );

setEffRotateKey( spep_3 + 64, ctzuo, -12 );
setEffRotateKey( spep_3 + 96, ctzuo, -12 );

setEffAlphaKey( spep_3 + 64, ctzuo, 255 );
setEffAlphaKey( spep_3 + 88, ctzuo, 255 );
setEffAlphaKey( spep_3 + 90, ctzuo, 191 );
setEffAlphaKey( spep_3 + 92, ctzuo, 128 );
setEffAlphaKey( spep_3 + 94, ctzuo, 64 );
setEffAlphaKey( spep_3 + 96, ctzuo, 0 );


entryFadeBg( spep_3, 0, 198, 0, 0, 0, 0, 180); -- ベース暗め　背景

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 106, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 24, 1, 104 );

setMoveKey( spep_3 + 0, 1, -90.4, -142.8 , 0 );
setMoveKey( spep_3 + 2, 1, -81, -129.2 , 0 );
setMoveKey( spep_3 + 4, 1, -65, -105.4 , 0 );
setMoveKey( spep_3 + 6, 1, -42, -71.4 , 0 );
setMoveKey( spep_3 + 8, 1, -11.9, -27.3 , 0 );
setMoveKey( spep_3 + 10, 1, 24.8, 27 , 0 );
setMoveKey( spep_3 + 12, 1, 27, 31.6 , 0 );
setMoveKey( spep_3 + 14, 1, 29.2, 36.2 , 0 );
setMoveKey( spep_3 + 16, 1, 31.3, 40.7 , 0 );
setMoveKey( spep_3 + 18, 1, 33.5, 45.3 , 0 );
setMoveKey( spep_3 + 20, 1, 35.7, 49.9 , 0 );
setMoveKey( spep_3 + 22, 1, 37.9, 54.5 , 0 );
--setMoveKey( spep_3 + 24, 1, 40, 59.1 , 0 );
setMoveKey( spep_3 + 24, 1, 71.6, 65.6 , 0 );
setMoveKey( spep_3 + 28, 1, 73.5, 70.2 , 0 );
setMoveKey( spep_3 + 30, 1, 75.3, 74.8 , 0 );
setMoveKey( spep_3 + 32, 1, 77.2, 79.3 , 0 );
setMoveKey( spep_3 + 34, 1, 79.1, 83.9 , 0 );
setMoveKey( spep_3 + 36, 1, 80.9, 88.4 , 0 );
setMoveKey( spep_3 + 38, 1, 82.8, 93 , 0 );
setMoveKey( spep_3 + 40, 1, 84.7, 97.5 , 0 );

setScaleKey( spep_3 + 0, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 2, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 10, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 14, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 18, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 22, 1, 1.02, 1.02 );
--setScaleKey( spep_3 + 25, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 38, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 40, 1, 1.01, 1.01 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 22, 1, 0 );
setRotateKey( spep_3 + 23, 1, 0 );
setRotateKey( spep_3 + 24, 1, -9.2 );
setRotateKey( spep_3 + 40, 1, -9.2 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 84.7, 97.5, 0 );
setScaleKey(SP_dodge , 1, 1.01, 1.01  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 84.7, 97.5, 0 );
setScaleKey(SP_dodge+8 , 1, 1.01, 1.01  );
setRotateKey(SP_dodge+8,   1, -9.2);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.01, 1.01 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.01, 1.01);
setRotateKey(SP_dodge+10,   1, -9.2);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------
setMoveKey( spep_3 + 42, 1, 86.5, 102.1 , 0 );
setMoveKey( spep_3 + 44, 1, 88.4, 106.6 , 0 );
setMoveKey( spep_3 + 46, 1, 90.3, 111.2 , 0 );
setMoveKey( spep_3 + 48, 1, 92.1, 115.8 , 0 );
setMoveKey( spep_3 + 50, 1, 94, 120.3 , 0 );
setMoveKey( spep_3 + 52, 1, 95.9, 124.9 , 0 );
setMoveKey( spep_3 + 54, 1, 97.7, 129.4 , 0 );
setMoveKey( spep_3 + 56, 1, 99.6, 134 , 0 );
setMoveKey( spep_3 + 58, 1, 101.5, 138.5 , 0 );
setMoveKey( spep_3 + 60, 1, 103.4, 143.1 , 0 );
setMoveKey( spep_3 + 62, 1, 105.2, 147.7 , 0 );
setMoveKey( spep_3 + 64, 1, 107.1, 152.2 , 0 );
setMoveKey( spep_3 + 66, 1, 106.1, 148.2 , 0 );
setMoveKey( spep_3 + 68, 1, 105.6, 150.4 , 0 );
setMoveKey( spep_3 + 70, 1, 100.6, 147.1 , 0 );
setMoveKey( spep_3 + 72, 1, 101.4, 145.4 , 0 );
setMoveKey( spep_3 + 74, 1, 97.7, 138.9 , 0 );
setMoveKey( spep_3 + 76, 1, 95.8, 138.5 , 0 );
setMoveKey( spep_3 + 78, 1, 88.8, 133.3 , 0 );
setMoveKey( spep_3 + 80, 1, 88.7, 129.9 , 0 );
setMoveKey( spep_3 + 82, 1, 83.1, 121 , 0 );
setMoveKey( spep_3 + 84, 1, 80, 119.5 , 0 );
setMoveKey( spep_3 + 86, 1, 70.7, 112.2 , 0 );
setMoveKey( spep_3 + 88, 1, 69.8, 107.3 , 0 );
setMoveKey( spep_3 + 90, 1, 62.5, 95.6 , 0 );
setMoveKey( spep_3 + 92, 1, 58, 93.2 , 0 );
setMoveKey( spep_3 + 94, 1, 46.3, 83.7 , 0 );
setMoveKey( spep_3 + 96, 1, 44.8, 77.4 , 0 );
setMoveKey( spep_3 + 98, 1, 35.7, 64.7 , 0 );
setMoveKey( spep_3 + 100, 1, 30.1, 59.6 , 0 );
setMoveKey( spep_3 + 102, 1, 20, 45.6 , 0 );
setMoveKey( spep_3 + 104, 1, 13.8, 40.1 , 0 );
setMoveKey( spep_3 + 106, 1, 2.7, 22.3 , 0 );

setScaleKey( spep_3 + 42, 1, 1, 1 );
setScaleKey( spep_3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 46, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 48, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 50, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 52, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 56, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 58, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 60, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 62, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 66, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 68, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 70, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 76, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 78, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 80, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 82, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 84, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 88, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 92, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 94, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 96, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 98, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 100, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 102, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 104, 1, 2.02, 2.02 );
setScaleKey( spep_3 + 106, 1, 2.12, 2.12 );

setRotateKey( spep_3 + 106, 1, -9.2 );

ctdokon = entryEffectLife( spep_3 + 116, 10018, 38, 0x100, -1, 0, -5.2, 393.7 );

setEffMoveKey( spep_3 + 116, ctdokon, -5.2, 393.7 , 0 );
setEffMoveKey( spep_3 + 120, ctdokon, -3.9, 392.8 , 0 );
setEffMoveKey( spep_3 + 122, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 124, ctdokon, -6.5, 394.2 , 0 );
setEffMoveKey( spep_3 + 126, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 128, ctdokon, -6.1, 394 , 0 );
setEffMoveKey( spep_3 + 130, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 132, ctdokon, -6, 393.9 , 0 );
setEffMoveKey( spep_3 + 134, ctdokon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 136, ctdokon, -6, 393.8 , 0 );
setEffMoveKey( spep_3 + 138, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 140, ctdokon, -5.9, 393.8 , 0 );
setEffMoveKey( spep_3 + 142, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 144, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 146, ctdokon, -5.9, 393.7 , 0 );
setEffMoveKey( spep_3 + 148, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 150, ctdokon, -5.8, 393.7 , 0 );
setEffMoveKey( spep_3 + 152, ctdokon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 154, ctdokon, -5.8, 393.7 , 0 );


setEffScaleKey( spep_3 + 116, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_3 + 120, ctdokon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 122, ctdokon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 124, ctdokon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 126, ctdokon, 3.11, 3.11 );
setEffScaleKey( spep_3 + 128, ctdokon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 130, ctdokon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 132, ctdokon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 134, ctdokon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 136, ctdokon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 138, ctdokon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 140, ctdokon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 142, ctdokon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 144, ctdokon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 146, ctdokon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 148, ctdokon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 150, ctdokon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 152, ctdokon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 154, ctdokon, 2.46, 2.46 );
setEffScaleKey( spep_3 + 156, ctdokon, 2.45, 2.45 );

------------------------------------------------------------
setEffRotateKey( spep_3 + 116, ctdokon, -6.8 );
setEffRotateKey( spep_3 + 130, ctdokon, -6.8 );
setEffRotateKey( spep_3 + 132, ctdokon, -6.7 );
setEffRotateKey( spep_3 + 138, ctdokon, -6.7 );
setEffRotateKey( spep_3 + 140, ctdokon, -6.6 );
setEffRotateKey( spep_3 + 156, ctdokon, -6.6 );
------------------------------------------------------------

setEffAlphaKey( spep_3 + 116, ctdokon, 255 );
setEffAlphaKey( spep_3 + 144, ctdokon, 255 );
setEffAlphaKey( spep_3 + 146, ctdokon, 213 );
setEffAlphaKey( spep_3 + 148, ctdokon, 170 );
setEffAlphaKey( spep_3 + 150, ctdokon, 128 );
setEffAlphaKey( spep_3 + 152, ctdokon, 85 );
setEffAlphaKey( spep_3 + 154, ctdokon, 42 );
setEffAlphaKey( spep_3 + 156, ctdokon, 0 );


ctsyun = entryEffectLife( spep_3 + 156, 10011, 20, 0x100, -1, 0, -155.9, 202.7 );

setEffMoveKey( spep_3 + 156, ctsyun, -155.9, 202.7 , 0 );
setEffMoveKey( spep_3 + 164, ctsyun, -155.9, 202.7 , 0 );
setEffMoveKey( spep_3 + 166, ctsyun, -155.8, 202.6 , 0 );
setEffMoveKey( spep_3 + 170, ctsyun, -155.8, 202.6 , 0 );
setEffMoveKey( spep_3 + 172, ctsyun, -155.9, 202.6 , 0 );
setEffMoveKey( spep_3 + 174, ctsyun, -155.9, 202.6 , 0 );
setEffMoveKey( spep_3 + 176, ctsyun, -155.9, 202.7 , 0 );


setEffScaleKey( spep_3 + 156, ctsyun, 1.65, 1.65 );
setEffScaleKey( spep_3 + 162, ctsyun, 2.78, 2.78 );
setEffScaleKey( spep_3 + 164, ctsyun, 2.46, 2.46 );
setEffScaleKey( spep_3 + 166, ctsyun, 2.14, 2.14 );
setEffScaleKey( spep_3 + 168, ctsyun, 1.82, 1.82 );
setEffScaleKey( spep_3 + 170, ctsyun, 1.79, 1.79 );
setEffScaleKey( spep_3 + 172, ctsyun, 1.77, 1.77 );
setEffScaleKey( spep_3 + 174, ctsyun, 1.74, 1.74 );
setEffScaleKey( spep_3 + 176, ctsyun, 1.71, 1.71 );


setEffRotateKey( spep_3 + 156, ctsyun, 4.8 );
setEffRotateKey( spep_3 + 176, ctsyun, 4.8 );

setEffAlphaKey( spep_3 + 156, ctsyun, 0 );
setEffAlphaKey( spep_3 + 157, ctsyun, 255 );
setEffAlphaKey( spep_3 + 158, ctsyun, 255 );
setEffAlphaKey( spep_3 + 168, ctsyun, 255 );
setEffAlphaKey( spep_3 + 170, ctsyun, 191 );
setEffAlphaKey( spep_3 + 172, ctsyun, 128 );
setEffAlphaKey( spep_3 + 174, ctsyun, 64 );
setEffAlphaKey( spep_3 + 176, ctsyun, 0 );



entryFade( spep_3+62, 0, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_3+100, 4, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_3+192, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade


--SE
playSe( spep_3+24, SE_03); --ため
playSe( spep_3+44, SE_03); --ため
playSe( spep_3+64, SE_06); --発射
playSe( spep_3+116, 1023); --爆発
playSe( spep_3+156, 43); --瞬間移動

----------------------------------------------------------------------------------------
-- 魔人ブウ構え〜放つ
----------------------------------------------------------------------------------------

spep_4 = spep_3+196;



buu_kidan1 = entryEffectLife( spep_4, SP_15,216, 0x100, -1, 0, 0, 0);

setEffScaleKey( spep_4, buu_kidan1, -1.0, 1.0);
setEffScaleKey( spep_4+88, buu_kidan1, -1.0, 1.0);
setEffScaleKey( spep_4+90, buu_kidan1, 1.0, 1.0);
setEffScaleKey( spep_4+216, buu_kidan1, 1.0, 1.0);

setEffMoveKey( spep_4, buu_kidan1, 0, 0);
setEffMoveKey( spep_4+216, buu_kidan1, 0, 0);

setEffRotateKey( spep_4, buu_kidan1, 0);
setEffRotateKey( spep_4+216, buu_kidan1, 0);

setEffAlphaKey( spep_4, buu_kidan1, 255);
setEffAlphaKey( spep_4+216, buu_kidan1, 255);

setEffAlphaKey( spep_4, buu_kidan1, 0);
setEffAlphaKey( spep_4+216, buu_kidan1, 0);

shuchusen5 = entryEffectLife( spep_4, 906, 216, 0x100, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 216, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.4, 1.75 );
setEffScaleKey( spep_4 + 216, shuchusen5, 1.4, 1.75 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 216, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 216, shuchusen5, 255 );


ryusen2 = entryEffectLife( spep_4 + 0, 923, 216, 0x80, -1, 0, 0, 0);--集中線

setEffMoveKey( spep_4 + 156, ryusen2, 7.2, 4.1 , 0 );
setEffMoveKey( spep_4 + 216, ryusen2, 7.2, 4.1 , 0 );

setEffScaleKey( spep_4 + 156, ryusen2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 216, ryusen2, 1.0, 1.0 );

setEffRotateKey( spep_4 + 156, ryusen2,0 );
setEffRotateKey( spep_4 + 216, ryusen2, 0 );


setEffAlphaKey( spep_4 + 0, ryusen2, 0 );
setEffAlphaKey( spep_4 + 154, ryusen2, 0 );
setEffAlphaKey( spep_4 + 155, ryusen2, 0 );
setEffAlphaKey( spep_4 + 156, ryusen2, 255 );
setEffAlphaKey( spep_4 + 216, ryusen2, 255 );

buu_kidan2 = entryEffectLife( spep_4, SP_16,216, 0x80, -1, 0, 0, 0);

setEffScaleKey( spep_4, buu_kidan2, 1.0, 1.0);
setEffScaleKey( spep_4+216, buu_kidan2, 1.0, 1.0);

setEffMoveKey( spep_4, buu_kidan2, 0, 0);
setEffMoveKey( spep_4+216, buu_kidan2, 0, 0);

setEffRotateKey( spep_4, buu_kidan2, 0);
setEffRotateKey( spep_4+216, buu_kidan2, 0);

setEffAlphaKey( spep_4, buu_kidan2, 255);
setEffAlphaKey( spep_4+216, buu_kidan2, 255);

setEffAlphaKey( spep_4, buu_kidan2, 0);
setEffAlphaKey( spep_4+216, buu_kidan2, 0);



setDisp(spep_4+160,1,1);
setDisp(spep_4+218,1,0);
changeAnime(spep_4+160,1,106);

setMoveKey( spep_4 + 160, 1, -32.4, -94.7 , 0 );
setMoveKey( spep_4 + 162, 1, -36.2, -68.5 , 0 );
setMoveKey( spep_4 + 164, 1, -29.1, -56.2 , 0 );
setMoveKey( spep_4 + 166, 1, -43.4, -30.7 , 0 );
setMoveKey( spep_4 + 168, 1, -25.9, -18.3 , 0 );
setMoveKey( spep_4 + 170, 1, -27.2, 11.1 , 0 );
setMoveKey( spep_4 + 172, 1, -26.8, 7 , 0 );
setMoveKey( spep_4 + 174, 1, -29.3, 44.4 , 0 );
setMoveKey( spep_4 + 176, 1, -31.7, 51.8 , 0 );
setMoveKey( spep_4 + 178, 1, -20.5, 82.4 , 0 );
setMoveKey( spep_4 + 180, 1, -20.7, 84 , 0 );
setMoveKey( spep_4 + 182, 1, -22.6, 101.5 , 0 );
setMoveKey( spep_4 + 184, 1, -23.6, 95.9 , 0 );
setMoveKey( spep_4 + 186, 1, -17, 111.2 , 0 );
setMoveKey( spep_4 + 188, 1, -18.4, 99.6 , 0 );
setMoveKey( spep_4 + 190, 1, -27.9, 96.5 , 0 );
setMoveKey( spep_4 + 192, 1, -17.3, 107.2 , 0 );
setMoveKey( spep_4 + 194, 1, -30.6, 113.7 , 0 );
setMoveKey( spep_4 + 196, 1, -16.2, 114.6 , 0 );
setMoveKey( spep_4 + 198, 1, -25.2, 111 , 0 );
setMoveKey( spep_4 + 200, 1, -19.2, 109.9 , 0 );
setMoveKey( spep_4 + 202, 1, -22.3, 113.7 , 0 );
setMoveKey( spep_4 + 204, 1, -18.1, 117 , 0 );
setMoveKey( spep_4 + 206, 1, -28.6, 122.9 , 0 );
setMoveKey( spep_4 + 208, 1, -17.1, 124 , 0 );
setMoveKey( spep_4 + 210, 1, -20.1, 127.2 , 0 );
setMoveKey( spep_4 + 212, 1, -16.1, 130.9 , 0 );
setMoveKey( spep_4 + 214, 1, -26.1, 136.2 , 0 );
setMoveKey( spep_4 + 216, 1, -15.1, 137.6 , 0 );
setMoveKey( spep_4 + 218, 1, -18, 140 , 0 );

setScaleKey( spep_4 + 160, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 162, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 164, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 166, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 170, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 172, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 174, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 176, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 178, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 180, 1, 1.12, 1.12 );
setScaleKey( spep_4 + 182, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 184, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 186, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 188, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 190, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 192, 1, 1, 1 );
setScaleKey( spep_4 + 194, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 196, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 198, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 200, 1, 0.92, 0.92 );
setScaleKey( spep_4 + 202, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 204, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 206, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 208, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 210, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 212, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 214, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 216, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 218, 1, 0.74, 0.74 );

setRotateKey( spep_4 + 160, 1, -16.6 );
setRotateKey( spep_4 + 218, 1, -16.6 );








yoko_2 = entryEffectLife( spep_4+88, 914, 66, 0x80, -1, 0, 02, 0);--横線

--[[
setEffMoveKey( spep_4 + 88, yoko_2, -572, 307.5 , 0 );
setEffMoveKey( spep_4 + 92, yoko_2, -1052.3, 564 , 0 );
setEffMoveKey( spep_4 + 94, yoko_2, -1532.6, 820.4 , 0 );
setEffMoveKey( spep_4 + 96, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 98, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 100, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 102, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 104, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 106, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 108, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 110, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 112, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 114, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 116, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 118, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 120, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 122, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 124, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 126, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 128, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 130, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 132, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 134, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 136, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 138, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 140, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 142, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 144, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 146, yoko_2, 388.6, -205.4 , 0 );
setEffMoveKey( spep_4 + 148, yoko_2, -91.7, 51.1 , 0 );
setEffMoveKey( spep_4 + 150, yoko_2, -572, 307.5 , 0 );
-- setEffMoveKey( spep_4 + 152, yoko_2, -1052.3, 564 , 0 );
-- setEffMoveKey( spep_4 + 154, yoko_2, -1532.6, 820.4 , 0 );
-- setEffMoveKey( spep_4 + 156, yoko_2, -2012.9, 1076.9 , 0 );
setEffMoveKey( spep_4 + 144, yoko_2, 388.6, -205.4 , 0 );
]]

setEffMoveKey( spep_4 + 88, yoko_2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 154, yoko_2,0, 0 , 0 );

setEffScaleKey( spep_4 + 88, yoko_2, 4.91, 1.46 );
setEffScaleKey( spep_4 + 154, yoko_2, 4.91, 1.46 );


setEffRotateKey( spep_4 + 88, yoko_2, 28.1 );
setEffRotateKey( spep_4 + 154, yoko_2, 28.1 );


setEffAlphaKey( spep_4 + 88, yoko_2, 255 );
setEffAlphaKey( spep_4 + 154, yoko_2, 255 );


ctzuo2 = entryEffectLife( spep_4 + 96, 10012, 48, 0x100, -1, 0, 135.3, 350.3 );

setEffMoveKey( spep_4 + 96, ctzuo2, 135.3, 350.3 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo2, 143.8, 345.4 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo2, 141.4, 351.6 , 0 );
setEffMoveKey( spep_4 + 106, ctzuo2, 154.3, 342.2 , 0 );
setEffMoveKey( spep_4 + 108, ctzuo2, 147.5, 353 , 0 );
setEffMoveKey( spep_4 + 110, ctzuo2, 160.2, 340.5 , 0 );
setEffMoveKey( spep_4 + 112, ctzuo2, 148.2, 353.1 , 0 );
setEffMoveKey( spep_4 + 114, ctzuo2, 161.4, 340.1 , 0 );
setEffMoveKey( spep_4 + 116, ctzuo2, 148.9, 353.3 , 0 );
setEffMoveKey( spep_4 + 118, ctzuo2, 162.7, 339.7 , 0 );
setEffMoveKey( spep_4 + 120, ctzuo2, 149.6, 353.4 , 0 );
setEffMoveKey( spep_4 + 122, ctzuo2, 163.9, 339.4 , 0 );
setEffMoveKey( spep_4 + 124, ctzuo2, 150.3, 353.6 , 0 );
setEffMoveKey( spep_4 + 126, ctzuo2, 165.1, 339 , 0 );
setEffMoveKey( spep_4 + 128, ctzuo2, 151.1, 353.7 , 0 );
setEffMoveKey( spep_4 + 130, ctzuo2, 166.4, 338.6 , 0 );
setEffMoveKey( spep_4 + 132, ctzuo2, 151.8, 353.9 , 0 );
setEffMoveKey( spep_4 + 134, ctzuo2, 167.6, 338.2 , 0 );
setEffMoveKey( spep_4 + 136, ctzuo2, 154, 354.4 , 0 );
setEffMoveKey( spep_4 + 138, ctzuo2, 174, 336.3 , 0 );
setEffMoveKey( spep_4 + 140, ctzuo2, 157.7, 355.2 , 0 );
setEffMoveKey( spep_4 + 142, ctzuo2, 180.4, 334.4 , 0 );
setEffMoveKey( spep_4 + 144, ctzuo2, 183.6, 333.4 , 0 );

setEffScaleKey( spep_4 + 96, ctzuo2, 0.55, 0.55 );
setEffScaleKey( spep_4 + 102, ctzuo2, 0.93, 0.93 );
setEffScaleKey( spep_4 + 104, ctzuo2, 1.32, 1.32 );
setEffScaleKey( spep_4 + 106, ctzuo2, 1.7, 1.7 );
setEffScaleKey( spep_4 + 108, ctzuo2, 2.08, 2.08 );
setEffScaleKey( spep_4 + 110, ctzuo2, 2.13, 2.13 );
setEffScaleKey( spep_4 + 112, ctzuo2, 2.17, 2.17 );
setEffScaleKey( spep_4 + 114, ctzuo2, 2.22, 2.22 );
setEffScaleKey( spep_4 + 116, ctzuo2, 2.26, 2.26 );
setEffScaleKey( spep_4 + 118, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_4 + 120, ctzuo2, 2.35, 2.35 );
setEffScaleKey( spep_4 + 122, ctzuo2, 2.39, 2.39 );
setEffScaleKey( spep_4 + 124, ctzuo2, 2.44, 2.44 );
setEffScaleKey( spep_4 + 126, ctzuo2, 2.48, 2.48 );
setEffScaleKey( spep_4 + 128, ctzuo2, 2.53, 2.53 );
setEffScaleKey( spep_4 + 130, ctzuo2, 2.57, 2.57 );
setEffScaleKey( spep_4 + 132, ctzuo2, 2.62, 2.62 );
setEffScaleKey( spep_4 + 134, ctzuo2, 2.66, 2.66 );
setEffScaleKey( spep_4 + 136, ctzuo2, 2.89, 2.89 );
setEffScaleKey( spep_4 + 138, ctzuo2, 3.13, 3.13 );
setEffScaleKey( spep_4 + 140, ctzuo2, 3.36, 3.36 );
setEffScaleKey( spep_4 + 142, ctzuo2, 3.59, 3.59 );
setEffScaleKey( spep_4 + 144, ctzuo2, 3.82, 3.82 );

setEffRotateKey( spep_4 + 96, ctzuo2, 27.7 );
setEffRotateKey( spep_4 + 144, ctzuo2, 27.7 );

setEffAlphaKey( spep_4 + 96, ctzuo2, 0 );
setEffAlphaKey( spep_4 + 97, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 98, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 134, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 136, ctzuo2, 204 );
setEffAlphaKey( spep_4 + 138, ctzuo2, 153 );
setEffAlphaKey( spep_4 + 140, ctzuo2, 102 );
setEffAlphaKey( spep_4 + 142, ctzuo2, 51 );
setEffAlphaKey( spep_4 + 144, ctzuo2, 0 );

setEffShake(96,ctzuo2,48,15);

ctzudodo = entryEffectLife( spep_4 + 158, 10014, 60, 0x100, -1, 0, 11.5, 373.1 );

setEffMoveKey( spep_4 + 158, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 162, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 164, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 166, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 168, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 170, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 172, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 174, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 176, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 178, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 180, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 182, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 184, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 186, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 188, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 190, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 192, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 194, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 196, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 198, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 200, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 202, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 204, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 206, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 208, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 210, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 212, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 214, ctzudodo, 13.4, 350.6 , 0 );
setEffMoveKey( spep_4 + 216, ctzudodo, 11.5, 373.1 , 0 );
setEffMoveKey( spep_4 + 218, ctzudodo, 13.4, 350.6 , 0 );


setEffScaleKey( spep_4 + 158, ctzudodo, 2.53, 2.53 );
setEffScaleKey( spep_4 + 218, ctzudodo, 2.53, 2.53 );

------------------------------------------------------------
setEffRotateKey( spep_4 + 158, ctzudodo, -52.3 );
setEffRotateKey( spep_4 + 218, ctzudodo, -52.3 );
------------------------------------------------------------

setEffAlphaKey( spep_4 + 158, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 218, ctzudodo, 255 );


entryFade( spep_4+84, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_4+152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade

entryFade( spep_4+210, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);   -- white fade
entryFadeBg( spep_4, 0, 216, 0, 0, 0, 0, 180); -- ベース暗め　背景
--SE
playSe( spep_4, SE_03); --ため
playSe( spep_4+20, SE_03); --ため
playSe( spep_4+40, SE_03); --ため
playSe( spep_4+60, SE_03); --ため
playSe( spep_4+80, SE_03); --ため
playSe( spep_4+96, SE_06); --発射
playSe( spep_4+158, SE_07); --伸びる

-- ------------------------------------------------------
-- -- Scene06 ギャン
-- ------------------------------------------------------
spep_5 = spep_4+216;

entryFade(spep_5+40,16,6,0,255,255,255,255);
entryFadeBg(spep_5,0,58,0,10,10,10,255);

GyanEff = entryEffectLife( spep_5, 190000, 58, 0x80 , -1, 0, 0, 0);
setEffMoveKey( spep_5, GyanEff, 0, 0, 0);
setEffScaleKey( spep_5, GyanEff, 1.0, 1.0);
setEffAlphaKey( spep_5, GyanEff, 255);

-- 書き文字　ギャン 10006
ctGyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 );
setEffMoveKey( spep_5 + 0, ctGyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctGyan, 2.2, 2.2 );
setEffScaleKey( spep_5 + 2, ctGyan, 2.4, 2.4 );
setEffScaleKey( spep_5 + 4, ctGyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 6, ctGyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 8, ctGyan, 3, 3 );
setEffScaleKey( spep_5 + 10, ctGyan, 3.01, 3.01 );
setEffScaleKey( spep_5 + 12, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_5 + 14, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_5 + 16, ctGyan, 3.03, 3.03 );
setEffScaleKey( spep_5 + 18, ctGyan, 3.04, 3.04 );
setEffScaleKey( spep_5 + 20, ctGyan, 3.05, 3.05 );
setEffScaleKey( spep_5 + 22, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_5 + 24, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_5 + 26, ctGyan, 3.07, 3.07 );
setEffScaleKey( spep_5 + 28, ctGyan, 3.08, 3.08 );
setEffScaleKey( spep_5 + 30, ctGyan, 3.09, 3.09 );
setEffScaleKey( spep_5 + 32, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 34, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 36, ctGyan, 3.11, 3.11 );
setEffScaleKey( spep_5 + 38, ctGyan, 3.12, 3.12 );
setEffScaleKey( spep_5 + 40, ctGyan, 3.13, 3.13 );
setEffScaleKey( spep_5 + 42, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_5 + 44, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_5 + 46, ctGyan, 3.15, 3.15 );
setEffScaleKey( spep_5 + 48, ctGyan, 3.16, 3.16 );
setEffScaleKey( spep_5 + 50, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_5 + 52, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_5 + 54, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_5 + 56, ctGyan, 3.19, 3.19 );
setEffScaleKey( spep_5 + 58, ctGyan, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctGyan, 0 );
setEffRotateKey( spep_5 + 58, ctGyan, 0 );

setEffAlphaKey( spep_5 + 0, ctGyan, 255 );
setEffAlphaKey( spep_5 + 58, ctGyan, 255 );

playSe(spep_5,SE_09);

-- ------------------------------------------------------
-- 爆発
-- ------------------------------------------------------

spep_6 = spep_5+60;

bakuha = entryEffect(spep_6, 1925, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_6, bakuha, 0, 0, 0);
setEffMoveKey(spep_6+240, bakuha, 0, 0, 0);

setEffScaleKey(spep_6, bakuha, 1.0, 1.0);
setEffScaleKey(spep_6+240, bakuha, 1.0, 1.0);

setEffAlphaKey(spep_6, bakuha, 255);
setEffAlphaKey(spep_6+240, bakuha, 255);

setEffRotateKey(spep_6, bakuha, 0);
setEffRotateKey(spep_6+240, bakuha, 0);

shuchusen6 = entryEffectLife( spep_6, 906, 240, 0x100, -1, 0, 0, 0);  -- 集中線

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 240, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.43, 2.03 );
setEffScaleKey( spep_6 + 240, shuchusen6, 1.43, 2.03 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 240, shuchusen6, 180 );


setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 240, shuchusen6, 255 );

playSe(spep_6,1024);

------------------------------------------------------
-- 
------------------------------------------------------

-- ダメージ表示
dealDamage( spep_6+100);
entryFade( spep_6+220, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+230);


end


