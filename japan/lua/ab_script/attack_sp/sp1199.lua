--sp1199 1014430　フリーザ(最終形態)　いたかったぞーっ！！！！！
--sp_effect_a7_00020

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=152027;--	気溜め
SP_02=152028;--	突進
SP_03=152029;--	頭突き
SP_04=152030;--	連続蹴り
SP_05=152031;--	衝撃波
SP_06=152032;--	地面
SP_07=152033;--	爆発

--敵側
SP_01x=152027;--	気溜め
SP_02x=152028;--	突進
SP_03x=152029;--	頭突き
SP_04x=152034;--	連続蹴り（敵）
SP_05x=152035;--	衝撃波（敵）
SP_06x=152032;--	地面
SP_07x=152033;--	爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_0=0;

--***フェードと背景***
entryFade(spep_0 + 6,4,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0 + 38,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0 + 0, 48, 0, 0, 0, 0, 0, 200);  -- 黒　背景

--***気溜め***
kidame01=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);   -- 溜め1(48F)

setEffMoveKey( spep_0,kidame01, 0, 0);
setEffMoveKey( spep_0 + 48,kidame01, 0, 0);
setEffScaleKey( spep_0,kidame01,1.0,1.0);
setEffScaleKey( spep_0 + 48,kidame01,1.0,1.0);
setEffRotateKey( spep_0,kidame01,0);
setEffRotateKey( spep_0 + 48,kidame01,0);
setEffAlphaKey( spep_0,kidame01,255);
setEffAlphaKey( spep_0 + 48,kidame01,255);
setEffAlphaKey( spep_0 + 49,kidame01,0);
setEffAlphaKey( spep_0 + 50,kidame01,0);

--***集中線***
shuchusen_0 = entryEffectLife( spep_0, 906, 48, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_0,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0,  shuchusen_0,  0);
setEffAlphaKey( spep_0,  shuchusen_0,  255);
setEffMoveKey( spep_0 + 48,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0 + 48,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0 + 48,  shuchusen_0,  0);
setEffAlphaKey( spep_0 + 48,  shuchusen_0,  255);

--***SE***
playSe( spep_0 + 10, SE_01);  --気が広がる

------------------------------------------------------
-- 突進
------------------------------------------------------

spep_1=spep_0+48;

--***フェードと背景***
entryFade(spep_1,0,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+104,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_1, 0, 54, 0, 0, 0, 0, 200);  -- 黒　背景
entryFadeBg(spep_1 + 18, 36, 60, 0, 0, 0, 0, 255);  -- 黒　背景

--***突進***
tosshin02=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);   -- 突進(114F)

setEffMoveKey( spep_1,tosshin02, 0, 0);
setEffMoveKey( spep_1 + 114,tosshin02, 0, 0);
setEffScaleKey(spep_1,tosshin02,1.0,1.0);
setEffScaleKey(spep_1 + 114,tosshin02,1.0,1.0);
setEffRotateKey(spep_1,tosshin02,0);
setEffRotateKey(spep_1 + 114,tosshin02,0);
setEffAlphaKey(spep_1,tosshin02,255);
setEffAlphaKey(spep_1 + 114,tosshin02,255);
setEffAlphaKey(spep_1 + 115,tosshin02,0);
setEffAlphaKey(spep_1 + 116,tosshin02,0);

--***流線***
sen1 = entryEffectLife( spep_1, 921, 114, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_1,  sen1,  0,  0);
setEffRotateKey( spep_1, sen1, 180);
setEffScaleKey( spep_1, sen1, 1.0, 1.0);
setEffAlphaKey( spep_1,  sen1,  255);
setEffMoveKey( spep_1 + 114,  sen1,  0,  0);
setEffRotateKey( spep_1 + 114, sen1, 180);
setEffScaleKey( spep_1 + 114, sen1, 1.0, 1.0);
setEffAlphaKey( spep_1 + 114,  sen1,  255);

--***カットイン***
--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_1+28,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+28,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogogo_1 = entryEffectLife( spep_1+42, 190006,72, 0x100, -1, 0, 50, 510);    -- ゴゴゴ・・・

setEffMoveKey( spep_1+42,ctgogogo_1, 50, 510);
setEffScaleKey( spep_1+42, ctgogogo_1,0.8,0.8);
setEffRotateKey( spep_1+42, ctgogogo_1, 0);
setEffAlphaKey( spep_1+42, ctgogogo_1, 255);
setEffMoveKey( spep_1+114,ctgogogo_1, 50, 510);
setEffScaleKey( spep_1+114, ctgogogo_1,0.8,0.8);
setEffRotateKey( spep_1+114, ctgogogo_1, 0);
setEffAlphaKey( spep_1+114, ctgogogo_1, 255);

setEffShake( spep_1+42, ctgogogo_1, 72, 10);

--SE--
playSe( spep_1 + 28, SE_04);

--------------------------------------
--カードカットイン(90F)
--------------------------------------

spep_2=spep_1+114;

--***フェードと背景***
entryFade(spep_2,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+86,2,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

speff2=entryEffect(spep_2,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--***集中線***
shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2 + 90,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2 + 90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2 + 90,  shuchusen_2,  0);
setEffAlphaKey( spep_2 + 90,  shuchusen_2,  255);

--SE--
playSe(spep_2,SE_05);

------------------------------------------------------
-- 頭突き
------------------------------------------------------

spep_3=spep_2+90;

--***流線***
sen3 = entryEffectLife( spep_3, 921, 18, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_3,  sen3,  0,  0);
setEffRotateKey( spep_3, sen3, 172);
setEffScaleKey( spep_3, sen3, 1.2, 1.2);
setEffAlphaKey( spep_3,  sen3,  255);
setEffMoveKey( spep_3 + 18,  sen3,  0,  0);
setEffRotateKey( spep_3 + 18, sen3, 172);
setEffScaleKey( spep_3 + 18, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 18,  sen3,  255);

--***頭突き***
zutuki03=entryEffect(spep_3,SP_03,0x80,-1,0,0,0);   -- 頭突き(58F)

setEffMoveKey( spep_3, zutuki03,  0,  0);
setEffMoveKey( spep_3 + 58, zutuki03,  0,  0);
setEffScaleKey( spep_3, zutuki03,1.0,1.0);
setEffScaleKey( spep_3 + 58, zutuki03,1.0,1.0);
setEffRotateKey( spep_3, zutuki03,0);
setEffRotateKey( spep_3 + 58, zutuki03,0);
setEffAlphaKey( spep_3, zutuki03,255);
setEffAlphaKey( spep_3 + 58, zutuki03,255);
setEffAlphaKey( spep_3 + 59, zutuki03,0);
setEffAlphaKey( spep_3 + 60, zutuki03,0);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 102 );
setMoveKey( spep_3 + 0, 1, 556.5, 107.4 , 0 );
setMoveKey( spep_3 + 2, 1, 556.5, 107.4 , 0 );
setMoveKey( spep_3 + 4, 1, 496.1, 91.5 , 0 );
setMoveKey( spep_3 + 6, 1, 435.8, 75.5 , 0  );
setMoveKey( spep_3 + 8, 1, 375.4, 59.5 , 0 );
setMoveKey( spep_3 + 10, 1, 315, 43.5 , 0 );
setMoveKey( spep_3 + 12, 1, 254.6, 27.6 , 0  );
setMoveKey( spep_3 + 14, 1, 194.3, 11.6 , 0 );
setMoveKey( spep_3 + 16, 1, 133.9, -4.4 , 0 );
setMoveKey( spep_3 + 18, 1, 73.5, -20.4 , 0 );
setScaleKey( spep_3 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 6, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 8, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 18, 1, 1.3, 1.3 );
setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 58, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 315, 43.5 , 0 );
setMoveKey( SP_dodge+2, 1, 254.6, 27.6 , 0 );
setMoveKey( SP_dodge+4, 1, 194.3, 11.6 , 0  );
setMoveKey( SP_dodge+6, 1, 133.9, -4.4 , 0 );
setMoveKey( SP_dodge+8, 1, 73.5, -20.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.9, 1.9 );
setScaleKey( SP_dodge+2, 1,  1.75, 1.75 );
setScaleKey( SP_dodge+4, 1, 1.6, 1.6 );
setScaleKey( SP_dodge+6, 1, 1.45, 1.45 );
setScaleKey( SP_dodge+8, 1, 1.3, 1.3 );

changeAnime(  SP_dodge+9,    1,  101);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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

--***敵の動き***
setDisp( spep_3 + 34, 1, 0 );
changeAnime( spep_3 + 19, 1, 107 );  --手前に吹き飛ぶ
changeAnime( spep_3 + 20, 1, 107 );
setMoveKey( spep_3 + 19, 1, 143.3, -155.3 , 0 );  --手前に吹き飛ぶ
setMoveKey( spep_3 + 20, 1, 143.3, -155.3 , 0 );
setMoveKey( spep_3 + 22, 1, 210.4, -176.5 , 0 );
setMoveKey( spep_3 + 24, 1, 277.5, -197.8 , 0 );
setMoveKey( spep_3 + 26, 1, 344.6, -219.1 , 0 );
setMoveKey( spep_3 + 28, 1, 411.8, -240.4 , 0 );
setMoveKey( spep_3 + 30, 1, 478.9, -261.6 , 0 );
setMoveKey( spep_3 + 32, 1, 546, -282.9 , 0 );
setMoveKey( spep_3 + 34, 1, 613.2, -304.2 , 0 );
setScaleKey( spep_3 + 19, 1, 0.8, 0.8 );  --手前に吹き飛ぶ
setScaleKey( spep_3 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 22, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 32, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 34, 1, 2.6, 2.6 );
setRotateKey( spep_3 + 19, 1, -17.6 );  --手前に吹き飛ぶ
setRotateKey( spep_3 + 20, 1, -17.6 );
setRotateKey( spep_3 + 22, 1, -18.5 );
setRotateKey( spep_3 + 24, 1, -19.2 );
setRotateKey( spep_3 + 26, 1, -20 );
setRotateKey( spep_3 + 28, 1, -20.8 );
setRotateKey( spep_3 + 30, 1, -21.5 );
setRotateKey( spep_3 + 32, 1, -22.3 );
setRotateKey( spep_3 + 34, 1, -23.1 );

-- 書き文字エントリー
ct_03 = entryEffectLife( spep_3+18, 10005, 30, 0x100, -1, 0, 78.4, 107.6); -- ガッ

setEffMoveKey( spep_3 + 18, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 19, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 20, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 22, ct_03, 88, 120.1 , 0 );
setEffMoveKey( spep_3 + 24, ct_03, 103.8, 139.6 , 0 );
setEffMoveKey( spep_3 + 26, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 28, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 30, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 32, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 34, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 36, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 38, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 40, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 42, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 44, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 46, ct_03, 134.6, 173.1 , 0 );
setEffMoveKey( spep_3 + 48, ct_03, 158, 196.4 , 0 );
setEffScaleKey( spep_3 + 18, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 19, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 20, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 22, ct_03, 1.16, 1.16 );
setEffScaleKey( spep_3 + 24, ct_03, 1.57, 1.57 );
setEffScaleKey( spep_3 + 26, ct_03, 1.98, 1.98 );
setEffScaleKey( spep_3 + 44, ct_03, 1.98, 1.98 );
setEffScaleKey( spep_3 + 46, ct_03, 2.2, 2.2 );
setEffScaleKey( spep_3 + 48, ct_03, 2.42, 2.42 );
setEffRotateKey( spep_3 + 18, ct_03, -26.1 );
setEffRotateKey( spep_3 + 19, ct_03, -26.1 );
setEffRotateKey( spep_3 + 20, ct_03, -26.1 );
setEffRotateKey( spep_3 + 22, ct_03, -26.2 );
setEffRotateKey( spep_3 + 48, ct_03, -26.2 );
setEffAlphaKey( spep_3 + 18, ct_03, 0 );
setEffAlphaKey( spep_3 + 19, ct_03, 255 );--ここから表示
setEffAlphaKey( spep_3 + 20, ct_03, 255 );
setEffAlphaKey( spep_3 + 44, ct_03, 255 );
setEffAlphaKey( spep_3 + 46, ct_03, 128 );
setEffAlphaKey( spep_3 + 48, ct_03, 0 );

setEffShake(  spep_3+18,  ct_03,  30,  20);  --揺れ

--***集中線***
shuchusen_3 = entryEffectLife( spep_3 + 18, 906, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3 + 18,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 18,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 18,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 18,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 19,  shuchusen_3,  255);--ここから表示
setEffAlphaKey( spep_3 + 20,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 58,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 58,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 58,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 58,  shuchusen_3,  255);

--SE
playSe( spep_3 + 20, 1010);

-- ** エフェクト等 ** --
entryFade(spep_3+48,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


------------------------------------------------------
-- 連続蹴り
------------------------------------------------------

spep_4=spep_3+58;

--***フェードと背景***
entryFade(spep_4,0,2,12,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+152 +2,8,10,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 170 +4, 0, 0, 0, 0, 255);  -- 黒　背景

--***流線右向き***
sen4a = entryEffectLife( spep_4, 921, 28, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_4,  sen4a,  0,  0);
setEffScaleKey( spep_4, sen4a, 1.5, 1.5 );
setEffRotateKey( spep_4, sen4a, 201);
setEffAlphaKey( spep_4,  sen4a,  255);
setEffMoveKey( spep_4 + 28,  sen4a,  0,  0);
setEffScaleKey( spep_4 + 28, sen4a, 1.5, 1.5 );
setEffRotateKey( spep_4 + 28, sen4a, 201);
setEffAlphaKey( spep_4 + 28,  sen4a,  255);

--***流直線斜め***
sen4b = entryEffectLife( spep_4, 920, 98, 0x80,  -1,  0,  0,  0); -- 流直線斜め

setEffMoveKey( spep_4,  sen4b,  0,  0);
setEffScaleKey( spep_4, sen4b, 2.1, 1.3 );
setEffRotateKey( spep_4, sen4b, 104);
setEffAlphaKey( spep_4,  sen4b,  0);
setEffAlphaKey( spep_4 + 28,  sen4b,  0);
setEffAlphaKey( spep_4 + 29,  sen4b,  255);--ここから表示
setEffAlphaKey( spep_4 + 30,  sen4b,  255);
setEffMoveKey( spep_4 + 98,  sen4b,  0,  0);
setEffScaleKey( spep_4 + 98, sen4b, 2.1, 1.3 );
setEffRotateKey( spep_4 + 98, sen4b, 104);
setEffAlphaKey( spep_4 + 98,  sen4b,  255);

--***集中線***
shuchusen_4 = entryEffectLife( spep_4, 906, 170, 0x80,  -1, 140, 260,  0);

setEffMoveKey( spep_4,  shuchusen_4,  140, 260);
setEffScaleKey( spep_4,  shuchusen_4,  1.92,  2.02);
setEffRotateKey( spep_4,  shuchusen_4,  -26.7);
setEffAlphaKey( spep_4,  shuchusen_4,  0);
setEffAlphaKey( spep_4 + 98,  shuchusen_4,  0);--ここから表示
setEffAlphaKey( spep_4 + 99,  shuchusen_4,  255);--ここから表示
setEffAlphaKey( spep_4 + 100,  shuchusen_4,  255);
setEffMoveKey( spep_4 + 170,  shuchusen_4,  140, 260);
setEffScaleKey( spep_4 + 170,  shuchusen_4,  1.92,  2.02);
setEffRotateKey( spep_4 + 170,  shuchusen_4,  -26.7);
setEffAlphaKey( spep_4 + 170,  shuchusen_4,  255);

--***ふっ飛ばし流線***
sen4c = entryEffectLife( spep_4, 924, 170, 0x80,  -1,  0,  -250,  -100); -- ふっ飛ばし流線

setEffMoveKey( spep_4,  sen4c,  -250,  -100);
setEffScaleKey( spep_4, sen4c, 0.97, 1.19 );
setEffRotateKey( spep_4, sen4c, -45.2);
setEffAlphaKey( spep_4,  sen4c,  0);
setEffAlphaKey( spep_4 + 116,  sen4c,  0);
setEffAlphaKey( spep_4 + 117,  sen4c,  255);--ここから表示
setEffAlphaKey( spep_4 + 118,  sen4c,  255);
setEffMoveKey( spep_4 + 170,  sen4c,  -250,  -100);
setEffScaleKey( spep_4 + 170, sen4c, 0.97, 1.19 );
setEffRotateKey( spep_4 + 170, sen4c, -45.2);
setEffAlphaKey( spep_4 + 170,  sen4c,  255);

--***連続蹴り***
combo04=entryEffect(spep_4,SP_04,0x80,-1,0,0,0);   -- 連続蹴り(170F)

setEffMoveKey( spep_4,combo04,  0,  0);
setEffMoveKey( spep_4 + 170,combo04,  0,  0);
setEffScaleKey( spep_4,combo04,1.0,1.0);
setEffScaleKey( spep_4 + 170,combo04,1.0,1.0);
setEffRotateKey( spep_4,combo04,0);
setEffRotateKey( spep_4 + 170,combo04,0);
setEffAlphaKey( spep_4,combo04,255);
setEffAlphaKey( spep_4 + 170,combo04,255);
setEffAlphaKey( spep_4 + 171,combo04,0);
setEffAlphaKey( spep_4 + 172,combo04,0);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 140, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 + 117, 1, 107 );--蹴り落とし
setMoveKey( spep_4 + 0, 1, -154.8, -21.3 , 0 );
setMoveKey( spep_4 + 2, 1, -145.7, -20.7 , 0 );
setMoveKey( spep_4 + 4, 1, -132.7, -28.1 , 0 );
setMoveKey( spep_4 + 6, 1, -123.7, -27.4 , 0 );
setMoveKey( spep_4 + 8, 1, -118.7, -34.8 , 0 );
setMoveKey( spep_4 + 10, 1, -109.6, -34.2 , 0 );
setMoveKey( spep_4 + 12, 1, -96.6, -41.5 , 0 );
setMoveKey( spep_4 + 14, 1, -87.6, -40.9 , 0 );
setMoveKey( spep_4 + 16, 1, -82.6, -48.3 , 0 );
setMoveKey( spep_4 + 18, 1, -73.5, -47.7 , 0 );
setMoveKey( spep_4 + 20, 1, -60.5, -55 , 0 );
setMoveKey( spep_4 + 22, 1, -51.5, -54.4 , 0 );
setMoveKey( spep_4 + 24, 1, -46.5, -61.8 , 0 );
setMoveKey( spep_4 + 26, 1, -37.4, -61.1 , 0 );
setMoveKey( spep_4 + 28, 1, -24.4, -68.5 , 0 );
setMoveKey( spep_4 + 29, 1, 78.1, 136.5 , 0 );
setMoveKey( spep_4 + 30, 1, 78.1, 136.5 , 0 );
setMoveKey( spep_4 + 31, 1, 142.8, 267.2 , 0 );--蹴り上げ
setMoveKey( spep_4 + 32, 1, 142.8, 267.2 , 0 );
setMoveKey( spep_4 + 34, 1, 122.4, 234.1 , 0 );
setMoveKey( spep_4 + 36, 1, 101.4, 214.9 , 0 );
setMoveKey( spep_4 + 38, 1, 86.8, 172.2 , 0 );
setMoveKey( spep_4 + 40, 1, 89, 185.2 , 0 );
setMoveKey( spep_4 + 42, 1, 87.1, 190.1 , 0 );
setMoveKey( spep_4 + 44, 1, 89.3, 203 , 0 );
setMoveKey( spep_4 + 46, 1, 95.5, 207.9 , 0 );
setMoveKey( spep_4 + 48, 1, 97.7, 220.9 , 0 );
setMoveKey( spep_4 + 50, 1, 95.8, 225.8 , 0 );
setMoveKey( spep_4 + 52, 1, 98, 238.7 , 0 );
setMoveKey( spep_4 + 54, 1, 104.2, 243.7 , 0 );
setMoveKey( spep_4 + 56, 1, 106.4, 256.6 , 0 );
setMoveKey( spep_4 + 58, 1, 104.5, 261.5 , 0 );
setMoveKey( spep_4 + 60, 1, 106.7, 274.5 , 0 );
setMoveKey( spep_4 + 62, 1, 112.9, 279.4 , 0 );
setMoveKey( spep_4 + 64, 1, 115.1, 292.3 , 0 );
setMoveKey( spep_4 + 66, 1, 113.2, 297.2 , 0 );
setMoveKey( spep_4 + 68, 1, 115.4, 310.2 , 0 );
setMoveKey( spep_4 + 70, 1, 121.6, 315.1 , 0 );
setMoveKey( spep_4 + 72, 1, 123.8, 328 , 0 );
setMoveKey( spep_4 + 74, 1, 121.9, 333 , 0 );
setMoveKey( spep_4 + 76, 1, 124.1, 345.9 , 0 );
setMoveKey( spep_4 + 78, 1, 114.4, 279.1 , 0 );
setMoveKey( spep_4 + 80, 1, 100.7, 220.2 , 0 );
setMoveKey( spep_4 + 82, 1, 82.9, 153.5 , 0 );
setMoveKey( spep_4 + 84, 1, 69.2, 94.6 , 0 );
setMoveKey( spep_4 + 86, 1, 59.5, 27.8 , 0 );
setMoveKey( spep_4 + 88, 1, 58.7, 28.3 , 0 );
setMoveKey( spep_4 + 90, 1, 54, 20.8 , 0 );
setMoveKey( spep_4 + 92, 1, 53.2, 21.3 , 0 );
setMoveKey( spep_4 + 94, 1, 56.4, 13.8 , 0 );
setMoveKey( spep_4 + 96, 1, 55.7, 14.3 , 0 );
setMoveKey( spep_4 + 98, 1, 50.9, 6.8 , 0 );
setMoveKey( spep_4 + 100, 1, 50.1, 7.3 , 0 );
setMoveKey( spep_4 + 102, 1, 53.4, -0.2 , 0 );
setMoveKey( spep_4 + 104, 1, 52.6, 0.3 , 0 );
setMoveKey( spep_4 + 106, 1, 47.9, -7.1 , 0 );
setMoveKey( spep_4 + 108, 1, 47.1, -6.6 , 0 );
setMoveKey( spep_4 + 110, 1, 50.3, -14.1 , 0 );
setMoveKey( spep_4 + 112, 1, 49.6, -13.6 , 0 );
setMoveKey( spep_4 + 114, 1, 44.8, -21.1 , 0 );
setMoveKey( spep_4 + 116, 1, 44.1, -20.6 , 0 );
setMoveKey( spep_4 + 117, 1, 148.8, -55.1 , 0 );--蹴り落とし
setMoveKey( spep_4 + 118, 1, 148.8, -55.1 , 0 );
setMoveKey( spep_4 + 120, 1, 206.5, -274.6 , 0 );
setMoveKey( spep_4 + 122, 1, 251.8, -470 , 0 );
setMoveKey( spep_4 + 124, 1, 287.1, -609.3 , 0 );
setMoveKey( spep_4 + 126, 1, 315.2, -717.2 , 0 );
setMoveKey( spep_4 + 128, 1, 329.8, -780.2 , 0 );
setMoveKey( spep_4 + 130, 1, 327.5, -808 , 0 );
setMoveKey( spep_4 + 132, 1, 370, -955.4 , 0 );
setMoveKey( spep_4 + 134, 1, 416.6, -1110.9 , 0 );
setMoveKey( spep_4 + 140, 1, 416.6, -1110.9 , 0 );
setScaleKey( spep_4 + 0, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 18, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 20, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 24, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 31, 1, 2.34, 2.34 );--蹴り上げ
setScaleKey( spep_4 + 32, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 34, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 36, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 38, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 116, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 117, 1, 1.08, 1.08 );--蹴り落とし
setScaleKey( spep_4 + 118, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 120, 1, 1.195, 1.195 );
setScaleKey( spep_4 + 122, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 124, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 128, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 130, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 132, 1, 1.395, 1.395 );
setScaleKey( spep_4 + 134, 1, 1.455, 1.455 );
setScaleKey( spep_4 + 140, 1, 1.455, 1.455 );
setRotateKey( spep_4 + 0, 1, 53.4 );
setRotateKey( spep_4 + 28, 1, 53.4 );
setRotateKey( spep_4 + 30, 1, 35.7 );
setRotateKey( spep_4 + 116, 1, 35.7 );
setRotateKey( spep_4 + 117, 1, 10.9 );--蹴り落とし
setRotateKey( spep_4 + 118, 1, 10.9 );
setRotateKey( spep_4 + 134, 1, 10.9 );
setRotateKey( spep_4 + 140, 1, 10.9 );

-- 書き文字エントリ1ー
ct_04a = entryEffectLife( spep_4 + 28,  10005, 30, 0x100, -1, 0, 136.5, -110.5 ); -- ガッ

setEffMoveKey( spep_4 + 28, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 29, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 30, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 32, ct_04a, 146, -98 , 0 );
setEffMoveKey( spep_4 + 34, ct_04a, 161.8, -78.5 , 0 );
setEffMoveKey( spep_4 + 36, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 38, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 40, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 42, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 44, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 46, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 48, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 50, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 52, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 54, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 56, ct_04a, 192.6, -45 , 0 );
setEffMoveKey( spep_4 + 58, ct_04a, 216, -21.7 , 0 );
setEffScaleKey( spep_4 + 28, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 29, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 30, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 32, ct_04a, 1.16, 1.16 );
setEffScaleKey( spep_4 + 34, ct_04a, 1.57, 1.57 );
setEffScaleKey( spep_4 + 36, ct_04a, 1.98, 1.98 );
setEffScaleKey( spep_4 + 54, ct_04a, 1.98, 1.98 );
setEffScaleKey( spep_4 + 56, ct_04a, 2.2, 2.2 );
setEffScaleKey( spep_4 + 58, ct_04a, 2.42, 2.42 );
setEffRotateKey( spep_4 + 28, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 29, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 30, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 32, ct_04a, -26.2 );
setEffRotateKey( spep_4 + 58, ct_04a, -26.2 );
setEffAlphaKey( spep_4 + 28, ct_04a, 0 );
setEffAlphaKey( spep_4 + 29, ct_04a, 255 );--ここから表示
setEffAlphaKey( spep_4 + 30, ct_04a, 255 );
setEffAlphaKey( spep_4 + 54, ct_04a, 255 );
setEffAlphaKey( spep_4 + 56, ct_04a, 128 );
setEffAlphaKey( spep_4 + 58, ct_04a, 0 );

setEffShake(  spep_4 + 28,  ct_04a,  30,  10);  --揺れ

-- 書き文字エントリ2ー
ct_04b = entryEffectLife( spep_4 + 116,  10021, 28, 0x100, -1, 0, 70.4, 210 ); -- パゴォ

setEffMoveKey( spep_4 + 116, ct_04b, 70.4, 210 , 0 );
setEffMoveKey( spep_4 + 117, ct_04b, 70.4, 210 , 0 );
setEffMoveKey( spep_4 + 118, ct_04b, 84.1, 173.8 , 0 );
setEffMoveKey( spep_4 + 120, ct_04b, 91.7, 143.3 , 0 );
setEffMoveKey( spep_4 + 122, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 124, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 126, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 128, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 130, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 132, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 134, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 136, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 138, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 140, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 142, ct_04b, 115.1, 87.7 , 0 );
setEffMoveKey( spep_4 + 144, ct_04b, 121.9, 70.9 , 0 );
setEffScaleKey( spep_4 + 116, ct_04b, 0.62, 0.62 );
setEffScaleKey( spep_4 + 117, ct_04b, 0.62, 0.62 );
setEffScaleKey( spep_4 + 118, ct_04b, 1.15, 1.15 );
setEffScaleKey( spep_4 + 120, ct_04b, 1.68, 1.68 );
setEffScaleKey( spep_4 + 122, ct_04b, 2.2, 2.2 );
setEffScaleKey( spep_4 + 140, ct_04b, 2.2, 2.2 );
setEffScaleKey( spep_4 + 142, ct_04b, 2.53, 2.53 );
setEffScaleKey( spep_4 + 144, ct_04b, 2.85, 2.85 );
setEffRotateKey( spep_4 + 116, ct_04b, -22.1 );
setEffRotateKey( spep_4 + 117, ct_04b, -22.1 );
setEffRotateKey( spep_4 + 118, ct_04b, -22.2 );
setEffRotateKey( spep_4 + 144, ct_04b, -22.2 );
setEffAlphaKey( spep_4 + 116, ct_04b, 0 );
setEffAlphaKey( spep_4 + 117, ct_04b, 255 );--ここから表示
setEffAlphaKey( spep_4 + 118, ct_04b, 255 );
setEffAlphaKey( spep_4 + 138, ct_04b, 255 );
setEffAlphaKey( spep_4 + 142, ct_04b, 128 );
setEffAlphaKey( spep_4 + 144, ct_04b, 0 );

setEffShake(  spep_4 + 116,  ct_04b,  28,  15);  --揺れ

--SE
playSe( spep_4 + 30, 1001);
playSe( spep_4 + 118, 1010);
playSe( spep_4 + 128, 1011);

------------------------------------------------------
-- 衝撃波
------------------------------------------------------

spep_5=spep_4+170;

--***フェードと背景***
entryFade(spep_5,0,0,12,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+36,4,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+72,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_5, 0, 82, 0, 0, 0, 0, 255);  -- 黒　背景

--***集中線1***
shuchusen_5a = entryEffectLife( spep_5, 906, 14, 0x80,  -1, 150, -300,  0);

setEffMoveKey( spep_5,  shuchusen_5a,  150, -300);
setEffScaleKey( spep_5,  shuchusen_5a,  1.6,  1.8);
setEffRotateKey( spep_5,  shuchusen_5a,  0);
setEffAlphaKey( spep_5,  shuchusen_5a,  255);
setEffMoveKey( spep_5 + 14,  shuchusen_5a,  150, -300);
setEffScaleKey( spep_5 + 14,  shuchusen_5a,  1.6,  1.8);
setEffRotateKey( spep_5 + 14,  shuchusen_5a,  0);
setEffAlphaKey( spep_5 + 14,  shuchusen_5a,  255);

--***集中線2***
shuchusen_5b = entryEffectLife( spep_5, 906, 82, 0x80,  -1, 150, -300,  0);

setEffMoveKey( spep_5,  shuchusen_5b,  150, -300);
setEffScaleKey( spep_5,  shuchusen_5b,  1.6,  1.8);
setEffRotateKey( spep_5,  shuchusen_5b,  0);
setEffAlphaKey( spep_5,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 54,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 55,  shuchusen_5b,  255);--ここから表示
setEffAlphaKey( spep_5 + 56,  shuchusen_5b,  255);
setEffMoveKey( spep_5 + 82,  shuchusen_5b,  150, -300);
setEffScaleKey( spep_5 + 82,  shuchusen_5b,  1.6,  1.8);
setEffRotateKey( spep_5 + 82,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 82,  shuchusen_5b,  255);

--***流線***
sen5 = entryEffectLife( spep_5, 921, 66, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey( spep_5, sen5,  0,  0);
setEffRotateKey( spep_5, sen5, -116.5);
setEffScaleKey( spep_5, sen5, 1.75, 1.15);
setEffAlphaKey( spep_5,  sen5,  0);
setEffAlphaKey( spep_5 + 38,  sen5,  0);
setEffAlphaKey( spep_5 + 39,  sen5,  0);
setEffAlphaKey( spep_5 + 40,  sen5,  255);--ここから表示
setEffMoveKey( spep_5 + 66, sen5,  0,  0);
setEffRotateKey( spep_5 + 66, sen5, -116.5);
setEffScaleKey( spep_5 + 66, sen5, 1.75, 1.15);
setEffAlphaKey( spep_5 + 66,  sen5,  255);

--***衝撃波（前面）***
buon05a=entryEffect(spep_5,SP_05,0x100,-1,0,0,0);    -- 衝撃波

setEffMoveKey( spep_5,buon05a,  0,  0);
setEffMoveKey( spep_5 + 82,buon05a,  0,  0);
setEffScaleKey( spep_5,buon05a,1.0,1.0);
setEffScaleKey( spep_5 + 82,buon05a,1.0,1.0);
setEffRotateKey( spep_5,buon05a,0);
setEffRotateKey( spep_5 + 82,buon05a,0);
setEffAlphaKey( spep_5,buon05a,255);
setEffAlphaKey( spep_5 + 82,buon05a,255);
setEffAlphaKey( spep_5 + 83,buon05a,0);
setEffAlphaKey( spep_5 + 84,buon05a,0);

--***地面（後面）***
buon05b=entryEffect(spep_5,SP_06,0x80,-1,0,0,0);    -- 地面

setEffMoveKey( spep_5,buon05b,  0,  0);
setEffMoveKey( spep_5 + 82,buon05b,  0,  0);
setEffScaleKey( spep_5,buon05b,1.0,1.0);
setEffScaleKey( spep_5 + 82,buon05b,1.0,1.0);
setEffRotateKey( spep_5,buon05b,0);
setEffRotateKey( spep_5 + 82,buon05b,0);
setEffAlphaKey( spep_5,buon05b,255);
setEffAlphaKey( spep_5 + 82,buon05b,255);
setEffAlphaKey( spep_5 + 83,buon05b,0);
setEffAlphaKey( spep_5 + 84,buon05b,0);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 82, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
setShakeChara( spep_5 + 0, 1, 20, 10 );
setShakeChara( spep_5 + 50, 1, 32, 10 );
setMoveKey( spep_5 + 0, 1, 134.5, -334.7 , 0 );
setMoveKey( spep_5 + 80, 1, 134.5, -334.7 , 0 );
setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 80, 1, 1.3, 1.3 );
setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 80, 1, 0 );

-- 書き文字エントリー
ct_05 = entryEffectLife( spep_5 + 40,  10012, 40, 0x100, -1, 0, 78.7, 166.2 ); -- ズオッ

setEffMoveKey( spep_5 + 40, ct_05, 78.7, 166.2 , 0 );
setEffMoveKey( spep_5 + 42, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 44, ct_05, 86.4, 164.6 , 0 );
setEffMoveKey( spep_5 + 46, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 48, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 50, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 52, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 54, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 56, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 58, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 60, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 62, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 64, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 66, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 68, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 70, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 72, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 74, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 76, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 78, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 80, ct_05, 90.2, 163.8 , 0 );
setEffScaleKey( spep_5 + 40, ct_05, 0.77, 0.77 );
setEffScaleKey( spep_5 + 42, ct_05, 1.23, 1.23 );
setEffScaleKey( spep_5 + 44, ct_05, 1.69, 1.69 );
setEffScaleKey( spep_5 + 46, ct_05, 2.15, 2.15 );
setEffScaleKey( spep_5 + 80, ct_05, 2.15, 2.15 );
setEffRotateKey( spep_5 + 40, ct_05, -32.9 );
setEffRotateKey( spep_5 + 42, ct_05, -33 );
setEffRotateKey( spep_5 + 80, ct_05, -33 );
setEffAlphaKey( spep_5 + 40, ct_05, 255 );
setEffAlphaKey( spep_5 + 80, ct_05, 255 );

setEffShake(  spep_5 + 40,  ct_05,  40,  25);  --揺れ

--SE
playSe( spep_5 + 40, 1027);
playSe( spep_5 + 50, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_6=spep_5+82;

--***フェードと背景***
entryFadeBg(spep_6, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背景

--***爆発***
bomb06=entryEffect(spep_6,SP_07,0x80,-1,0,0,0);   -- 爆発

setEffMoveKey( spep_6,bomb06,  0,  0);
setEffMoveKey( spep_6 + 100,bomb06,  0,  0);
setEffScaleKey( spep_6,bomb06,1.0,1.0);
setEffScaleKey( spep_6 + 100,bomb06,1.0,1.0);
setEffRotateKey( spep_6,bomb06,0);
setEffRotateKey( spep_6 + 100,bomb06,0);
setEffAlphaKey( spep_6,bomb06,255);
setEffAlphaKey( spep_6 + 100,bomb06,255);

--***敵の動き***
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setMoveKey( spep_6 + 0, 1, 26.2, 3.9 , 0 );
setMoveKey( spep_6 + 2, 1, 43.3, -24.1 , 0 );
setMoveKey( spep_6 + 4, 1, 0.1, -43.6 , 0 );
setMoveKey( spep_6 + 6, 1, 43.7, -70.4 , 0 );
setMoveKey( spep_6 + 8, 1, -14.5, -62.3 , 0 );
setMoveKey( spep_6 + 10, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 12, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 14, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 16, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 18, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 20, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 22, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 24, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 100, 1, -33.9, -162.5 , 0 );
setScaleKey( spep_6 + 0, 1, 0.312, 0.312 );
setScaleKey( spep_6 + 2, 1, 0.45599999999999996, 0.45599999999999996 );
setScaleKey( spep_6 + 4, 1, 0.636, 0.636 );
setScaleKey( spep_6 + 6, 1, 0.846, 0.846 );
setScaleKey( spep_6 + 8, 1, 1.086, 1.086 );
setScaleKey( spep_6 + 10, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 12, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 14, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 16, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 18, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 20, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 22, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 24, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 100, 1, 1.446, 1.446 );
setRotateKey( spep_6 + 0, 1, 63.3 );
setRotateKey( spep_6 + 2, 1, 198.3 );
setRotateKey( spep_6 + 4, 1, 363.3 );
setRotateKey( spep_6 + 6, 1, 558.3 );
setRotateKey( spep_6 + 8, 1, 783.3 );
setRotateKey( spep_6 + 10, 1, 1038.3 );
setRotateKey( spep_6 + 100, 1, 1038.3 );

setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+6,6,16);
setShake( spep_6+12,15,10);

setShakeChara( spep_6+14, 1, 5,  11);
setShakeChara( spep_6+20, 1, 10, 20);

--entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- 書き文字エントリー
ct_06 = entryEffectLife( spep_6+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ

setEffShake( spep_6+14, ct_06, 30, 11);
setEffRotateKey( spep_6+14, ct_06, -40);
setEffRotateKey( spep_6+15, ct_06, -40);
setEffRotateKey( spep_6+16, ct_06, -40);
setEffRotateKey( spep_6+114, ct_06, -40);
setEffScaleKey( spep_6+14, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+15, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct_06, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct_06, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct_06, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+114, ct_06, 3.8, 3.8);
setEffAlphaKey( spep_6+14, ct_06, 255);
setEffAlphaKey( spep_6+15, ct_06, 255);
setEffAlphaKey( spep_6+95, ct_06, 255);
setEffAlphaKey( spep_6+114, ct_06, 127.5);

--***SE***
playSe( spep_6+2, SE_11);
playSe( spep_6+8, SE_10);

--***ガッの集中線、ひび割れ***
shuchusen = entryEffectLife( spep_6+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_6+2, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+100);

else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_0=0;

--***フェードと背景***
entryFade(spep_0 + 6,4,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0 + 38,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0 + 0, 48, 0, 0, 0, 0, 0, 200);  -- 黒　背景

--***気溜め***
kidame01=entryEffect(spep_0,SP_01x,0x100,-1,0,0,0);   -- 溜め1(48F)

setEffMoveKey( spep_0,kidame01, 0, 0);
setEffMoveKey( spep_0 + 48,kidame01, 0, 0);
setEffScaleKey( spep_0,kidame01,1.0,1.0);
setEffScaleKey( spep_0 + 48,kidame01,1.0,1.0);
setEffRotateKey( spep_0,kidame01,0);
setEffRotateKey( spep_0 + 48,kidame01,0);
setEffAlphaKey( spep_0,kidame01,255);
setEffAlphaKey( spep_0 + 48,kidame01,255);
setEffAlphaKey( spep_0 + 49,kidame01,0);
setEffAlphaKey( spep_0 + 50,kidame01,0);

--***集中線***
shuchusen_0 = entryEffectLife( spep_0, 906, 48, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_0,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0,  shuchusen_0,  0);
setEffAlphaKey( spep_0,  shuchusen_0,  255);
setEffMoveKey( spep_0 + 48,  shuchusen_0,  0,  0);
setEffScaleKey( spep_0 + 48,  shuchusen_0,  1.0,  1.0);
setEffRotateKey( spep_0 + 48,  shuchusen_0,  0);
setEffAlphaKey( spep_0 + 48,  shuchusen_0,  255);

--***SE***
playSe( spep_0 + 10, SE_01);  --気が広がる

------------------------------------------------------
-- 突進
------------------------------------------------------

spep_1=spep_0+48;

--***フェードと背景***
entryFade(spep_1,0,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+104,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_1, 0, 54, 0, 0, 0, 0, 200);  -- 黒　背景
entryFadeBg(spep_1 + 18, 36, 60, 0, 0, 0, 0, 255);  -- 黒　背景

--***突進***
tosshin02=entryEffect(spep_1,SP_02x,0x100,-1,0,0,0);   -- 突進(114F)

setEffMoveKey( spep_1,tosshin02, 0, 0);
setEffMoveKey( spep_1 + 114,tosshin02, 0, 0);
setEffScaleKey(spep_1,tosshin02,1.0,1.0);
setEffScaleKey(spep_1 + 114,tosshin02,1.0,1.0);
setEffRotateKey(spep_1,tosshin02,0);
setEffRotateKey(spep_1 + 114,tosshin02,0);
setEffAlphaKey(spep_1,tosshin02,255);
setEffAlphaKey(spep_1 + 114,tosshin02,255);
setEffAlphaKey(spep_1 + 115,tosshin02,0);
setEffAlphaKey(spep_1 + 116,tosshin02,0);

--***流線***
sen1 = entryEffectLife( spep_1, 921, 114, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_1,  sen1,  0,  0);
setEffRotateKey( spep_1, sen1, 180);
setEffScaleKey( spep_1, sen1, 1.0, 1.0);
setEffAlphaKey( spep_1,  sen1,  255);
setEffMoveKey( spep_1 + 114,  sen1,  0,  0);
setEffRotateKey( spep_1 + 114, sen1, 180);
setEffScaleKey( spep_1 + 114, sen1, 1.0, 1.0);
setEffAlphaKey( spep_1 + 114,  sen1,  255);

--***カットイン***
--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_1+28,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+28,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogogo_1 = entryEffectLife( spep_1+42, 190006,72, 0x100, -1, 0, 50, 510);    -- ゴゴゴ・・・

setEffMoveKey( spep_1+42,ctgogogo_1, 50, 510);
setEffScaleKey( spep_1+42, ctgogogo_1,-0.8,0.8);
setEffRotateKey( spep_1+42, ctgogogo_1, 0);
setEffAlphaKey( spep_1+42, ctgogogo_1, 255);
setEffMoveKey( spep_1+114,ctgogogo_1, 50, 510);
setEffScaleKey( spep_1+114, ctgogogo_1,-0.8,0.8);
setEffRotateKey( spep_1+114, ctgogogo_1, 0);
setEffAlphaKey( spep_1+114, ctgogogo_1, 255);

setEffShake( spep_1+42, ctgogogo_1, 72, 10);

--SE--
playSe( spep_1 + 28, SE_04);

--------------------------------------
--カードカットイン(90F)
--------------------------------------

spep_2=spep_1+114;

--***フェードと背景***
entryFade(spep_2,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+86,2,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

speff2=entryEffect(spep_2,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--***集中線***
shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2 + 90,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2 + 90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2 + 90,  shuchusen_2,  0);
setEffAlphaKey( spep_2 + 90,  shuchusen_2,  255);

--SE--
playSe(spep_2,SE_05);

------------------------------------------------------
-- 頭突き
------------------------------------------------------

spep_3=spep_2+90;

--***流線***
sen3 = entryEffectLife( spep_3, 921, 18, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_3,  sen3,  0,  0);
setEffRotateKey( spep_3, sen3, 172);
setEffScaleKey( spep_3, sen3, 1.2, 1.2);
setEffAlphaKey( spep_3,  sen3,  255);
setEffMoveKey( spep_3 + 18,  sen3,  0,  0);
setEffRotateKey( spep_3 + 18, sen3, 172);
setEffScaleKey( spep_3 + 18, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 18,  sen3,  255);

--***頭突き***
zutuki03=entryEffect(spep_3,SP_03x,0x80,-1,0,0,0);   -- 頭突き(58F)

setEffMoveKey( spep_3, zutuki03,  0,  0);
setEffMoveKey( spep_3 + 58, zutuki03,  0,  0);
setEffScaleKey( spep_3, zutuki03,1.0,1.0);
setEffScaleKey( spep_3 + 58, zutuki03,1.0,1.0);
setEffRotateKey( spep_3, zutuki03,0);
setEffRotateKey( spep_3 + 58, zutuki03,0);
setEffAlphaKey( spep_3, zutuki03,255);
setEffAlphaKey( spep_3 + 58, zutuki03,255);
setEffAlphaKey( spep_3 + 59, zutuki03,0);
setEffAlphaKey( spep_3 + 60, zutuki03,0);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 102 );
setMoveKey( spep_3 + 0, 1, 556.5, 107.4 , 0 );
setMoveKey( spep_3 + 2, 1, 556.5, 107.4 , 0 );
setMoveKey( spep_3 + 4, 1, 496.1, 91.5 , 0 );
setMoveKey( spep_3 + 6, 1, 435.8, 75.5 , 0  );
setMoveKey( spep_3 + 8, 1, 375.4, 59.5 , 0 );
setMoveKey( spep_3 + 10, 1, 315, 43.5 , 0 );
setMoveKey( spep_3 + 12, 1, 254.6, 27.6 , 0  );
setMoveKey( spep_3 + 14, 1, 194.3, 11.6 , 0 );
setMoveKey( spep_3 + 16, 1, 133.9, -4.4 , 0 );
setMoveKey( spep_3 + 18, 1, 73.5, -20.4 , 0 );
setScaleKey( spep_3 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 4, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 6, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 8, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 18, 1, 1.3, 1.3 );
setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 58, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 315, 43.5 , 0 );
setMoveKey( SP_dodge+2, 1, 254.6, 27.6 , 0 );
setMoveKey( SP_dodge+4, 1, 194.3, 11.6 , 0  );
setMoveKey( SP_dodge+6, 1, 133.9, -4.4 , 0 );
setMoveKey( SP_dodge+8, 1, 73.5, -20.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.9, 1.9 );
setScaleKey( SP_dodge+2, 1,  1.75, 1.75 );
setScaleKey( SP_dodge+4, 1, 1.6, 1.6 );
setScaleKey( SP_dodge+6, 1, 1.45, 1.45 );
setScaleKey( SP_dodge+8, 1, 1.3, 1.3 );

changeAnime(  SP_dodge+9,    1,  101);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

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

--***敵の動き***
setDisp( spep_3 + 34, 1, 0 );
changeAnime( spep_3 + 19, 1, 107 );  --手前に吹き飛ぶ
changeAnime( spep_3 + 20, 1, 107 );
setMoveKey( spep_3 + 19, 1, 143.3, -155.3 , 0 );  --手前に吹き飛ぶ
setMoveKey( spep_3 + 20, 1, 143.3, -155.3 , 0 );
setMoveKey( spep_3 + 22, 1, 210.4, -176.5 , 0 );
setMoveKey( spep_3 + 24, 1, 277.5, -197.8 , 0 );
setMoveKey( spep_3 + 26, 1, 344.6, -219.1 , 0 );
setMoveKey( spep_3 + 28, 1, 411.8, -240.4 , 0 );
setMoveKey( spep_3 + 30, 1, 478.9, -261.6 , 0 );
setMoveKey( spep_3 + 32, 1, 546, -282.9 , 0 );
setMoveKey( spep_3 + 34, 1, 613.2, -304.2 , 0 );
setScaleKey( spep_3 + 19, 1, 0.8, 0.8 );  --手前に吹き飛ぶ
setScaleKey( spep_3 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 22, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 32, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 34, 1, 2.6, 2.6 );
setRotateKey( spep_3 + 19, 1, -17.6 );  --手前に吹き飛ぶ
setRotateKey( spep_3 + 20, 1, -17.6 );
setRotateKey( spep_3 + 22, 1, -18.5 );
setRotateKey( spep_3 + 24, 1, -19.2 );
setRotateKey( spep_3 + 26, 1, -20 );
setRotateKey( spep_3 + 28, 1, -20.8 );
setRotateKey( spep_3 + 30, 1, -21.5 );
setRotateKey( spep_3 + 32, 1, -22.3 );
setRotateKey( spep_3 + 34, 1, -23.1 );

-- 書き文字エントリー
ct_03 = entryEffectLife( spep_3+18, 10005, 30, 0x100, -1, 0, 78.4, 107.6); -- ガッ

setEffMoveKey( spep_3 + 18, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 19, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 20, ct_03, 78.4, 107.6 , 0 );
setEffMoveKey( spep_3 + 22, ct_03, 88, 120.1 , 0 );
setEffMoveKey( spep_3 + 24, ct_03, 103.8, 139.6 , 0 );
setEffMoveKey( spep_3 + 26, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 28, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 30, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 32, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 34, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 36, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 38, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 40, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 42, ct_03, 111.2, 149.7 , 0 );
setEffMoveKey( spep_3 + 44, ct_03, 116.5, 155.6 , 0 );
setEffMoveKey( spep_3 + 46, ct_03, 134.6, 173.1 , 0 );
setEffMoveKey( spep_3 + 48, ct_03, 158, 196.4 , 0 );
setEffScaleKey( spep_3 + 18, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 19, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 20, ct_03, 0.75, 0.75 );
setEffScaleKey( spep_3 + 22, ct_03, 1.16, 1.16 );
setEffScaleKey( spep_3 + 24, ct_03, 1.57, 1.57 );
setEffScaleKey( spep_3 + 26, ct_03, 1.98, 1.98 );
setEffScaleKey( spep_3 + 44, ct_03, 1.98, 1.98 );
setEffScaleKey( spep_3 + 46, ct_03, 2.2, 2.2 );
setEffScaleKey( spep_3 + 48, ct_03, 2.42, 2.42 );
setEffRotateKey( spep_3 + 18, ct_03, -26.1 );
setEffRotateKey( spep_3 + 19, ct_03, -26.1 );
setEffRotateKey( spep_3 + 20, ct_03, -26.1 );
setEffRotateKey( spep_3 + 22, ct_03, -26.2 );
setEffRotateKey( spep_3 + 48, ct_03, -26.2 );
setEffAlphaKey( spep_3 + 18, ct_03, 0 );
setEffAlphaKey( spep_3 + 19, ct_03, 255 );--ここから表示
setEffAlphaKey( spep_3 + 20, ct_03, 255 );
setEffAlphaKey( spep_3 + 44, ct_03, 255 );
setEffAlphaKey( spep_3 + 46, ct_03, 128 );
setEffAlphaKey( spep_3 + 48, ct_03, 0 );

setEffShake(  spep_3+18,  ct_03,  30,  20);  --揺れ

--***集中線***
shuchusen_3 = entryEffectLife( spep_3 + 18, 906, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3 + 18,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 18,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 18,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 18,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 19,  shuchusen_3,  255);--ここから表示
setEffAlphaKey( spep_3 + 20,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 58,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 58,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 58,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 58,  shuchusen_3,  255);

--SE
playSe( spep_3 + 20, 1010);

-- ** エフェクト等 ** --
entryFade(spep_3+48,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


------------------------------------------------------
-- 連続蹴り
------------------------------------------------------

spep_4=spep_3+58;

--***フェードと背景***
entryFade(spep_4,0,2,12,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+152 +2,8,10,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 170 +4, 0, 0, 0, 0, 255);  -- 黒　背景

--***流線右向き***
sen4a = entryEffectLife( spep_4, 921, 28, 0x80,  -1,  0,  0,  0); -- 流線右向き

setEffMoveKey( spep_4,  sen4a,  0,  0);
setEffScaleKey( spep_4, sen4a, 1.5, 1.5 );
setEffRotateKey( spep_4, sen4a, 201);
setEffAlphaKey( spep_4,  sen4a,  255);
setEffMoveKey( spep_4 + 28,  sen4a,  0,  0);
setEffScaleKey( spep_4 + 28, sen4a, 1.5, 1.5 );
setEffRotateKey( spep_4 + 28, sen4a, 201);
setEffAlphaKey( spep_4 + 28,  sen4a,  255);

--***流直線斜め***
sen4b = entryEffectLife( spep_4, 920, 98, 0x80,  -1,  0,  0,  0); -- 流直線斜め

setEffMoveKey( spep_4,  sen4b,  0,  0);
setEffScaleKey( spep_4, sen4b, 2.1, 1.3 );
setEffRotateKey( spep_4, sen4b, 104);
setEffAlphaKey( spep_4,  sen4b,  0);
setEffAlphaKey( spep_4 + 28,  sen4b,  0);
setEffAlphaKey( spep_4 + 29,  sen4b,  255);--ここから表示
setEffAlphaKey( spep_4 + 30,  sen4b,  255);
setEffMoveKey( spep_4 + 98,  sen4b,  0,  0);
setEffScaleKey( spep_4 + 98, sen4b, 2.1, 1.3 );
setEffRotateKey( spep_4 + 98, sen4b, 104);
setEffAlphaKey( spep_4 + 98,  sen4b,  255);

--***集中線***
shuchusen_4 = entryEffectLife( spep_4, 906, 170, 0x80,  -1, 140, 260,  0);

setEffMoveKey( spep_4,  shuchusen_4,  140, 260);
setEffScaleKey( spep_4,  shuchusen_4,  1.92,  2.02);
setEffRotateKey( spep_4,  shuchusen_4,  -26.7);
setEffAlphaKey( spep_4,  shuchusen_4,  0);
setEffAlphaKey( spep_4 + 98,  shuchusen_4,  0);--ここから表示
setEffAlphaKey( spep_4 + 99,  shuchusen_4,  255);--ここから表示
setEffAlphaKey( spep_4 + 100,  shuchusen_4,  255);
setEffMoveKey( spep_4 + 170,  shuchusen_4,  140, 260);
setEffScaleKey( spep_4 + 170,  shuchusen_4,  1.92,  2.02);
setEffRotateKey( spep_4 + 170,  shuchusen_4,  -26.7);
setEffAlphaKey( spep_4 + 170,  shuchusen_4,  255);

--***ふっ飛ばし流線***
sen4c = entryEffectLife( spep_4, 924, 170, 0x80,  -1,  0,  -250,  -100); -- ふっ飛ばし流線

setEffMoveKey( spep_4,  sen4c,  -250,  -100);
setEffScaleKey( spep_4, sen4c, 0.97, 1.19 );
setEffRotateKey( spep_4, sen4c, -45.2);
setEffAlphaKey( spep_4,  sen4c,  0);
setEffAlphaKey( spep_4 + 116,  sen4c,  0);
setEffAlphaKey( spep_4 + 117,  sen4c,  255);--ここから表示
setEffAlphaKey( spep_4 + 118,  sen4c,  255);
setEffMoveKey( spep_4 + 170,  sen4c,  -250,  -100);
setEffScaleKey( spep_4 + 170, sen4c, 0.97, 1.19 );
setEffRotateKey( spep_4 + 170, sen4c, -45.2);
setEffAlphaKey( spep_4 + 170,  sen4c,  255);

--***連続蹴り***
combo04=entryEffect(spep_4,SP_04x,0x80,-1,0,0,0);   -- 連続蹴り(170F)

setEffMoveKey( spep_4,combo04,  0,  0);
setEffMoveKey( spep_4 + 170,combo04,  0,  0);
setEffScaleKey( spep_4,combo04,1.0,1.0);
setEffScaleKey( spep_4 + 170,combo04,1.0,1.0);
setEffRotateKey( spep_4,combo04,0);
setEffRotateKey( spep_4 + 170,combo04,0);
setEffAlphaKey( spep_4,combo04,255);
setEffAlphaKey( spep_4 + 170,combo04,255);
setEffAlphaKey( spep_4 + 171,combo04,0);
setEffAlphaKey( spep_4 + 172,combo04,0);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 140, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 + 117, 1, 107 );--蹴り落とし
setMoveKey( spep_4 + 0, 1, -154.8, -21.3 , 0 );
setMoveKey( spep_4 + 2, 1, -145.7, -20.7 , 0 );
setMoveKey( spep_4 + 4, 1, -132.7, -28.1 , 0 );
setMoveKey( spep_4 + 6, 1, -123.7, -27.4 , 0 );
setMoveKey( spep_4 + 8, 1, -118.7, -34.8 , 0 );
setMoveKey( spep_4 + 10, 1, -109.6, -34.2 , 0 );
setMoveKey( spep_4 + 12, 1, -96.6, -41.5 , 0 );
setMoveKey( spep_4 + 14, 1, -87.6, -40.9 , 0 );
setMoveKey( spep_4 + 16, 1, -82.6, -48.3 , 0 );
setMoveKey( spep_4 + 18, 1, -73.5, -47.7 , 0 );
setMoveKey( spep_4 + 20, 1, -60.5, -55 , 0 );
setMoveKey( spep_4 + 22, 1, -51.5, -54.4 , 0 );
setMoveKey( spep_4 + 24, 1, -46.5, -61.8 , 0 );
setMoveKey( spep_4 + 26, 1, -37.4, -61.1 , 0 );
setMoveKey( spep_4 + 28, 1, -24.4, -68.5 , 0 );
setMoveKey( spep_4 + 29, 1, 78.1, 136.5 , 0 );
setMoveKey( spep_4 + 30, 1, 78.1, 136.5 , 0 );
setMoveKey( spep_4 + 31, 1, 142.8, 267.2 , 0 );--蹴り上げ
setMoveKey( spep_4 + 32, 1, 142.8, 267.2 , 0 );
setMoveKey( spep_4 + 34, 1, 122.4, 234.1 , 0 );
setMoveKey( spep_4 + 36, 1, 101.4, 214.9 , 0 );
setMoveKey( spep_4 + 38, 1, 86.8, 172.2 , 0 );
setMoveKey( spep_4 + 40, 1, 89, 185.2 , 0 );
setMoveKey( spep_4 + 42, 1, 87.1, 190.1 , 0 );
setMoveKey( spep_4 + 44, 1, 89.3, 203 , 0 );
setMoveKey( spep_4 + 46, 1, 95.5, 207.9 , 0 );
setMoveKey( spep_4 + 48, 1, 97.7, 220.9 , 0 );
setMoveKey( spep_4 + 50, 1, 95.8, 225.8 , 0 );
setMoveKey( spep_4 + 52, 1, 98, 238.7 , 0 );
setMoveKey( spep_4 + 54, 1, 104.2, 243.7 , 0 );
setMoveKey( spep_4 + 56, 1, 106.4, 256.6 , 0 );
setMoveKey( spep_4 + 58, 1, 104.5, 261.5 , 0 );
setMoveKey( spep_4 + 60, 1, 106.7, 274.5 , 0 );
setMoveKey( spep_4 + 62, 1, 112.9, 279.4 , 0 );
setMoveKey( spep_4 + 64, 1, 115.1, 292.3 , 0 );
setMoveKey( spep_4 + 66, 1, 113.2, 297.2 , 0 );
setMoveKey( spep_4 + 68, 1, 115.4, 310.2 , 0 );
setMoveKey( spep_4 + 70, 1, 121.6, 315.1 , 0 );
setMoveKey( spep_4 + 72, 1, 123.8, 328 , 0 );
setMoveKey( spep_4 + 74, 1, 121.9, 333 , 0 );
setMoveKey( spep_4 + 76, 1, 124.1, 345.9 , 0 );
setMoveKey( spep_4 + 78, 1, 114.4, 279.1 , 0 );
setMoveKey( spep_4 + 80, 1, 100.7, 220.2 , 0 );
setMoveKey( spep_4 + 82, 1, 82.9, 153.5 , 0 );
setMoveKey( spep_4 + 84, 1, 69.2, 94.6 , 0 );
setMoveKey( spep_4 + 86, 1, 59.5, 27.8 , 0 );
setMoveKey( spep_4 + 88, 1, 58.7, 28.3 , 0 );
setMoveKey( spep_4 + 90, 1, 54, 20.8 , 0 );
setMoveKey( spep_4 + 92, 1, 53.2, 21.3 , 0 );
setMoveKey( spep_4 + 94, 1, 56.4, 13.8 , 0 );
setMoveKey( spep_4 + 96, 1, 55.7, 14.3 , 0 );
setMoveKey( spep_4 + 98, 1, 50.9, 6.8 , 0 );
setMoveKey( spep_4 + 100, 1, 50.1, 7.3 , 0 );
setMoveKey( spep_4 + 102, 1, 53.4, -0.2 , 0 );
setMoveKey( spep_4 + 104, 1, 52.6, 0.3 , 0 );
setMoveKey( spep_4 + 106, 1, 47.9, -7.1 , 0 );
setMoveKey( spep_4 + 108, 1, 47.1, -6.6 , 0 );
setMoveKey( spep_4 + 110, 1, 50.3, -14.1 , 0 );
setMoveKey( spep_4 + 112, 1, 49.6, -13.6 , 0 );
setMoveKey( spep_4 + 114, 1, 44.8, -21.1 , 0 );
setMoveKey( spep_4 + 116, 1, 44.1, -20.6 , 0 );
setMoveKey( spep_4 + 117, 1, 148.8, -55.1 , 0 );--蹴り落とし
setMoveKey( spep_4 + 118, 1, 148.8, -55.1 , 0 );
setMoveKey( spep_4 + 120, 1, 206.5, -274.6 , 0 );
setMoveKey( spep_4 + 122, 1, 251.8, -470 , 0 );
setMoveKey( spep_4 + 124, 1, 287.1, -609.3 , 0 );
setMoveKey( spep_4 + 126, 1, 315.2, -717.2 , 0 );
setMoveKey( spep_4 + 128, 1, 329.8, -780.2 , 0 );
setMoveKey( spep_4 + 130, 1, 327.5, -808 , 0 );
setMoveKey( spep_4 + 132, 1, 370, -955.4 , 0 );
setMoveKey( spep_4 + 134, 1, 416.6, -1110.9 , 0 );
setMoveKey( spep_4 + 140, 1, 416.6, -1110.9 , 0 );
setScaleKey( spep_4 + 0, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_4 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 18, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 20, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 24, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 31, 1, 2.34, 2.34 );--蹴り上げ
setScaleKey( spep_4 + 32, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 34, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 36, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 38, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 116, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 117, 1, 1.08, 1.08 );--蹴り落とし
setScaleKey( spep_4 + 118, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 120, 1, 1.195, 1.195 );
setScaleKey( spep_4 + 122, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 124, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 126, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 128, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 130, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 132, 1, 1.395, 1.395 );
setScaleKey( spep_4 + 134, 1, 1.455, 1.455 );
setScaleKey( spep_4 + 140, 1, 1.455, 1.455 );
setRotateKey( spep_4 + 0, 1, 53.4 );
setRotateKey( spep_4 + 28, 1, 53.4 );
setRotateKey( spep_4 + 30, 1, 35.7 );
setRotateKey( spep_4 + 116, 1, 35.7 );
setRotateKey( spep_4 + 117, 1, 10.9 );--蹴り落とし
setRotateKey( spep_4 + 118, 1, 10.9 );
setRotateKey( spep_4 + 134, 1, 10.9 );
setRotateKey( spep_4 + 140, 1, 10.9 );

-- 書き文字エントリ1ー
ct_04a = entryEffectLife( spep_4 + 28,  10005, 30, 0x100, -1, 0, 136.5, -110.5 ); -- ガッ

setEffMoveKey( spep_4 + 28, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 29, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 30, ct_04a, 136.5, -110.5 , 0 );
setEffMoveKey( spep_4 + 32, ct_04a, 146, -98 , 0 );
setEffMoveKey( spep_4 + 34, ct_04a, 161.8, -78.5 , 0 );
setEffMoveKey( spep_4 + 36, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 38, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 40, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 42, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 44, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 46, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 48, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 50, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 52, ct_04a, 169.2, -68.4 , 0 );
setEffMoveKey( spep_4 + 54, ct_04a, 174.5, -62.5 , 0 );
setEffMoveKey( spep_4 + 56, ct_04a, 192.6, -45 , 0 );
setEffMoveKey( spep_4 + 58, ct_04a, 216, -21.7 , 0 );
setEffScaleKey( spep_4 + 28, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 29, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 30, ct_04a, 0.75, 0.75 );
setEffScaleKey( spep_4 + 32, ct_04a, 1.16, 1.16 );
setEffScaleKey( spep_4 + 34, ct_04a, 1.57, 1.57 );
setEffScaleKey( spep_4 + 36, ct_04a, 1.98, 1.98 );
setEffScaleKey( spep_4 + 54, ct_04a, 1.98, 1.98 );
setEffScaleKey( spep_4 + 56, ct_04a, 2.2, 2.2 );
setEffScaleKey( spep_4 + 58, ct_04a, 2.42, 2.42 );
setEffRotateKey( spep_4 + 28, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 29, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 30, ct_04a, -26.1 );
setEffRotateKey( spep_4 + 32, ct_04a, -26.2 );
setEffRotateKey( spep_4 + 58, ct_04a, -26.2 );
setEffAlphaKey( spep_4 + 28, ct_04a, 0 );
setEffAlphaKey( spep_4 + 29, ct_04a, 255 );--ここから表示
setEffAlphaKey( spep_4 + 30, ct_04a, 255 );
setEffAlphaKey( spep_4 + 54, ct_04a, 255 );
setEffAlphaKey( spep_4 + 56, ct_04a, 128 );
setEffAlphaKey( spep_4 + 58, ct_04a, 0 );

setEffShake(  spep_4 + 28,  ct_04a,  30,  10);  --揺れ

-- 書き文字エントリ2ー
ct_04b = entryEffectLife( spep_4 + 116,  10021, 28, 0x100, -1, 0, 70.4, 210 ); -- パゴォ

setEffMoveKey( spep_4 + 116, ct_04b, 70.4, 210 , 0 );
setEffMoveKey( spep_4 + 117, ct_04b, 70.4, 210 , 0 );
setEffMoveKey( spep_4 + 118, ct_04b, 84.1, 173.8 , 0 );
setEffMoveKey( spep_4 + 120, ct_04b, 91.7, 143.3 , 0 );
setEffMoveKey( spep_4 + 122, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 124, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 126, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 128, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 130, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 132, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 134, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 136, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 138, ct_04b, 108.2, 104.5 , 0 );
setEffMoveKey( spep_4 + 140, ct_04b, 102.4, 110 , 0 );
setEffMoveKey( spep_4 + 142, ct_04b, 115.1, 87.7 , 0 );
setEffMoveKey( spep_4 + 144, ct_04b, 121.9, 70.9 , 0 );
setEffScaleKey( spep_4 + 116, ct_04b, 0.62, 0.62 );
setEffScaleKey( spep_4 + 117, ct_04b, 0.62, 0.62 );
setEffScaleKey( spep_4 + 118, ct_04b, 1.15, 1.15 );
setEffScaleKey( spep_4 + 120, ct_04b, 1.68, 1.68 );
setEffScaleKey( spep_4 + 122, ct_04b, 2.2, 2.2 );
setEffScaleKey( spep_4 + 140, ct_04b, 2.2, 2.2 );
setEffScaleKey( spep_4 + 142, ct_04b, 2.53, 2.53 );
setEffScaleKey( spep_4 + 144, ct_04b, 2.85, 2.85 );
setEffRotateKey( spep_4 + 116, ct_04b, -22.1 );
setEffRotateKey( spep_4 + 117, ct_04b, -22.1 );
setEffRotateKey( spep_4 + 118, ct_04b, -22.2 );
setEffRotateKey( spep_4 + 144, ct_04b, -22.2 );
setEffAlphaKey( spep_4 + 116, ct_04b, 0 );
setEffAlphaKey( spep_4 + 117, ct_04b, 255 );--ここから表示
setEffAlphaKey( spep_4 + 118, ct_04b, 255 );
setEffAlphaKey( spep_4 + 138, ct_04b, 255 );
setEffAlphaKey( spep_4 + 142, ct_04b, 128 );
setEffAlphaKey( spep_4 + 144, ct_04b, 0 );

setEffShake(  spep_4 + 116,  ct_04b,  28,  15);  --揺れ

--SE
playSe( spep_4 + 30, 1001);
playSe( spep_4 + 118, 1010);
playSe( spep_4 + 128, 1011);

------------------------------------------------------
-- 衝撃波
------------------------------------------------------

spep_5=spep_4+170;

--***フェードと背景***
entryFade(spep_5,0,0,12,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+36,4,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+72,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_5, 0, 82, 0, 0, 0, 0, 255);  -- 黒　背景

--***集中線1***
shuchusen_5a = entryEffectLife( spep_5, 906, 14, 0x80,  -1, 150, -300,  0);

setEffMoveKey( spep_5,  shuchusen_5a,  150, -300);
setEffScaleKey( spep_5,  shuchusen_5a,  1.6,  1.8);
setEffRotateKey( spep_5,  shuchusen_5a,  0);
setEffAlphaKey( spep_5,  shuchusen_5a,  255);
setEffMoveKey( spep_5 + 14,  shuchusen_5a,  150, -300);
setEffScaleKey( spep_5 + 14,  shuchusen_5a,  1.6,  1.8);
setEffRotateKey( spep_5 + 14,  shuchusen_5a,  0);
setEffAlphaKey( spep_5 + 14,  shuchusen_5a,  255);

--***集中線2***
shuchusen_5b = entryEffectLife( spep_5, 906, 82, 0x80,  -1, 150, -300,  0);

setEffMoveKey( spep_5,  shuchusen_5b,  150, -300);
setEffScaleKey( spep_5,  shuchusen_5b,  1.6,  1.8);
setEffRotateKey( spep_5,  shuchusen_5b,  0);
setEffAlphaKey( spep_5,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 54,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 55,  shuchusen_5b,  255);--ここから表示
setEffAlphaKey( spep_5 + 56,  shuchusen_5b,  255);
setEffMoveKey( spep_5 + 82,  shuchusen_5b,  150, -300);
setEffScaleKey( spep_5 + 82,  shuchusen_5b,  1.6,  1.8);
setEffRotateKey( spep_5 + 82,  shuchusen_5b,  0);
setEffAlphaKey( spep_5 + 82,  shuchusen_5b,  255);

--***流線***
sen5 = entryEffectLife( spep_5, 921, 66, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey( spep_5, sen5,  0,  0);
setEffRotateKey( spep_5, sen5, -116.5);
setEffScaleKey( spep_5, sen5, 1.75, 1.15);
setEffAlphaKey( spep_5,  sen5,  0);
setEffAlphaKey( spep_5 + 38,  sen5,  0);
setEffAlphaKey( spep_5 + 39,  sen5,  0);
setEffAlphaKey( spep_5 + 40,  sen5,  255);--ここから表示
setEffMoveKey( spep_5 + 66, sen5,  0,  0);
setEffRotateKey( spep_5 + 66, sen5, -116.5);
setEffScaleKey( spep_5 + 66, sen5, 1.75, 1.15);
setEffAlphaKey( spep_5 + 66,  sen5,  255);

--***衝撃波（前面）***
buon05a=entryEffect(spep_5,SP_05x,0x100,-1,0,0,0);    -- 衝撃波

setEffMoveKey( spep_5,buon05a,  0,  0);
setEffMoveKey( spep_5 + 82,buon05a,  0,  0);
setEffScaleKey( spep_5,buon05a,1.0,1.0);
setEffScaleKey( spep_5 + 82,buon05a,1.0,1.0);
setEffRotateKey( spep_5,buon05a,0);
setEffRotateKey( spep_5 + 82,buon05a,0);
setEffAlphaKey( spep_5,buon05a,255);
setEffAlphaKey( spep_5 + 82,buon05a,255);
setEffAlphaKey( spep_5 + 83,buon05a,0);
setEffAlphaKey( spep_5 + 84,buon05a,0);

--***地面（後面）***
buon05b=entryEffect(spep_5,SP_06x,0x80,-1,0,0,0);    -- 地面

setEffMoveKey( spep_5,buon05b,  0,  0);
setEffMoveKey( spep_5 + 82,buon05b,  0,  0);
setEffScaleKey( spep_5,buon05b,1.0,1.0);
setEffScaleKey( spep_5 + 82,buon05b,1.0,1.0);
setEffRotateKey( spep_5,buon05b,0);
setEffRotateKey( spep_5 + 82,buon05b,0);
setEffAlphaKey( spep_5,buon05b,255);
setEffAlphaKey( spep_5 + 82,buon05b,255);
setEffAlphaKey( spep_5 + 83,buon05b,0);
setEffAlphaKey( spep_5 + 84,buon05b,0);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 82, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
setShakeChara( spep_5 + 0, 1, 20, 10 );
setShakeChara( spep_5 + 50, 1, 32, 10 );
setMoveKey( spep_5 + 0, 1, 134.5, -334.7 , 0 );
setMoveKey( spep_5 + 80, 1, 134.5, -334.7 , 0 );
setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 80, 1, 1.3, 1.3 );
setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 80, 1, 0 );

-- 書き文字エントリー
ct_05 = entryEffectLife( spep_5 + 40,  10012, 40, 0x100, -1, 0, 78.7, 166.2 ); -- ズオッ

setEffMoveKey( spep_5 + 40, ct_05, 78.7, 166.2 , 0 );
setEffMoveKey( spep_5 + 42, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 44, ct_05, 86.4, 164.6 , 0 );
setEffMoveKey( spep_5 + 46, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 48, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 50, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 52, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 54, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 56, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 58, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 60, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 62, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 64, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 66, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 68, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 70, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 72, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 74, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 76, ct_05, 90.2, 163.8 , 0 );
setEffMoveKey( spep_5 + 78, ct_05, 72.4, 167.6 , 0 );
setEffMoveKey( spep_5 + 80, ct_05, 90.2, 163.8 , 0 );
setEffScaleKey( spep_5 + 40, ct_05, 0.77, 0.77 );
setEffScaleKey( spep_5 + 42, ct_05, 1.23, 1.23 );
setEffScaleKey( spep_5 + 44, ct_05, 1.69, 1.69 );
setEffScaleKey( spep_5 + 46, ct_05, 2.15, 2.15 );
setEffScaleKey( spep_5 + 80, ct_05, 2.15, 2.15 );
setEffRotateKey( spep_5 + 40, ct_05, -32.9 );
setEffRotateKey( spep_5 + 42, ct_05, -33 );
setEffRotateKey( spep_5 + 80, ct_05, -33 );
setEffAlphaKey( spep_5 + 40, ct_05, 255 );
setEffAlphaKey( spep_5 + 80, ct_05, 255 );

setEffShake(  spep_5 + 40,  ct_05,  40,  25);  --揺れ

--SE
playSe( spep_5 + 40, 1027);
playSe( spep_5 + 50, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_6=spep_5+82;

--***フェードと背景***
entryFadeBg(spep_6, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背景

--***爆発***
bomb06=entryEffect(spep_6,SP_07x,0x80,-1,0,0,0);   -- 爆発

setEffMoveKey( spep_6,bomb06,  0,  0);
setEffMoveKey( spep_6 + 100,bomb06,  0,  0);
setEffScaleKey( spep_6,bomb06,1.0,1.0);
setEffScaleKey( spep_6 + 100,bomb06,1.0,1.0);
setEffRotateKey( spep_6,bomb06,0);
setEffRotateKey( spep_6 + 100,bomb06,0);
setEffAlphaKey( spep_6,bomb06,255);
setEffAlphaKey( spep_6 + 100,bomb06,255);

--***敵の動き***
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setMoveKey( spep_6 + 0, 1, 26.2, 3.9 , 0 );
setMoveKey( spep_6 + 2, 1, 43.3, -24.1 , 0 );
setMoveKey( spep_6 + 4, 1, 0.1, -43.6 , 0 );
setMoveKey( spep_6 + 6, 1, 43.7, -70.4 , 0 );
setMoveKey( spep_6 + 8, 1, -14.5, -62.3 , 0 );
setMoveKey( spep_6 + 10, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 12, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 14, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 16, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 18, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 20, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 22, 1, -31.9, -160.1 , 0 );
setMoveKey( spep_6 + 24, 1, -33.9, -162.5 , 0 );
setMoveKey( spep_6 + 100, 1, -33.9, -162.5 , 0 );
setScaleKey( spep_6 + 0, 1, 0.312, 0.312 );
setScaleKey( spep_6 + 2, 1, 0.45599999999999996, 0.45599999999999996 );
setScaleKey( spep_6 + 4, 1, 0.636, 0.636 );
setScaleKey( spep_6 + 6, 1, 0.846, 0.846 );
setScaleKey( spep_6 + 8, 1, 1.086, 1.086 );
setScaleKey( spep_6 + 10, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 12, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 14, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 16, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 18, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 20, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 22, 1, 1.3559999999999999, 1.3559999999999999 );
setScaleKey( spep_6 + 24, 1, 1.446, 1.446 );
setScaleKey( spep_6 + 100, 1, 1.446, 1.446 );
setRotateKey( spep_6 + 0, 1, 63.3 );
setRotateKey( spep_6 + 2, 1, 198.3 );
setRotateKey( spep_6 + 4, 1, 363.3 );
setRotateKey( spep_6 + 6, 1, 558.3 );
setRotateKey( spep_6 + 8, 1, 783.3 );
setRotateKey( spep_6 + 10, 1, 1038.3 );
setRotateKey( spep_6 + 100, 1, 1038.3 );

setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+6,6,16);
setShake( spep_6+12,15,10);

setShakeChara( spep_6+14, 1, 5,  11);
setShakeChara( spep_6+20, 1, 10, 20);

--entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- 書き文字エントリー
ct_06 = entryEffectLife( spep_6+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ

setEffShake( spep_6+14, ct_06, 30, 11);
setEffRotateKey( spep_6+14, ct_06, -40);
setEffRotateKey( spep_6+15, ct_06, -40);
setEffRotateKey( spep_6+16, ct_06, -40);
setEffRotateKey( spep_6+114, ct_06, -40);
setEffScaleKey( spep_6+14, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+15, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct_06, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct_06, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct_06, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct_06, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+114, ct_06, 3.8, 3.8);
setEffAlphaKey( spep_6+14, ct_06, 255);
setEffAlphaKey( spep_6+15, ct_06, 255);
setEffAlphaKey( spep_6+95, ct_06, 255);
setEffAlphaKey( spep_6+114, ct_06, 127.5);

--***SE***
playSe( spep_6+2, SE_11);
playSe( spep_6+8, SE_10);

--***ガッの集中線、ひび割れ***
shuchusen = entryEffectLife( spep_6+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_6+2, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+100);


end
