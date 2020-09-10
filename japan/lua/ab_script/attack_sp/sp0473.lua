-- 人造人間21号(UR)：フォトンウェイブ sp0473 カードID = 1014650 sp_effect_a3_00049


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
SP_01 = 151903;--お菓子ビーム
SP_02 = 151904;--煙ナビ
SP_03 = 151905;--菓子捨て～気溜め
SP_04 = 151906;--なぎ払い
SP_05 = 151907;--大爆発


--敵側は味方側に1xをつけてます
SP_11 = 151908;--瞬移～菓子ビーム（敵）
SP_12 = 151909;--煙ナビ（敵）
SP_13 = 151910;--菓子捨て～気溜め（敵）
SP_14 = 151911;--なぎ払い（敵）
SP_15 = 151912;--大爆発（敵）


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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- お菓子ビーム
------------------------------------------------------

spep_0 = 0;
beam = entryEffectLife(spep_0, SP_01, 126, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_0, beam, 0, 0, 0);
setEffMoveKey(spep_0 + 126, beam, 0, 0, 0);

setEffScaleKey(spep_0, beam, 1.0, 1.0);
setEffScaleKey(spep_0 + 126, beam, 1.0, 1.0);

setEffAlphaKey(spep_0, beam, 255);
setEffAlphaKey(spep_0 + 126, beam, 255);

setEffRotateKey(spep_0, beam, 0);
setEffRotateKey(spep_0 + 126, beam, 0);


entryFade( spep_0 + 120, 4, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_0, 0, 126, 0, 0, 0, 0, 210); -- ベース暗め　背景




-- 敵の動き

setDisp( spep_0+20, 1, 1);
setDisp( spep_0+128, 1, 0);

changeAnime( spep_0, 1, 101);
changeAnime( spep_0+67, 1, 106);    


setMoveKey( spep_0 + 20, 1, 604.4, -109.8 , 0 );
setMoveKey( spep_0 + 22, 1, 486.2, -109.8 , 0 );
setMoveKey( spep_0 + 24, 1, 368.1, -109.8 , 0 );
setMoveKey( spep_0 + 26, 1, 250, -109.8 , 0 );
setMoveKey( spep_0 + 28, 1, 131.9, -109.8 , 0 );

setScaleKey( spep_0 + 20, 1, 1.4, 1.4 );


setRotateKey( spep_0 + 20, 1, 0 );
setRotateKey( spep_0 + 66, 1, 0 );


ryusen = entryEffectLife(spep_0+17, 920, 49, 0x80, -1, 20, 0, 0); -- 横線

setEffMoveKey( spep_0 + 17, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 18, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 20, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 22, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 30, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 34, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 42, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 46, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 54, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 58, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 60, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 62, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 64, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 66, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, ryusen, 2, 1 );
setEffScaleKey( spep_0 + 20, ryusen, 2, 1 );
setEffScaleKey( spep_0 + 66, ryusen, 2, 1 );

setEffRotateKey( spep_0 + 8, ryusen, 0 );
setEffRotateKey( spep_0 + 20, ryusen, 0 );
setEffRotateKey( spep_0 + 66, ryusen, 0 );

setEffAlphaKey( spep_0 + 8, ryusen, 255 );
setEffAlphaKey( spep_0 + 20, ryusen, 255 );
setEffAlphaKey( spep_0 + 66, ryusen, 255 );



shuchusen = entryEffectLife(spep_0+67, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_0 + 67, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 125, shuchusen, 0, 0 , 0 );


setEffScaleKey( spep_0 + 67, shuchusen, 1.36, 1.36 );
setEffScaleKey( spep_0 + 114, shuchusen, 1.36, 1.36 );
setEffScaleKey( spep_0 + 125, shuchusen, 1.36, 1.36 );


setEffRotateKey( spep_0 + 67, shuchusen, 0 );
setEffRotateKey( spep_0 + 70, shuchusen, 180 );
setEffRotateKey( spep_0 + 72, shuchusen, 0 );
setEffRotateKey( spep_0 + 74, shuchusen, 180 );
setEffRotateKey( spep_0 + 76, shuchusen, 0 );
setEffRotateKey( spep_0 + 78, shuchusen, 180 );
setEffRotateKey( spep_0 + 80, shuchusen, 0 );
setEffRotateKey( spep_0 + 82, shuchusen, 180 );
setEffRotateKey( spep_0 + 84, shuchusen, 0 );
setEffRotateKey( spep_0 + 86, shuchusen, 180 );
setEffRotateKey( spep_0 + 88, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 180 );
setEffRotateKey( spep_0 + 92, shuchusen, 0 );
setEffRotateKey( spep_0 + 94, shuchusen, 180 );
setEffRotateKey( spep_0 + 96, shuchusen, 0 );
setEffRotateKey( spep_0 + 98, shuchusen, 180 );
setEffRotateKey( spep_0 + 100, shuchusen, 0 );
setEffRotateKey( spep_0 + 102, shuchusen, 180 );
setEffRotateKey( spep_0 + 104, shuchusen, 0 );
setEffRotateKey( spep_0 + 106, shuchusen, 180 );
setEffRotateKey( spep_0 + 108, shuchusen, 0 );
setEffRotateKey( spep_0 + 110, shuchusen, 180 );
setEffRotateKey( spep_0 + 112, shuchusen, 0 );
setEffRotateKey( spep_0 + 114, shuchusen, 180 );
setEffRotateKey( spep_0 + 125, shuchusen, 0 );

setEffAlphaKey( spep_0 + 67, shuchusen, 255 );
setEffAlphaKey( spep_0 + 126, shuchusen, 255 );


playSe( spep_0+10, 43); --瞬間移動
playSe( spep_0+40, 43); --瞬間移動

playSe( spep_0+68, 1038); --お菓子ビーム
playSe( spep_0+82, 1051); --お菓子変化

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+53; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);


setMoveKey(SP_dodge, 1, 130, -109.8);
setScaleKey(SP_dodge, 1, 1.4, 1.4);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, 130, -109.8);
setScaleKey(SP_dodge+8, 1, 1.4, 1.4);
setRotateKey(SP_dodge+8, 1, 0);

setEffAlphaKey(SP_dodge+8, beam, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, beam, 0);

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



ctbibibi = entryEffectLife(spep_0+67, 10025,35, 0x100, -1, -110.3, 110.3, 0);

setEffMoveKey( spep_0 + 67, ctbibibi, -110.3, 110.3 , 0 );
setEffMoveKey( spep_0 + 70, ctbibibi, -110.3, 110.3 , 0 );
setEffMoveKey( spep_0 + 72, ctbibibi, -101.4, 126.5 , 0 );
setEffMoveKey( spep_0 + 74, ctbibibi, -85.4, 151.2 , 0 );
setEffMoveKey( spep_0 + 76, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 78, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 80, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 82, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 84, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 86, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 88, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 90, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 92, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 94, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 96, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 98, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 100, ctbibibi, -73.4, 176.5 , 0 );
setEffMoveKey( spep_0 + 102, ctbibibi, -73.4, 176.5 , 0 );

setEffScaleKey( spep_0 + 67, ctbibibi, 0.46, 0.46 );
setEffScaleKey( spep_0 + 72, ctbibibi, 0.74, 0.74 );
setEffScaleKey( spep_0 + 74, ctbibibi, 1.02, 1.02 );
setEffScaleKey( spep_0 + 76, ctbibibi, 1.32, 1.32 );
setEffScaleKey( spep_0 + 98, ctbibibi, 1.32, 1.32 );
setEffScaleKey( spep_0 + 100, ctbibibi, 1.52, 1.52 );
setEffScaleKey( spep_0 + 102, ctbibibi, 1.52, 1.52 );

setEffRotateKey( spep_0 + 67, ctbibibi, 0 );
setEffRotateKey( spep_0 + 70, ctbibibi, 0 );
setEffRotateKey( spep_0 + 102, ctbibibi, 0 );

setEffAlphaKey( spep_0 + 67, ctbibibi, 255 );
setEffAlphaKey( spep_0 + 70, ctbibibi, 255 );
setEffAlphaKey( spep_0 + 98, ctbibibi, 170 );
setEffAlphaKey( spep_0 + 100, ctbibibi, 85 );
setEffAlphaKey( spep_0 + 102, ctbibibi, 0 );


--　敵のmove(続き)

setMoveKey( spep_0 + 66, 1, 131.9, -109.8 , 0 );
setMoveKey( spep_0 + 67, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 70, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 72, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 74, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 76, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 78, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 80, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 82, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 84, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 86, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 88, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 90, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 92, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 94, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 96, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 98, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 100, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 102, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 104, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 106, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 108, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 110, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 112, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 114, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 116, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 118, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 120, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 122, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 124, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 126, 1, 142.8, 29.4 , 0 );

setScaleKey( spep_0 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 69, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 126, 1, 1.3, 1.3 );


setRotateKey( spep_0 + 67, 1, -32.1 );
setRotateKey( spep_0 + 126, 1, -32.1 );


------------------------------------------------------
-- ナビお菓子
------------------------------------------------------

spep_1 = spep_0+126;

eat = entryEffectLife(spep_1, SP_02, 156, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, eat, 0, 0, 0);
setEffMoveKey(spep_1 + 156, eat, 0, 0, 0);

setEffScaleKey(spep_1, eat, 1.0, 1.0);
setEffScaleKey(spep_1 + 156, eat, 1.0, 1.0);

setEffAlphaKey(spep_1, eat, 255);
setEffAlphaKey(spep_1 + 156, eat, 255);

setEffRotateKey(spep_1, eat, 0);
setEffRotateKey(spep_1 + 156, eat, 0);


--顔＆セリフカットイン
speff = entryEffect(spep_1+30, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

speff1 = entryEffect(spep_1+30, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_1+43, 190006, 69, 0x100, -1, 0, 500, 0);--ゴゴゴ

setEffMoveKey(spep_1+43,ctgogo, -50, 500, 0);
setEffMoveKey(spep_1+112,ctgogo, -50, 500, 0);

setEffScaleKey(spep_1+43, ctgogo, 0.8, 0.8);
setEffScaleKey(spep_1+112, ctgogo, 0.8, 0.8);

setEffAlphaKey(spep_1+43, ctgogo, 255);
setEffAlphaKey(spep_1+112, ctgogo, 255);
setEffAlphaKey(spep_1+120, ctgogo, 0);




shuchusen2 = entryEffectLife(spep_1+109, 906, 47, 0x100, -1, 0, 0, 0);-- 集中線

setEffMoveKey( spep_1 + 109, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 109, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 156, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1 + 109, shuchusen2, 0 );
setEffRotateKey( spep_1 + 110, shuchusen2, 180 );
setEffRotateKey( spep_1 + 112, shuchusen2, 0 );
setEffRotateKey( spep_1 + 114, shuchusen2, 180 );
setEffRotateKey( spep_1 + 116, shuchusen2, 0 );
setEffRotateKey( spep_1 + 118, shuchusen2, 180 );
setEffRotateKey( spep_1 + 120, shuchusen2, 0 );
setEffRotateKey( spep_1 + 122, shuchusen2, 180 );
setEffRotateKey( spep_1 + 124, shuchusen2, 0 );
setEffRotateKey( spep_1 + 126, shuchusen2, 180 );
setEffRotateKey( spep_1 + 128, shuchusen2, 0 );
setEffRotateKey( spep_1 + 130, shuchusen2, 180 );
setEffRotateKey( spep_1 + 132, shuchusen2, 0 );
setEffRotateKey( spep_1 + 134, shuchusen2, 180 );
setEffRotateKey( spep_1 + 136, shuchusen2, 0 );
setEffRotateKey( spep_1 + 138, shuchusen2, 180 );
setEffRotateKey( spep_1 + 140, shuchusen2, 0 );
setEffRotateKey( spep_1 + 142, shuchusen2, 180 );
setEffRotateKey( spep_1 + 144, shuchusen2, 0 );
setEffRotateKey( spep_1 + 146, shuchusen2, 180 );
setEffRotateKey( spep_1 + 148, shuchusen2, 0 );
setEffRotateKey( spep_1 + 150, shuchusen2, 180 );
setEffRotateKey( spep_1 + 152, shuchusen2, 0 );
setEffRotateKey( spep_1 + 154, shuchusen2, 180 );
setEffRotateKey( spep_1 + 156, shuchusen2, 0 );


setEffAlphaKey( spep_1 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 156, shuchusen2, 255 );

entryFade( spep_1+110, 14, 4, 3, 127, 13, 3, 255);     -- red fade

entryFade( spep_1+148, 6, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 156, 0, 0, 0, 0, 255); -- ベース暗め　背景

playSe( spep_1+43, SE_04); --顔カットイン

playSe( spep_1+121, 1070); --かむ音

se_1 = playSe( spep_1+128, 1071); --咀嚼音
stopSe(spep_1+156, se_1, 0);

------------------------------------------------------
-- 捨てる(180f)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+156;

throw = entryEffectLife(spep_2, SP_03, 176, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_2, throw, 0, 0, 0);
setEffMoveKey(spep_2 + 176, throw, 0, 0, 0);

setEffScaleKey(spep_2, throw, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, throw, 1.0, 1.0);

setEffAlphaKey(spep_2, throw, 255);
setEffAlphaKey(spep_2 + 176, throw, 255);

setEffRotateKey(spep_2, throw, 0);
setEffRotateKey(spep_2 + 176, throw, 0);


shuchusen3 = entryEffectLife(spep_2+41, 906, 40, 0x100, -1, 250, -206.1, 0);-- 集中線

setEffMoveKey( spep_2 + 41, shuchusen3, 250, -206.1 , 0 );
setEffMoveKey( spep_2 + 81, shuchusen3, 250, -206.1 , 0 );


setEffScaleKey( spep_2 + 41, shuchusen3, 1.68, 1.62 );
setEffScaleKey( spep_2 + 81, shuchusen3, 1.68, 1.62 );


setEffRotateKey( spep_2 + 41, shuchusen3, 180 );
setEffRotateKey( spep_2 + 46, shuchusen3, 0 );
setEffRotateKey( spep_2 + 48, shuchusen3, 180 );
setEffRotateKey( spep_2 + 50, shuchusen3, 0 );
setEffRotateKey( spep_2 + 52, shuchusen3, 180 );
setEffRotateKey( spep_2 + 54, shuchusen3, 0 );
setEffRotateKey( spep_2 + 56, shuchusen3, 180 );
setEffRotateKey( spep_2 + 58, shuchusen3, 0 );
setEffRotateKey( spep_2 + 60, shuchusen3, 180 );
setEffRotateKey( spep_2 + 62, shuchusen3, 0 );
setEffRotateKey( spep_2 + 64, shuchusen3, 180 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 81, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 41, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 81, shuchusen3, 255 );


shuchusen4 = entryEffectLife(spep_2+97, 906, 79, 0x100, -1, 0, 0, 0);-- 集中線

setEffMoveKey( spep_2 + 97, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, shuchusen4, 0, 0 , 0 );


setEffScaleKey( spep_2 + 97, shuchusen4, 1.11, 1.11 );
setEffScaleKey( spep_2 + 176, shuchusen4, 1.11, 1.11 );


setEffRotateKey( spep_2 + 97, shuchusen4, 180 );
setEffRotateKey( spep_2 + 102, shuchusen4, 0 );
setEffRotateKey( spep_2 + 104, shuchusen4, 180 );
setEffRotateKey( spep_2 + 106, shuchusen4, 0 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );
setEffRotateKey( spep_2 + 110, shuchusen4, 0 );
setEffRotateKey( spep_2 + 112, shuchusen4, 180 );
setEffRotateKey( spep_2 + 114, shuchusen4, 0 );
setEffRotateKey( spep_2 + 116, shuchusen4, 180 );
setEffRotateKey( spep_2 + 118, shuchusen4, 0 );
setEffRotateKey( spep_2 + 120, shuchusen4, 180 );
setEffRotateKey( spep_2 + 122, shuchusen4, 0 );
setEffRotateKey( spep_2 + 124, shuchusen4, 180 );
setEffRotateKey( spep_2 + 126, shuchusen4, 0 );
setEffRotateKey( spep_2 + 128, shuchusen4, 180 );
setEffRotateKey( spep_2 + 130, shuchusen4, 0 );
setEffRotateKey( spep_2 + 132, shuchusen4, 180 );
setEffRotateKey( spep_2 + 134, shuchusen4, 0 );
setEffRotateKey( spep_2 + 136, shuchusen4, 180 );
setEffRotateKey( spep_2 + 138, shuchusen4, 0 );
setEffRotateKey( spep_2 + 140, shuchusen4, 180 );
setEffRotateKey( spep_2 + 142, shuchusen4, 0 );
setEffRotateKey( spep_2 + 144, shuchusen4, 180 );
setEffRotateKey( spep_2 + 146, shuchusen4, 0 );
setEffRotateKey( spep_2 + 148, shuchusen4, 180 );
setEffRotateKey( spep_2 + 150, shuchusen4, 0 );
setEffRotateKey( spep_2 + 152, shuchusen4, 180 );
setEffRotateKey( spep_2 + 154, shuchusen4, 0 );
setEffRotateKey( spep_2 + 156, shuchusen4, 180 );
setEffRotateKey( spep_2 + 158, shuchusen4, 0 );
setEffRotateKey( spep_2 + 160, shuchusen4, 180 );
setEffRotateKey( spep_2 + 162, shuchusen4, 0 );
setEffRotateKey( spep_2 + 164, shuchusen4, 180 );
setEffRotateKey( spep_2 + 166, shuchusen4, 0 );
setEffRotateKey( spep_2 + 168, shuchusen4, 180 );
setEffRotateKey( spep_2 + 170, shuchusen4, 0 );
setEffRotateKey( spep_2 + 172, shuchusen4, 180 );
setEffRotateKey( spep_2 + 174, shuchusen4, 0 );
setEffRotateKey( spep_2 + 176, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 176, shuchusen4, 255 );


-------------------------------------------------------------------敵の動き

setDisp( spep_2+52, 1, 1);
setDisp( spep_2+176, 1, 0);


changeAnime( spep_2+52, 1, 106);    


setMoveKey( spep_2 + 52, 1, 181.1, -158.9 , 0 );
setMoveKey( spep_2 + 54, 1, 181.1, -160.5 , 0 );
setMoveKey( spep_2 + 56, 1, 181.1, -162.1 , 0 );
setMoveKey( spep_2 + 58, 1, 181.1, -164.7 , 0 );
setMoveKey( spep_2 + 60, 1, 181.1, -166.3 , 0 );
setMoveKey( spep_2 + 62, 1, 181.1, -168.9 , 0 );
setMoveKey( spep_2 + 64, 1, 181.1, -170.6 , 0 );
setMoveKey( spep_2 + 66, 1, 181.1, -172.2 , 0 );
setMoveKey( spep_2 + 68, 1, 181.1, -174.8 , 0 );
setMoveKey( spep_2 + 70, 1, 181.1, -176.4 , 0 );
setMoveKey( spep_2 + 72, 1, 181.1, -178, 0 );
setMoveKey( spep_2 + 74, 1, 181.1, -180.6 , 0 );
setMoveKey( spep_2 + 76, 1, 181.1, -182.2 , 0 );
setMoveKey( spep_2 + 78, 1, 181.1, -184.8 , 0 );
setMoveKey( spep_2 + 80, 1, 181.1, -186.4 , 0 );
setMoveKey( spep_2 + 82, 1, 181.1, -188 , 0 );
setMoveKey( spep_2 + 84, 1, 181.1, -190.6 , 0 );
setMoveKey( spep_2 + 86, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 88, 1, 181.1, -194.9 , 0 );
setMoveKey( spep_2 + 90, 1, 181.1, -196.5 , 0 );
setMoveKey( spep_2 + 92, 1, 181.1, -198.1 , 0 );
setMoveKey( spep_2 + 94, 1, 181.1, -200.7 , 0 );
setMoveKey( spep_2 + 96, 1, 181.1, -202.7 , 0 );
setMoveKey( spep_2 + 98, 1, 181.1, -204.5 , 0 );
setMoveKey( spep_2 + 100, 1, 351.3, -360.4 , 0 );
setMoveKey( spep_2 + 102, 1, 401.3, -418.7 , 0 );
setMoveKey( spep_2 + 104, 1, 451.5, -464.5 , 0 );
setMoveKey( spep_2 + 106, 1, 501.7, -510.3 , 0 );
setMoveKey( spep_2 + 108, 1, 552, -556.1 , 0 );
setMoveKey( spep_2 + 110, 1, 602.2, -601.9 , 0 );
setMoveKey( spep_2 + 112, 1, 652.4, -647.6 , 0 );
setMoveKey( spep_2 + 114, 1, 702.7, -693.4 , 0 );
setMoveKey( spep_2 + 116, 1, 752.9, -739.2 , 0 );
setMoveKey( spep_2 + 118, 1, 803.2, -785 , 0 );
setMoveKey( spep_2 + 176, 1, 853.2, -785 , 0 );


setScaleKey( spep_2 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 100, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 104, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 106, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 108, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 112, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 114, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 116, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 118, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 176, 1, 2.44, 2.44 );


setRotateKey( spep_2 + 52, 1, 0 );
setRotateKey( spep_2 + 176, 1, 0 );




entryFade( spep_2+168, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 176, 0, 0, 0, 0, 210); -- ベース暗め　背景



playSe( spep_2+34, 1051); --お菓子変化
--playSe( spep_2+97, SE_01); --ボールため
playSe( spep_2+109, SE_03 );
playSe( spep_2+129, SE_03 );
playSe( spep_2+149, SE_03 );
--playSe( spep_2+169, SE_03 );

--stopSe(spep_2+176,SE1,0);


-----------------------------------------------------
--カードカットイン(90F)
-----------------------------------------------------

--次の準備
spep_3 = spep_2+176;

playSe(spep_3,SE_05);


speff2=entryEffect(spep_3, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife(spep_3, 906, 90, 0x100, -1, 20, 0, 0);   -- 集中線

setEffScaleKey(spep_3, shuchusen2, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_3+86, 2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 190); -- ベース暗め　背景

------------------------------------------------------
-- なぎ払い
------------------------------------------------------

spep_4 = spep_3+90;

beam2 = entryEffectLife(spep_4, SP_04, 46, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, beam2, 0, 0, 0);
setEffMoveKey(spep_4 + 46, beam2, 0, 0, 0);

setEffScaleKey(spep_4, beam2, 1.0, 1.0);
setEffScaleKey(spep_4 + 46, beam2, 1.0, 1.0);

setEffAlphaKey(spep_4, beam2, 255);
setEffAlphaKey(spep_4 + 46, beam2, 255);

setEffRotateKey(spep_4, beam2, 0);
setEffRotateKey(spep_4 + 46, beam2, 0);


shuchusen5 = entryEffectLife(spep_4+18, 906, 28, 0x100, -1, 200, -340.1, 0);-- 集中線

setEffMoveKey( spep_4 + 18, shuchusen5, 200, -340.1 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen5, 200, -340.1 , 0 );


setEffScaleKey( spep_4 + 18, shuchusen5, 2.0, 2.0 );
setEffScaleKey( spep_4 + 46, shuchusen5, 2.0, 2.0 );


setEffRotateKey( spep_4 + 18, shuchusen5, 180 );
setEffRotateKey( spep_4 + 20, shuchusen5, 180 );
setEffRotateKey( spep_4 + 22, shuchusen5, 0 );
setEffRotateKey( spep_4 + 24, shuchusen5, 180 );
setEffRotateKey( spep_4 + 26, shuchusen5, 0 );
setEffRotateKey( spep_4 + 28, shuchusen5, 180 );
setEffRotateKey( spep_4 + 30, shuchusen5, 0 );
setEffRotateKey( spep_4 + 32, shuchusen5, 180 );
setEffRotateKey( spep_4 + 34, shuchusen5, 0 );
setEffRotateKey( spep_4 + 36, shuchusen5, 180 );
setEffRotateKey( spep_4 + 38, shuchusen5, 0 );
setEffRotateKey( spep_4 + 40, shuchusen5, 180 );
setEffRotateKey( spep_4 + 42, shuchusen5, 0 );
setEffRotateKey( spep_4 + 44, shuchusen5, 180 );
setEffRotateKey( spep_4 + 46, shuchusen5, 0 );


setEffAlphaKey( spep_4 + 18, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 46, shuchusen5, 255 );


-------------------------------------------------------------------敵の動き


setDisp( spep_4, 1, 1);
setDisp( spep_4+46, 1, 0);


changeAnime( spep_4, 1, 106);    


setMoveKey( spep_4 + 0, 1, 181.1, -301.1 , 0 );
setMoveKey( spep_4 + 2, 1, 181.1, -302.1 , 0 );
setMoveKey( spep_4 + 4, 1, 181.1, -303.2 , 0 );
setMoveKey( spep_4 + 6, 1, 181.1, -304.3 , 0 );
setMoveKey( spep_4 + 8, 1, 181.1, -305.4 , 0 );
setMoveKey( spep_4 + 10, 1, 181.1, -306.5 , 0 );
setMoveKey( spep_4 + 12, 1, 181.1, -307.6 , 0 );
setMoveKey( spep_4 + 14, 1, 181.1, -308.6 , 0 );
setMoveKey( spep_4 + 16, 1, 181.1, -309.7 , 0 );
setMoveKey( spep_4 + 18, 1, 181.1, -310.8 , 0 );
setMoveKey( spep_4 + 20, 1, 181.1, -311.9 , 0 );
setMoveKey( spep_4 + 22, 1, 181.1, -313 , 0 );
setMoveKey( spep_4 + 24, 1, 181.1, -314.1 , 0 );
setMoveKey( spep_4 + 26, 1, 181.1, -315.1 , 0 );
setMoveKey( spep_4 + 28, 1, 181.1, -316.2 , 0 );
setMoveKey( spep_4 + 30, 1, 181.1, -317.3 , 0 );
setMoveKey( spep_4 + 32, 1, 181.1, -318.4 , 0 );
setMoveKey( spep_4 + 34, 1, 181.1, -319.5 , 0 );
setMoveKey( spep_4 + 36, 1, 181.1, -320.6 , 0 );
setMoveKey( spep_4 + 38, 1, 181.1, -321.6 , 0 );
setMoveKey( spep_4 + 40, 1, 181.1, -322.7 , 0 );
setMoveKey( spep_4 + 42, 1, 181.1, -323.8 , 0 );
setMoveKey( spep_4 + 44, 1, 181.1, -324.9 , 0 );
setMoveKey( spep_4 + 46, 1, 181.1, -326 , 0 );


setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 46, 1, 1.4, 1.4 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 46, 1, 0 );


entryFade(spep_4+44, 4,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 48, 0, 0, 0, 0, 190); -- ベース暗め　背景


playSe( spep_4+12, 1021); --ビーム

------------------------------------------------------
-- ギャン(60)
------------------------------------------------------

spep_5 = spep_4+48;

setDisp( spep_5-1, 1, 0);

gyan = entryEffect(spep_5, 190002, 0x100, -1, 0, 0, 0);  --ギャン
setEffScaleKey(spep_5, gyan, 1.0, 1.0);
setEffAlphaKey(spep_5, gyan, 255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_5, ct_06, 255);
setEffScaleKey( spep_5+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_5+58, ct_06, 255);
setEffShake( spep_5, ct_06, 58, 10);

playSe(spep_5, SE_09);


entryFadeBg(spep_5 ,0, 60, 0, 0, 0, 0, 255);
entryFade(spep_5+50, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発(120)
------------------------------------------------------

spep_6 = spep_5+60;

explosion = entryEffect(spep_6, SP_05, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_6, explosion, 0, 0, 0);
setEffMoveKey(spep_6 + 118, explosion, 0, 0, 0);

setEffScaleKey(spep_6, explosion, 1.0, 1.0);
setEffScaleKey(spep_6 + 118, explosion, 1.0, 1.0);

setEffAlphaKey(spep_6, explosion, 255);
setEffAlphaKey(spep_6 + 118, explosion, 255);

setEffRotateKey(spep_6, explosion, 0);
setEffRotateKey(spep_6 + 118, explosion, 0);




shuchusen6 = entryEffectLife(spep_6, 906, 118, 0x100, -1, 0, -0, 0);-- 集中線

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0, 0 );
setEffMoveKey( spep_6 + 118, shuchusen6, 0, 0, 0 );


setEffScaleKey( spep_6 + 0, shuchusen6, 1.69, 1.71 );
setEffScaleKey( spep_6 + 118, shuchusen6, 1.69, 1.71 );


setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 2, shuchusen6, 0 );
setEffRotateKey( spep_6 + 4, shuchusen6, 180 );
setEffRotateKey( spep_6 + 6, shuchusen6, 0 );
setEffRotateKey( spep_6 + 8, shuchusen6, 180 );
setEffRotateKey( spep_6 + 10, shuchusen6, 0 );
setEffRotateKey( spep_6 + 12, shuchusen6, 180 );
setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 16, shuchusen6, 180 );
setEffRotateKey( spep_6 + 18, shuchusen6, 0 );
setEffRotateKey( spep_6 + 20, shuchusen6, 180 );
setEffRotateKey( spep_6 + 22, shuchusen6, 0 );
setEffRotateKey( spep_6 + 24, shuchusen6, 180 );
setEffRotateKey( spep_6 + 26, shuchusen6, 0 );
setEffRotateKey( spep_6 + 28, shuchusen6, 180 );
setEffRotateKey( spep_6 + 30, shuchusen6, 0 );
setEffRotateKey( spep_6 + 32, shuchusen6, 180 );
setEffRotateKey( spep_6 + 34, shuchusen6, 0 );
setEffRotateKey( spep_6 + 36, shuchusen6, 180 );
setEffRotateKey( spep_6 + 38, shuchusen6, 0 );
setEffRotateKey( spep_6 + 40, shuchusen6, 180 );
setEffRotateKey( spep_6 + 42, shuchusen6, 0 );
setEffRotateKey( spep_6 + 44, shuchusen6, 180 );
setEffRotateKey( spep_6 + 46, shuchusen6, 0 );
setEffRotateKey( spep_6 + 48, shuchusen6, 180 );
setEffRotateKey( spep_6 + 50, shuchusen6, 0 );
setEffRotateKey( spep_6 + 52, shuchusen6, 180 );
setEffRotateKey( spep_6 + 54, shuchusen6, 0 );
setEffRotateKey( spep_6 + 56, shuchusen6, 180 );
setEffRotateKey( spep_6 + 58, shuchusen6, 0 );
setEffRotateKey( spep_6 + 60, shuchusen6, 180 );
setEffRotateKey( spep_6 + 62, shuchusen6, 0 );
setEffRotateKey( spep_6 + 64, shuchusen6, 180 );
setEffRotateKey( spep_6 + 66, shuchusen6, 0 );
setEffRotateKey( spep_6 + 68, shuchusen6, 180 );
setEffRotateKey( spep_6 + 70, shuchusen6, 0 );
setEffRotateKey( spep_6 + 72, shuchusen6, 180 );
setEffRotateKey( spep_6 + 74, shuchusen6, 0 );
setEffRotateKey( spep_6 + 76, shuchusen6, 180 );
setEffRotateKey( spep_6 + 78, shuchusen6, 0 );
setEffRotateKey( spep_6 + 80, shuchusen6, 180 );
setEffRotateKey( spep_6 + 82, shuchusen6, 0 );
setEffRotateKey( spep_6 + 84, shuchusen6, 180 );
setEffRotateKey( spep_6 + 86, shuchusen6, 0 );
setEffRotateKey( spep_6 + 88, shuchusen6, 180 );
setEffRotateKey( spep_6 + 90, shuchusen6, 0 );
setEffRotateKey( spep_6 + 92, shuchusen6, 180 );
setEffRotateKey( spep_6 + 94, shuchusen6, 0 );
setEffRotateKey( spep_6 + 96, shuchusen6, 180 );
setEffRotateKey( spep_6 + 98, shuchusen6, 0 );
setEffRotateKey( spep_6 + 100, shuchusen6, 180 );
setEffRotateKey( spep_6 + 102, shuchusen6, 0 );
setEffRotateKey( spep_6 + 104, shuchusen6, 180 );
setEffRotateKey( spep_6 + 106, shuchusen6, 0 );
setEffRotateKey( spep_6 + 108, shuchusen6, 180 );
setEffRotateKey( spep_6 + 110, shuchusen6, 0 );
setEffRotateKey( spep_6 + 112, shuchusen6, 180 );
setEffRotateKey( spep_6 + 114, shuchusen6, 0 );
setEffRotateKey( spep_6 + 116, shuchusen6, 180 );
setEffRotateKey( spep_6 + 118, shuchusen6, 0 );
setEffRotateKey( spep_6 + 118, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 118, shuchusen6, 255 );

--entryFade(spep_6+100, 10,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_6, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景

playSe( spep_6+4, 1024); --お菓子変化


-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+114);

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- お菓子ビーム
------------------------------------------------------

spep_0 = 0;
beam = entryEffectLife(spep_0, SP_11, 126, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_0, beam, 0, 0, 0);
setEffMoveKey(spep_0 + 126, beam, 0, 0, 0);

setEffScaleKey(spep_0, beam, 1.0, 1.0);
setEffScaleKey(spep_0 + 126, beam, 1.0, 1.0);

setEffAlphaKey(spep_0, beam, 255);
setEffAlphaKey(spep_0 + 126, beam, 255);

setEffRotateKey(spep_0, beam, 0);
setEffRotateKey(spep_0 + 126, beam, 0);


entryFade( spep_0 + 120, 4, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_0, 0, 126, 0, 0, 0, 0, 210); -- ベース暗め　背景


-- 敵の動き

setDisp( spep_0+20, 1, 1);
setDisp( spep_0+128, 1, 0);

changeAnime( spep_0, 1, 101);
changeAnime( spep_0+67, 1, 106);    


setMoveKey( spep_0 + 20, 1, 604.4, -109.8 , 0 );
setMoveKey( spep_0 + 22, 1, 486.2, -109.8 , 0 );
setMoveKey( spep_0 + 24, 1, 368.1, -109.8 , 0 );
setMoveKey( spep_0 + 26, 1, 250, -109.8 , 0 );
setMoveKey( spep_0 + 28, 1, 131.9, -109.8 , 0 );

setScaleKey( spep_0 + 20, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 20, 1, 0 );
setRotateKey( spep_0 + 66, 1, 0 );


ryusen = entryEffectLife(spep_0+17, 920, 49, 0x80, -1, 20, 0, 0); -- 横線

setEffMoveKey( spep_0 + 17, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 18, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 20, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 22, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 30, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 34, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 42, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 46, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 54, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 58, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 60, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 62, ryusen, -170, 0 , 0 );
setEffMoveKey( spep_0 + 64, ryusen, -340, 0 , 0 );
setEffMoveKey( spep_0 + 66, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, ryusen, 2, 1 );
setEffScaleKey( spep_0 + 20, ryusen, 2, 1 );
setEffScaleKey( spep_0 + 66, ryusen, 2, 1 );

setEffRotateKey( spep_0 + 8, ryusen, 0 );
setEffRotateKey( spep_0 + 20, ryusen, 0 );
setEffRotateKey( spep_0 + 66, ryusen, 0 );

setEffAlphaKey( spep_0 + 8, ryusen, 255 );
setEffAlphaKey( spep_0 + 20, ryusen, 255 );
setEffAlphaKey( spep_0 + 66, ryusen, 255 );



shuchusen = entryEffectLife(spep_0+67, 906, 58, 0x100, -1, 20, 0, 0);-- 集中線

setEffMoveKey( spep_0 + 67, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 125, shuchusen, 0, 0 , 0 );


setEffScaleKey( spep_0 + 67, shuchusen, 1.36, 1.36 );
setEffScaleKey( spep_0 + 114, shuchusen, 1.36, 1.36 );
setEffScaleKey( spep_0 + 125, shuchusen, 1.36, 1.36 );


setEffRotateKey( spep_0 + 67, shuchusen, 0 );
setEffRotateKey( spep_0 + 70, shuchusen, 180 );
setEffRotateKey( spep_0 + 72, shuchusen, 0 );
setEffRotateKey( spep_0 + 74, shuchusen, 180 );
setEffRotateKey( spep_0 + 76, shuchusen, 0 );
setEffRotateKey( spep_0 + 78, shuchusen, 180 );
setEffRotateKey( spep_0 + 80, shuchusen, 0 );
setEffRotateKey( spep_0 + 82, shuchusen, 180 );
setEffRotateKey( spep_0 + 84, shuchusen, 0 );
setEffRotateKey( spep_0 + 86, shuchusen, 180 );
setEffRotateKey( spep_0 + 88, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 180 );
setEffRotateKey( spep_0 + 92, shuchusen, 0 );
setEffRotateKey( spep_0 + 94, shuchusen, 180 );
setEffRotateKey( spep_0 + 96, shuchusen, 0 );
setEffRotateKey( spep_0 + 98, shuchusen, 180 );
setEffRotateKey( spep_0 + 100, shuchusen, 0 );
setEffRotateKey( spep_0 + 102, shuchusen, 180 );
setEffRotateKey( spep_0 + 104, shuchusen, 0 );
setEffRotateKey( spep_0 + 106, shuchusen, 180 );
setEffRotateKey( spep_0 + 108, shuchusen, 0 );
setEffRotateKey( spep_0 + 110, shuchusen, 180 );
setEffRotateKey( spep_0 + 112, shuchusen, 0 );
setEffRotateKey( spep_0 + 114, shuchusen, 180 );
setEffRotateKey( spep_0 + 125, shuchusen, 0 );

setEffAlphaKey( spep_0 + 67, shuchusen, 255 );
setEffAlphaKey( spep_0 + 126, shuchusen, 255 );

playSe( spep_0+10, 43); --瞬間移動
playSe( spep_0+40, 43); --瞬間移動

playSe( spep_0+68, 1038); --お菓子ビーム
playSe( spep_0+82, 1051); --お菓子変化

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+53; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);


setMoveKey(SP_dodge, 1, 130, -109.8);
setScaleKey(SP_dodge, 1, 1.4, 1.4);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, 130, -109.8);
setScaleKey(SP_dodge+8, 1, 1.4, 1.4);
setRotateKey(SP_dodge+8, 1, 0);

setEffAlphaKey(SP_dodge+8, beam, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, beam, 0);

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

ctbibibi = entryEffectLife(spep_0+67, 10025,35, 0x100, -1, -110.3, 110.3, 0);

setEffMoveKey( spep_0 + 67, ctbibibi, -110.3, 110.3 , 0 );
setEffMoveKey( spep_0 + 70, ctbibibi, -110.3, 110.3 , 0 );
setEffMoveKey( spep_0 + 72, ctbibibi, -101.4, 126.5 , 0 );
setEffMoveKey( spep_0 + 74, ctbibibi, -85.4, 151.2 , 0 );
setEffMoveKey( spep_0 + 76, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 78, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 80, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 82, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 84, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 86, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 88, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 90, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 92, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 94, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 96, ctbibibi, -79.2, 164.3 , 0 );
setEffMoveKey( spep_0 + 98, ctbibibi, -73, 171.5 , 0 );
setEffMoveKey( spep_0 + 100, ctbibibi, -73.4, 176.5 , 0 );
setEffMoveKey( spep_0 + 102, ctbibibi, -73.4, 176.5 , 0 );

setEffScaleKey( spep_0 + 67, ctbibibi, 0.46, 0.46 );
setEffScaleKey( spep_0 + 72, ctbibibi, 0.74, 0.74 );
setEffScaleKey( spep_0 + 74, ctbibibi, 1.02, 1.02 );
setEffScaleKey( spep_0 + 76, ctbibibi, 1.32, 1.32 );
setEffScaleKey( spep_0 + 98, ctbibibi, 1.32, 1.32 );
setEffScaleKey( spep_0 + 100, ctbibibi, 1.52, 1.52 );
setEffScaleKey( spep_0 + 102, ctbibibi, 1.52, 1.52 );

setEffRotateKey( spep_0 + 67, ctbibibi, 0 );
setEffRotateKey( spep_0 + 70, ctbibibi, 0 );
setEffRotateKey( spep_0 + 102, ctbibibi, 0 );

setEffAlphaKey( spep_0 + 67, ctbibibi, 255 );
setEffAlphaKey( spep_0 + 70, ctbibibi, 255 );
setEffAlphaKey( spep_0 + 98, ctbibibi, 170 );
setEffAlphaKey( spep_0 + 100, ctbibibi, 85 );
setEffAlphaKey( spep_0 + 102, ctbibibi, 0 );



-- 敵の動き


setMoveKey( spep_0 + 66, 1, 131.9, -109.8 , 0 );
setMoveKey( spep_0 + 67, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 70, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 72, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 74, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 76, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 78, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 80, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 82, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 84, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 86, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 88, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 90, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 92, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 94, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 96, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 98, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 100, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 102, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 104, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 106, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 108, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 110, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 112, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 114, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 116, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 118, 1, 142.8, 29.4 , 0 );
setMoveKey( spep_0 + 120, 1, 153.2, 11.2 , 0 );
setMoveKey( spep_0 + 122, 1, 155.8, 26.8 , 0 );
setMoveKey( spep_0 + 124, 1, 142.8, 16.4 , 0 );
setMoveKey( spep_0 + 126, 1, 142.8, 29.4 , 0 );


setScaleKey( spep_0 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 69, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 126, 1, 1.3, 1.3 );


setRotateKey( spep_0 + 67, 1, -32.1 );
setRotateKey( spep_0 + 126, 1, -32.1 );


------------------------------------------------------
-- ナビお菓子
------------------------------------------------------

spep_1 = spep_0+126;

eat = entryEffectLife(spep_1, SP_12, 156, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, eat, 0, 0, 0);
setEffMoveKey(spep_1 + 156, eat, 0, 0, 0);

setEffScaleKey(spep_1, eat, 1.0, 1.0);
setEffScaleKey(spep_1 + 156, eat, 1.0, 1.0);

setEffAlphaKey(spep_1, eat, 255);
setEffAlphaKey(spep_1 + 156, eat, 255);

setEffRotateKey(spep_1, eat, 0);
setEffRotateKey(spep_1 + 156, eat, 0);


--顔＆セリフカットイン
--speff = entryEffect(spep_1+30, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

--speff1 = entryEffect(spep_1+30, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_1+43, 190006, 69, 0x100, -1, 0, 500, 0);--ゴゴゴ

setEffMoveKey(spep_1+43,ctgogo, -50, 500, 0);
setEffMoveKey(spep_1+112,ctgogo, -50, 500, 0);

setEffScaleKey(spep_1+43, ctgogo, -0.8, 0.8);
setEffScaleKey(spep_1+112, ctgogo, -0.8, 0.8);

setEffAlphaKey(spep_1+43, ctgogo, 255);
setEffAlphaKey(spep_1+112, ctgogo, 255);
setEffAlphaKey(spep_1+120, ctgogo, 0);




shuchusen2 = entryEffectLife(spep_1+109, 906, 47, 0x100, -1, 0, 0, 0);-- 集中線

setEffMoveKey( spep_1 + 109, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 109, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 156, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1 + 109, shuchusen2, 0 );
setEffRotateKey( spep_1 + 110, shuchusen2, 180 );
setEffRotateKey( spep_1 + 112, shuchusen2, 0 );
setEffRotateKey( spep_1 + 114, shuchusen2, 180 );
setEffRotateKey( spep_1 + 116, shuchusen2, 0 );
setEffRotateKey( spep_1 + 118, shuchusen2, 180 );
setEffRotateKey( spep_1 + 120, shuchusen2, 0 );
setEffRotateKey( spep_1 + 122, shuchusen2, 180 );
setEffRotateKey( spep_1 + 124, shuchusen2, 0 );
setEffRotateKey( spep_1 + 126, shuchusen2, 180 );
setEffRotateKey( spep_1 + 128, shuchusen2, 0 );
setEffRotateKey( spep_1 + 130, shuchusen2, 180 );
setEffRotateKey( spep_1 + 132, shuchusen2, 0 );
setEffRotateKey( spep_1 + 134, shuchusen2, 180 );
setEffRotateKey( spep_1 + 136, shuchusen2, 0 );
setEffRotateKey( spep_1 + 138, shuchusen2, 180 );
setEffRotateKey( spep_1 + 140, shuchusen2, 0 );
setEffRotateKey( spep_1 + 142, shuchusen2, 180 );
setEffRotateKey( spep_1 + 144, shuchusen2, 0 );
setEffRotateKey( spep_1 + 146, shuchusen2, 180 );
setEffRotateKey( spep_1 + 148, shuchusen2, 0 );
setEffRotateKey( spep_1 + 150, shuchusen2, 180 );
setEffRotateKey( spep_1 + 152, shuchusen2, 0 );
setEffRotateKey( spep_1 + 154, shuchusen2, 180 );
setEffRotateKey( spep_1 + 156, shuchusen2, 0 );


setEffAlphaKey( spep_1 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 156, shuchusen2, 255 );

entryFade( spep_1+110, 14, 4, 3, 127, 13, 3, 255);     -- red fade

entryFade( spep_1+148, 6, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 156, 0, 0, 0, 0, 255); -- ベース暗め　背景

playSe( spep_1+43, SE_04); --顔カットイン

playSe( spep_1+121, 1070); --かむ音

se_1 = playSe( spep_1+128, 1071); --咀嚼音
stopSe(spep_1+156, se_1, 0);

------------------------------------------------------
-- 捨てる(180f)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+156;

throw = entryEffectLife(spep_2, SP_13, 176, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_2, throw, 0, 0, 0);
setEffMoveKey(spep_2 + 176, throw, 0, 0, 0);

setEffScaleKey(spep_2, throw, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, throw, 1.0, 1.0);

setEffAlphaKey(spep_2, throw, 255);
setEffAlphaKey(spep_2 + 176, throw, 255);

setEffRotateKey(spep_2, throw, 0);
setEffRotateKey(spep_2 + 176, throw, 0);


shuchusen3 = entryEffectLife(spep_2+41, 906, 40, 0x100, -1, 250, -206.1, 0);-- 集中線

setEffMoveKey( spep_2 + 41, shuchusen3, 250, -206.1 , 0 );
setEffMoveKey( spep_2 + 81, shuchusen3, 250, -206.1 , 0 );


setEffScaleKey( spep_2 + 41, shuchusen3, 1.68, 1.62 );
setEffScaleKey( spep_2 + 81, shuchusen3, 1.68, 1.62 );


setEffRotateKey( spep_2 + 41, shuchusen3, 180 );
setEffRotateKey( spep_2 + 46, shuchusen3, 0 );
setEffRotateKey( spep_2 + 48, shuchusen3, 180 );
setEffRotateKey( spep_2 + 50, shuchusen3, 0 );
setEffRotateKey( spep_2 + 52, shuchusen3, 180 );
setEffRotateKey( spep_2 + 54, shuchusen3, 0 );
setEffRotateKey( spep_2 + 56, shuchusen3, 180 );
setEffRotateKey( spep_2 + 58, shuchusen3, 0 );
setEffRotateKey( spep_2 + 60, shuchusen3, 180 );
setEffRotateKey( spep_2 + 62, shuchusen3, 0 );
setEffRotateKey( spep_2 + 64, shuchusen3, 180 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 81, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 41, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 81, shuchusen3, 255 );


shuchusen4 = entryEffectLife(spep_2+97, 906, 79, 0x100, -1, 0, 0, 0);-- 集中線

setEffMoveKey( spep_2 + 97, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, shuchusen4, 0, 0 , 0 );


setEffScaleKey( spep_2 + 97, shuchusen4, 1.11, 1.11 );
setEffScaleKey( spep_2 + 176, shuchusen4, 1.11, 1.11 );


setEffRotateKey( spep_2 + 97, shuchusen4, 180 );
setEffRotateKey( spep_2 + 102, shuchusen4, 0 );
setEffRotateKey( spep_2 + 104, shuchusen4, 180 );
setEffRotateKey( spep_2 + 106, shuchusen4, 0 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );
setEffRotateKey( spep_2 + 110, shuchusen4, 0 );
setEffRotateKey( spep_2 + 112, shuchusen4, 180 );
setEffRotateKey( spep_2 + 114, shuchusen4, 0 );
setEffRotateKey( spep_2 + 116, shuchusen4, 180 );
setEffRotateKey( spep_2 + 118, shuchusen4, 0 );
setEffRotateKey( spep_2 + 120, shuchusen4, 180 );
setEffRotateKey( spep_2 + 122, shuchusen4, 0 );
setEffRotateKey( spep_2 + 124, shuchusen4, 180 );
setEffRotateKey( spep_2 + 126, shuchusen4, 0 );
setEffRotateKey( spep_2 + 128, shuchusen4, 180 );
setEffRotateKey( spep_2 + 130, shuchusen4, 0 );
setEffRotateKey( spep_2 + 132, shuchusen4, 180 );
setEffRotateKey( spep_2 + 134, shuchusen4, 0 );
setEffRotateKey( spep_2 + 136, shuchusen4, 180 );
setEffRotateKey( spep_2 + 138, shuchusen4, 0 );
setEffRotateKey( spep_2 + 140, shuchusen4, 180 );
setEffRotateKey( spep_2 + 142, shuchusen4, 0 );
setEffRotateKey( spep_2 + 144, shuchusen4, 180 );
setEffRotateKey( spep_2 + 146, shuchusen4, 0 );
setEffRotateKey( spep_2 + 148, shuchusen4, 180 );
setEffRotateKey( spep_2 + 150, shuchusen4, 0 );
setEffRotateKey( spep_2 + 152, shuchusen4, 180 );
setEffRotateKey( spep_2 + 154, shuchusen4, 0 );
setEffRotateKey( spep_2 + 156, shuchusen4, 180 );
setEffRotateKey( spep_2 + 158, shuchusen4, 0 );
setEffRotateKey( spep_2 + 160, shuchusen4, 180 );
setEffRotateKey( spep_2 + 162, shuchusen4, 0 );
setEffRotateKey( spep_2 + 164, shuchusen4, 180 );
setEffRotateKey( spep_2 + 166, shuchusen4, 0 );
setEffRotateKey( spep_2 + 168, shuchusen4, 180 );
setEffRotateKey( spep_2 + 170, shuchusen4, 0 );
setEffRotateKey( spep_2 + 172, shuchusen4, 180 );
setEffRotateKey( spep_2 + 174, shuchusen4, 0 );
setEffRotateKey( spep_2 + 176, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 176, shuchusen4, 255 );


-------------------------------------------------------------------敵の動き

setDisp( spep_2+52, 1, 1);
setDisp( spep_2+176, 1, 0);


changeAnime( spep_2+52, 1, 106);    


setMoveKey( spep_2 + 52, 1, 181.1, -158.9 , 0 );
setMoveKey( spep_2 + 54, 1, 181.1, -160.5 , 0 );
setMoveKey( spep_2 + 56, 1, 181.1, -162.1 , 0 );
setMoveKey( spep_2 + 58, 1, 181.1, -164.7 , 0 );
setMoveKey( spep_2 + 60, 1, 181.1, -166.3 , 0 );
setMoveKey( spep_2 + 62, 1, 181.1, -168.9 , 0 );
setMoveKey( spep_2 + 64, 1, 181.1, -170.6 , 0 );
setMoveKey( spep_2 + 66, 1, 181.1, -172.2 , 0 );
setMoveKey( spep_2 + 68, 1, 181.1, -174.8 , 0 );
setMoveKey( spep_2 + 70, 1, 181.1, -176.4 , 0 );
setMoveKey( spep_2 + 72, 1, 181.1, -178, 0 );
setMoveKey( spep_2 + 74, 1, 181.1, -180.6 , 0 );
setMoveKey( spep_2 + 76, 1, 181.1, -182.2 , 0 );
setMoveKey( spep_2 + 78, 1, 181.1, -184.8 , 0 );
setMoveKey( spep_2 + 80, 1, 181.1, -186.4 , 0 );
setMoveKey( spep_2 + 82, 1, 181.1, -188 , 0 );
setMoveKey( spep_2 + 84, 1, 181.1, -190.6 , 0 );
setMoveKey( spep_2 + 86, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 88, 1, 181.1, -194.9 , 0 );
setMoveKey( spep_2 + 90, 1, 181.1, -196.5 , 0 );
setMoveKey( spep_2 + 92, 1, 181.1, -198.1 , 0 );
setMoveKey( spep_2 + 94, 1, 181.1, -200.7 , 0 );
setMoveKey( spep_2 + 96, 1, 181.1, -202.7 , 0 );
setMoveKey( spep_2 + 98, 1, 181.1, -204.5 , 0 );
setMoveKey( spep_2 + 100, 1, 351.3, -360.4 , 0 );
setMoveKey( spep_2 + 102, 1, 401.3, -418.7 , 0 );
setMoveKey( spep_2 + 104, 1, 451.5, -464.5 , 0 );
setMoveKey( spep_2 + 106, 1, 501.7, -510.3 , 0 );
setMoveKey( spep_2 + 108, 1, 552, -556.1 , 0 );
setMoveKey( spep_2 + 110, 1, 602.2, -601.9 , 0 );
setMoveKey( spep_2 + 112, 1, 652.4, -647.6 , 0 );
setMoveKey( spep_2 + 114, 1, 702.7, -693.4 , 0 );
setMoveKey( spep_2 + 116, 1, 752.9, -739.2 , 0 );
setMoveKey( spep_2 + 118, 1, 803.2, -785 , 0 );
setMoveKey( spep_2 + 176, 1, 853.2, -785 , 0 );


setScaleKey( spep_2 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 100, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 104, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 106, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 108, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 112, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 114, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 116, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 118, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 176, 1, 2.44, 2.44 );


setRotateKey( spep_2 + 52, 1, 0 );
setRotateKey( spep_2 + 176, 1, 0 );




entryFade( spep_2+168, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 176, 0, 0, 0, 0, 210); -- ベース暗め　背景



playSe( spep_2+34, 1051); --お菓子変化

--playSe( spep_2+97, SE_01); --ボールため
playSe( spep_2+109, SE_03 );
playSe( spep_2+129, SE_03 );
playSe( spep_2+149, SE_03 );
--playSe( spep_2+169, SE_03 );

--stopSe(spep_2+176,SE1,0);


-----------------------------------------------------
--カードカットイン(90F)
-----------------------------------------------------

--次の準備
spep_3 = spep_2+176;

playSe(spep_3,SE_05);


speff2=entryEffect(spep_3, 1507, 0, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife(spep_3, 906, 90, 0x100, -1, 20, 0, 0);   -- 集中線

setEffScaleKey(spep_3, shuchusen2, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_3+86, 2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 190); -- ベース暗め　背景

------------------------------------------------------
-- なぎ払い
------------------------------------------------------

spep_4 = spep_3+90;

beam2 = entryEffectLife(spep_4, SP_14, 46, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, beam2, 0, 0, 0);
setEffMoveKey(spep_4 + 46, beam2, 0, 0, 0);

setEffScaleKey(spep_4, beam2, 1.0, 1.0);
setEffScaleKey(spep_4 + 46, beam2, 1.0, 1.0);

setEffAlphaKey(spep_4, beam2, 255);
setEffAlphaKey(spep_4 + 46, beam2, 255);

setEffRotateKey(spep_4, beam2, 0);
setEffRotateKey(spep_4 + 46, beam2, 0);


shuchusen5 = entryEffectLife(spep_4+18, 906, 28, 0x100, -1, 200, -340.1, 0);-- 集中線

setEffMoveKey( spep_4 + 18, shuchusen5, 200, -340.1 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen5, 200, -340.1 , 0 );


setEffScaleKey( spep_4 + 18, shuchusen5, 2.0, 2.0 );
setEffScaleKey( spep_4 + 46, shuchusen5, 2.0, 2.0 );


setEffRotateKey( spep_4 + 18, shuchusen5, 180 );
setEffRotateKey( spep_4 + 20, shuchusen5, 180 );
setEffRotateKey( spep_4 + 22, shuchusen5, 0 );
setEffRotateKey( spep_4 + 24, shuchusen5, 180 );
setEffRotateKey( spep_4 + 26, shuchusen5, 0 );
setEffRotateKey( spep_4 + 28, shuchusen5, 180 );
setEffRotateKey( spep_4 + 30, shuchusen5, 0 );
setEffRotateKey( spep_4 + 32, shuchusen5, 180 );
setEffRotateKey( spep_4 + 34, shuchusen5, 0 );
setEffRotateKey( spep_4 + 36, shuchusen5, 180 );
setEffRotateKey( spep_4 + 38, shuchusen5, 0 );
setEffRotateKey( spep_4 + 40, shuchusen5, 180 );
setEffRotateKey( spep_4 + 42, shuchusen5, 0 );
setEffRotateKey( spep_4 + 44, shuchusen5, 180 );
setEffRotateKey( spep_4 + 46, shuchusen5, 0 );


setEffAlphaKey( spep_4 + 18, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 46, shuchusen5, 255 );


-------------------------------------------------------------------敵の動き


setDisp( spep_4, 1, 1);
setDisp( spep_4+46, 1, 0);


changeAnime( spep_4, 1, 106);    


setMoveKey( spep_4 + 0, 1, 181.1, -301.1 , 0 );
setMoveKey( spep_4 + 2, 1, 181.1, -302.1 , 0 );
setMoveKey( spep_4 + 4, 1, 181.1, -303.2 , 0 );
setMoveKey( spep_4 + 6, 1, 181.1, -304.3 , 0 );
setMoveKey( spep_4 + 8, 1, 181.1, -305.4 , 0 );
setMoveKey( spep_4 + 10, 1, 181.1, -306.5 , 0 );
setMoveKey( spep_4 + 12, 1, 181.1, -307.6 , 0 );
setMoveKey( spep_4 + 14, 1, 181.1, -308.6 , 0 );
setMoveKey( spep_4 + 16, 1, 181.1, -309.7 , 0 );
setMoveKey( spep_4 + 18, 1, 181.1, -310.8 , 0 );
setMoveKey( spep_4 + 20, 1, 181.1, -311.9 , 0 );
setMoveKey( spep_4 + 22, 1, 181.1, -313 , 0 );
setMoveKey( spep_4 + 24, 1, 181.1, -314.1 , 0 );
setMoveKey( spep_4 + 26, 1, 181.1, -315.1 , 0 );
setMoveKey( spep_4 + 28, 1, 181.1, -316.2 , 0 );
setMoveKey( spep_4 + 30, 1, 181.1, -317.3 , 0 );
setMoveKey( spep_4 + 32, 1, 181.1, -318.4 , 0 );
setMoveKey( spep_4 + 34, 1, 181.1, -319.5 , 0 );
setMoveKey( spep_4 + 36, 1, 181.1, -320.6 , 0 );
setMoveKey( spep_4 + 38, 1, 181.1, -321.6 , 0 );
setMoveKey( spep_4 + 40, 1, 181.1, -322.7 , 0 );
setMoveKey( spep_4 + 42, 1, 181.1, -323.8 , 0 );
setMoveKey( spep_4 + 44, 1, 181.1, -324.9 , 0 );
setMoveKey( spep_4 + 46, 1, 181.1, -326 , 0 );


setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 46, 1, 1.4, 1.4 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 46, 1, 0 );


entryFade(spep_4+44, 4,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 48, 0, 0, 0, 0, 190); -- ベース暗め　背景


playSe( spep_4+12, 1021); --ビーム

------------------------------------------------------
-- ギャン(60)
------------------------------------------------------

spep_5 = spep_4+48;

setDisp( spep_5-1, 1, 0);

gyan = entryEffect(spep_5, 190002, 0x100, -1, 0, 0, 0);  --ギャン
setEffScaleKey(spep_5, gyan, 1.0, 1.0);
setEffAlphaKey(spep_5, gyan, 255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_5, ct_06, 255);
setEffScaleKey( spep_5+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_5+58, ct_06, 255);
setEffShake( spep_5, ct_06, 58, 10);

playSe(spep_5, SE_09);


entryFadeBg(spep_5 ,0, 60, 0, 0, 0, 0, 255);
entryFade(spep_5+50, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発(120)
------------------------------------------------------

spep_6 = spep_5+60;

explosion = entryEffect(spep_6, SP_15, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_6, explosion, 0, 0, 0);
setEffMoveKey(spep_6 + 118, explosion, 0, 0, 0);

setEffScaleKey(spep_6, explosion, 1.0, 1.0);
setEffScaleKey(spep_6 + 118, explosion, 1.0, 1.0);

setEffAlphaKey(spep_6, explosion, 255);
setEffAlphaKey(spep_6 + 118, explosion, 255);

setEffRotateKey(spep_6, explosion, 0);
setEffRotateKey(spep_6 + 118, explosion, 0);




shuchusen6 = entryEffectLife(spep_6, 906, 118, 0x100, -1, 0, -0, 0);-- 集中線

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0, 0 );
setEffMoveKey( spep_6 + 118, shuchusen6, 0, 0, 0 );


setEffScaleKey( spep_6 + 0, shuchusen6, 1.69, 1.71 );
setEffScaleKey( spep_6 + 118, shuchusen6, 1.69, 1.71 );


setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 2, shuchusen6, 0 );
setEffRotateKey( spep_6 + 4, shuchusen6, 180 );
setEffRotateKey( spep_6 + 6, shuchusen6, 0 );
setEffRotateKey( spep_6 + 8, shuchusen6, 180 );
setEffRotateKey( spep_6 + 10, shuchusen6, 0 );
setEffRotateKey( spep_6 + 12, shuchusen6, 180 );
setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 16, shuchusen6, 180 );
setEffRotateKey( spep_6 + 18, shuchusen6, 0 );
setEffRotateKey( spep_6 + 20, shuchusen6, 180 );
setEffRotateKey( spep_6 + 22, shuchusen6, 0 );
setEffRotateKey( spep_6 + 24, shuchusen6, 180 );
setEffRotateKey( spep_6 + 26, shuchusen6, 0 );
setEffRotateKey( spep_6 + 28, shuchusen6, 180 );
setEffRotateKey( spep_6 + 30, shuchusen6, 0 );
setEffRotateKey( spep_6 + 32, shuchusen6, 180 );
setEffRotateKey( spep_6 + 34, shuchusen6, 0 );
setEffRotateKey( spep_6 + 36, shuchusen6, 180 );
setEffRotateKey( spep_6 + 38, shuchusen6, 0 );
setEffRotateKey( spep_6 + 40, shuchusen6, 180 );
setEffRotateKey( spep_6 + 42, shuchusen6, 0 );
setEffRotateKey( spep_6 + 44, shuchusen6, 180 );
setEffRotateKey( spep_6 + 46, shuchusen6, 0 );
setEffRotateKey( spep_6 + 48, shuchusen6, 180 );
setEffRotateKey( spep_6 + 50, shuchusen6, 0 );
setEffRotateKey( spep_6 + 52, shuchusen6, 180 );
setEffRotateKey( spep_6 + 54, shuchusen6, 0 );
setEffRotateKey( spep_6 + 56, shuchusen6, 180 );
setEffRotateKey( spep_6 + 58, shuchusen6, 0 );
setEffRotateKey( spep_6 + 60, shuchusen6, 180 );
setEffRotateKey( spep_6 + 62, shuchusen6, 0 );
setEffRotateKey( spep_6 + 64, shuchusen6, 180 );
setEffRotateKey( spep_6 + 66, shuchusen6, 0 );
setEffRotateKey( spep_6 + 68, shuchusen6, 180 );
setEffRotateKey( spep_6 + 70, shuchusen6, 0 );
setEffRotateKey( spep_6 + 72, shuchusen6, 180 );
setEffRotateKey( spep_6 + 74, shuchusen6, 0 );
setEffRotateKey( spep_6 + 76, shuchusen6, 180 );
setEffRotateKey( spep_6 + 78, shuchusen6, 0 );
setEffRotateKey( spep_6 + 80, shuchusen6, 180 );
setEffRotateKey( spep_6 + 82, shuchusen6, 0 );
setEffRotateKey( spep_6 + 84, shuchusen6, 180 );
setEffRotateKey( spep_6 + 86, shuchusen6, 0 );
setEffRotateKey( spep_6 + 88, shuchusen6, 180 );
setEffRotateKey( spep_6 + 90, shuchusen6, 0 );
setEffRotateKey( spep_6 + 92, shuchusen6, 180 );
setEffRotateKey( spep_6 + 94, shuchusen6, 0 );
setEffRotateKey( spep_6 + 96, shuchusen6, 180 );
setEffRotateKey( spep_6 + 98, shuchusen6, 0 );
setEffRotateKey( spep_6 + 100, shuchusen6, 180 );
setEffRotateKey( spep_6 + 102, shuchusen6, 0 );
setEffRotateKey( spep_6 + 104, shuchusen6, 180 );
setEffRotateKey( spep_6 + 106, shuchusen6, 0 );
setEffRotateKey( spep_6 + 108, shuchusen6, 180 );
setEffRotateKey( spep_6 + 110, shuchusen6, 0 );
setEffRotateKey( spep_6 + 112, shuchusen6, 180 );
setEffRotateKey( spep_6 + 114, shuchusen6, 0 );
setEffRotateKey( spep_6 + 116, shuchusen6, 180 );
setEffRotateKey( spep_6 + 118, shuchusen6, 0 );
setEffRotateKey( spep_6 + 118, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 118, shuchusen6, 255 );

--entryFade(spep_6+100, 10,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_6, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景

playSe( spep_6+4, 1024); --お菓子変化


-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+114);


end


