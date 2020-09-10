--1011330:超一星龍_ギガンティックブレイズ
--sp_effect_a7_00025

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方
SP_01=	152971	;--	一星龍登場(カメラ顔アップ)
SP_02=	152972	;--	攻撃⇒爆発
SP_03=	152973	;--	突風

--敵
SP_01x=	152971	;--	一星龍登場(カメラ顔アップ)
SP_02x=	152972	;--	攻撃⇒爆発
SP_03x=	152973	;--	突風

-- 全体攻撃
SP_00=152974;--突風(逆回転)　全体攻撃用
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
--[[
-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 0.39, 0.39);
setScaleKey(   2,   1, 0.39, 0.39);
setScaleKey(   3,   1, 0.39, 0.39);
setScaleKey(   4,   1, 0.39, 0.39);
setScaleKey(   5,   1, 0.39, 0.39);
setScaleKey(   6,   1, 0.39, 0.39);

]]
kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then
    

------------------------------------------------------
--  ﾄﾞﾔ
------------------------------------------------------
--冒頭
spep_0=0;
-- ** エフェクト等 (前)
doya = entryEffectLife( spep_0 + 0, SP_01, 178, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, doya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, doya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, doya, 1.1, 1.1 );
setEffScaleKey( spep_0 + 178, doya, 1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, doya, 255 );
setEffAlphaKey( spep_0 + 178, doya, 255 );
setEffRotateKey( spep_0 + 0, doya, 0 );
setEffRotateKey( spep_0 + 178, doya, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 133, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 214.2, -302.4 , 0 );
setMoveKey( spep_0 + 2, 1, 214.2, -302.4 , 0 );
setMoveKey( spep_0 + 4, 1, 214.3, -302.5 , 0 );
setMoveKey( spep_0 + 6, 1, 214.4, -302.6 , 0 );
setMoveKey( spep_0 + 8, 1, 214.5, -302.8 , 0 );
setMoveKey( spep_0 + 10, 1, 214.7, -303 , 0 );
setMoveKey( spep_0 + 12, 1, 215, -303.4 , 0 );
setMoveKey( spep_0 + 14, 1, 215.4, -303.9 , 0 );
setMoveKey( spep_0 + 16, 1, 215.8, -304.5 , 0 );
setMoveKey( spep_0 + 18, 1, 216.4, -305.2 , 0 );
setMoveKey( spep_0 + 20, 1, 217.2, -306.2 , 0 );
setMoveKey( spep_0 + 22, 1, 218.2, -307.4 , 0 );
setMoveKey( spep_0 + 24, 1, 219.4, -309 , 0 );
setMoveKey( spep_0 + 26, 1, 220.9, -310.8 , 0 );
setMoveKey( spep_0 + 28, 1, 222.6, -313 , 0 );
setMoveKey( spep_0 + 30, 1, 224.6, -315.6 , 0 );
setMoveKey( spep_0 + 32, 1, 226.9, -318.5 , 0 );
setMoveKey( spep_0 + 34, 1, 229.4, -321.6 , 0 );
setMoveKey( spep_0 + 36, 1, 232.1, -324.9 , 0 );
setMoveKey( spep_0 + 38, 1, 234.8, -328.3 , 0 );
setMoveKey( spep_0 + 40, 1, 237.5, -331.8 , 0 );
setMoveKey( spep_0 + 42, 1, 240.5, -335.5 , 0 );
setMoveKey( spep_0 + 44, 1, 244.5, -340.6 , 0 );
setMoveKey( spep_0 + 46, 1, 249.8, -347.3 , 0 );
setMoveKey( spep_0 + 48, 1, 256.7, -356 , 0 );
setMoveKey( spep_0 + 50, 1, 265.4, -366.9 , 0 );
setMoveKey( spep_0 + 52, 1, 276.1, -380.5 , 0 );
setMoveKey( spep_0 + 54, 1, 289.3, -397.1 , 0 );
setMoveKey( spep_0 + 56, 1, 305.4, -417.3 , 0 );
setMoveKey( spep_0 + 58, 1, 325, -442.1 , 0 );
setMoveKey( spep_0 + 60, 1, 349.2, -472.5 , 0 );
setMoveKey( spep_0 + 62, 1, 379, -510.2 , 0 );
setMoveKey( spep_0 + 64, 1, 416.7, -557.7 , 0 );
setMoveKey( spep_0 + 66, 1, 465.3, -618.9 , 0 );
setMoveKey( spep_0 + 68, 1, 530.2, -700.8 , 0 );
setMoveKey( spep_0 + 70, 1, 621.1, -815.4 , 0 );
setMoveKey( spep_0 + 72, 1, 750.5, -978.4 , 0 );
setMoveKey( spep_0 + 74, 1, 904.5, -1172.6 , 0 );
setMoveKey( spep_0 + 76, 1, 1033.1, -1334.7 , 0 );
setMoveKey( spep_0 + 78, 1, 1126, -1451.8 , 0 );
setMoveKey( spep_0 + 80, 1, 1194.6, -1538.3 , 0 );
setMoveKey( spep_0 + 82, 1, 1247.6, -1605.1 , 0 );
setMoveKey( spep_0 + 84, 1, 1290, -1658.5 , 0 );
setMoveKey( spep_0 + 86, 1, 1324.7, -1702.3 , 0 );
setMoveKey( spep_0 + 88, 1, 1353.7, -1738.8 , 0 );
setMoveKey( spep_0 + 90, 1, 1378.1, -1769.6 , 0 );
setMoveKey( spep_0 + 92, 1, 1398.9, -1795.9 , 0 );
setMoveKey( spep_0 + 94, 1, 1416.7, -1818.3 , 0 );
setMoveKey( spep_0 + 96, 1, 1432, -1837.6 , 0 );
setMoveKey( spep_0 + 98, 1, 1445.2, -1854.2 , 0 );
setMoveKey( spep_0 + 100, 1, 1456.5, -1868.5 , 0 );
setMoveKey( spep_0 + 102, 1, 1466.2, -1880.7 , 0 );
setMoveKey( spep_0 + 104, 1, 1474.5, -1891.2 , 0 );
setMoveKey( spep_0 + 106, 1, 1481.5, -1900 , 0 );
setMoveKey( spep_0 + 108, 1, 1487.4, -1907.4 , 0 );
setMoveKey( spep_0 + 110, 1, 1492.2, -1913.5 , 0 );
setMoveKey( spep_0 + 112, 1, 1496.1, -1918.4 , 0 );
setMoveKey( spep_0 + 114, 1, 1499.2, -1922.3 , 0 );
setMoveKey( spep_0 + 116, 1, 1501.5, -1925.2 , 0 );
setMoveKey( spep_0 + 118, 1, 1503.1, -1927.1 , 0 );
setMoveKey( spep_0 + 120, 1, 1504, -1928.3 , 0 );
setMoveKey( spep_0 + 122, 1, 1504.2, -1928.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 1, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 3, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 4, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 5, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 12, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 14, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 24, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 26, 1, 2, 2 );
setScaleKey( spep_0 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 30, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 32, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 34, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 36, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 38, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 42, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 44, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 48, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 50, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 54, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 56, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 58, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 60, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 62, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 64, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 66, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 68, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 70, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 72, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 74, 1, 7.1, 7.1 );
setScaleKey( spep_0 + 76, 1, 8.06, 8.06 );
setScaleKey( spep_0 + 78, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 80, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 82, 1, 9.66, 9.66 );
setScaleKey( spep_0 + 84, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 86, 1, 10.24, 10.24 );
setScaleKey( spep_0 + 88, 1, 10.46, 10.46 );
setScaleKey( spep_0 + 90, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 92, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 94, 1, 10.93, 10.93 );
setScaleKey( spep_0 + 96, 1, 11.04, 11.04 );
setScaleKey( spep_0 + 98, 1, 11.14, 11.14 );
setScaleKey( spep_0 + 100, 1, 11.22, 11.22 );
setScaleKey( spep_0 + 102, 1, 11.3, 11.3 );
setScaleKey( spep_0 + 104, 1, 11.36, 11.36 );
setScaleKey( spep_0 + 106, 1, 11.41, 11.41 );
setScaleKey( spep_0 + 108, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 110, 1, 11.49, 11.49 );
setScaleKey( spep_0 + 112, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 114, 1, 11.54, 11.54 );
setScaleKey( spep_0 + 116, 1, 11.56, 11.56 );
setScaleKey( spep_0 + 118, 1, 11.57, 11.57 );
setScaleKey( spep_0 + 120, 1, 11.58, 11.58 );
setScaleKey( spep_0 + 122, 1, 11.58, 11.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 122, 1, 0 );

--***カットイン***32
speff = entryEffect(  spep_0 -6+90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0 -6+90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 -6 +102,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0 -6 +102, ctgogo, 72, 10 );

setEffMoveKey( spep_0 -6 +102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 -6 +174, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 -6 +102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 -6 +166, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 -6 +168, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 -6 +170, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 -6 +172, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 -6 +174, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 -6 +102, ctgogo, 0 );
setEffRotateKey( spep_0 -6 +174, ctgogo, 0 );

setEffAlphaKey( spep_0 -6 +102, ctgogo, 0 );
setEffAlphaKey( spep_0 -6 +103, ctgogo, 255 );
setEffAlphaKey( spep_0 -6 +104, ctgogo, 255 );
setEffAlphaKey( spep_0 -6 +174, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0+78, 906, 100, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_0+78,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+178,  shuchusen1,  0,  0);
setEffScaleKey(  spep_0+78,  shuchusen1,  1.3,  1.9);
setEffScaleKey(  spep_0+178,  shuchusen1,  1.3,  1.9);
setEffRotateKey(  spep_0+78,  shuchusen1,  0);
setEffRotateKey(  spep_0+178,  shuchusen1,  0);
setEffAlphaKey(  spep_0+78,  shuchusen1,  255);
setEffAlphaKey(  spep_0+178,  shuchusen1,  255);

--SE
--SE2=playSe( spep_0, 1044); --地割れ
--stopSe(spep_0+22,SE2,0);--音を止める
playSe( spep_0+24, 8); --近ずく
setSeVolume(spep_0+24, 8,200);
playSe( spep_0+96, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+178;

-----------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_1-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);

--***背景と白フェード***
entryFade( spep_1+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 90;



-----------------------------------------------------
-- エクスプロージョン！
------------------------------------------------------
--- ** エフェクト等 (前)
explosion = entryEffectLife( spep_2 + 0, SP_02, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 200, explosion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 200, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, explosion, 255 );
setEffAlphaKey( spep_2 + 200, explosion, 255 );
setEffRotateKey( spep_2 + 0, explosion, 0 );
setEffRotateKey( spep_2 + 200, explosion, 0 );

--SE
playSe( spep_2+36, 1007); --手をひらく
SE=playSe( spep_2+82, 15); --手をひらく

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+104 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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

--SE
stopSe(spep_2+114,SE,0);--音を止める
playSe( spep_2+82, 15); --手をひらく
playSe(spep_2+116,1067);--爆発
playSe(spep_2+158,1024);--爆発

--白フェード
--entryFade( spep_2+154, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+200;

-----------------------------------------------------
-- くるくる〜
------------------------------------------------------
--- ** エフェクト等 (前)
kurukuru = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, kurukuru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 204, kurukuru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kurukuru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 204, kurukuru, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kurukuru, 255 );
setEffAlphaKey( spep_3 + 204, kurukuru, 255 );
setEffRotateKey( spep_3 + 0, kurukuru, 0 );
setEffRotateKey( spep_3 + 204, kurukuru, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 133, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 28, 1, -1262.5, 448.4 , 0 );
setMoveKey( spep_3 + 30, 1, -1319.2, 202 , 0 );
setMoveKey( spep_3 + 32, 1, -1319.3, -50.3 , 0 );
setMoveKey( spep_3 + 34, 1, -1260.2, -293.2 , 0 );
setMoveKey( spep_3 + 36, 1, -1142.3, -509.6 , 0 );
setMoveKey( spep_3 + 38, 1, -969.8, -679.5 , 0 );
setMoveKey( spep_3 + 40, 1, -754.5, -781 , 0 );
setMoveKey( spep_3 + 42, 1, -522, -802.3 , 0 );
setMoveKey( spep_3 + 44, 1, -308.4, -759.9 , 0 );
setMoveKey( spep_3 + 46, 1, -134.9, -685.6 , 0 );
setMoveKey( spep_3 + 48, 1, -1.7, -599.2 , 0 );
setMoveKey( spep_3 + 50, 1, 97.2, -509.3 , 0 );
setMoveKey( spep_3 + 52, 1, 167.8, -420.3 , 0 );
setMoveKey( spep_3 + 54, 1, 215.1, -334.7 , 0 );
setMoveKey( spep_3 + 56, 1, 243.2, -254.6 , 0 );
setMoveKey( spep_3 + 58, 1, 255.7, -181.4 , 0 );
setMoveKey( spep_3 + 60, 1, 257.7, -117 , 0 );
setMoveKey( spep_3 + 62, 1, 249.5, -59.9 , 0 );
setMoveKey( spep_3 + 64, 1, 232.9, -10.5 , 0 );
setMoveKey( spep_3 + 66, 1, 210, 30.7 , 0 );
setMoveKey( spep_3 + 68, 1, 182.6, 63.6 , 0 );
setMoveKey( spep_3 + 70, 1, 152.6, 88.3 , 0 );
setMoveKey( spep_3 + 72, 1, 121.6, 105.4 , 0 );
setMoveKey( spep_3 + 74, 1, 90.8, 115.3 , 0 );
setMoveKey( spep_3 + 76, 1, 61.6, 118.9 , 0 );
setMoveKey( spep_3 + 78, 1, 34.8, 117 , 0 );
setMoveKey( spep_3 + 80, 1, 11.1, 110.7 , 0 );
setMoveKey( spep_3 + 82, 1, -9, 101 , 0 );
setMoveKey( spep_3 + 84, 1, -25.4, 88.8 , 0 );
setMoveKey( spep_3 + 86, 1, -37.9, 74.9 , 0 );
setMoveKey( spep_3 + 88, 1, -46.7, 60.4 , 0 );
setMoveKey( spep_3 + 90, 1, -52, 45.8 , 0 );
setMoveKey( spep_3 + 92, 1, -54.2, 31.9 , 0 );
setMoveKey( spep_3 + 94, 1, -53.8, 19 , 0 );
setMoveKey( spep_3 + 96, 1, -51.1, 7.6 , 0 );
setMoveKey( spep_3 + 98, 1, -46.8, -2.1 , 0 );
setMoveKey( spep_3 + 100, 1, -41.2, -10 , 0 );
setMoveKey( spep_3 + 102, 1, -34.9, -16 , 0 );
setMoveKey( spep_3 + 104, 1, -28.2, -20.3 , 0 );
setMoveKey( spep_3 + 106, 1, -21.5, -23 , 0 );
setMoveKey( spep_3 + 108, 1, -15.1, -24.1 , 0 );
setMoveKey( spep_3 + 110, 1, -9.2, -24.1 , 0 );
setMoveKey( spep_3 + 112, 1, -4, -23 , 0 );
setMoveKey( spep_3 + 114, 1, 0.5, -21.2 , 0 );
setMoveKey( spep_3 + 116, 1, 4.1, -18.8 , 0 );
setMoveKey( spep_3 + 118, 1, 6.9, -16.1 , 0 );
setMoveKey( spep_3 + 120, 1, 8.9, -13.2 , 0 );
setMoveKey( spep_3 + 122, 1, 10.3, -10.3 , 0 );
setMoveKey( spep_3 + 124, 1, 11, -7.6 , 0 );
setMoveKey( spep_3 + 126, 1, 11.1, -5 , 0 );
setMoveKey( spep_3 + 128, 1, 10.9, -2.6 , 0 );
setMoveKey( spep_3 + 130, 1, 10.3, -0.6 , 0 );
setMoveKey( spep_3 + 132, 1, 9.4, 1.1 , 0 );
setMoveKey( spep_3 + 134, 1, 8.4, 2.6 , 0 );
setMoveKey( spep_3 + 136, 1, 7.2, 3.7 , 0 );
setMoveKey( spep_3 + 138, 1, 6, 4.6 , 0 );
setMoveKey( spep_3 + 140, 1, 4.8, 5.2 , 0 );
setMoveKey( spep_3 + 142, 1, 3.5, 5.6 , 0 );
setMoveKey( spep_3 + 144, 1, 2.3, 5.8 , 0 );
setMoveKey( spep_3 + 146, 1, 1.1, 5.8 , 0 );
setMoveKey( spep_3 + 148, 1, 0, 5.6 , 0 );
setMoveKey( spep_3 + 150, 1, -1, 5.3 , 0 );
setMoveKey( spep_3 + 152, 1, -2, 4.8 , 0 );
setMoveKey( spep_3 + 154, 1, -2.9, 4.2 , 0 );
setMoveKey( spep_3 + 156, 1, -3.6, 3.5 , 0 );
setMoveKey( spep_3 + 158, 1, -4.2, 2.6 , 0 );
setMoveKey( spep_3 + 160, 1, -4.6, 1.6 , 0 );

setScaleKey( spep_3 + 28, 1, 4.86, 4.86 );
setScaleKey( spep_3 + 30, 1, 4.84, 4.84 );
setScaleKey( spep_3 + 32, 1, 4.8, 4.8 );
setScaleKey( spep_3 + 34, 1, 4.71, 4.71 );
setScaleKey( spep_3 + 36, 1, 4.56, 4.56 );
setScaleKey( spep_3 + 38, 1, 4.32, 4.32 );
setScaleKey( spep_3 + 40, 1, 3.96, 3.96 );
setScaleKey( spep_3 + 42, 1, 3.5, 3.5 );
setScaleKey( spep_3 + 44, 1, 3, 3 );
setScaleKey( spep_3 + 46, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_3 + 50, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 56, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 60, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 62, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 66, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 72, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 74, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 78, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 80, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 82, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 84, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 86, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 88, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 90, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 92, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 94, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 98, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 100, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 102, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 104, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 106, 1, 0.12, 0.12 );
setScaleKey( spep_3 + 108, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 110, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 112, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 114, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 116, 1, 0.07, 0.07 );
setScaleKey( spep_3 + 118, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 120, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 122, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 124, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 126, 1, 0.04, 0.04 );
setScaleKey( spep_3 + 130, 1, 0.04, 0.04 );
setScaleKey( spep_3 + 132, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 140, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 142, 1, 0.02, 0.02 );
setScaleKey( spep_3 + 160, 1, 0.02, 0.02 );

setRotateKey( spep_3 + 28, 1, 107 );
setRotateKey( spep_3 + 30, 1, 96.1 );
setRotateKey( spep_3 + 32, 1, 85.2 );
setRotateKey( spep_3 + 34, 1, 74.3 );
setRotateKey( spep_3 + 36, 1, 63.4 );
setRotateKey( spep_3 + 38, 1, 52.5 );
setRotateKey( spep_3 + 40, 1, 41.6 );
setRotateKey( spep_3 + 42, 1, 30.7 );
setRotateKey( spep_3 + 44, 1, 19.7 );
setRotateKey( spep_3 + 46, 1, 8.8 );
setRotateKey( spep_3 + 48, 1, -2.1 );
setRotateKey( spep_3 + 50, 1, -13 );
setRotateKey( spep_3 + 52, 1, -23.9 );
setRotateKey( spep_3 + 54, 1, -34.8 );
setRotateKey( spep_3 + 56, 1, -45.7 );
setRotateKey( spep_3 + 58, 1, -56.6 );
setRotateKey( spep_3 + 60, 1, -67.5 );
setRotateKey( spep_3 + 62, 1, -78.4 );
setRotateKey( spep_3 + 64, 1, -89.3 );
setRotateKey( spep_3 + 66, 1, -100.3 );
setRotateKey( spep_3 + 68, 1, -111.2 );
setRotateKey( spep_3 + 70, 1, -122.1 );
setRotateKey( spep_3 + 72, 1, -133 );
setRotateKey( spep_3 + 74, 1, -143.9 );
setRotateKey( spep_3 + 76, 1, -154.8 );
setRotateKey( spep_3 + 78, 1, -165.7 );
setRotateKey( spep_3 + 80, 1, -176.6 );
setRotateKey( spep_3 + 82, 1, -187.5 );
setRotateKey( spep_3 + 84, 1, -198.4 );
setRotateKey( spep_3 + 86, 1, -209.4 );
setRotateKey( spep_3 + 88, 1, -220.3 );
setRotateKey( spep_3 + 90, 1, -231.2 );
setRotateKey( spep_3 + 92, 1, -242.1 );
setRotateKey( spep_3 + 94, 1, -253 );
setRotateKey( spep_3 + 96, 1, -263.9 );
setRotateKey( spep_3 + 98, 1, -274.8 );
setRotateKey( spep_3 + 100, 1, -285.7 );
setRotateKey( spep_3 + 102, 1, -296.6 );
setRotateKey( spep_3 + 104, 1, -307.5 );
setRotateKey( spep_3 + 106, 1, -318.4 );
setRotateKey( spep_3 + 108, 1, -329.4 );
setRotateKey( spep_3 + 110, 1, -340.3 );
setRotateKey( spep_3 + 112, 1, -351.2 );
setRotateKey( spep_3 + 114, 1, -362.1 );
setRotateKey( spep_3 + 116, 1, -373 );
setRotateKey( spep_3 + 118, 1, -383.9 );
setRotateKey( spep_3 + 120, 1, -394.8 );
setRotateKey( spep_3 + 122, 1, -405.7 );
setRotateKey( spep_3 + 124, 1, -416.6 );
setRotateKey( spep_3 + 126, 1, -427.5 );
setRotateKey( spep_3 + 128, 1, -438.5 );
setRotateKey( spep_3 + 130, 1, -449.4 );
setRotateKey( spep_3 + 132, 1, -460.3 );
setRotateKey( spep_3 + 134, 1, -471.2 );
setRotateKey( spep_3 + 136, 1, -482.1 );
setRotateKey( spep_3 + 138, 1, -493 );
setRotateKey( spep_3 + 140, 1, -503.9 );
setRotateKey( spep_3 + 142, 1, -514.8 );
setRotateKey( spep_3 + 144, 1, -525.7 );
setRotateKey( spep_3 + 146, 1, -536.6 );
setRotateKey( spep_3 + 148, 1, -547.5 );
setRotateKey( spep_3 + 150, 1, -558.5 );
setRotateKey( spep_3 + 152, 1, -569.4 );
setRotateKey( spep_3 + 154, 1, -580.3 );
setRotateKey( spep_3 + 156, 1, -591.2 );
setRotateKey( spep_3 + 158, 1, -602.1 );
setRotateKey( spep_3 + 160, 1, -613 );

--SE
SE1=playSe( spep_3, 1044); --地割れ
stopSe(spep_3+196,SE1,0);--音を止める

-- ダメージ表示
dealDamage(spep_3);
endPhase(spep_3+200);
else 
------------------------------------------------------------------------------------------------------------
--  敵
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--  ﾄﾞﾔ
------------------------------------------------------
--冒頭
spep_0=0;
-- ** エフェクト等 (前)
doya = entryEffectLife( spep_0 + 0, SP_01x, 178, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, doya, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, doya, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, doya, -1.1, 1.1 );
setEffScaleKey( spep_0 + 178, doya, -1.1, 1.1 );
setEffAlphaKey( spep_0 + 0, doya, 255 );
setEffAlphaKey( spep_0 + 178, doya, 255 );
setEffRotateKey( spep_0 + 0, doya, 0 );
setEffRotateKey( spep_0 + 178, doya, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 133, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 214.2, -302.4 , 0 );
setMoveKey( spep_0 + 2, 1, 214.2, -302.4 , 0 );
setMoveKey( spep_0 + 4, 1, 214.3, -302.5 , 0 );
setMoveKey( spep_0 + 6, 1, 214.4, -302.6 , 0 );
setMoveKey( spep_0 + 8, 1, 214.5, -302.8 , 0 );
setMoveKey( spep_0 + 10, 1, 214.7, -303 , 0 );
setMoveKey( spep_0 + 12, 1, 215, -303.4 , 0 );
setMoveKey( spep_0 + 14, 1, 215.4, -303.9 , 0 );
setMoveKey( spep_0 + 16, 1, 215.8, -304.5 , 0 );
setMoveKey( spep_0 + 18, 1, 216.4, -305.2 , 0 );
setMoveKey( spep_0 + 20, 1, 217.2, -306.2 , 0 );
setMoveKey( spep_0 + 22, 1, 218.2, -307.4 , 0 );
setMoveKey( spep_0 + 24, 1, 219.4, -309 , 0 );
setMoveKey( spep_0 + 26, 1, 220.9, -310.8 , 0 );
setMoveKey( spep_0 + 28, 1, 222.6, -313 , 0 );
setMoveKey( spep_0 + 30, 1, 224.6, -315.6 , 0 );
setMoveKey( spep_0 + 32, 1, 226.9, -318.5 , 0 );
setMoveKey( spep_0 + 34, 1, 229.4, -321.6 , 0 );
setMoveKey( spep_0 + 36, 1, 232.1, -324.9 , 0 );
setMoveKey( spep_0 + 38, 1, 234.8, -328.3 , 0 );
setMoveKey( spep_0 + 40, 1, 237.5, -331.8 , 0 );
setMoveKey( spep_0 + 42, 1, 240.5, -335.5 , 0 );
setMoveKey( spep_0 + 44, 1, 244.5, -340.6 , 0 );
setMoveKey( spep_0 + 46, 1, 249.8, -347.3 , 0 );
setMoveKey( spep_0 + 48, 1, 256.7, -356 , 0 );
setMoveKey( spep_0 + 50, 1, 265.4, -366.9 , 0 );
setMoveKey( spep_0 + 52, 1, 276.1, -380.5 , 0 );
setMoveKey( spep_0 + 54, 1, 289.3, -397.1 , 0 );
setMoveKey( spep_0 + 56, 1, 305.4, -417.3 , 0 );
setMoveKey( spep_0 + 58, 1, 325, -442.1 , 0 );
setMoveKey( spep_0 + 60, 1, 349.2, -472.5 , 0 );
setMoveKey( spep_0 + 62, 1, 379, -510.2 , 0 );
setMoveKey( spep_0 + 64, 1, 416.7, -557.7 , 0 );
setMoveKey( spep_0 + 66, 1, 465.3, -618.9 , 0 );
setMoveKey( spep_0 + 68, 1, 530.2, -700.8 , 0 );
setMoveKey( spep_0 + 70, 1, 621.1, -815.4 , 0 );
setMoveKey( spep_0 + 72, 1, 750.5, -978.4 , 0 );
setMoveKey( spep_0 + 74, 1, 904.5, -1172.6 , 0 );
setMoveKey( spep_0 + 76, 1, 1033.1, -1334.7 , 0 );
setMoveKey( spep_0 + 78, 1, 1126, -1451.8 , 0 );
setMoveKey( spep_0 + 80, 1, 1194.6, -1538.3 , 0 );
setMoveKey( spep_0 + 82, 1, 1247.6, -1605.1 , 0 );
setMoveKey( spep_0 + 84, 1, 1290, -1658.5 , 0 );
setMoveKey( spep_0 + 86, 1, 1324.7, -1702.3 , 0 );
setMoveKey( spep_0 + 88, 1, 1353.7, -1738.8 , 0 );
setMoveKey( spep_0 + 90, 1, 1378.1, -1769.6 , 0 );
setMoveKey( spep_0 + 92, 1, 1398.9, -1795.9 , 0 );
setMoveKey( spep_0 + 94, 1, 1416.7, -1818.3 , 0 );
setMoveKey( spep_0 + 96, 1, 1432, -1837.6 , 0 );
setMoveKey( spep_0 + 98, 1, 1445.2, -1854.2 , 0 );
setMoveKey( spep_0 + 100, 1, 1456.5, -1868.5 , 0 );
setMoveKey( spep_0 + 102, 1, 1466.2, -1880.7 , 0 );
setMoveKey( spep_0 + 104, 1, 1474.5, -1891.2 , 0 );
setMoveKey( spep_0 + 106, 1, 1481.5, -1900 , 0 );
setMoveKey( spep_0 + 108, 1, 1487.4, -1907.4 , 0 );
setMoveKey( spep_0 + 110, 1, 1492.2, -1913.5 , 0 );
setMoveKey( spep_0 + 112, 1, 1496.1, -1918.4 , 0 );
setMoveKey( spep_0 + 114, 1, 1499.2, -1922.3 , 0 );
setMoveKey( spep_0 + 116, 1, 1501.5, -1925.2 , 0 );
setMoveKey( spep_0 + 118, 1, 1503.1, -1927.1 , 0 );
setMoveKey( spep_0 + 120, 1, 1504, -1928.3 , 0 );
setMoveKey( spep_0 + 122, 1, 1504.2, -1928.6 , 0 );

setScaleKey( spep_0 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 1, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 3, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 4, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 5, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 12, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 14, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 18, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 20, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 24, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 26, 1, 2, 2 );
setScaleKey( spep_0 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 30, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 32, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 34, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 36, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 38, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 42, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 44, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 48, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 50, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 54, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 56, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 58, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 60, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 62, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 64, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 66, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 68, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 70, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 72, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 74, 1, 7.1, 7.1 );
setScaleKey( spep_0 + 76, 1, 8.06, 8.06 );
setScaleKey( spep_0 + 78, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 80, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 82, 1, 9.66, 9.66 );
setScaleKey( spep_0 + 84, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 86, 1, 10.24, 10.24 );
setScaleKey( spep_0 + 88, 1, 10.46, 10.46 );
setScaleKey( spep_0 + 90, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 92, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 94, 1, 10.93, 10.93 );
setScaleKey( spep_0 + 96, 1, 11.04, 11.04 );
setScaleKey( spep_0 + 98, 1, 11.14, 11.14 );
setScaleKey( spep_0 + 100, 1, 11.22, 11.22 );
setScaleKey( spep_0 + 102, 1, 11.3, 11.3 );
setScaleKey( spep_0 + 104, 1, 11.36, 11.36 );
setScaleKey( spep_0 + 106, 1, 11.41, 11.41 );
setScaleKey( spep_0 + 108, 1, 11.45, 11.45 );
setScaleKey( spep_0 + 110, 1, 11.49, 11.49 );
setScaleKey( spep_0 + 112, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 114, 1, 11.54, 11.54 );
setScaleKey( spep_0 + 116, 1, 11.56, 11.56 );
setScaleKey( spep_0 + 118, 1, 11.57, 11.57 );
setScaleKey( spep_0 + 120, 1, 11.58, 11.58 );
setScaleKey( spep_0 + 122, 1, 11.58, 11.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 122, 1, 0 );
--[[
--***カットイン***32
speff = entryEffect(  spep_0 -6+90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0 -6+90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0 -6 +102,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0 -6 +102, ctgogo, 72, 10 );

setEffMoveKey( spep_0 -6 +102, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 -6 +174, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 -6 +102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 -6 +166, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 -6 +168, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 -6 +170, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 -6 +172, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 -6 +174, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 -6 +102, ctgogo, 0 );
setEffRotateKey( spep_0 -6 +174, ctgogo, 0 );

setEffAlphaKey( spep_0 -6 +102, ctgogo, 0 );
setEffAlphaKey( spep_0 -6 +103, ctgogo, 255 );
setEffAlphaKey( spep_0 -6 +104, ctgogo, 255 );
setEffAlphaKey( spep_0 -6 +174, ctgogo, 255 );
]]--
--集中線
shuchusen1 = entryEffectLife( spep_0+78, 906, 100, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_0+78,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+178,  shuchusen1,  0,  0);
setEffScaleKey(  spep_0+78,  shuchusen1,  1.3,  1.9);
setEffScaleKey(  spep_0+178,  shuchusen1,  1.3,  1.9);
setEffRotateKey(  spep_0+78,  shuchusen1,  0);
setEffRotateKey(  spep_0+178,  shuchusen1,  0);
setEffAlphaKey(  spep_0+78,  shuchusen1,  255);
setEffAlphaKey(  spep_0+178,  shuchusen1,  255);

--SE
--SE2=playSe( spep_0, 1044); --地割れ
--stopSe(spep_0+22,SE2,0);--音を止める
playSe( spep_0+24, 8); --近ずく
setSeVolume(spep_0+24, 8,200);
playSe( spep_0+96, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+178;

-----------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_1-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);

--***背景と白フェード***
entryFade( spep_1+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 90;



-----------------------------------------------------
-- エクスプロージョン！
------------------------------------------------------
--- ** エフェクト等 (前)
explosion = entryEffectLife( spep_2 + 0, SP_02x, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 200, explosion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_2 + 200, explosion, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, explosion, 255 );
setEffAlphaKey( spep_2 + 200, explosion, 255 );
setEffRotateKey( spep_2 + 0, explosion, 0 );
setEffRotateKey( spep_2 + 200, explosion, 0 );

--SE
playSe( spep_2+36, 1007); --手をひらく
SE=playSe( spep_2+82, 15); --手をひらく

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+104 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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

--SE
stopSe(spep_2+114,SE,0);--音を止める
playSe( spep_2+82, 15); --手をひらく
playSe(spep_2+116,1067);--爆発
playSe(spep_2+158,1024);--爆発

--白フェード
--entryFade( spep_2+154, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+200;

-----------------------------------------------------
-- くるくる〜
------------------------------------------------------
--- ** エフェクト等 (前)
kurukuru = entryEffect( spep_3 + 0, SP_03x,  0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, kurukuru, 0, 0 , 0 );
setEffMoveKey( spep_3 + 204, kurukuru, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kurukuru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 204, kurukuru, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kurukuru, 255 );
setEffAlphaKey( spep_3 + 204, kurukuru, 255 );
setEffRotateKey( spep_3 + 0, kurukuru, 0 );
setEffRotateKey( spep_3 + 204, kurukuru, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 133, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );

setMoveKey( spep_3 + 28, 1, -1262.5, 448.4 , 0 );
setMoveKey( spep_3 + 30, 1, -1319.2, 202 , 0 );
setMoveKey( spep_3 + 32, 1, -1319.3, -50.3 , 0 );
setMoveKey( spep_3 + 34, 1, -1260.2, -293.2 , 0 );
setMoveKey( spep_3 + 36, 1, -1142.3, -509.6 , 0 );
setMoveKey( spep_3 + 38, 1, -969.8, -679.5 , 0 );
setMoveKey( spep_3 + 40, 1, -754.5, -781 , 0 );
setMoveKey( spep_3 + 42, 1, -522, -802.3 , 0 );
setMoveKey( spep_3 + 44, 1, -308.4, -759.9 , 0 );
setMoveKey( spep_3 + 46, 1, -134.9, -685.6 , 0 );
setMoveKey( spep_3 + 48, 1, -1.7, -599.2 , 0 );
setMoveKey( spep_3 + 50, 1, 97.2, -509.3 , 0 );
setMoveKey( spep_3 + 52, 1, 167.8, -420.3 , 0 );
setMoveKey( spep_3 + 54, 1, 215.1, -334.7 , 0 );
setMoveKey( spep_3 + 56, 1, 243.2, -254.6 , 0 );
setMoveKey( spep_3 + 58, 1, 255.7, -181.4 , 0 );
setMoveKey( spep_3 + 60, 1, 257.7, -117 , 0 );
setMoveKey( spep_3 + 62, 1, 249.5, -59.9 , 0 );
setMoveKey( spep_3 + 64, 1, 232.9, -10.5 , 0 );
setMoveKey( spep_3 + 66, 1, 210, 30.7 , 0 );
setMoveKey( spep_3 + 68, 1, 182.6, 63.6 , 0 );
setMoveKey( spep_3 + 70, 1, 152.6, 88.3 , 0 );
setMoveKey( spep_3 + 72, 1, 121.6, 105.4 , 0 );
setMoveKey( spep_3 + 74, 1, 90.8, 115.3 , 0 );
setMoveKey( spep_3 + 76, 1, 61.6, 118.9 , 0 );
setMoveKey( spep_3 + 78, 1, 34.8, 117 , 0 );
setMoveKey( spep_3 + 80, 1, 11.1, 110.7 , 0 );
setMoveKey( spep_3 + 82, 1, -9, 101 , 0 );
setMoveKey( spep_3 + 84, 1, -25.4, 88.8 , 0 );
setMoveKey( spep_3 + 86, 1, -37.9, 74.9 , 0 );
setMoveKey( spep_3 + 88, 1, -46.7, 60.4 , 0 );
setMoveKey( spep_3 + 90, 1, -52, 45.8 , 0 );
setMoveKey( spep_3 + 92, 1, -54.2, 31.9 , 0 );
setMoveKey( spep_3 + 94, 1, -53.8, 19 , 0 );
setMoveKey( spep_3 + 96, 1, -51.1, 7.6 , 0 );
setMoveKey( spep_3 + 98, 1, -46.8, -2.1 , 0 );
setMoveKey( spep_3 + 100, 1, -41.2, -10 , 0 );
setMoveKey( spep_3 + 102, 1, -34.9, -16 , 0 );
setMoveKey( spep_3 + 104, 1, -28.2, -20.3 , 0 );
setMoveKey( spep_3 + 106, 1, -21.5, -23 , 0 );
setMoveKey( spep_3 + 108, 1, -15.1, -24.1 , 0 );
setMoveKey( spep_3 + 110, 1, -9.2, -24.1 , 0 );
setMoveKey( spep_3 + 112, 1, -4, -23 , 0 );
setMoveKey( spep_3 + 114, 1, 0.5, -21.2 , 0 );
setMoveKey( spep_3 + 116, 1, 4.1, -18.8 , 0 );
setMoveKey( spep_3 + 118, 1, 6.9, -16.1 , 0 );
setMoveKey( spep_3 + 120, 1, 8.9, -13.2 , 0 );
setMoveKey( spep_3 + 122, 1, 10.3, -10.3 , 0 );
setMoveKey( spep_3 + 124, 1, 11, -7.6 , 0 );
setMoveKey( spep_3 + 126, 1, 11.1, -5 , 0 );
setMoveKey( spep_3 + 128, 1, 10.9, -2.6 , 0 );
setMoveKey( spep_3 + 130, 1, 10.3, -0.6 , 0 );
setMoveKey( spep_3 + 132, 1, 9.4, 1.1 , 0 );
setMoveKey( spep_3 + 134, 1, 8.4, 2.6 , 0 );
setMoveKey( spep_3 + 136, 1, 7.2, 3.7 , 0 );
setMoveKey( spep_3 + 138, 1, 6, 4.6 , 0 );
setMoveKey( spep_3 + 140, 1, 4.8, 5.2 , 0 );
setMoveKey( spep_3 + 142, 1, 3.5, 5.6 , 0 );
setMoveKey( spep_3 + 144, 1, 2.3, 5.8 , 0 );
setMoveKey( spep_3 + 146, 1, 1.1, 5.8 , 0 );
setMoveKey( spep_3 + 148, 1, 0, 5.6 , 0 );
setMoveKey( spep_3 + 150, 1, -1, 5.3 , 0 );
setMoveKey( spep_3 + 152, 1, -2, 4.8 , 0 );
setMoveKey( spep_3 + 154, 1, -2.9, 4.2 , 0 );
setMoveKey( spep_3 + 156, 1, -3.6, 3.5 , 0 );
setMoveKey( spep_3 + 158, 1, -4.2, 2.6 , 0 );
setMoveKey( spep_3 + 160, 1, -4.6, 1.6 , 0 );

setScaleKey( spep_3 + 28, 1, 4.86, 4.86 );
setScaleKey( spep_3 + 30, 1, 4.84, 4.84 );
setScaleKey( spep_3 + 32, 1, 4.8, 4.8 );
setScaleKey( spep_3 + 34, 1, 4.71, 4.71 );
setScaleKey( spep_3 + 36, 1, 4.56, 4.56 );
setScaleKey( spep_3 + 38, 1, 4.32, 4.32 );
setScaleKey( spep_3 + 40, 1, 3.96, 3.96 );
setScaleKey( spep_3 + 42, 1, 3.5, 3.5 );
setScaleKey( spep_3 + 44, 1, 3, 3 );
setScaleKey( spep_3 + 46, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_3 + 50, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 56, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 58, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 60, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 62, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 66, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 70, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 72, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 74, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 78, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 80, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 82, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 84, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 86, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 88, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 90, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 92, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 94, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 96, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 98, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 100, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 102, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 104, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 106, 1, 0.12, 0.12 );
setScaleKey( spep_3 + 108, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 110, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 112, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 114, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 116, 1, 0.07, 0.07 );
setScaleKey( spep_3 + 118, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 120, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 122, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 124, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 126, 1, 0.04, 0.04 );
setScaleKey( spep_3 + 130, 1, 0.04, 0.04 );
setScaleKey( spep_3 + 132, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 140, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 142, 1, 0.02, 0.02 );
setScaleKey( spep_3 + 160, 1, 0.02, 0.02 );

setRotateKey( spep_3 + 28, 1, 107 );
setRotateKey( spep_3 + 30, 1, 96.1 );
setRotateKey( spep_3 + 32, 1, 85.2 );
setRotateKey( spep_3 + 34, 1, 74.3 );
setRotateKey( spep_3 + 36, 1, 63.4 );
setRotateKey( spep_3 + 38, 1, 52.5 );
setRotateKey( spep_3 + 40, 1, 41.6 );
setRotateKey( spep_3 + 42, 1, 30.7 );
setRotateKey( spep_3 + 44, 1, 19.7 );
setRotateKey( spep_3 + 46, 1, 8.8 );
setRotateKey( spep_3 + 48, 1, -2.1 );
setRotateKey( spep_3 + 50, 1, -13 );
setRotateKey( spep_3 + 52, 1, -23.9 );
setRotateKey( spep_3 + 54, 1, -34.8 );
setRotateKey( spep_3 + 56, 1, -45.7 );
setRotateKey( spep_3 + 58, 1, -56.6 );
setRotateKey( spep_3 + 60, 1, -67.5 );
setRotateKey( spep_3 + 62, 1, -78.4 );
setRotateKey( spep_3 + 64, 1, -89.3 );
setRotateKey( spep_3 + 66, 1, -100.3 );
setRotateKey( spep_3 + 68, 1, -111.2 );
setRotateKey( spep_3 + 70, 1, -122.1 );
setRotateKey( spep_3 + 72, 1, -133 );
setRotateKey( spep_3 + 74, 1, -143.9 );
setRotateKey( spep_3 + 76, 1, -154.8 );
setRotateKey( spep_3 + 78, 1, -165.7 );
setRotateKey( spep_3 + 80, 1, -176.6 );
setRotateKey( spep_3 + 82, 1, -187.5 );
setRotateKey( spep_3 + 84, 1, -198.4 );
setRotateKey( spep_3 + 86, 1, -209.4 );
setRotateKey( spep_3 + 88, 1, -220.3 );
setRotateKey( spep_3 + 90, 1, -231.2 );
setRotateKey( spep_3 + 92, 1, -242.1 );
setRotateKey( spep_3 + 94, 1, -253 );
setRotateKey( spep_3 + 96, 1, -263.9 );
setRotateKey( spep_3 + 98, 1, -274.8 );
setRotateKey( spep_3 + 100, 1, -285.7 );
setRotateKey( spep_3 + 102, 1, -296.6 );
setRotateKey( spep_3 + 104, 1, -307.5 );
setRotateKey( spep_3 + 106, 1, -318.4 );
setRotateKey( spep_3 + 108, 1, -329.4 );
setRotateKey( spep_3 + 110, 1, -340.3 );
setRotateKey( spep_3 + 112, 1, -351.2 );
setRotateKey( spep_3 + 114, 1, -362.1 );
setRotateKey( spep_3 + 116, 1, -373 );
setRotateKey( spep_3 + 118, 1, -383.9 );
setRotateKey( spep_3 + 120, 1, -394.8 );
setRotateKey( spep_3 + 122, 1, -405.7 );
setRotateKey( spep_3 + 124, 1, -416.6 );
setRotateKey( spep_3 + 126, 1, -427.5 );
setRotateKey( spep_3 + 128, 1, -438.5 );
setRotateKey( spep_3 + 130, 1, -449.4 );
setRotateKey( spep_3 + 132, 1, -460.3 );
setRotateKey( spep_3 + 134, 1, -471.2 );
setRotateKey( spep_3 + 136, 1, -482.1 );
setRotateKey( spep_3 + 138, 1, -493 );
setRotateKey( spep_3 + 140, 1, -503.9 );
setRotateKey( spep_3 + 142, 1, -514.8 );
setRotateKey( spep_3 + 144, 1, -525.7 );
setRotateKey( spep_3 + 146, 1, -536.6 );
setRotateKey( spep_3 + 148, 1, -547.5 );
setRotateKey( spep_3 + 150, 1, -558.5 );
setRotateKey( spep_3 + 152, 1, -569.4 );
setRotateKey( spep_3 + 154, 1, -580.3 );
setRotateKey( spep_3 + 156, 1, -591.2 );
setRotateKey( spep_3 + 158, 1, -602.1 );
setRotateKey( spep_3 + 160, 1, -613 );

--SE
SE1=playSe( spep_3, 1044); --地割れ
stopSe(spep_3+196,SE1,0);--音を止める

-- ダメージ表示
dealDamage(spep_3);
endPhase(spep_3+200);

end

end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	endPhase(SP_dodge+10);
	do return end
	else end

--敵表示
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 107 );

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_z + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_z + 26, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_z + 80, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.22, 0.22 );
setScaleKey( spep_z + 2, 1, 0.35, 0.35 );
setScaleKey( spep_z + 4, 1, 0.51, 0.51 );
setScaleKey( spep_z + 6, 1, 0.7, 0.7 );
setScaleKey( spep_z + 8, 1, 0.93, 0.93 );
setScaleKey( spep_z + 10, 1, 1.2, 1.2 );
setScaleKey( spep_z + 12, 1, 1.5, 1.5 );
setScaleKey( spep_z + 14, 1, 1.6, 1.6 );
setScaleKey( spep_z + 16, 1, 1.5, 1.5 );
setScaleKey( spep_z + 18, 1, 1.6, 1.6 );
setScaleKey( spep_z + 20, 1, 1.5, 1.5 );
setScaleKey( spep_z + 22, 1, 1.6, 1.6 );
setScaleKey( spep_z + 24, 1, 1.5, 1.5 );
setScaleKey( spep_z + 26, 1, 1.6, 1.6 );
setScaleKey( spep_z + 80, 1, 1.6, 1.6 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2, 1, 105 );
setRotateKey( spep_z + 4, 1, 240 );
setRotateKey( spep_z + 6, 1, 405 );
setRotateKey( spep_z + 8, 1, 600 );
setRotateKey( spep_z + 10, 1, 825 );
setRotateKey( spep_z + 26, 1, 1080 );
setRotateKey( spep_z + 80, 1, 1080 );



 -- 全体攻撃用背景
explosion = entryEffect( spep_z+1, SP_00,  0x80,  -1,  0,  0,  0);
setEffScaleKey( spep_z+1, explosion, 1.1, 1.1);
playSe( spep_z+1, SE_10 );



-- 書き文字エントリー
ct = entryEffectLife( spep_z+12+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
setEffShake( spep_z+12+15, ct, 30, 10);
setEffRotateKey( spep_z+12+15, ct, -40);
setEffScaleKey( spep_z+12+15, ct, 4.0, 4.0);
setEffScaleKey( spep_z+12+16, ct, 2.0, 2.0);
setEffScaleKey( spep_z+12+17, ct, 2.6, 2.6);
setEffScaleKey( spep_z+12+18, ct, 4.0, 4.0);
setEffScaleKey( spep_z+12+19, ct, 2.6, 2.6);
setEffScaleKey( spep_z+12+20, ct, 3.8, 3.8);
setEffScaleKey( spep_z+12+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_z+12+15, ct, 255);
setEffAlphaKey( spep_z+12+105, ct, 255);
setEffAlphaKey( spep_z+12+115, ct, 0);


playSe( spep_z+28, SE_11);

shuchusen6 = entryEffectLife( spep_z, 1657, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_z+16, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( spep_z, 0, 90, 0, 10, 10, 10, 190);          -- ベース暗め　背景

setDamage( spep_z+28, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_z+28);

entryFade( spep_z+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_z+80);

end
