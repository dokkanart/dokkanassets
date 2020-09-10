fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン 高速ダッシュ移動
SE_05 = 1035; --カットイン攻撃
SE_06 = 1018; --発射
SE_07 = 1018; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1025; --HIT 気をまとった打撃攻撃。通常のパンチ、キック強打よりも爆発音よりの音
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 =150541;	--フュージョン不正解	ef_001 (284)
SP_02 =150542;	--登場	ef_002(96)
SP_03 =150543;	--手前に飛んでくる	ef_003(76)
SP_04 =150544;	--途中で息切れ	ef_004(64)
SP_05 =150545;	--墜落	ef_005(80)
SP_06 =150546;	--命中	ef_006(36)

SP_07 =150573;  --途中で息切れ	ef_004(64)
SP_08 =150574;  --命中	ef_006(36)


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,   -600,   0);
setMoveKey(   1,   0,    0,   0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- フュージョン不正解 
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, -600, 0); --味方位置
setMoveKey( 1, 0, 0, -600, 0); --味方位置
setMoveKey( 2, 0, 0, -600, 0); --味方位置
setMoveKey( 3, 0, 0, -600, 0); --味方位置
setMoveKey( 4, 0, 0, -600, 0); --味方位置
setMoveKey( 5, 0, 0, -600, 0); --味方位置
-- ** 背景 ** --
entryFadeBg( 0, 0, 284, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 流線(横) ** --
ryusen = entryEffectLife( 0, 920, 100, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen, 0, 0, 0);
setEffScaleKey( 0, ryusen, 1.0, 1.0);
setEffAlphaKey( 0, ryusen, 255);
setEffRotateKey( 0, ryusen, 0);
-- ** エフェクト等 ** --
huseikai = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --フュージョン不正解
setEffMoveKey( 0, huseikai, 0, 0, 0);
setEffScaleKey( 0, huseikai, 1.0, 1.0);
setEffAlphaKey( 0, huseikai, 255);
setEffRotateKey( 0, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
entryFade( 90, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
entryFade( 272, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで --305

-- ** 集中線 ** --
shuchusen0a = entryEffectLife( 16, 906, 38, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 16, shuchusen0a, 0, 0, 0);
setEffScaleKey( 16, shuchusen0a, 1.0, 1.0);
setEffAlphaKey( 16, shuchusen0a, 255);
setEffRotateKey( 16, shuchusen0a, 0);

shuchusen0b = entryEffectLife( 78, 906, 34, 0x80,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( 78, shuchusen0b, 0, 0, 0);
setEffScaleKey( 78, shuchusen0b, 1.0, 1.0);
setEffAlphaKey( 78, shuchusen0b, 255);
setEffRotateKey( 78, shuchusen0b, 0);

shuchusen0c = entryEffectLife( 174, 906, 106, 0x80,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 174, shuchusen0c, 0, 0, 0);
setEffScaleKey( 174, shuchusen0c, 1.0, 1.0);
setEffAlphaKey( 174, shuchusen0c, 255);
setEffRotateKey( 174, shuchusen0c, 0);

playSe( 5, 8);
playSe( 74, 8);
playSe( 149, 1003);
playSe( 170, 1042);
playSe( 248, 1017);

--------------------------------------------------------------------
--登場 —96F(285-381)
--------------------------------------------------------------------
spep_1 = 285;

speff2 = entryEffectLife(  spep_1,   SP_02, 96,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_1, speff2, 0, 0, 0);
setEffScaleKey( spep_1, speff2, 1.0, 1.0);
setEffAlphaKey( spep_1, speff2, 255);
setEffRotateKey( spep_1, speff2, 0);

speffc = entryEffect(  spep_1+9,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speffc, 3, 2);                           -- カットイン差し替え
speffc = entryEffect(  spep_1+9,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speffc, 4, 5);                           -- セリフ差し替え

playSe( spep_1+9, SE_04);

entryFade( spep_1+91, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------------------------------------
--カードカットイン (382〜472F)—90F
--------------------------------------------------------------------
spep_2=spep_1+96;

setScaleKey( spep_2-9,   0, 1.5, 1.5);
setScaleKey( spep_2-8,   0, 1.0, 1.0);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(spep_2,1035);

entryFade( spep_2+85, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------------------------------------
--前突進 (473〜526/530F)—74F→53
--------------------------------------------------------------------
spep_3=spep_2+90;

speff3 = entryEffectLife(  spep_3,   SP_03, 53,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_3, speff3, 0, 0, 0);
setEffScaleKey( spep_3, speff3, 1.0, 1.0);
setEffAlphaKey( spep_3, speff3, 255);
setEffRotateKey( spep_3, speff3, 0);

shuchusen3 = entryEffectLife( spep_3, 906, 53, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

playSe(spep_3,1022);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 53, 0, 0, 0, 0, 200); -- ベース暗め　背景
entryFade( spep_3+48, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);
--------------------------------------------------------------------
--横突進 (527〜697F)—170F
--------------------------------------------------------------------
spep_4=spep_3+53;

speff4 = entryEffectLife( spep_4, SP_04, 170,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_4, speff4, 0, 0, 0);
setEffScaleKey( spep_4, speff4, 1.0, 1.0);
setEffAlphaKey( spep_4, speff4, 255);
setEffRotateKey( spep_4, speff4, 0);

playSe( spep_4,SE_05);

--SP_02 確定後　F数とともに書き換え

--横線
ryusen4a = entryEffectLife( spep_4, 920, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_4, ryusen4a, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4a, 0);
setEffScaleKey( spep_4, ryusen4a, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen4a, 255);

--背景
entryFadeBg( spep_4, 0, 63, 0, 0, 0, 0, 200); -- ベース暗め　背景

--横線
ryusen4b = entryEffectLife( spep_4+148, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_4+148, ryusen4b, 0, 0, 0);
setEffRotateKey( spep_4+148, ryusen4b, 0);
setEffScaleKey( spep_4+148, ryusen4b, 1.0, 1.0);
setEffAlphaKey( spep_4+148, ryusen4b, 255);

playSe( spep_4+148,SE_05);

--背景
entryFadeBg( spep_4+148, 0, 22, 0, 10, 10, 10, 180);          -- ベース暗め　背景
entryFade( spep_4+165, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);
-----------------------------------------------------------------------
--墜落(698〜771F)--73F
-----------------------------------------------------------------------
spep_5=spep_4+170;

speff5 = entryEffectLife( spep_5,   SP_05, 73,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_5, speff5, 0, 0, 0);
setEffScaleKey( spep_5, speff5, 1.0, 1.0);
setEffAlphaKey( spep_5, speff5, 255);
setEffRotateKey( spep_5, speff5, 0);

--横線
ryusen5 = entryEffectLife( spep_5, 920, 73, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_5, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5, ryusen5, 0);
setEffScaleKey(spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey(spep_5, ryusen5, 255);

setEffMoveKey(spep_5+23, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5+23, ryusen5, 0);
setEffScaleKey(spep_5+23, ryusen5, 1.0, 1.0);
setEffAlphaKey(spep_5+23, ryusen5, 255);

setEffMoveKey(spep_5+73, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5+73, ryusen5, 30);
setEffScaleKey(spep_5+73, ryusen5, 2.0, 1.2);
setEffAlphaKey(spep_5+73, ryusen5, 255);

--背景
entryFadeBg( spep_5, 0, 43, 37, 0, 0, 0, 180); -- ベース暗め　背景
entryFade( spep_5+68, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 772; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-----------------------------------------------------------------------
--命中(772〜808)—36F
-----------------------------------------------------------------------
spep_6=spep_5+73;

speff6 = entryEffectLife( spep_6,   SP_06, 36,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_6, speff6, 0, 0, 0);
setEffScaleKey( spep_6, speff6, 1.0, 1.0);
setEffAlphaKey( spep_6, speff6, 255);
setEffRotateKey( spep_6, speff6, 0);

-- 敵 --
changeAnime( spep_6, 1, 104);
setDisp( spep_6, 1, 1);

setMoveKey( spep_6,   1,    200, 0,   0);
setScaleKey(  spep_6,   1, 1.5, 1.5);
setRotateKey( spep_6,  1,  0 );
------------------------------------------------------
------------------------------------------------------
changeAnime( spep_6+9, 1,108);

setMoveKey(   spep_6+9,   1,    200, 0,   0);
setScaleKey(   spep_6+9,   1, 1.5, 1.5);
setRotateKey( spep_6+9,  1,  0 );

playSe(spep_6+9,SE_09);

shuchusen6 = entryEffectLife( spep_6+9, 906, 24, 0x80,  -1, 400,  0,  0);   -- 集中線
setEffMoveKey( spep_6+9, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+9, shuchusen6, 2.0, 2.0);
setEffAlphaKey( spep_6+9, shuchusen6, 255);
setEffRotateKey( spep_6+9, shuchusen6, 0);

setMoveKey(   spep_6+35,   1, 800,-150,0);
setScaleKey(   spep_6+35,   1, 1.5, 1.5);
setRotateKey( spep_6+35,  1,  0);

entryFade( spep_6+30, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
-----------------------------------------------------------------------
--爆発(816〜xxxF)--
-----------------------------------------------------------------------
exp=809;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

else
-------------------------------------------------------------------------------
--　敵側対応
-------------------------------------------------------------------------------
setVisibleUI(0, 0);

setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, -600, 0); --味方位置
setMoveKey( 1, 0, 0, -600, 0); --味方位置
setMoveKey( 2, 0, 0, -600, 0); --味方位置
setMoveKey( 3, 0, 0, -600, 0); --味方位置
setMoveKey( 4, 0, 0, -600, 0); --味方位置
setMoveKey( 5, 0, 0, -600, 0); --味方位置
-- ** 背景 ** --
entryFadeBg( 0, 0, 284, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 流線(横) ** --
ryusen0a = entryEffectLife( 0, 920, 100, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen0a, 0, 0, 0);
setEffScaleKey( 0, ryusen0a, 1.0, 1.0);
setEffAlphaKey( 0, ryusen0a, 255);
setEffRotateKey( 0, ryusen0a, 0);
-- ** エフェクト等 ** --
huseikai = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --フュージョン不正解
setEffMoveKey( 0, huseikai, 0, 0, 0);
setEffScaleKey( 0, huseikai, -1.0, 1.0);
setEffAlphaKey( 0, huseikai, 255);
setEffRotateKey( 0, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
entryFade( 90, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
entryFade( 272, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで --305

-- ** 集中線 ** --
shuchusen0a = entryEffectLife( 16, 906, 38, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 16, shuchusen0a, 0, 0, 0);
setEffScaleKey( 16, shuchusen0a, 1.0, 1.0);
setEffAlphaKey( 16, shuchusen0a, 255);
setEffRotateKey( 16, shuchusen0a, 0);

shuchusen0b = entryEffectLife( 78, 906, 34, 0x80,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( 78, shuchusen0b, 0, 0, 0);
setEffScaleKey( 78, shuchusen0b, 1.0, 1.0);
setEffAlphaKey( 78, shuchusen0b, 255);
setEffRotateKey( 78, shuchusen0b, 0);

shuchusen0c = entryEffectLife( 174, 906, 106, 0x80,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 174, shuchusen0c, 0, 0, 0);
setEffScaleKey( 174, shuchusen0c, 1.0, 1.0);
setEffAlphaKey( 174, shuchusen0c, 255);
setEffRotateKey( 174, shuchusen0c, 0);

playSe( 5, 8);
playSe( 74, 8);
playSe( 149, 1003);
playSe( 170, 1042);
playSe( 248, 1017);

--------------------------------------------------------------------
--登場 —96F(285-381)
--------------------------------------------------------------------
spep_1 = 285;

speff2 = entryEffectLife(  spep_1,   SP_02, 96,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_1, speff2, 0, 0, 0);
setEffScaleKey( spep_1, speff2, -1.0, 1.0);
setEffAlphaKey( spep_1, speff2, 255);
setEffRotateKey( spep_1, speff2, 0);

--[[
speffc = entryEffect(  spep_1+6,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speffc, 3, 2);                           -- カットイン差し替え
speffc = entryEffect(  spep_1+6,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speffc, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1+9, SE_04);


entryFade( spep_1+91, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------------------------------------
--カードカットイン (382〜472F)—90F
--------------------------------------------------------------------
spep_2=spep_1+96;

setScaleKey( spep_2-9,   0, 1.5, 1.5);
setScaleKey( spep_2-8,   0, 1.0, 1.0);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(spep_2,1035);

entryFade( spep_2+85, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------------------------------------
--前突進 (473〜526/530F)—74F→53
--------------------------------------------------------------------
spep_3=spep_2+90;

speff3 = entryEffectLife(  spep_3, SP_03, 53,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_3, speff3, 0, 0, 0);
setEffScaleKey( spep_3, speff3, -1.0, 1.0);
setEffAlphaKey( spep_3, speff3, 255);
setEffRotateKey( spep_3, speff3, 0);

shuchusen3 = entryEffectLife( spep_3, 906, 53, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

playSe(spep_3,1022);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 53, 0, 0, 0, 0, 200); -- ベース暗め　背景
entryFade( spep_3+48, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);
--------------------------------------------------------------------
--横突進 (527〜697F)—170F
--------------------------------------------------------------------
spep_4=spep_3+53;

speff4 = entryEffectLife( spep_4, SP_07, 170,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_4, speff4, 0, 0, 0);
setEffScaleKey( spep_4, speff4, 1.0, 1.0);
setEffAlphaKey( spep_4, speff4, 255);
setEffRotateKey( spep_4, speff4, 0);

playSe( spep_4,SE_05);

--SP_02 確定後　F数とともに書き換え

--横線
ryusen4a = entryEffectLife( spep_4, 920, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_4, ryusen4a, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4a, 0);
setEffScaleKey( spep_4, ryusen4a, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen4a, 255);

--背景
entryFadeBg( spep_4, 0, 63, 0, 0, 0, 0, 200); -- ベース暗め　背景

--横線
ryusen4b = entryEffectLife( spep_4+148, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_4+148, ryusen4b, 0, 0, 0);
setEffRotateKey( spep_4+148, ryusen4b, 0);
setEffScaleKey( spep_4+148, ryusen4b, 1.0, 1.0);
setEffAlphaKey( spep_4+148, ryusen4b, 255);

playSe( spep_4+148,SE_05);

--背景
entryFadeBg( spep_4+148, 0, 22, 0, 10, 10, 10, 180);          -- ベース暗め　背景
entryFade( spep_4+165, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);
-----------------------------------------------------------------------
--墜落(698〜771F)--73F
-----------------------------------------------------------------------
spep_5=spep_4+170;

speff5 = entryEffectLife( spep_5,   SP_05, 73,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_5, speff5, 0, 0, 0);
setEffScaleKey( spep_5, speff5, 1.0, 1.0);
setEffAlphaKey( spep_5, speff5, 255);
setEffRotateKey( spep_5, speff5, 0);

--横線
ryusen5 = entryEffectLife( spep_5, 920, 73, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_5, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5, ryusen5, 0);
setEffScaleKey(spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey(spep_5, ryusen5, 255);

setEffMoveKey(spep_5+23, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5+23, ryusen5, 0);
setEffScaleKey(spep_5+23, ryusen5, 1.0, 1.0);
setEffAlphaKey(spep_5+23, ryusen5, 255);

setEffMoveKey(spep_5+73, ryusen5, 0, 0, 0);
setEffRotateKey(spep_5+73, ryusen5, 30);
setEffScaleKey(spep_5+73, ryusen5, 2.0, 1.2);
setEffAlphaKey(spep_5+73, ryusen5, 255);

--背景
entryFadeBg( spep_5, 0, 43, 37, 0, 0, 0, 180); -- ベース暗め　背景
entryFade( spep_5+68, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 772; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

-----------------------------------------------------------------------
--命中(772〜808)—36F
-----------------------------------------------------------------------
spep_6=spep_5+73;

speff6 = entryEffectLife( spep_6,   SP_08, 36,   0,     -1,  0,  0,  0);
setEffMoveKey(spep_6, speff6, 0, 0, 0);
setEffScaleKey( spep_6, speff6, 1.0, 1.0);
setEffAlphaKey( spep_6, speff6, 255);
setEffRotateKey( spep_6, speff6, 0);

-- 敵 --
changeAnime( spep_6, 1, 104);
setDisp( spep_6, 1, 1);

setMoveKey( spep_6,   1,    200, 0,   0);
setScaleKey(  spep_6,   1, 1.5, 1.5);
setRotateKey( spep_6,  1,  0 );
------------------------------------------------------
------------------------------------------------------
changeAnime( spep_6+9, 1,108);

setMoveKey(   spep_6+9,   1,    200, 0,   0);
setScaleKey(   spep_6+9,   1, 1.5, 1.5);
setRotateKey( spep_6+9,  1,  0 );

playSe(spep_6+9,SE_09);

shuchusen6 = entryEffectLife( spep_6+9, 906, 24, 0x80,  -1, 400,  0,  0);   -- 集中線
setEffMoveKey( spep_6+9, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6+9, shuchusen6, 2.0, 2.0);
setEffAlphaKey( spep_6+9, shuchusen6, 255);
setEffRotateKey( spep_6+9, shuchusen6, 0);

setMoveKey(   spep_6+35,   1, 800,-150,0);
setScaleKey(   spep_6+35,   1, 1.5, 1.5);
setRotateKey( spep_6+35,  1,  0);

entryFade( spep_6+30, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
-----------------------------------------------------------------------
--爆発(816〜xxxF)--
-----------------------------------------------------------------------
exp=809;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

end