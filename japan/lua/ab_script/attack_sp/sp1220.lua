--1015030 超必殺 超サイヤ人ベジータ_ビッグバンアタック
--流線は書き出しが来てから入れる！

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

--***エフェクト***
SP_01 =   152322;--最初の
SP_02 =   152323;--蹴り前
SP_03 =   152324;--蹴り背景
SP_04 =   152325;--ナビ
SP_05 =   152326;--ベジータさん
SP_06 =   152327;--気弾
SP_07 =   152328;--ベジータさん2

--**敵側
SP_08 = 152329;  --SP_02 敵側  
SP_09 = 152330;  --SP_03 敵側


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
-- カードイラスト気溜め(100F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.2,  1.8);
setEffScaleKey(  spep_1+100,  shuchusen1,  1.2,  1.8);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+100,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+100,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+100,  shuchusen1,  255);

--***書き文字ゴゴ***
ct_go = entryEffectLife( spep_1+0,  10008, 98, 0x100, -1, 0, -204, 398.4 );  --ゴゴゴ…

setEffShake(  spep_1,  ct_go,  98,  20);  
setEffMoveKey( spep_1, ct_go, -204, 398.4 , 0 );
setEffMoveKey( spep_1+2, ct_go, -209.5, 403.6 , 0 );
setEffMoveKey( spep_1+98, ct_go, -260.5, 451.5 , 0 );
setEffScaleKey( spep_1, ct_go, 1.4, 1.4 );
setEffScaleKey( spep_1+96, ct_go, 1.64, 1.64 );
setEffRotateKey( spep_1, ct_go, -1.7 );
setEffRotateKey( spep_1+98, ct_go, -1.7 );
setEffAlphaKey( spep_1+0, ct_go, 255 );
setEffAlphaKey( spep_1+98, ct_go, 255 );

--***カードイラストの気溜め***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+100,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+100,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+100,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+100,  kitame,  255);

--***SE***
playSe(  spep_1,  9);  --気溜めの音

------------------------------------------------------
-- カードイラスト(90F)
------------------------------------------------------
spep_2 = spep_1+100;

--***フェードと背景***
entryFade( spep_2-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+82, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_2,  SE_05);  --カードカットイン
------------------------------------------------------
-- 格闘(380F)
------------------------------------------------------
spep_3 = spep_2+90;


--***格闘前面***
kakutou = entryEffect(  spep_3,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_3,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_3+380,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_3,  kakutou,  0,  0);
setEffMoveKey(  spep_3+380,  kakutou,  0,  0);
setEffRotateKey(  spep_3,  kakutou,  0);
setEffRotateKey(  spep_3+380,  kakutou,  0);
setEffAlphaKey(  spep_3,  kakutou,  255);
setEffAlphaKey(  spep_3+380,  kakutou,  255);

--***敵の動き***
changeAnime(  spep_3+24,  1,  100);  --アイドリング
setDisp(  spep_3+24,  1,  1);  --敵表示

setMoveKey( spep_3+24, 1, 802.6, 65.7 , 0 );
setMoveKey( spep_3+26, 1, 779.9, 64.8 , 0 );
setMoveKey( spep_3+28, 1, 754.3, 63.8 , 0 );
setMoveKey( spep_3+30, 1, 725.9, 62.9 , 0 );
setMoveKey( spep_3+32, 1, 694.9, 61.9 , 0 );
setMoveKey( spep_3+34, 1, 661.4, 61 , 0 );
setMoveKey( spep_3+36, 1, 625.6, 60 , 0 );
setMoveKey( spep_3+38, 1, 587.4, 59.1 , 0 );
setMoveKey( spep_3+40, 1, 547.1, 58.1 , 0 );
setMoveKey( spep_3+42, 1, 519.4, 59.3 , 0 );
setMoveKey( spep_3+44, 1, 487.7, 60.4 , 0 );
setMoveKey( spep_3+46, 1, 451.7, 61.6 , 0 );
setMoveKey( spep_3+48, 1, 411.4, 62.8 , 0 );


setScaleKey( spep_3+24, 1, 1.72, 1.72 );
setScaleKey( spep_3+26, 1, 1.7, 1.7 );
setScaleKey( spep_3+28, 1, 1.68, 1.68 );
setScaleKey( spep_3+30, 1, 1.66, 1.66 );
setScaleKey( spep_3+32, 1, 1.64, 1.64 );
setScaleKey( spep_3+34, 1, 1.62, 1.62 );
setScaleKey( spep_3+36, 1, 1.6, 1.6 );
setScaleKey( spep_3+38, 1, 1.58, 1.58 );
setScaleKey( spep_3+40, 1, 1.56, 1.56 );
setScaleKey( spep_3+42, 1, 1.58, 1.58 );
setScaleKey( spep_3+44, 1, 1.61, 1.61 );
setScaleKey( spep_3+46, 1, 1.63, 1.63 );
setScaleKey( spep_3+48, 1, 1.66, 1.66 );

setRotateKey( spep_3+24, 1, 0 );
setRotateKey( spep_3+48, 1, 0 );

--***格闘背景***
kakutouBG = entryEffect(  spep_3,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_3,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_3+380,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_3,  kakutouBG,  0,  0);
setEffMoveKey(  spep_3+380,  kakutouBG,  0,  0);
setEffRotateKey(  spep_3,  kakutouBG,  0);
setEffRotateKey(  spep_3+380,  kakutouBG,  0);
setEffAlphaKey(  spep_3,  kakutouBG,  255);
setEffAlphaKey(  spep_3+380,  kakutouBG,  255);

--**SE**
playSe(  spep_3,  1002);  --最初のダッシュ音

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+48 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 317.1, 65.1 , 0 );
setMoveKey( SP_dodge+2, 1, 262.7, 66.3 , 0 );
setMoveKey( SP_dodge+4, 1, 203.5, 67.4 , 0 );
setMoveKey( SP_dodge+6, 1, 203.5, 67.4 , 0 );
setMoveKey( SP_dodge+8, 1, 203.5, 67.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+2, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+4, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+6, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+8, 1, 1.71, 1.71 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  203.5, 67.4 , 0 );
setMoveKey(  SP_dodge+10,    1,  203.5, 67.4 , 0 );
setScaleKey( SP_dodge+9,    1,  1.71, 1.71 );
setScaleKey( SP_dodge+10,    1,  1.71, 1.71 );
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

changeAnime(  spep_3+60,  1,  108);  --くの字
changeAnime(  spep_3+102,  1,  106);  --ダメージ
changeAnime(  spep_3+122,  1,  104);  --ガード
changeAnime(  spep_3+128,  1,  117);  --気溜め
changeAnime(  spep_3+150,  1,  111);  --パンチ
changeAnime(  spep_3+152,  1,  103);  --ダッシュ
changeAnime(  spep_3+180,  1,  111);  --パンチ
changeAnime(  spep_3+182,  1,  109);  --パンチ2
changeAnime(  spep_3+212,  1,  108);  --くの字
changeAnime(  spep_3+322,  1,  107);  --吹っ飛び


setMoveKey( spep_3+50, 1, 366.5, 63.9 , 0 );
setMoveKey( spep_3+52, 1, 317.1, 65.1 , 0 );
setMoveKey( spep_3+54, 1, 262.7, 66.3 , 0 );
setMoveKey( spep_3+56, 1, 203.5, 67.4 , 0 );
setMoveKey( spep_3+58, 1, 139.2, 68.6 , 0 );
setScaleKey( spep_3+50, 1, 1.68, 1.68 );
setScaleKey( spep_3+52, 1, 1.71, 1.71 );
setScaleKey( spep_3+54, 1, 1.74, 1.74 );
setScaleKey( spep_3+56, 1, 1.76, 1.76 );
setScaleKey( spep_3+58, 1, 1.79, 1.79 );
setRotateKey( spep_3+50, 1, 0 );
setRotateKey( spep_3+58, 1, 0 );

setMoveKey( spep_3+60, 1, 235.2, 64.9 , 0 );
setMoveKey( spep_3+62, 1, 238.8, 73.7 , 0 );
setMoveKey( spep_3+64, 1, 229.9, 66.5 , 0 );
setMoveKey( spep_3+66, 1, 236, 67.3 , 0 );
setMoveKey( spep_3+68, 1, 229.6, 56.1 , 0 );
setMoveKey( spep_3+70, 1, 230.2, 61 , 0 );
setMoveKey( spep_3+72, 1, 218.2, 53.8 , 0 );
setMoveKey( spep_3+74, 1, 221.3, 54.6 , 0 );
setMoveKey( spep_3+76, 1, 211.8, 47.4 , 0 );
setMoveKey( spep_3+78, 1, 205.6, 50.5 , 0 );
setMoveKey( spep_3+80, 1, 189.7, 41.7 , 0 );
setMoveKey( spep_3+82, 1, 191.9, 49.1 , 0 );
setMoveKey( spep_3+84, 1, 184.6, 40.6 , 0 );
setMoveKey( spep_3+86, 1, 187.6, 48.2 , 0 );
setMoveKey( spep_3+88, 1, 181.4, 44 , 0 );
setMoveKey( spep_3+90, 1, 195.2, 48 , 0 );
setMoveKey( spep_3+92, 1, 197.2, 40 , 0 );
setMoveKey( spep_3+94, 1, 207, 48 , 0 );
setMoveKey( spep_3+96, 1, 42.9, 44 , 0 );
setMoveKey( spep_3+98, 1, -105.4, 48 , 0 );
setMoveKey( spep_3+100, 1, -54, 40.1 , 0 );
setScaleKey( spep_3+60, 1, 2.39, 2.39 );
setScaleKey( spep_3+62, 1, 2.3, 2.3 );
setScaleKey( spep_3+64, 1, 2.21, 2.21 );
setScaleKey( spep_3+66, 1, 2.12, 2.12 );
setScaleKey( spep_3+68, 1, 2.03, 2.03 );
setScaleKey( spep_3+70, 1, 1.94, 1.94 );
setScaleKey( spep_3+72, 1, 1.85, 1.85 );
setScaleKey( spep_3+74, 1, 1.76, 1.76 );
setScaleKey( spep_3+76, 1, 1.67, 1.67 );
setScaleKey( spep_3+78, 1, 1.6, 1.6 );
setScaleKey( spep_3+80, 1, 1.54, 1.54 );
setScaleKey( spep_3+82, 1, 1.49, 1.49 );
setScaleKey( spep_3+84, 1, 1.45, 1.45 );
setScaleKey( spep_3+86, 1, 1.42, 1.42 );
setScaleKey( spep_3+88, 1, 1.41, 1.41 );
setScaleKey( spep_3+98, 1, 1.41, 1.41 );
setScaleKey( spep_3+100, 1, 1.31, 1.31 );
setRotateKey( spep_3+60, 1, 0 );
setRotateKey( spep_3+98, 1, 0 );
setRotateKey( spep_3+100, 1, 18.6 );

setMoveKey( spep_3+102, 1, -73.3, 71.2 , 0 );
setMoveKey( spep_3+104, 1, -66.5, 67.2 , 0 );
setMoveKey( spep_3+106, 1, -43.9, 71.2 , 0 );
setMoveKey( spep_3+108, 1, -33.2, 63.2 , 0 );
setMoveKey( spep_3+110, 1, -25.6, 71.2 , 0 );
setMoveKey( spep_3+112, 1, -25.9, 67.2 , 0 );
setMoveKey( spep_3+114, 1, -18.4, 71.2 , 0 );
setMoveKey( spep_3+116, 1, -22.7, 63.2 , 0 );
setMoveKey( spep_3+118, 1, -11.2, 71.2 , 0 );
setMoveKey( spep_3+120, 1, -11.4, 63.2 , 0 );
setScaleKey( spep_3+102, 1, 1.31, 1.31 );
setScaleKey( spep_3+104, 1, 1.33, 1.33 );
setScaleKey( spep_3+106, 1, 1.34, 1.34 );
setScaleKey( spep_3+108, 1, 1.36, 1.36 );
setScaleKey( spep_3+120, 1, 1.36, 1.36 );
setRotateKey( spep_3+102, 1, -2.5 );
setRotateKey( spep_3+104, 1, -1.7 );
setRotateKey( spep_3+106, 1, -0.8 );
setRotateKey( spep_3+108, 1, 0 );
setRotateKey( spep_3+110, 1, 0.3 );
setRotateKey( spep_3+112, 1, 0.5 );
setRotateKey( spep_3+114, 1, 0.8 );
setRotateKey( spep_3+116, 1, 1 );
setRotateKey( spep_3+118, 1, 1.3 );
setRotateKey( spep_3+120, 1, 1.5 );

setMoveKey( spep_3+122, 1, -8.6, 41.2 , 0 );
setMoveKey( spep_3+124, 1, 8.6, 49.7 , 0 );
setMoveKey( spep_3+126, 1, 29.8, 43.4 , 0 );
setScaleKey( spep_3+122, 1, 1.37, 1.37 );
setScaleKey( spep_3+126, 1, 1.37, 1.37 );
setRotateKey( spep_3+122, 1, 20.9 );
setRotateKey( spep_3+124, 1, 14.1 );
setRotateKey( spep_3+126, 1, 7.2 );

setMoveKey( spep_3+128, 1, -0.3, 33.1 , 0 );
setMoveKey( spep_3+130, 1, 23.1, 33.1 , 0 );
setMoveKey( spep_3+132, 1, 29.6, 33 , 0 );
setMoveKey( spep_3+134, 1, 35.7, 33 , 0 );
setMoveKey( spep_3+136, 1, 41.3, 33 , 0 );
setMoveKey( spep_3+138, 1, 46.3, 33 , 0 );
setMoveKey( spep_3+140, 1, 50.8, 33 , 0 );
setMoveKey( spep_3+142, 1, 54.8, 33 , 0 );
setMoveKey( spep_3+144, 1, 58.3, 33 , 0 );
setMoveKey( spep_3+146, 1, 61.3, 33 , 0 );
setMoveKey( spep_3+148, 1, 63.8, 33.1 , 0 );
setScaleKey( spep_3+128, 1, 1.44, 1.44 );
setScaleKey( spep_3+148, 1, 1.44, 1.44 );
setRotateKey( spep_3+128, 1, -0.8 );
setRotateKey( spep_3+130, 1, -4.5 );
setRotateKey( spep_3+132, 1, -4.8 );
setRotateKey( spep_3+134, 1, -5.1 );
setRotateKey( spep_3+136, 1, -5.3 );
setRotateKey( spep_3+138, 1, -5.5 );
setRotateKey( spep_3+140, 1, -5.7 );
setRotateKey( spep_3+142, 1, -5.8 );
setRotateKey( spep_3+144, 1, -6 );
setRotateKey( spep_3+146, 1, -6.1 );
setRotateKey( spep_3+148, 1, -6.2 );

setMoveKey( spep_3+150, 1, 1.4, 26.9 , 0 );
setMoveKey( spep_3+152, 1, -30.7, 26.9 , 0 );
setScaleKey( spep_3+150, 1, 1.43, 1.43 );
setScaleKey( spep_3+152, 1, 1.43, 1.43 );
setRotateKey( spep_3+150, 1, 0 );
setRotateKey( spep_3+152, 1, 0 );

setScaleKey( spep_3+154, 1, 1.54, 1.54 );
setScaleKey( spep_3+172, 1, 1.54, 1.54 );
setScaleKey( spep_3+174, 1, 1.56, 1.56 );
setScaleKey( spep_3+176, 1, 1.58, 1.58 );
setScaleKey( spep_3+178, 1, 1.6, 1.6 );
setScaleKey( spep_3+154, 1, 1.54, 1.54 );
setScaleKey( spep_3+172, 1, 1.54, 1.54 );
setScaleKey( spep_3+174, 1, 1.56, 1.56 );
setScaleKey( spep_3+176, 1, 1.58, 1.58 );
setScaleKey( spep_3+178, 1, 1.6, 1.6 );
setRotateKey( spep_3+154, 1, 3.7 );
setRotateKey( spep_3+170, 1, 3.7 );
setRotateKey( spep_3+172, 1, 3.6 );
setRotateKey( spep_3+174, 1, 3.6 );
setRotateKey( spep_3+176, 1, 3.5 );
setRotateKey( spep_3+178, 1, 3.5 );

setMoveKey( spep_3+180, 1, 276.1, 39.9 , 0 );
setMoveKey( spep_3+182, 1, 241.4, 45.1 , 0 );
setMoveKey( spep_3+184, 1, 205.7, 50.3 , 0 );
setScaleKey( spep_3+180, 1, 1.49, 1.49 );
setScaleKey( spep_3+182, 1, 1.5, 1.5 );
setScaleKey( spep_3+184, 1, 1.52, 1.52 );
setRotateKey( spep_3+180, 1, 1 );
setRotateKey( spep_3+182, 1, 3.3 );
setRotateKey( spep_3+184, 1, -12.2 );

setMoveKey( spep_3+186, 1, 178.1, 44.5 , 0 );
setMoveKey( spep_3+188, 1, 167.6, 45.9 , 0 );
setMoveKey( spep_3+190, 1, 157.5, 47.3 , 0 );
setMoveKey( spep_3+192, 1, 148.1, 48.6 , 0 );
setMoveKey( spep_3+194, 1, 139.2, 49.9 , 0 );
setMoveKey( spep_3+196, 1, 131.2, 50.8 , 0 );
setMoveKey( spep_3+198, 1, 124.1, 51.8 , 0 );
setMoveKey( spep_3+200, 1, 117.8, 52.6 , 0 );
setMoveKey( spep_3+202, 1, 112.4, 53.4 , 0 );
setMoveKey( spep_3+204, 1, 107.9, 54.1 , 0 );
setMoveKey( spep_3+206, 1, 104.3, 54.9 , 0 );
setMoveKey( spep_3+208, 1, 101.5, 55.6 , 0 );
setMoveKey( spep_3+210, 1, 99.7, 56.2 , 0 );
--setMoveKey( spep_3+212, 1, 98.7, 56.9 , 0 );

setScaleKey( spep_3+186, 1, 1.62, 1.62 );
setScaleKey( spep_3+188, 1, 1.64, 1.64 );
setScaleKey( spep_3+190, 1, 1.65, 1.65 );
setScaleKey( spep_3+192, 1, 1.66, 1.66 );
setScaleKey( spep_3+194, 1, 1.68, 1.68 );
setScaleKey( spep_3+196, 1, 1.69, 1.69 );
setScaleKey( spep_3+198, 1, 1.7, 1.7 );
setScaleKey( spep_3+200, 1, 1.71, 1.71 );
setScaleKey( spep_3+204, 1, 1.71, 1.71 );
setScaleKey( spep_3+206, 1, 1.72, 1.72 );
setScaleKey( spep_3+208, 1, 1.73, 1.73 );
setScaleKey( spep_3+210, 1, 1.74, 1.74 );
--setScaleKey( spep_3+212, 1, 1.75, 1.75 );

setRotateKey( spep_3+186, 1, -12.2 );
setRotateKey( spep_3+210, 1, -12.2 );
--setRotateKey( spep_3+212, 1, -12.2 );

setMoveKey( spep_3+212, 1, 132.6, 313.5 , 0 );
setMoveKey( spep_3+214, 1, 132.6, 313.5 , 0 );
setMoveKey( spep_3+216, 1, 113.7, 280.8 , 0 );
setMoveKey( spep_3+218, 1, 102.1, 278.8 , 0 );
setMoveKey( spep_3+220, 1, 74.3, 255.6 , 0 );
setMoveKey( spep_3+222, 1, 69.8, 239.2 , 0 );
setMoveKey( spep_3+224, 1, 67.5, 234.7 , 0 );
setMoveKey( spep_3+226, 1, 72.9, 246.1 , 0 );
setMoveKey( spep_3+228, 1, 66.5, 241.4 , 0 );
setMoveKey( spep_3+230, 1, 75.8, 252.6 , 0 );
setMoveKey( spep_3+232, 1, 69.4, 251.7 , 0 );
setMoveKey( spep_3+234, 1, 78.7, 258.7 , 0 );
setMoveKey( spep_3+236, 1, 76.1, 249.7 , 0 );
setMoveKey( spep_3+238, 1, 81.3, 264.5 , 0 );
setMoveKey( spep_3+240, 1, 74.7, 263.3 , 0 );
setMoveKey( spep_3+242, 1, 83.9, 270 , 0 );
setMoveKey( spep_3+244, 1, 82.1, 267.2 , 0 );
setMoveKey( spep_3+246, 1, 28.7, 101.2 , 0 );
setMoveKey( spep_3+248, 1, -25.6, -44.2 , 0 );
setMoveKey( spep_3+250, 1, -53.4, -148.9 , 0 );
setMoveKey( spep_3+252, 1, -82.3, -233 , 0 );
setMoveKey( spep_3+254, 1, -92.8, -268.5 , 0 );
setMoveKey( spep_3+256, 1, -98.5, -263.9 , 0 );
setMoveKey( spep_3+258, 1, -88.5, -251.4 , 0 );
setMoveKey( spep_3+260, 1, -90.3, -250.8 , 0 );
setMoveKey( spep_3+262, 1, -84.2, -234.2 , 0 );
setMoveKey( spep_3+264, 1, -90, -233.7 , 0 );
setMoveKey( spep_3+266, 1, -79.9, -217.1 , 0 );
setMoveKey( spep_3+268, 1, -85.7, -212.6 , 0 );
setMoveKey( spep_3+270, 1, -75.6, -200 , 0 );
setMoveKey( spep_3+272, 1, -77.4, -195.4 , 0 );
setMoveKey( spep_3+274, 1, -71.3, -182.9 , 0 );
setMoveKey( spep_3+276, 1, -77.1, -182.3 , 0 );
setMoveKey( spep_3+278, 1, -67.1, -165.8 , 0 );
setMoveKey( spep_3+280, 1, -68.8, -161.2 , 0 );
setMoveKey( spep_3+282, 1, -62.8, -148.6 , 0 );
setMoveKey( spep_3+284, 1, -68.5, -148.1 , 0 );
setMoveKey( spep_3+286, 1, -58.5, -131.5 , 0 );
setMoveKey( spep_3+288, 1, -60.2, -130.9 , 0 );
setMoveKey( spep_3+290, 1, -54.2, -114.4 , 0 );
setMoveKey( spep_3+292, 1, -61.6, -114.4 , 0 );
setMoveKey( spep_3+294, 1, -53.5, -108.8 , 0 );
setMoveKey( spep_3+296, 1, -57.3, -111.1 , 0 );
setMoveKey( spep_3+298, 1, -53.1, -105.3 , 0 );
setMoveKey( spep_3+300, 1, -52.8, -103.3 , 0 );
setMoveKey( spep_3+302, 1, -52.5, -101.1 , 0 );
setMoveKey( spep_3+304, 1, -52.1, -98.8 , 0 );
setMoveKey( spep_3+306, 1, -51.7, -96.4 , 0 );
setMoveKey( spep_3+308, 1, -51.3, -93.8 , 0 );
setMoveKey( spep_3+310, 1, -50.8, -91.1 , 0 );
setMoveKey( spep_3+312, 1, -50.2, -88.2 , 0 );
setMoveKey( spep_3+314, 1, -49.7, -85.1 , 0 );
setMoveKey( spep_3+316, 1, -49, -81.9 , 0 );
setMoveKey( spep_3+318, 1, -48.4, -78.6 , 0 );
setMoveKey( spep_3+320, 1, -47.6, -75.1 , 0 );
setScaleKey( spep_3+214, 1, 2.17, 2.17 );
setScaleKey( spep_3+216, 1, 2.01, 2.01 );
setScaleKey( spep_3+218, 1, 1.85, 1.85 );
setScaleKey( spep_3+220, 1, 1.69, 1.69 );
setScaleKey( spep_3+222, 1, 1.52, 1.52 );
setScaleKey( spep_3+224, 1, 1.51, 1.51 );
setScaleKey( spep_3+226, 1, 1.5, 1.5 );
setScaleKey( spep_3+228, 1, 1.49, 1.49 );
setScaleKey( spep_3+230, 1, 1.48, 1.48 );
setScaleKey( spep_3+232, 1, 1.46, 1.46 );
setScaleKey( spep_3+234, 1, 1.45, 1.45 );
setScaleKey( spep_3+236, 1, 1.44, 1.44 );
setScaleKey( spep_3+238, 1, 1.43, 1.43 );
setScaleKey( spep_3+240, 1, 1.42, 1.42 );
setScaleKey( spep_3+242, 1, 1.41, 1.41 );
setScaleKey( spep_3+290, 1, 1.41, 1.41 );
setScaleKey( spep_3+292, 1, 1.42, 1.42 );
setScaleKey( spep_3+294, 1, 1.44, 1.44 );
setScaleKey( spep_3+296, 1, 1.46, 1.46 );
setScaleKey( spep_3+298, 1, 1.48, 1.48 );
setScaleKey( spep_3+300, 1, 1.49, 1.49 );
setScaleKey( spep_3+302, 1, 1.51, 1.51 );
setScaleKey( spep_3+304, 1, 1.53, 1.53 );
setScaleKey( spep_3+306, 1, 1.55, 1.55 );
setScaleKey( spep_3+308, 1, 1.56, 1.56 );
setScaleKey( spep_3+310, 1, 1.58, 1.58 );
setScaleKey( spep_3+312, 1, 1.6, 1.6 );
setScaleKey( spep_3+314, 1, 1.62, 1.62 );
setScaleKey( spep_3+316, 1, 1.63, 1.63 );
setScaleKey( spep_3+318, 1, 1.65, 1.65 );
setScaleKey( spep_3+320, 1, 1.67, 1.67 );
setRotateKey( spep_3+212, 1, -37.2 );
setRotateKey( spep_3+214, 1, -37.2 );
setRotateKey( spep_3+272, 1, -37.2 );
setRotateKey( spep_3+274, 1, -37.1 );
setRotateKey( spep_3+304, 1, -37.1 );
setRotateKey( spep_3+306, 1, -37.2 );
setRotateKey( spep_3+320, 1, -37.2 );


setMoveKey( spep_3+322, 1, -106.6, -191.5 , 0 );
setMoveKey( spep_3+324, 1, -56.3, -135.6 , 0 );
setMoveKey( spep_3+326, 1, -59.3, -158.6 , 0 );
setMoveKey( spep_3+328, 1, -26.1, -106.8 , 0 );
setMoveKey( spep_3+330, 1, -59, -108.2 , 0 );
setMoveKey( spep_3+332, 1, -4.5, -86.1 , 0 );
setMoveKey( spep_3+334, 1, -16, -123.5 , 0 );
setMoveKey( spep_3+336, 1, 4.8, -77.7 , 0 );
setMoveKey( spep_3+338, 1, -25.6, -95.9 , 0 );
setMoveKey( spep_3+340, 1, 8, -75.7 , 0 );
setMoveKey( spep_3+342, 1, -131, -347.5 , 0 );
setMoveKey( spep_3+344, 1, -186.1, -479.4 , 0 );
setMoveKey( spep_3+346, 1, -218.7, -566.4 , 0 );
setMoveKey( spep_3+348, 1, -305.8, -761.7 , 0 );
setMoveKey( spep_3+350, 1, -401.8, -1031.7 , 0 );
setMoveKey( spep_3+352, 1, -550.9, -1505.9 , 0 );

setScaleKey( spep_3+322, 1, 0.56, 0.56 );
setScaleKey( spep_3+324, 1, 0.56, 0.56 );
setScaleKey( spep_3+326, 1, 0.55, 0.55 );
setScaleKey( spep_3+334, 1, 0.55, 0.55 );
setScaleKey( spep_3+336, 1, 0.57, 0.57 );
setScaleKey( spep_3+338, 1, 0.59, 0.59 );
setScaleKey( spep_3+340, 1, 0.6, 0.6 );
setScaleKey( spep_3+342, 1, 2.39, 2.39 );
setScaleKey( spep_3+348, 1, 3.89, 3.89 );
setScaleKey( spep_3+350, 1, 6.82, 6.82 );
setScaleKey( spep_3+352, 1, 9.09, 9.09 );


setRotateKey( spep_3+322, 1, 67 );
setRotateKey( spep_3+352, 1, 67 );

setDisp(  spep_3+352,  1,  0);  --敵を消す

--[[
setMoveKey( spep_3+322, 1, -106.6, -191.5 , 0 );
setMoveKey( spep_3+324, 1, -56.3, -135.6 , 0 );
setMoveKey( spep_3+326, 1, -59.3, -158.6 , 0 );
setMoveKey( spep_3+328, 1, -26.1, -106.8 , 0 );
setMoveKey( spep_3+330, 1, -59, -108.2 , 0 );
setMoveKey( spep_3+332, 1, -4.5, -86.1 , 0 );
setMoveKey( spep_3+334, 1, -16, -123.5 , 0 );
setMoveKey( spep_3+336, 1, 4.8, -77.7 , 0 );
setMoveKey( spep_3+338, 1, -25.6, -95.9 , 0 );
setMoveKey( spep_3+340, 1, 8, -75.7 , 0 );
setMoveKey( spep_3+342, 1, -3.2, -113.1 , 0 );
setMoveKey( spep_3+344, 1, -23.1, -144.4 , 0 );
setMoveKey( spep_3+346, 1, -80.9, -225.6 , 0 );
setMoveKey( spep_3+348, 1, -86.9, -277.3 , 0 );
setMoveKey( spep_3+350, 1, -131, -347.5 , 0 );
setMoveKey( spep_3+352, 1, -149.1, -404.2 , 0 );
setMoveKey( spep_3+354, 1, -186.1, -479.4 , 0 );
setMoveKey( spep_3+356, 1, -218.7, -566.4 , 0 );
setMoveKey( spep_3+358, 1, -305.8, -761.7 , 0 );
setMoveKey( spep_3+360, 1, -401.8, -1031.7 , 0 );
setMoveKey( spep_3+362, 1, -550.9, -1405.9 , 0 );

setScaleKey( spep_3+322, 1, 0.56, 0.56 );
setScaleKey( spep_3+324, 1, 0.56, 0.56 );
setScaleKey( spep_3+326, 1, 0.55, 0.55 );
setScaleKey( spep_3+334, 1, 0.55, 0.55 );
setScaleKey( spep_3+336, 1, 0.57, 0.57 );
setScaleKey( spep_3+338, 1, 0.59, 0.59 );
setScaleKey( spep_3+340, 1, 0.6, 0.6 );
setScaleKey( spep_3+342, 1, 0.62, 0.62 );
setScaleKey( spep_3+344, 1, 1.07, 1.07 );
setScaleKey( spep_3+346, 1, 1.51, 1.51 );
setScaleKey( spep_3+348, 1, 1.95, 1.95 );
setScaleKey( spep_3+350, 1, 2.39, 2.39 );
setScaleKey( spep_3+352, 1, 2.82, 2.82 );
setScaleKey( spep_3+354, 1, 3.25, 3.25 );
setScaleKey( spep_3+356, 1, 3.89, 3.89 );
setScaleKey( spep_3+358, 1, 5.08, 5.08 );
setScaleKey( spep_3+360, 1, 6.82, 6.82 );
setScaleKey( spep_3+362, 1, 9.09, 9.09 );
setRotateKey( spep_3+322, 1, 120 );
setRotateKey( spep_3+362, 1, 120 );

setDisp(  spep_3+364,  1,  0);  --敵を消す
]]

--文字エントリー
ctzun = entryEffectLife( spep_3 + 60,  10016, 28, 0x100, -1, 0, 15.8, 363.9 );--ズンッ

setEffMoveKey( spep_3 + 60, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_3 + 62, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_3 + 64, ctzun, 7.6, 369.2 , 0 );
setEffMoveKey( spep_3 + 66, ctzun, 15.9, 363.9 , 0 );
setEffMoveKey( spep_3 + 68, ctzun, 8.3, 368.8 , 0 );
setEffMoveKey( spep_3 + 70, ctzun, 15.9, 363.9 , 0 );
setEffMoveKey( spep_3 + 72, ctzun, 8.8, 368.4 , 0 );
setEffMoveKey( spep_3 + 74, ctzun, 15.9, 363.8 , 0 );
setEffMoveKey( spep_3 + 76, ctzun, 9.2, 368.1 , 0 );
setEffMoveKey( spep_3 + 78, ctzun, 15.8, 363.7 , 0 );
setEffMoveKey( spep_3 + 80, ctzun, 9.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 82, ctzun, 15.8, 363.8 , 0 );
setEffMoveKey( spep_3 + 84, ctzun, 10, 367.6 , 0 );
setEffMoveKey( spep_3 + 86, ctzun, 15.7, 363.9 , 0 );
setEffMoveKey( spep_3 + 88, ctzun, 15.7, 364 , 0 );

setEffScaleKey( spep_3 + 60, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_3 + 62, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_3 + 64, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_3 + 66, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_3 + 68, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_3 + 70, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_3 + 72, ctzun, 2.82, 2.82 );
setEffScaleKey( spep_3 + 74, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_3 + 76, ctzun, 2.67, 2.67 );
setEffScaleKey( spep_3 + 78, ctzun, 2.6, 2.6 );
setEffScaleKey( spep_3 + 80, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_3 + 84, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_3 + 86, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_3 + 88, ctzun, 2.04, 2.04 );

setEffScaleKey( spep_3 + 60, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_3 + 62, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_3 + 64, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_3 + 66, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_3 + 68, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_3 + 70, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_3 + 72, ctzun, 2.82, 2.82 );
setEffScaleKey( spep_3 + 74, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_3 + 76, ctzun, 2.67, 2.67 );
setEffScaleKey( spep_3 + 78, ctzun, 2.6, 2.6 );
setEffScaleKey( spep_3 + 80, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_3 + 84, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_3 + 86, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_3 + 88, ctzun, 2.04, 2.04 );

setEffAlphaKey( spep_3 + 60, ctzun, 255 );
setEffAlphaKey( spep_3 + 70, ctzun, 255 );
setEffAlphaKey( spep_3 + 72, ctzun, 242 );
setEffAlphaKey( spep_3 + 74, ctzun, 230 );
setEffAlphaKey( spep_3 + 76, ctzun, 217 );
setEffAlphaKey( spep_3 + 78, ctzun, 204 );
setEffAlphaKey( spep_3 + 80, ctzun, 191 );
setEffAlphaKey( spep_3 + 82, ctzun, 147 );
setEffAlphaKey( spep_3 + 84, ctzun, 102 );
setEffAlphaKey( spep_3 + 86, ctzun, 58 );
setEffAlphaKey( spep_3 + 88, ctzun, 13 );

--文字エントリー
ctba = entryEffectLife( spep_3 + 190,  10022, 22, 0x100, -1, 0, -151.7, 270.2 );--バッ

setEffMoveKey( spep_3 + 190, ctba, -151.7, 270.2 , 0 );
setEffMoveKey( spep_3 + 192, ctba, -157.8, 273.3 , 0 );
setEffMoveKey( spep_3 + 194, ctba, -151.6, 270.2 , 0 );
setEffMoveKey( spep_3 + 196, ctba, -159, 273.6 , 0 );
setEffMoveKey( spep_3 + 198, ctba, -151.7, 270.1 , 0 );
setEffMoveKey( spep_3 + 200, ctba, -151.8, 270 , 0 );
setEffMoveKey( spep_3 + 202, ctba, -157.1, 273.3 , 0 );
setEffMoveKey( spep_3 + 204, ctba, -151.8, 270.1 , 0 );
setEffMoveKey( spep_3 + 206, ctba, -157.1, 273.4 , 0 );
setEffMoveKey( spep_3 + 208, ctba, -151.8, 270.1 , 0 );
setEffMoveKey( spep_3 + 210, ctba, -157.1, 273.3 , 0 );
setEffMoveKey( spep_3 + 212, ctba, -157.1, 273.2 , 0 );

setEffScaleKey( spep_3 + 190, ctba, 0.96, 0.96 );
setEffScaleKey( spep_3 + 192, ctba, 1.42, 1.42 );
setEffScaleKey( spep_3 + 194, ctba, 1.89, 1.89 );
setEffScaleKey( spep_3 + 196, ctba, 1.69, 1.69 );
setEffScaleKey( spep_3 + 198, ctba, 1.49, 1.49 );
setEffScaleKey( spep_3 + 200, ctba, 1.29, 1.29 );
setEffScaleKey( spep_3 + 212, ctba, 1.29, 1.29 );

setEffRotateKey( spep_3 + 190, ctba, -10.7 );
setEffRotateKey( spep_3 + 192, ctba, -14.4 );
setEffRotateKey( spep_3 + 194, ctba, -18.2 );
setEffRotateKey( spep_3 + 196, ctba, -15.7 );
setEffRotateKey( spep_3 + 198, ctba, -13.2 );
setEffRotateKey( spep_3 + 200, ctba, -10.7 );
setEffRotateKey( spep_3 + 212, ctba, -10.7 );

setEffAlphaKey( spep_3 + 190, ctba, 255 );
setEffAlphaKey( spep_3 + 206, ctba, 255 );
setEffAlphaKey( spep_3 + 208, ctba, 170 );
setEffAlphaKey( spep_3 + 210, ctba, 85 );
setEffAlphaKey( spep_3 + 212, ctba, 0 );

--文字エントリー
ctga = entryEffectLife( spep_3 + 216,  10005, 30, 0x100, -1, 0, -66.6, 347.6 );--ガッ

setEffMoveKey( spep_3 + 216, ctga, -66.6, 347.6 , 0 );
setEffMoveKey( spep_3 + 218, ctga, -84, 355.4 , 0 );
setEffMoveKey( spep_3 + 220, ctga, -66.6, 347.7 , 0 );
setEffMoveKey( spep_3 + 222, ctga, -81.6, 354.2 , 0 );
setEffMoveKey( spep_3 + 224, ctga, -80.3, 353.6 , 0 );
setEffMoveKey( spep_3 + 226, ctga, -66.7, 347.6 , 0 );
setEffMoveKey( spep_3 + 228, ctga, -80, 353.5 , 0 );
setEffMoveKey( spep_3 + 230, ctga, -66.7, 347.6 , 0 );
setEffMoveKey( spep_3 + 232, ctga, -79.6, 353.4 , 0 );
setEffMoveKey( spep_3 + 234, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 236, ctga, -79.3, 353.3 , 0 );
setEffMoveKey( spep_3 + 238, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 240, ctga, -79, 353.2 , 0 );
setEffMoveKey( spep_3 + 242, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 244, ctga, -78, 352.7 , 0 );
setEffMoveKey( spep_3 + 246, ctga, -66.8, 347.6 , 0 );

setEffScaleKey( spep_3 + 216, ctga, 1.9, 1.9 );
setEffScaleKey( spep_3 + 218, ctga, 3.37, 3.37 );
setEffScaleKey( spep_3 + 220, ctga, 3.12, 3.12 );
setEffScaleKey( spep_3 + 222, ctga, 2.88, 2.88 );
setEffScaleKey( spep_3 + 224, ctga, 2.63, 2.63 );
setEffScaleKey( spep_3 + 226, ctga, 2.6, 2.6 );
setEffScaleKey( spep_3 + 228, ctga, 2.57, 2.57 );
setEffScaleKey( spep_3 + 230, ctga, 2.54, 2.54 );
setEffScaleKey( spep_3 + 232, ctga, 2.51, 2.51 );
setEffScaleKey( spep_3 + 234, ctga, 2.47, 2.47 );
setEffScaleKey( spep_3 + 236, ctga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 238, ctga, 2.41, 2.41 );
setEffScaleKey( spep_3 + 240, ctga, 2.38, 2.38 );
setEffScaleKey( spep_3 + 242, ctga, 2.28, 2.28 );
setEffScaleKey( spep_3 + 244, ctga, 2.19, 2.19 );
setEffScaleKey( spep_3 + 246, ctga, 2.09, 2.09 );

setEffRotateKey( spep_3 + 216, ctga, -21.2 );
setEffRotateKey( spep_3 + 230, ctga, -21.2 );
setEffRotateKey( spep_3 + 232, ctga, -21.1 );
setEffRotateKey( spep_3 + 242, ctga, -21.1 );
setEffRotateKey( spep_3 + 244, ctga, -21.2 );
setEffRotateKey( spep_3 + 246, ctga, -21.2 );

setEffAlphaKey( spep_3 + 216, ctga, 255 );
setEffAlphaKey( spep_3 + 240, ctga, 255 );
setEffAlphaKey( spep_3 + 242, ctga, 213 );
setEffAlphaKey( spep_3 + 244, ctga, 170 );
setEffAlphaKey( spep_3 + 246, ctga, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_3 + 322,  10020, 32, 0x100, -1, 0, -63.5, 308.5 );--バキッ

setEffMoveKey( spep_3 + 322, ctbaki, -63.5, 308.5 , 0 );
setEffMoveKey( spep_3 + 324, ctbaki, -90, 326 , 0 );
setEffMoveKey( spep_3 + 326, ctbaki, -63.8, 308.6 , 0 );
setEffMoveKey( spep_3 + 328, ctbaki, -85.3, 323 , 0 );
setEffMoveKey( spep_3 + 330, ctbaki, -63.6, 308.6 , 0 );
setEffMoveKey( spep_3 + 332, ctbaki, -82.7, 321.4 , 0 );
setEffMoveKey( spep_3 + 334, ctbaki, -63.6, 308.6 , 0 );
setEffMoveKey( spep_3 + 336, ctbaki, -82.2, 321.1 , 0 );
setEffMoveKey( spep_3 + 338, ctbaki, -63.5, 308.6 , 0 );
setEffMoveKey( spep_3 + 340, ctbaki, -81.8, 320.9 , 0 );
setEffMoveKey( spep_3 + 342, ctbaki, -63.4, 308.6 , 0 );
setEffMoveKey( spep_3 + 344, ctbaki, -81.3, 320.7 , 0 );
setEffMoveKey( spep_3 + 346, ctbaki, -63.3, 308.7 , 0 );
setEffMoveKey( spep_3 + 348, ctbaki, -80.6, 320.1 , 0 );
setEffMoveKey( spep_3 + 350, ctbaki, -63.4, 308.6 , 0 );
setEffMoveKey( spep_3 + 352, ctbaki, -79.5, 319.3 , 0 );
setEffMoveKey( spep_3 + 354, ctbaki, -63.5, 308.5 , 0 );

setEffScaleKey( spep_3 + 322, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 + 324, ctbaki, 3.71, 3.71 );
setEffScaleKey( spep_3 + 326, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_3 + 328, ctbaki, 3.06, 3.06 );
setEffScaleKey( spep_3 + 330, ctbaki, 2.73, 2.73 );
setEffScaleKey( spep_3 + 332, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_3 + 334, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_3 + 336, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_3 + 338, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_3 + 340, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_3 + 342, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_3 + 344, ctbaki, 2.55, 2.55 );
setEffScaleKey( spep_3 + 346, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 + 348, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_3 + 350, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 352, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 + 354, ctbaki, 2.19, 2.19 );

setEffScaleKey( spep_3 + 322, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 + 324, ctbaki, 3.71, 3.71 );
setEffScaleKey( spep_3 + 326, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_3 + 328, ctbaki, 3.06, 3.06 );
setEffScaleKey( spep_3 + 330, ctbaki, 2.73, 2.73 );
setEffScaleKey( spep_3 + 332, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_3 + 334, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_3 + 336, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_3 + 338, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_3 + 340, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_3 + 342, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_3 + 344, ctbaki, 2.55, 2.55 );
setEffScaleKey( spep_3 + 346, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 + 348, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_3 + 350, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 352, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 + 354, ctbaki, 2.19, 2.19 );

setEffRotateKey( spep_3 + 322, ctbaki, -11.2 );
setEffRotateKey( spep_3 + 354, ctbaki, -11.2 );

setEffAlphaKey( spep_3 + 322, ctbaki, 255 );
setEffAlphaKey( spep_3 + 346, ctbaki, 255 );
setEffAlphaKey( spep_3 + 348, ctbaki, 195 );
setEffAlphaKey( spep_3 + 350, ctbaki, 134 );
setEffAlphaKey( spep_3 + 352, ctbaki, 74 );
setEffAlphaKey( spep_3 + 354, ctbaki, 13 );

--***SE***
playSe(  spep_3+58,  1010);  --初撃蹴り
playSe(  spep_3+96,  8);  --敵が吹っ飛ぶ
playSe(  spep_3+130,  1048);  --敵が体制を持ち直す（いらないかも）
playSe(  spep_3+180,  1003);  --敵パンチ空振り
playSe(  spep_3+212,  1010);  --ベジータ上に向けての蹴り
playSe(  spep_3+288,  43);  --ベジータ瞬間移動
playSe(  spep_3+320,  1009);  --ベジータ打ち落とし

--***白フェード***
entryFade( spep_3+60, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+212, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+322, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+370, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ナビ1(160F)
------------------------------------------------------
spep_4 = spep_3+380;

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.3,  1.4);
setEffScaleKey(  spep_4+160,  shuchusen4,  1.3,  1.4);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+160,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+160,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+160,  shuchusen4,  255);

--***ナビ溜め***
nabitame = entryEffect(  spep_4,  SP_04,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_4,  nabitame,  1.0,  1.0);
setEffScaleKey(  spep_4+160,  nabitame,  1.0,  1.0);
setEffMoveKey(  spep_4,  nabitame,  0,  0);
setEffMoveKey(  spep_4+160,  nabitame,  0,  0);
setEffRotateKey(  spep_4,  nabitame,  0);
setEffRotateKey(  spep_4+160,  nabitame,  0);
setEffAlphaKey(  spep_4,  nabitame,  255);
setEffAlphaKey(  spep_4+160,  nabitame,  255);

--***カットイン***
speff = entryEffect(  spep_4+48,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+48,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--***書き文字エントリー***
ctgogo = entryEffectLife( spep_4+66, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_4 + 66, ctgogo, 255 );
setEffAlphaKey( spep_4 + 124, ctgogo, 255 );
setEffAlphaKey( spep_4 + 125, ctgogo, 255 );
setEffAlphaKey( spep_4 + 126, ctgogo, 191 );
setEffAlphaKey( spep_4 + 128, ctgogo, 128 );
setEffAlphaKey( spep_4 + 130, ctgogo, 64 );
setEffAlphaKey( spep_4 + 133, ctgogo, 0 );

setEffRotateKey(  spep_4+66,  ctgogo,  0);
setEffRotateKey(  spep_4+133,  ctgogo,  0);

setEffScaleKey(  spep_4+66,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4+124,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_4 + 133, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_4+66,  ctgogo,  0,  530);
setEffMoveKey(  spep_4+133,  ctgogo,  0,  530);

--***SE***
playSe(  spep_4,  1037);  --気弾溜め
playSe(  spep_4+60,  SE_04);  --カットイン

--***白フェード***
entryFade( spep_4+150, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気弾放つ(180F)
------------------------------------------------------
spep_5 = spep_4+160;

--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.3,  1.4);
setEffScaleKey(  spep_5+180,  shuchusen5,  1.3,  1.4);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+180,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  -2);
setEffRotateKey(  spep_5+180,  shuchusen5,  -2);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);


--***気弾放つ***
hanatsu = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_5,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsu,  0,  0);
setEffMoveKey(  spep_5+180,  hanatsu,  0,  0);
setEffRotateKey(  spep_5,  hanatsu,  0);
setEffRotateKey(  spep_5+180,  hanatsu,  0);
setEffAlphaKey(  spep_5,  hanatsu,  255);
setEffAlphaKey(  spep_5+178,  hanatsu,  255);
setEffAlphaKey(  spep_5+179,  hanatsu,  0);
setEffAlphaKey(  spep_5+180,  hanatsu,  0);

--**敵の動き**
setDisp(  spep_5+122,  1,  1);  --敵出す
setDisp(  spep_5+178,  1,  0);  --敵消す

changeAnime(  spep_5+122,  1,  105);  --吹っ飛び

setShakeChara(  spep_5+122,  1,  56,  20);  --キャラ揺れ
setMoveKey(  spep_5+122,  1,  0,  500,  0);
setMoveKey(  spep_5+176,  1,  0,  0,  0);
setMoveKey(  spep_5+178,  1,  0,  0,  0);  
setScaleKey(  spep_5+122,  1,  0.8,  0.8);
setScaleKey(  spep_5+176,  1,  1.5,  1.5);
setScaleKey(  spep_5+178,  1,  1.5,  1.5);
setRotateKey(  spep_5+122,  1,  0);
setRotateKey(  spep_5+178,  1,  0);


--***気弾放つ背景***
hanatsuBG = entryEffect(  spep_5,  SP_06,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_5,  hanatsuBG,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  hanatsuBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsuBG,  0,  0);
setEffMoveKey(  spep_5+180,  hanatsuBG,  0,  0);
setEffRotateKey(  spep_5,  hanatsuBG,  0);
setEffRotateKey(  spep_5+180,  hanatsuBG,  0);
setEffAlphaKey(  spep_5,  hanatsuBG,  255);
setEffAlphaKey(  spep_5+178,  hanatsuBG,  255);
setEffAlphaKey(  spep_5+179,  hanatsuBG,  0);
setEffAlphaKey(  spep_5+180,  hanatsuBG,  0);

--文字エントリー
ctzuo = entryEffectLife( spep_5 + 72,  10012, 44, 0x100, -1, 0, -119, 387.8 );--ズオッ

setEffMoveKey( spep_5 + 72, ctzuo, -119, 387.8 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo, -96.7, 393.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo, -106.6, 403.4 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo, -64.1, 407.2 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo, -101.6, 409.6 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo, -70.9, 404.4 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo, -104.2, 406.3 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo, -77.7, 401.6 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo, -105.7, 404.5 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo, -78.5, 401.2 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo, -106, 404.1 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo, -79.4, 400.9 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo, -106.3, 403.7 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo, -80.2, 400.6 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo, -106.6, 403.3 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo, -81, 400.2 , 0 );
setEffMoveKey( spep_5 + 104, ctzuo, -107, 402.9 , 0 );
setEffMoveKey( spep_5 + 106, ctzuo, -107.1, 402.7 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo, -70.1, 404.7 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo, -98.2, 414 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo, -46.6, 414.4 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo, -89.2, 425.3 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo, -84.8, 430.9 , 0 );

setEffScaleKey( spep_5 + 72, ctzuo, 0.73, 0.73 );
setEffScaleKey( spep_5 + 74, ctzuo, 1.96, 1.96 );
setEffScaleKey( spep_5 + 76, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_5 + 78, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_5 + 80, ctzuo, 4.15, 4.15 );
setEffScaleKey( spep_5 + 82, ctzuo, 3.89, 3.89 );
setEffScaleKey( spep_5 + 84, ctzuo, 3.63, 3.63 );
setEffScaleKey( spep_5 + 86, ctzuo, 3.38, 3.38 );
setEffScaleKey( spep_5 + 88, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_5 + 90, ctzuo, 3.32, 3.32 );
setEffScaleKey( spep_5 + 92, ctzuo, 3.29, 3.29 );
setEffScaleKey( spep_5 + 94, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_5 + 96, ctzuo, 3.22, 3.22 );
setEffScaleKey( spep_5 + 98, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_5 + 100, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_5 + 102, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_5 + 104, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_5 + 106, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_5 + 108, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_5 + 110, ctzuo, 4.83, 4.83 );
setEffScaleKey( spep_5 + 112, ctzuo, 5.71, 5.71 );
setEffScaleKey( spep_5 + 114, ctzuo, 6.59, 6.59 );
setEffScaleKey( spep_5 + 116, ctzuo, 7.47, 7.47 );

setEffRotateKey( spep_5 + 72, ctzuo, -11.4 );
setEffRotateKey( spep_5 + 116, ctzuo, -11.4 );

setEffAlphaKey( spep_5 + 72, ctzuo, 255 );
setEffAlphaKey( spep_5 + 106, ctzuo, 255 );
setEffAlphaKey( spep_5 + 108, ctzuo, 204 );
setEffAlphaKey( spep_5 + 110, ctzuo, 153 );
setEffAlphaKey( spep_5 + 112, ctzuo, 102 );
setEffAlphaKey( spep_5 + 114, ctzuo, 51 );
setEffAlphaKey( spep_5 + 116, ctzuo, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_5 + 122,  10014, 56, 0x100, -1, 0, 128, 404.6 );--ズドドドッ

setEffShake(  spep_5+122,  ctzudododo,  56,  20);  --揺れ
setEffMoveKey( spep_5 + 122, ctzudododo, 128, 404.6 , 0 );
setEffMoveKey( spep_5 + 178, ctzudododo, 128, 404.6 , 0 );
setEffScaleKey( spep_5 + 122, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_5 + 178, ctzudododo, 2.28, 2.28 );
setEffRotateKey( spep_5 + 122, ctzudododo, 58.7 );
setEffRotateKey( spep_5 + 178, ctzudododo, 58.7 );
setEffAlphaKey( spep_5 + 122, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 178, ctzudododo, 255 );

--***SE***
playSe(  spep_5,  1021);  --気弾溜め
playSe(  spep_5+70,  SE_07);  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 180, 0, 0, 0, 0, 255 );  --薄い黒　背景

--***白フェード***
entryFade( spep_5+170, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン黄色(60F)
------------------------------------------------------
spep_6 = spep_5+180;

--***書き文字***
ct_gya = entryEffectLife( spep_6,  10006, 58, 0x100, -1, 0, 8.8, 313 );  --書き文字

setEffMoveKey( spep_6, ct_gya, 8.8, 313 , 0 );
setEffMoveKey( spep_6+58, ct_gya, 10.6, 319.2 , 0 );
setEffScaleKey( spep_6, ct_gya, 2.11, 2.11 );
setEffScaleKey( spep_6+58, ct_gya, 4.23, 4.23 );
setEffRotateKey( spep_6, ct_gya, -5.2 );
setEffRotateKey( spep_6+58, ct_gya, -5.2 );
setEffAlphaKey( spep_6, ct_gya, 255 );
setEffAlphaKey( spep_6+58, ct_gya, 255 );

--***ギャン黄色***
gyan = entryEffectLife( spep_6, 190003, 60, 0x80 , -1, 0, 0, 0);  --ギャン

setEffScaleKey( spep_6,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6,  gyan,  0,  0);
setEffRotateKey( spep_6,  gyan,  0);
setEffAlphaKey( spep_6,  gyan,  255);
setEffScaleKey( spep_6+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6+60,  gyan,  0,  0);
setEffRotateKey( spep_6+60,  gyan,  0);
setEffAlphaKey( spep_6+60,  gyan,  255);

--***SE***
playSe(  spep_6,  1023);  --ギャン

--***白フェード***
entryFade( spep_6+52, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ナビ2(280F)
------------------------------------------------------
spep_7 = spep_6+60;

nabi2 = entryEffect(  spep_7,  SP_07,  0x100,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_7,  nabi2,  1.0,  1.0);
setEffScaleKey(  spep_7+180,  nabi2,  1.0,  1.0);
setEffMoveKey(  spep_7,  nabi2,  0,  0);
setEffMoveKey(  spep_7+180,  nabi2,  0,  0);
setEffRotateKey(  spep_7,  nabi2,  0);
setEffRotateKey(  spep_7+180,  nabi2,  0);
setEffAlphaKey(  spep_7,  nabi2,  255);
setEffAlphaKey(  spep_7+180,  nabi2,  255);


--***集中線***
shuchusen7 = entryEffectLife( spep_7, 906, 280, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen7,  1.4,  1.75);
setEffScaleKey(  spep_7+280,  shuchusen7,  1.4,  1.75);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffMoveKey(  spep_7+280,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffRotateKey(  spep_7+280,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+280,  shuchusen7,  255);

--***SE***
playSe(  spep_7,  1024);  --爆発


-- ダメージ表示
dealDamage(spep_7+160);
endPhase(spep_7+260);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カードイラスト気溜め(100F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.2,  1.8);
setEffScaleKey(  spep_1+100,  shuchusen1,  1.2,  1.8);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+100,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+100,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+100,  shuchusen1,  255);

--***書き文字ゴゴ***
ct_go = entryEffectLife( spep_1+0,  10008, 98, 0x100, -1, 0, -204, 398.4 );  --ゴゴゴ…

setEffShake(  spep_1,  ct_go,  98,  20);  
setEffMoveKey( spep_1, ct_go, -204, 398.4 , 0 );
setEffMoveKey( spep_1+2, ct_go, -209.5, 403.6 , 0 );
setEffMoveKey( spep_1+98, ct_go, -260.5, 451.5 , 0 );
setEffScaleKey( spep_1, ct_go, 1.4, 1.4 );
setEffScaleKey( spep_1+96, ct_go, 1.64, 1.64 );
setEffRotateKey( spep_1, ct_go, -1.7 );
setEffRotateKey( spep_1+98, ct_go, -1.7 );
setEffAlphaKey( spep_1+0, ct_go, 255 );
setEffAlphaKey( spep_1+98, ct_go, 255 );

--***カードイラストの気溜め***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --気溜め

setEffScaleKey(  spep_1,  kitame,  -1.0,  1.0);
setEffScaleKey(  spep_1+100,  kitame,  -1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+100,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+100,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+100,  kitame,  255);

--***SE***
playSe(  spep_1,  9);  --気溜めの音

------------------------------------------------------
-- カードイラスト(90F)
------------------------------------------------------
spep_2 = spep_1+100;

--***フェードと背景***
entryFade( spep_2-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+82, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_2,  SE_05);  --カードカットイン
------------------------------------------------------
-- 格闘(380F)
------------------------------------------------------
spep_3 = spep_2+90;


--***格闘前面***
kakutou = entryEffect(  spep_3,  SP_08,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_3,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_3+380,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_3,  kakutou,  0,  0);
setEffMoveKey(  spep_3+380,  kakutou,  0,  0);
setEffRotateKey(  spep_3,  kakutou,  0);
setEffRotateKey(  spep_3+380,  kakutou,  0);
setEffAlphaKey(  spep_3,  kakutou,  255);
setEffAlphaKey(  spep_3+380,  kakutou,  255);

--***敵の動き***
changeAnime(  spep_3+24,  1,  100);  --アイドリング
setDisp(  spep_3+24,  1,  1);  --敵表示

setMoveKey( spep_3+24, 1, 802.6, 65.7 , 0 );
setMoveKey( spep_3+26, 1, 779.9, 64.8 , 0 );
setMoveKey( spep_3+28, 1, 754.3, 63.8 , 0 );
setMoveKey( spep_3+30, 1, 725.9, 62.9 , 0 );
setMoveKey( spep_3+32, 1, 694.9, 61.9 , 0 );
setMoveKey( spep_3+34, 1, 661.4, 61 , 0 );
setMoveKey( spep_3+36, 1, 625.6, 60 , 0 );
setMoveKey( spep_3+38, 1, 587.4, 59.1 , 0 );
setMoveKey( spep_3+40, 1, 547.1, 58.1 , 0 );
setMoveKey( spep_3+42, 1, 519.4, 59.3 , 0 );
setMoveKey( spep_3+44, 1, 487.7, 60.4 , 0 );
setMoveKey( spep_3+46, 1, 451.7, 61.6 , 0 );
setMoveKey( spep_3+48, 1, 411.4, 62.8 , 0 );


setScaleKey( spep_3+24, 1, 1.72, 1.72 );
setScaleKey( spep_3+26, 1, 1.7, 1.7 );
setScaleKey( spep_3+28, 1, 1.68, 1.68 );
setScaleKey( spep_3+30, 1, 1.66, 1.66 );
setScaleKey( spep_3+32, 1, 1.64, 1.64 );
setScaleKey( spep_3+34, 1, 1.62, 1.62 );
setScaleKey( spep_3+36, 1, 1.6, 1.6 );
setScaleKey( spep_3+38, 1, 1.58, 1.58 );
setScaleKey( spep_3+40, 1, 1.56, 1.56 );
setScaleKey( spep_3+42, 1, 1.58, 1.58 );
setScaleKey( spep_3+44, 1, 1.61, 1.61 );
setScaleKey( spep_3+46, 1, 1.63, 1.63 );
setScaleKey( spep_3+48, 1, 1.66, 1.66 );

setRotateKey( spep_3+24, 1, 0 );
setRotateKey( spep_3+48, 1, 0 );

--***格闘背景***
kakutouBG = entryEffect(  spep_3,  SP_09,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_3,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_3+380,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_3,  kakutouBG,  0,  0);
setEffMoveKey(  spep_3+380,  kakutouBG,  0,  0);
setEffRotateKey(  spep_3,  kakutouBG,  0);
setEffRotateKey(  spep_3+380,  kakutouBG,  0);
setEffAlphaKey(  spep_3,  kakutouBG,  255);
setEffAlphaKey(  spep_3+380,  kakutouBG,  255);

--**SE**
playSe(  spep_3,  1002);  --最初のダッシュ音

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+48 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 317.1, 65.1 , 0 );
setMoveKey( SP_dodge+2, 1, 262.7, 66.3 , 0 );
setMoveKey( SP_dodge+4, 1, 203.5, 67.4 , 0 );
setMoveKey( SP_dodge+6, 1, 203.5, 67.4 , 0 );
setMoveKey( SP_dodge+8, 1, 203.5, 67.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+2, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+4, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+6, 1, 1.71, 1.71 );
setScaleKey( SP_dodge+8, 1, 1.71, 1.71 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  203.5, 67.4 , 0 );
setMoveKey(  SP_dodge+10,    1,  203.5, 67.4 , 0 );
setScaleKey( SP_dodge+9,    1,  1.71, 1.71 );
setScaleKey( SP_dodge+10,    1,  1.71, 1.71 );
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

changeAnime(  spep_3+60,  1,  108);  --くの字
changeAnime(  spep_3+102,  1,  106);  --ダメージ
changeAnime(  spep_3+122,  1,  104);  --ガード
changeAnime(  spep_3+128,  1,  117);  --気溜め
changeAnime(  spep_3+150,  1,  111);  --パンチ
changeAnime(  spep_3+152,  1,  103);  --ダッシュ
changeAnime(  spep_3+180,  1,  111);  --パンチ
changeAnime(  spep_3+182,  1,  109);  --パンチ2
changeAnime(  spep_3+212,  1,  108);  --くの字
changeAnime(  spep_3+322,  1,  107);  --吹っ飛び


setMoveKey( spep_3+50, 1, 366.5, 63.9 , 0 );
setMoveKey( spep_3+52, 1, 317.1, 65.1 , 0 );
setMoveKey( spep_3+54, 1, 262.7, 66.3 , 0 );
setMoveKey( spep_3+56, 1, 203.5, 67.4 , 0 );
setMoveKey( spep_3+58, 1, 139.2, 68.6 , 0 );
setScaleKey( spep_3+50, 1, 1.68, 1.68 );
setScaleKey( spep_3+52, 1, 1.71, 1.71 );
setScaleKey( spep_3+54, 1, 1.74, 1.74 );
setScaleKey( spep_3+56, 1, 1.76, 1.76 );
setScaleKey( spep_3+58, 1, 1.79, 1.79 );
setRotateKey( spep_3+50, 1, 0 );
setRotateKey( spep_3+58, 1, 0 );

setMoveKey( spep_3+60, 1, 235.2, 64.9 , 0 );
setMoveKey( spep_3+62, 1, 238.8, 73.7 , 0 );
setMoveKey( spep_3+64, 1, 229.9, 66.5 , 0 );
setMoveKey( spep_3+66, 1, 236, 67.3 , 0 );
setMoveKey( spep_3+68, 1, 229.6, 56.1 , 0 );
setMoveKey( spep_3+70, 1, 230.2, 61 , 0 );
setMoveKey( spep_3+72, 1, 218.2, 53.8 , 0 );
setMoveKey( spep_3+74, 1, 221.3, 54.6 , 0 );
setMoveKey( spep_3+76, 1, 211.8, 47.4 , 0 );
setMoveKey( spep_3+78, 1, 205.6, 50.5 , 0 );
setMoveKey( spep_3+80, 1, 189.7, 41.7 , 0 );
setMoveKey( spep_3+82, 1, 191.9, 49.1 , 0 );
setMoveKey( spep_3+84, 1, 184.6, 40.6 , 0 );
setMoveKey( spep_3+86, 1, 187.6, 48.2 , 0 );
setMoveKey( spep_3+88, 1, 181.4, 44 , 0 );
setMoveKey( spep_3+90, 1, 195.2, 48 , 0 );
setMoveKey( spep_3+92, 1, 197.2, 40 , 0 );
setMoveKey( spep_3+94, 1, 207, 48 , 0 );
setMoveKey( spep_3+96, 1, 42.9, 44 , 0 );
setMoveKey( spep_3+98, 1, -105.4, 48 , 0 );
setMoveKey( spep_3+100, 1, -54, 40.1 , 0 );
setScaleKey( spep_3+60, 1, 2.39, 2.39 );
setScaleKey( spep_3+62, 1, 2.3, 2.3 );
setScaleKey( spep_3+64, 1, 2.21, 2.21 );
setScaleKey( spep_3+66, 1, 2.12, 2.12 );
setScaleKey( spep_3+68, 1, 2.03, 2.03 );
setScaleKey( spep_3+70, 1, 1.94, 1.94 );
setScaleKey( spep_3+72, 1, 1.85, 1.85 );
setScaleKey( spep_3+74, 1, 1.76, 1.76 );
setScaleKey( spep_3+76, 1, 1.67, 1.67 );
setScaleKey( spep_3+78, 1, 1.6, 1.6 );
setScaleKey( spep_3+80, 1, 1.54, 1.54 );
setScaleKey( spep_3+82, 1, 1.49, 1.49 );
setScaleKey( spep_3+84, 1, 1.45, 1.45 );
setScaleKey( spep_3+86, 1, 1.42, 1.42 );
setScaleKey( spep_3+88, 1, 1.41, 1.41 );
setScaleKey( spep_3+98, 1, 1.41, 1.41 );
setScaleKey( spep_3+100, 1, 1.31, 1.31 );
setRotateKey( spep_3+60, 1, 0 );
setRotateKey( spep_3+98, 1, 0 );
setRotateKey( spep_3+100, 1, 18.6 );

setMoveKey( spep_3+102, 1, -73.3, 71.2 , 0 );
setMoveKey( spep_3+104, 1, -66.5, 67.2 , 0 );
setMoveKey( spep_3+106, 1, -43.9, 71.2 , 0 );
setMoveKey( spep_3+108, 1, -33.2, 63.2 , 0 );
setMoveKey( spep_3+110, 1, -25.6, 71.2 , 0 );
setMoveKey( spep_3+112, 1, -25.9, 67.2 , 0 );
setMoveKey( spep_3+114, 1, -18.4, 71.2 , 0 );
setMoveKey( spep_3+116, 1, -22.7, 63.2 , 0 );
setMoveKey( spep_3+118, 1, -11.2, 71.2 , 0 );
setMoveKey( spep_3+120, 1, -11.4, 63.2 , 0 );
setScaleKey( spep_3+102, 1, 1.31, 1.31 );
setScaleKey( spep_3+104, 1, 1.33, 1.33 );
setScaleKey( spep_3+106, 1, 1.34, 1.34 );
setScaleKey( spep_3+108, 1, 1.36, 1.36 );
setScaleKey( spep_3+120, 1, 1.36, 1.36 );
setRotateKey( spep_3+102, 1, -2.5 );
setRotateKey( spep_3+104, 1, -1.7 );
setRotateKey( spep_3+106, 1, -0.8 );
setRotateKey( spep_3+108, 1, 0 );
setRotateKey( spep_3+110, 1, 0.3 );
setRotateKey( spep_3+112, 1, 0.5 );
setRotateKey( spep_3+114, 1, 0.8 );
setRotateKey( spep_3+116, 1, 1 );
setRotateKey( spep_3+118, 1, 1.3 );
setRotateKey( spep_3+120, 1, 1.5 );

setMoveKey( spep_3+122, 1, -8.6, 41.2 , 0 );
setMoveKey( spep_3+124, 1, 8.6, 49.7 , 0 );
setMoveKey( spep_3+126, 1, 29.8, 43.4 , 0 );
setScaleKey( spep_3+122, 1, 1.37, 1.37 );
setScaleKey( spep_3+126, 1, 1.37, 1.37 );
setRotateKey( spep_3+122, 1, 20.9 );
setRotateKey( spep_3+124, 1, 14.1 );
setRotateKey( spep_3+126, 1, 7.2 );

setMoveKey( spep_3+128, 1, -0.3, 33.1 , 0 );
setMoveKey( spep_3+130, 1, 23.1, 33.1 , 0 );
setMoveKey( spep_3+132, 1, 29.6, 33 , 0 );
setMoveKey( spep_3+134, 1, 35.7, 33 , 0 );
setMoveKey( spep_3+136, 1, 41.3, 33 , 0 );
setMoveKey( spep_3+138, 1, 46.3, 33 , 0 );
setMoveKey( spep_3+140, 1, 50.8, 33 , 0 );
setMoveKey( spep_3+142, 1, 54.8, 33 , 0 );
setMoveKey( spep_3+144, 1, 58.3, 33 , 0 );
setMoveKey( spep_3+146, 1, 61.3, 33 , 0 );
setMoveKey( spep_3+148, 1, 63.8, 33.1 , 0 );
setScaleKey( spep_3+128, 1, 1.44, 1.44 );
setScaleKey( spep_3+148, 1, 1.44, 1.44 );
setRotateKey( spep_3+128, 1, -0.8 );
setRotateKey( spep_3+130, 1, -4.5 );
setRotateKey( spep_3+132, 1, -4.8 );
setRotateKey( spep_3+134, 1, -5.1 );
setRotateKey( spep_3+136, 1, -5.3 );
setRotateKey( spep_3+138, 1, -5.5 );
setRotateKey( spep_3+140, 1, -5.7 );
setRotateKey( spep_3+142, 1, -5.8 );
setRotateKey( spep_3+144, 1, -6 );
setRotateKey( spep_3+146, 1, -6.1 );
setRotateKey( spep_3+148, 1, -6.2 );

setMoveKey( spep_3+150, 1, 1.4, 26.9 , 0 );
setMoveKey( spep_3+152, 1, -30.7, 26.9 , 0 );
setScaleKey( spep_3+150, 1, 1.43, 1.43 );
setScaleKey( spep_3+152, 1, 1.43, 1.43 );
setRotateKey( spep_3+150, 1, 0 );
setRotateKey( spep_3+152, 1, 0 );

setScaleKey( spep_3+154, 1, 1.54, 1.54 );
setScaleKey( spep_3+172, 1, 1.54, 1.54 );
setScaleKey( spep_3+174, 1, 1.56, 1.56 );
setScaleKey( spep_3+176, 1, 1.58, 1.58 );
setScaleKey( spep_3+178, 1, 1.6, 1.6 );
setScaleKey( spep_3+154, 1, 1.54, 1.54 );
setScaleKey( spep_3+172, 1, 1.54, 1.54 );
setScaleKey( spep_3+174, 1, 1.56, 1.56 );
setScaleKey( spep_3+176, 1, 1.58, 1.58 );
setScaleKey( spep_3+178, 1, 1.6, 1.6 );
setRotateKey( spep_3+154, 1, 3.7 );
setRotateKey( spep_3+170, 1, 3.7 );
setRotateKey( spep_3+172, 1, 3.6 );
setRotateKey( spep_3+174, 1, 3.6 );
setRotateKey( spep_3+176, 1, 3.5 );
setRotateKey( spep_3+178, 1, 3.5 );

setMoveKey( spep_3+180, 1, 276.1, 39.9 , 0 );
setMoveKey( spep_3+182, 1, 241.4, 45.1 , 0 );
setMoveKey( spep_3+184, 1, 205.7, 50.3 , 0 );
setScaleKey( spep_3+180, 1, 1.49, 1.49 );
setScaleKey( spep_3+182, 1, 1.5, 1.5 );
setScaleKey( spep_3+184, 1, 1.52, 1.52 );
setRotateKey( spep_3+180, 1, 1 );
setRotateKey( spep_3+182, 1, 3.3 );
setRotateKey( spep_3+184, 1, -12.2 );

setMoveKey( spep_3+186, 1, 178.1, 44.5 , 0 );
setMoveKey( spep_3+188, 1, 167.6, 45.9 , 0 );
setMoveKey( spep_3+190, 1, 157.5, 47.3 , 0 );
setMoveKey( spep_3+192, 1, 148.1, 48.6 , 0 );
setMoveKey( spep_3+194, 1, 139.2, 49.9 , 0 );
setMoveKey( spep_3+196, 1, 131.2, 50.8 , 0 );
setMoveKey( spep_3+198, 1, 124.1, 51.8 , 0 );
setMoveKey( spep_3+200, 1, 117.8, 52.6 , 0 );
setMoveKey( spep_3+202, 1, 112.4, 53.4 , 0 );
setMoveKey( spep_3+204, 1, 107.9, 54.1 , 0 );
setMoveKey( spep_3+206, 1, 104.3, 54.9 , 0 );
setMoveKey( spep_3+208, 1, 101.5, 55.6 , 0 );
setMoveKey( spep_3+210, 1, 99.7, 56.2 , 0 );
--setMoveKey( spep_3+212, 1, 98.7, 56.9 , 0 );

setScaleKey( spep_3+186, 1, 1.62, 1.62 );
setScaleKey( spep_3+188, 1, 1.64, 1.64 );
setScaleKey( spep_3+190, 1, 1.65, 1.65 );
setScaleKey( spep_3+192, 1, 1.66, 1.66 );
setScaleKey( spep_3+194, 1, 1.68, 1.68 );
setScaleKey( spep_3+196, 1, 1.69, 1.69 );
setScaleKey( spep_3+198, 1, 1.7, 1.7 );
setScaleKey( spep_3+200, 1, 1.71, 1.71 );
setScaleKey( spep_3+204, 1, 1.71, 1.71 );
setScaleKey( spep_3+206, 1, 1.72, 1.72 );
setScaleKey( spep_3+208, 1, 1.73, 1.73 );
setScaleKey( spep_3+210, 1, 1.74, 1.74 );
--setScaleKey( spep_3+212, 1, 1.75, 1.75 );

setRotateKey( spep_3+186, 1, -12.2 );
setRotateKey( spep_3+210, 1, -12.2 );
--setRotateKey( spep_3+212, 1, -12.2 );

setMoveKey( spep_3+212, 1, 132.6, 313.5 , 0 );
setMoveKey( spep_3+214, 1, 132.6, 313.5 , 0 );
setMoveKey( spep_3+216, 1, 113.7, 280.8 , 0 );
setMoveKey( spep_3+218, 1, 102.1, 278.8 , 0 );
setMoveKey( spep_3+220, 1, 74.3, 255.6 , 0 );
setMoveKey( spep_3+222, 1, 69.8, 239.2 , 0 );
setMoveKey( spep_3+224, 1, 67.5, 234.7 , 0 );
setMoveKey( spep_3+226, 1, 72.9, 246.1 , 0 );
setMoveKey( spep_3+228, 1, 66.5, 241.4 , 0 );
setMoveKey( spep_3+230, 1, 75.8, 252.6 , 0 );
setMoveKey( spep_3+232, 1, 69.4, 251.7 , 0 );
setMoveKey( spep_3+234, 1, 78.7, 258.7 , 0 );
setMoveKey( spep_3+236, 1, 76.1, 249.7 , 0 );
setMoveKey( spep_3+238, 1, 81.3, 264.5 , 0 );
setMoveKey( spep_3+240, 1, 74.7, 263.3 , 0 );
setMoveKey( spep_3+242, 1, 83.9, 270 , 0 );
setMoveKey( spep_3+244, 1, 82.1, 267.2 , 0 );
setMoveKey( spep_3+246, 1, 28.7, 101.2 , 0 );
setMoveKey( spep_3+248, 1, -25.6, -44.2 , 0 );
setMoveKey( spep_3+250, 1, -53.4, -148.9 , 0 );
setMoveKey( spep_3+252, 1, -82.3, -233 , 0 );
setMoveKey( spep_3+254, 1, -92.8, -268.5 , 0 );
setMoveKey( spep_3+256, 1, -98.5, -263.9 , 0 );
setMoveKey( spep_3+258, 1, -88.5, -251.4 , 0 );
setMoveKey( spep_3+260, 1, -90.3, -250.8 , 0 );
setMoveKey( spep_3+262, 1, -84.2, -234.2 , 0 );
setMoveKey( spep_3+264, 1, -90, -233.7 , 0 );
setMoveKey( spep_3+266, 1, -79.9, -217.1 , 0 );
setMoveKey( spep_3+268, 1, -85.7, -212.6 , 0 );
setMoveKey( spep_3+270, 1, -75.6, -200 , 0 );
setMoveKey( spep_3+272, 1, -77.4, -195.4 , 0 );
setMoveKey( spep_3+274, 1, -71.3, -182.9 , 0 );
setMoveKey( spep_3+276, 1, -77.1, -182.3 , 0 );
setMoveKey( spep_3+278, 1, -67.1, -165.8 , 0 );
setMoveKey( spep_3+280, 1, -68.8, -161.2 , 0 );
setMoveKey( spep_3+282, 1, -62.8, -148.6 , 0 );
setMoveKey( spep_3+284, 1, -68.5, -148.1 , 0 );
setMoveKey( spep_3+286, 1, -58.5, -131.5 , 0 );
setMoveKey( spep_3+288, 1, -60.2, -130.9 , 0 );
setMoveKey( spep_3+290, 1, -54.2, -114.4 , 0 );
setMoveKey( spep_3+292, 1, -61.6, -114.4 , 0 );
setMoveKey( spep_3+294, 1, -53.5, -108.8 , 0 );
setMoveKey( spep_3+296, 1, -57.3, -111.1 , 0 );
setMoveKey( spep_3+298, 1, -53.1, -105.3 , 0 );
setMoveKey( spep_3+300, 1, -52.8, -103.3 , 0 );
setMoveKey( spep_3+302, 1, -52.5, -101.1 , 0 );
setMoveKey( spep_3+304, 1, -52.1, -98.8 , 0 );
setMoveKey( spep_3+306, 1, -51.7, -96.4 , 0 );
setMoveKey( spep_3+308, 1, -51.3, -93.8 , 0 );
setMoveKey( spep_3+310, 1, -50.8, -91.1 , 0 );
setMoveKey( spep_3+312, 1, -50.2, -88.2 , 0 );
setMoveKey( spep_3+314, 1, -49.7, -85.1 , 0 );
setMoveKey( spep_3+316, 1, -49, -81.9 , 0 );
setMoveKey( spep_3+318, 1, -48.4, -78.6 , 0 );
setMoveKey( spep_3+320, 1, -47.6, -75.1 , 0 );
setScaleKey( spep_3+214, 1, 2.17, 2.17 );
setScaleKey( spep_3+216, 1, 2.01, 2.01 );
setScaleKey( spep_3+218, 1, 1.85, 1.85 );
setScaleKey( spep_3+220, 1, 1.69, 1.69 );
setScaleKey( spep_3+222, 1, 1.52, 1.52 );
setScaleKey( spep_3+224, 1, 1.51, 1.51 );
setScaleKey( spep_3+226, 1, 1.5, 1.5 );
setScaleKey( spep_3+228, 1, 1.49, 1.49 );
setScaleKey( spep_3+230, 1, 1.48, 1.48 );
setScaleKey( spep_3+232, 1, 1.46, 1.46 );
setScaleKey( spep_3+234, 1, 1.45, 1.45 );
setScaleKey( spep_3+236, 1, 1.44, 1.44 );
setScaleKey( spep_3+238, 1, 1.43, 1.43 );
setScaleKey( spep_3+240, 1, 1.42, 1.42 );
setScaleKey( spep_3+242, 1, 1.41, 1.41 );
setScaleKey( spep_3+290, 1, 1.41, 1.41 );
setScaleKey( spep_3+292, 1, 1.42, 1.42 );
setScaleKey( spep_3+294, 1, 1.44, 1.44 );
setScaleKey( spep_3+296, 1, 1.46, 1.46 );
setScaleKey( spep_3+298, 1, 1.48, 1.48 );
setScaleKey( spep_3+300, 1, 1.49, 1.49 );
setScaleKey( spep_3+302, 1, 1.51, 1.51 );
setScaleKey( spep_3+304, 1, 1.53, 1.53 );
setScaleKey( spep_3+306, 1, 1.55, 1.55 );
setScaleKey( spep_3+308, 1, 1.56, 1.56 );
setScaleKey( spep_3+310, 1, 1.58, 1.58 );
setScaleKey( spep_3+312, 1, 1.6, 1.6 );
setScaleKey( spep_3+314, 1, 1.62, 1.62 );
setScaleKey( spep_3+316, 1, 1.63, 1.63 );
setScaleKey( spep_3+318, 1, 1.65, 1.65 );
setScaleKey( spep_3+320, 1, 1.67, 1.67 );
setRotateKey( spep_3+212, 1, -37.2 );
setRotateKey( spep_3+214, 1, -37.2 );
setRotateKey( spep_3+272, 1, -37.2 );
setRotateKey( spep_3+274, 1, -37.1 );
setRotateKey( spep_3+304, 1, -37.1 );
setRotateKey( spep_3+306, 1, -37.2 );
setRotateKey( spep_3+320, 1, -37.2 );


setMoveKey( spep_3+322, 1, -106.6, -191.5 , 0 );
setMoveKey( spep_3+324, 1, -56.3, -135.6 , 0 );
setMoveKey( spep_3+326, 1, -59.3, -158.6 , 0 );
setMoveKey( spep_3+328, 1, -26.1, -106.8 , 0 );
setMoveKey( spep_3+330, 1, -59, -108.2 , 0 );
setMoveKey( spep_3+332, 1, -4.5, -86.1 , 0 );
setMoveKey( spep_3+334, 1, -16, -123.5 , 0 );
setMoveKey( spep_3+336, 1, 4.8, -77.7 , 0 );
setMoveKey( spep_3+338, 1, -25.6, -95.9 , 0 );
setMoveKey( spep_3+340, 1, 8, -75.7 , 0 );
setMoveKey( spep_3+342, 1, -131, -347.5 , 0 );
setMoveKey( spep_3+344, 1, -186.1, -479.4 , 0 );
setMoveKey( spep_3+346, 1, -218.7, -566.4 , 0 );
setMoveKey( spep_3+348, 1, -305.8, -761.7 , 0 );
setMoveKey( spep_3+350, 1, -401.8, -1031.7 , 0 );
setMoveKey( spep_3+352, 1, -550.9, -1505.9 , 0 );

setScaleKey( spep_3+322, 1, 0.56, 0.56 );
setScaleKey( spep_3+324, 1, 0.56, 0.56 );
setScaleKey( spep_3+326, 1, 0.55, 0.55 );
setScaleKey( spep_3+334, 1, 0.55, 0.55 );
setScaleKey( spep_3+336, 1, 0.57, 0.57 );
setScaleKey( spep_3+338, 1, 0.59, 0.59 );
setScaleKey( spep_3+340, 1, 0.6, 0.6 );
setScaleKey( spep_3+342, 1, 2.39, 2.39 );
setScaleKey( spep_3+348, 1, 3.89, 3.89 );
setScaleKey( spep_3+350, 1, 6.82, 6.82 );
setScaleKey( spep_3+352, 1, 9.09, 9.09 );


setRotateKey( spep_3+322, 1, 67 );
setRotateKey( spep_3+352, 1, 67 );

setDisp(  spep_3+352,  1,  0);  --敵を消す

--[[
setMoveKey( spep_3+322, 1, -106.6, -191.5 , 0 );
setMoveKey( spep_3+324, 1, -56.3, -135.6 , 0 );
setMoveKey( spep_3+326, 1, -59.3, -158.6 , 0 );
setMoveKey( spep_3+328, 1, -26.1, -106.8 , 0 );
setMoveKey( spep_3+330, 1, -59, -108.2 , 0 );
setMoveKey( spep_3+332, 1, -4.5, -86.1 , 0 );
setMoveKey( spep_3+334, 1, -16, -123.5 , 0 );
setMoveKey( spep_3+336, 1, 4.8, -77.7 , 0 );
setMoveKey( spep_3+338, 1, -25.6, -95.9 , 0 );
setMoveKey( spep_3+340, 1, 8, -75.7 , 0 );
setMoveKey( spep_3+342, 1, -3.2, -113.1 , 0 );
setMoveKey( spep_3+344, 1, -23.1, -144.4 , 0 );
setMoveKey( spep_3+346, 1, -80.9, -225.6 , 0 );
setMoveKey( spep_3+348, 1, -86.9, -277.3 , 0 );
setMoveKey( spep_3+350, 1, -131, -347.5 , 0 );
setMoveKey( spep_3+352, 1, -149.1, -404.2 , 0 );
setMoveKey( spep_3+354, 1, -186.1, -479.4 , 0 );
setMoveKey( spep_3+356, 1, -218.7, -566.4 , 0 );
setMoveKey( spep_3+358, 1, -305.8, -761.7 , 0 );
setMoveKey( spep_3+360, 1, -401.8, -1031.7 , 0 );
setMoveKey( spep_3+362, 1, -550.9, -1405.9 , 0 );
setScaleKey( spep_3+322, 1, 0.56, 0.56 );
setScaleKey( spep_3+324, 1, 0.56, 0.56 );
setScaleKey( spep_3+326, 1, 0.55, 0.55 );
setScaleKey( spep_3+334, 1, 0.55, 0.55 );
setScaleKey( spep_3+336, 1, 0.57, 0.57 );
setScaleKey( spep_3+338, 1, 0.59, 0.59 );
setScaleKey( spep_3+340, 1, 0.6, 0.6 );
setScaleKey( spep_3+342, 1, 0.62, 0.62 );
setScaleKey( spep_3+344, 1, 1.07, 1.07 );
setScaleKey( spep_3+346, 1, 1.51, 1.51 );
setScaleKey( spep_3+348, 1, 1.95, 1.95 );
setScaleKey( spep_3+350, 1, 2.39, 2.39 );
setScaleKey( spep_3+352, 1, 2.82, 2.82 );
setScaleKey( spep_3+354, 1, 3.25, 3.25 );
setScaleKey( spep_3+356, 1, 3.89, 3.89 );
setScaleKey( spep_3+358, 1, 5.08, 5.08 );
setScaleKey( spep_3+360, 1, 6.82, 6.82 );
setScaleKey( spep_3+362, 1, 9.09, 9.09 );
setRotateKey( spep_3+322, 1, 120 );
setRotateKey( spep_3+362, 1, 120 );

setDisp(  spep_3+364,  1,  0);  --敵を消す
]]

--文字エントリー
ctzun = entryEffectLife( spep_3 + 60,  10016, 28, 0x100, -1, 0, 15.8, 363.9 );--ズンッ

setEffMoveKey( spep_3 + 60, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_3 + 62, ctzun, 15.8, 363.9 , 0 );
setEffMoveKey( spep_3 + 64, ctzun, 7.6, 369.2 , 0 );
setEffMoveKey( spep_3 + 66, ctzun, 15.9, 363.9 , 0 );
setEffMoveKey( spep_3 + 68, ctzun, 8.3, 368.8 , 0 );
setEffMoveKey( spep_3 + 70, ctzun, 15.9, 363.9 , 0 );
setEffMoveKey( spep_3 + 72, ctzun, 8.8, 368.4 , 0 );
setEffMoveKey( spep_3 + 74, ctzun, 15.9, 363.8 , 0 );
setEffMoveKey( spep_3 + 76, ctzun, 9.2, 368.1 , 0 );
setEffMoveKey( spep_3 + 78, ctzun, 15.8, 363.7 , 0 );
setEffMoveKey( spep_3 + 80, ctzun, 9.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 82, ctzun, 15.8, 363.8 , 0 );
setEffMoveKey( spep_3 + 84, ctzun, 10, 367.6 , 0 );
setEffMoveKey( spep_3 + 86, ctzun, 15.7, 363.9 , 0 );
setEffMoveKey( spep_3 + 88, ctzun, 15.7, 364 , 0 );

setEffScaleKey( spep_3 + 60, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_3 + 62, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_3 + 64, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_3 + 66, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_3 + 68, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_3 + 70, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_3 + 72, ctzun, 2.82, 2.82 );
setEffScaleKey( spep_3 + 74, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_3 + 76, ctzun, 2.67, 2.67 );
setEffScaleKey( spep_3 + 78, ctzun, 2.6, 2.6 );
setEffScaleKey( spep_3 + 80, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_3 + 84, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_3 + 86, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_3 + 88, ctzun, 2.04, 2.04 );

setEffScaleKey( spep_3 + 60, ctzun, 1.41, 1.41 );
setEffScaleKey( spep_3 + 62, ctzun, 3.44, 3.44 );
setEffScaleKey( spep_3 + 64, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_3 + 66, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_3 + 68, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_3 + 70, ctzun, 2.9, 2.9 );
setEffScaleKey( spep_3 + 72, ctzun, 2.82, 2.82 );
setEffScaleKey( spep_3 + 74, ctzun, 2.75, 2.75 );
setEffScaleKey( spep_3 + 76, ctzun, 2.67, 2.67 );
setEffScaleKey( spep_3 + 78, ctzun, 2.6, 2.6 );
setEffScaleKey( spep_3 + 80, ctzun, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctzun, 2.4, 2.4 );
setEffScaleKey( spep_3 + 84, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_3 + 86, ctzun, 2.16, 2.16 );
setEffScaleKey( spep_3 + 88, ctzun, 2.04, 2.04 );

setEffAlphaKey( spep_3 + 60, ctzun, 255 );
setEffAlphaKey( spep_3 + 70, ctzun, 255 );
setEffAlphaKey( spep_3 + 72, ctzun, 242 );
setEffAlphaKey( spep_3 + 74, ctzun, 230 );
setEffAlphaKey( spep_3 + 76, ctzun, 217 );
setEffAlphaKey( spep_3 + 78, ctzun, 204 );
setEffAlphaKey( spep_3 + 80, ctzun, 191 );
setEffAlphaKey( spep_3 + 82, ctzun, 147 );
setEffAlphaKey( spep_3 + 84, ctzun, 102 );
setEffAlphaKey( spep_3 + 86, ctzun, 58 );
setEffAlphaKey( spep_3 + 88, ctzun, 13 );

--文字エントリー
ctba = entryEffectLife( spep_3 + 190,  10022, 22, 0x100, -1, 0, -151.7, 270.2 );--バッ

setEffMoveKey( spep_3 + 190, ctba, -151.7, 270.2 , 0 );
setEffMoveKey( spep_3 + 192, ctba, -157.8, 273.3 , 0 );
setEffMoveKey( spep_3 + 194, ctba, -151.6, 270.2 , 0 );
setEffMoveKey( spep_3 + 196, ctba, -159, 273.6 , 0 );
setEffMoveKey( spep_3 + 198, ctba, -151.7, 270.1 , 0 );
setEffMoveKey( spep_3 + 200, ctba, -151.8, 270 , 0 );
setEffMoveKey( spep_3 + 202, ctba, -157.1, 273.3 , 0 );
setEffMoveKey( spep_3 + 204, ctba, -151.8, 270.1 , 0 );
setEffMoveKey( spep_3 + 206, ctba, -157.1, 273.4 , 0 );
setEffMoveKey( spep_3 + 208, ctba, -151.8, 270.1 , 0 );
setEffMoveKey( spep_3 + 210, ctba, -157.1, 273.3 , 0 );
setEffMoveKey( spep_3 + 212, ctba, -157.1, 273.2 , 0 );

setEffScaleKey( spep_3 + 190, ctba, 0.96, 0.96 );
setEffScaleKey( spep_3 + 192, ctba, 1.42, 1.42 );
setEffScaleKey( spep_3 + 194, ctba, 1.89, 1.89 );
setEffScaleKey( spep_3 + 196, ctba, 1.69, 1.69 );
setEffScaleKey( spep_3 + 198, ctba, 1.49, 1.49 );
setEffScaleKey( spep_3 + 200, ctba, 1.29, 1.29 );
setEffScaleKey( spep_3 + 212, ctba, 1.29, 1.29 );

setEffRotateKey( spep_3 + 190, ctba, -10.7 );
setEffRotateKey( spep_3 + 192, ctba, -14.4 );
setEffRotateKey( spep_3 + 194, ctba, -18.2 );
setEffRotateKey( spep_3 + 196, ctba, -15.7 );
setEffRotateKey( spep_3 + 198, ctba, -13.2 );
setEffRotateKey( spep_3 + 200, ctba, -10.7 );
setEffRotateKey( spep_3 + 212, ctba, -10.7 );

setEffAlphaKey( spep_3 + 190, ctba, 255 );
setEffAlphaKey( spep_3 + 206, ctba, 255 );
setEffAlphaKey( spep_3 + 208, ctba, 170 );
setEffAlphaKey( spep_3 + 210, ctba, 85 );
setEffAlphaKey( spep_3 + 212, ctba, 0 );

--文字エントリー
ctga = entryEffectLife( spep_3 + 216,  10005, 30, 0x100, -1, 0, -66.6, 347.6 );--ガッ

setEffMoveKey( spep_3 + 216, ctga, -66.6, 347.6 , 0 );
setEffMoveKey( spep_3 + 218, ctga, -84, 355.4 , 0 );
setEffMoveKey( spep_3 + 220, ctga, -66.6, 347.7 , 0 );
setEffMoveKey( spep_3 + 222, ctga, -81.6, 354.2 , 0 );
setEffMoveKey( spep_3 + 224, ctga, -80.3, 353.6 , 0 );
setEffMoveKey( spep_3 + 226, ctga, -66.7, 347.6 , 0 );
setEffMoveKey( spep_3 + 228, ctga, -80, 353.5 , 0 );
setEffMoveKey( spep_3 + 230, ctga, -66.7, 347.6 , 0 );
setEffMoveKey( spep_3 + 232, ctga, -79.6, 353.4 , 0 );
setEffMoveKey( spep_3 + 234, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 236, ctga, -79.3, 353.3 , 0 );
setEffMoveKey( spep_3 + 238, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 240, ctga, -79, 353.2 , 0 );
setEffMoveKey( spep_3 + 242, ctga, -66.7, 347.7 , 0 );
setEffMoveKey( spep_3 + 244, ctga, -78, 352.7 , 0 );
setEffMoveKey( spep_3 + 246, ctga, -66.8, 347.6 , 0 );

setEffScaleKey( spep_3 + 216, ctga, 1.9, 1.9 );
setEffScaleKey( spep_3 + 218, ctga, 3.37, 3.37 );
setEffScaleKey( spep_3 + 220, ctga, 3.12, 3.12 );
setEffScaleKey( spep_3 + 222, ctga, 2.88, 2.88 );
setEffScaleKey( spep_3 + 224, ctga, 2.63, 2.63 );
setEffScaleKey( spep_3 + 226, ctga, 2.6, 2.6 );
setEffScaleKey( spep_3 + 228, ctga, 2.57, 2.57 );
setEffScaleKey( spep_3 + 230, ctga, 2.54, 2.54 );
setEffScaleKey( spep_3 + 232, ctga, 2.51, 2.51 );
setEffScaleKey( spep_3 + 234, ctga, 2.47, 2.47 );
setEffScaleKey( spep_3 + 236, ctga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 238, ctga, 2.41, 2.41 );
setEffScaleKey( spep_3 + 240, ctga, 2.38, 2.38 );
setEffScaleKey( spep_3 + 242, ctga, 2.28, 2.28 );
setEffScaleKey( spep_3 + 244, ctga, 2.19, 2.19 );
setEffScaleKey( spep_3 + 246, ctga, 2.09, 2.09 );

setEffRotateKey( spep_3 + 216, ctga, -21.2 );
setEffRotateKey( spep_3 + 230, ctga, -21.2 );
setEffRotateKey( spep_3 + 232, ctga, -21.1 );
setEffRotateKey( spep_3 + 242, ctga, -21.1 );
setEffRotateKey( spep_3 + 244, ctga, -21.2 );
setEffRotateKey( spep_3 + 246, ctga, -21.2 );

setEffAlphaKey( spep_3 + 216, ctga, 255 );
setEffAlphaKey( spep_3 + 240, ctga, 255 );
setEffAlphaKey( spep_3 + 242, ctga, 213 );
setEffAlphaKey( spep_3 + 244, ctga, 170 );
setEffAlphaKey( spep_3 + 246, ctga, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_3 + 322,  10020, 32, 0x100, -1, 0, -63.5, 308.5 );--バキッ

setEffMoveKey( spep_3 + 322, ctbaki, -63.5, 308.5 , 0 );
setEffMoveKey( spep_3 + 324, ctbaki, -90, 326 , 0 );
setEffMoveKey( spep_3 + 326, ctbaki, -63.8, 308.6 , 0 );
setEffMoveKey( spep_3 + 328, ctbaki, -85.3, 323 , 0 );
setEffMoveKey( spep_3 + 330, ctbaki, -63.6, 308.6 , 0 );
setEffMoveKey( spep_3 + 332, ctbaki, -82.7, 321.4 , 0 );
setEffMoveKey( spep_3 + 334, ctbaki, -63.6, 308.6 , 0 );
setEffMoveKey( spep_3 + 336, ctbaki, -82.2, 321.1 , 0 );
setEffMoveKey( spep_3 + 338, ctbaki, -63.5, 308.6 , 0 );
setEffMoveKey( spep_3 + 340, ctbaki, -81.8, 320.9 , 0 );
setEffMoveKey( spep_3 + 342, ctbaki, -63.4, 308.6 , 0 );
setEffMoveKey( spep_3 + 344, ctbaki, -81.3, 320.7 , 0 );
setEffMoveKey( spep_3 + 346, ctbaki, -63.3, 308.7 , 0 );
setEffMoveKey( spep_3 + 348, ctbaki, -80.6, 320.1 , 0 );
setEffMoveKey( spep_3 + 350, ctbaki, -63.4, 308.6 , 0 );
setEffMoveKey( spep_3 + 352, ctbaki, -79.5, 319.3 , 0 );
setEffMoveKey( spep_3 + 354, ctbaki, -63.5, 308.5 , 0 );

setEffScaleKey( spep_3 + 322, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 + 324, ctbaki, 3.71, 3.71 );
setEffScaleKey( spep_3 + 326, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_3 + 328, ctbaki, 3.06, 3.06 );
setEffScaleKey( spep_3 + 330, ctbaki, 2.73, 2.73 );
setEffScaleKey( spep_3 + 332, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_3 + 334, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_3 + 336, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_3 + 338, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_3 + 340, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_3 + 342, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_3 + 344, ctbaki, 2.55, 2.55 );
setEffScaleKey( spep_3 + 346, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 + 348, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_3 + 350, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 352, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 + 354, ctbaki, 2.19, 2.19 );

setEffScaleKey( spep_3 + 322, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_3 + 324, ctbaki, 3.71, 3.71 );
setEffScaleKey( spep_3 + 326, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_3 + 328, ctbaki, 3.06, 3.06 );
setEffScaleKey( spep_3 + 330, ctbaki, 2.73, 2.73 );
setEffScaleKey( spep_3 + 332, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_3 + 334, ctbaki, 2.68, 2.68 );
setEffScaleKey( spep_3 + 336, ctbaki, 2.65, 2.65 );
setEffScaleKey( spep_3 + 338, ctbaki, 2.63, 2.63 );
setEffScaleKey( spep_3 + 340, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_3 + 342, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_3 + 344, ctbaki, 2.55, 2.55 );
setEffScaleKey( spep_3 + 346, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 + 348, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_3 + 350, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 352, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_3 + 354, ctbaki, 2.19, 2.19 );

setEffRotateKey( spep_3 + 322, ctbaki, -11.2 );
setEffRotateKey( spep_3 + 354, ctbaki, -11.2 );

setEffAlphaKey( spep_3 + 322, ctbaki, 255 );
setEffAlphaKey( spep_3 + 346, ctbaki, 255 );
setEffAlphaKey( spep_3 + 348, ctbaki, 195 );
setEffAlphaKey( spep_3 + 350, ctbaki, 134 );
setEffAlphaKey( spep_3 + 352, ctbaki, 74 );
setEffAlphaKey( spep_3 + 354, ctbaki, 13 );

--***SE***
playSe(  spep_3+58,  1001);  --初撃蹴り
playSe(  spep_3+96,  8);  --敵が吹っ飛ぶ
playSe(  spep_3+130,  1048);  --敵が体制を持ち直す（いらないかも）
playSe(  spep_3+180,  1003);  --敵パンチ空振り
playSe(  spep_3+212,  1010);  --ベジータ上に向けての蹴り
playSe(  spep_3+288,  43);  --ベジータ瞬間移動
playSe(  spep_3+320,  1009);  --ベジータ打ち落とし

--***白フェード***
entryFade( spep_3+60, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+212, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+322, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_3+372, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ナビ1(160F)
------------------------------------------------------
spep_4 = spep_3+380;

--***集中線***
shuchusen4 = entryEffectLife( spep_4, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.3,  1.4);
setEffScaleKey(  spep_4+160,  shuchusen4,  1.3,  1.4);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+160,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+160,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+160,  shuchusen4,  255);

--***ナビ溜め***
nabitame = entryEffect(  spep_4,  SP_04,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_4,  nabitame,  -1.0,  1.0);
setEffScaleKey(  spep_4+160,  nabitame,  -1.0,  1.0);
setEffMoveKey(  spep_4,  nabitame,  0,  0);
setEffMoveKey(  spep_4+160,  nabitame,  0,  0);
setEffRotateKey(  spep_4,  nabitame,  0);
setEffRotateKey(  spep_4+160,  nabitame,  0);
setEffAlphaKey(  spep_4,  nabitame,  255);
setEffAlphaKey(  spep_4+160,  nabitame,  255);

--***カットイン***
--speff = entryEffect(  spep_4+48,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+48,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--***書き文字エントリー***
ctgogo = entryEffectLife( spep_4+66, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_4 + 66, ctgogo, 255 );
setEffAlphaKey( spep_4 + 124, ctgogo, 255 );
setEffAlphaKey( spep_4 + 125, ctgogo, 255 );
setEffAlphaKey( spep_4 + 126, ctgogo, 191 );
setEffAlphaKey( spep_4 + 128, ctgogo, 128 );
setEffAlphaKey( spep_4 + 130, ctgogo, 64 );
setEffAlphaKey( spep_4 + 133, ctgogo, 0 );

setEffRotateKey(  spep_4+66,  ctgogo,  0);
setEffRotateKey(  spep_4+133,  ctgogo,  0);

setEffScaleKey(  spep_4+66,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4+124,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_4 + 133, ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_4+66,  ctgogo,  0,  530);
setEffMoveKey(  spep_4+133,  ctgogo,  0,  530);

--***SE***
playSe(  spep_4,  1037);  --気弾溜め
playSe(  spep_4+60,  SE_04);  --カットイン

--***白フェード***
entryFade( spep_4+152, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気弾放つ(180F)
------------------------------------------------------
spep_5 = spep_4+160;

--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.3,  1.4);
setEffScaleKey(  spep_5+180,  shuchusen5,  1.3,  1.4);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+180,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  -2);
setEffRotateKey(  spep_5+180,  shuchusen5,  -2);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);


--***気弾放つ***
hanatsu = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_5,  hanatsu,  -1.0,  1.0);
setEffScaleKey(  spep_5+180,  hanatsu,  -1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsu,  0,  0);
setEffMoveKey(  spep_5+180,  hanatsu,  0,  0);
setEffRotateKey(  spep_5,  hanatsu,  0);
setEffRotateKey(  spep_5+180,  hanatsu,  0);
setEffAlphaKey(  spep_5,  hanatsu,  255);
setEffAlphaKey(  spep_5+178,  hanatsu,  255);
setEffAlphaKey(  spep_5+179,  hanatsu,  0);
setEffAlphaKey(  spep_5+180,  hanatsu,  0);

--**敵の動き**
setDisp(  spep_5+122,  1,  1);  --敵出す
setDisp(  spep_5+178,  1,  0);  --敵消す

changeAnime(  spep_5+122,  1,  105);  --吹っ飛び

setShakeChara(  spep_5+122,  1,  56,  20);  --キャラ揺れ
setMoveKey(  spep_5+122,  1,  0,  500,  0);
setMoveKey(  spep_5+176,  1,  0,  0,  0);  
setMoveKey(  spep_5+178,  1,  0,  0,  0);  
setScaleKey(  spep_5+122,  1,  0.8,  0.8);
setScaleKey(  spep_5+176,  1,  1.5,  1.5);
setScaleKey(  spep_5+178,  1,  1.5,  1.5);
setRotateKey(  spep_5+122,  1,  0);
setRotateKey(  spep_5+178,  1,  0);


--***気弾放つ背景***
hanatsuBG = entryEffect(  spep_5,  SP_06,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_5,  hanatsuBG,  -1.0,  1.0);
setEffScaleKey(  spep_5+180,  hanatsuBG,  -1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsuBG,  0,  0);
setEffMoveKey(  spep_5+180,  hanatsuBG,  0,  0);
setEffRotateKey(  spep_5,  hanatsuBG,  0);
setEffRotateKey(  spep_5+180,  hanatsuBG,  0);
setEffAlphaKey(  spep_5,  hanatsuBG,  255);
setEffAlphaKey(  spep_5+178,  hanatsuBG,  255);
setEffAlphaKey(  spep_5+179,  hanatsuBG,  0);
setEffAlphaKey(  spep_5+180,  hanatsuBG,  0);

--文字エントリー
ctzuo = entryEffectLife( spep_5 + 72,  10012, 44, 0x100, -1, 0, -119, 387.8 );--ズオッ

setEffMoveKey( spep_5 + 72, ctzuo, -119, 387.8 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo, -96.7, 393.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo, -106.6, 403.4 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo, -64.1, 407.2 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo, -101.6, 409.6 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo, -70.9, 404.4 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo, -104.2, 406.3 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo, -77.7, 401.6 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo, -105.7, 404.5 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo, -78.5, 401.2 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo, -106, 404.1 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo, -79.4, 400.9 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo, -106.3, 403.7 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo, -80.2, 400.6 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo, -106.6, 403.3 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo, -81, 400.2 , 0 );
setEffMoveKey( spep_5 + 104, ctzuo, -107, 402.9 , 0 );
setEffMoveKey( spep_5 + 106, ctzuo, -107.1, 402.7 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo, -70.1, 404.7 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo, -98.2, 414 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo, -46.6, 414.4 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo, -89.2, 425.3 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo, -84.8, 430.9 , 0 );

setEffScaleKey( spep_5 + 72, ctzuo, 0.73, 0.73 );
setEffScaleKey( spep_5 + 74, ctzuo, 1.96, 1.96 );
setEffScaleKey( spep_5 + 76, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_5 + 78, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_5 + 80, ctzuo, 4.15, 4.15 );
setEffScaleKey( spep_5 + 82, ctzuo, 3.89, 3.89 );
setEffScaleKey( spep_5 + 84, ctzuo, 3.63, 3.63 );
setEffScaleKey( spep_5 + 86, ctzuo, 3.38, 3.38 );
setEffScaleKey( spep_5 + 88, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_5 + 90, ctzuo, 3.32, 3.32 );
setEffScaleKey( spep_5 + 92, ctzuo, 3.29, 3.29 );
setEffScaleKey( spep_5 + 94, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_5 + 96, ctzuo, 3.22, 3.22 );
setEffScaleKey( spep_5 + 98, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_5 + 100, ctzuo, 3.16, 3.16 );
setEffScaleKey( spep_5 + 102, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_5 + 104, ctzuo, 3.1, 3.1 );
setEffScaleKey( spep_5 + 106, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_5 + 108, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_5 + 110, ctzuo, 4.83, 4.83 );
setEffScaleKey( spep_5 + 112, ctzuo, 5.71, 5.71 );
setEffScaleKey( spep_5 + 114, ctzuo, 6.59, 6.59 );
setEffScaleKey( spep_5 + 116, ctzuo, 7.47, 7.47 );

setEffRotateKey( spep_5 + 72, ctzuo, -11.4 );
setEffRotateKey( spep_5 + 116, ctzuo, -11.4 );

setEffAlphaKey( spep_5 + 72, ctzuo, 255 );
setEffAlphaKey( spep_5 + 106, ctzuo, 255 );
setEffAlphaKey( spep_5 + 108, ctzuo, 204 );
setEffAlphaKey( spep_5 + 110, ctzuo, 153 );
setEffAlphaKey( spep_5 + 112, ctzuo, 102 );
setEffAlphaKey( spep_5 + 114, ctzuo, 51 );
setEffAlphaKey( spep_5 + 116, ctzuo, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_5 + 122,  10014, 56, 0x100, -1, 0, 128, 404.6 );--ズドドドッ

setEffShake(  spep_5+122,  ctzudododo,  56,  20);  --揺れ
setEffMoveKey( spep_5 + 122, ctzudododo, 128, 404.6 , 0 );
setEffMoveKey( spep_5 + 178, ctzudododo, 128, 404.6 , 0 );
setEffScaleKey( spep_5 + 122, ctzudododo, 2.28, 2.28 );
setEffScaleKey( spep_5 + 178, ctzudododo, 2.28, 2.28 );
setEffRotateKey( spep_5 + 122, ctzudododo, 0 );
setEffRotateKey( spep_5 + 178, ctzudododo, 0 );
setEffAlphaKey( spep_5 + 122, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 178, ctzudododo, 255 );

--***SE***
playSe(  spep_5,  1021);  --気弾溜め
playSe(  spep_5+70,  SE_07);  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 180, 0, 0, 0, 0, 255 );  --薄い黒　背景

--***白フェード***
entryFade( spep_5+170, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン黄色(60F)
------------------------------------------------------
spep_6 = spep_5+180;

--***書き文字***
ct_gya = entryEffectLife( spep_6,  10006, 58, 0x100, -1, 0, 8.8, 313 );  --書き文字

setEffMoveKey( spep_6, ct_gya, 8.8, 313 , 0 );
setEffMoveKey( spep_6+58, ct_gya, 10.6, 319.2 , 0 );
setEffScaleKey( spep_6, ct_gya, 2.11, 2.11 );
setEffScaleKey( spep_6+58, ct_gya, 4.23, 4.23 );
setEffRotateKey( spep_6, ct_gya, -5.2 );
setEffRotateKey( spep_6+58, ct_gya, -5.2 );
setEffAlphaKey( spep_6, ct_gya, 255 );
setEffAlphaKey( spep_6+58, ct_gya, 255 );

--***ギャン黄色***
gyan = entryEffectLife( spep_6, 190003, 60, 0x80 , -1, 0, 0, 0);  --ギャン

setEffScaleKey( spep_6,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6,  gyan,  0,  0);
setEffRotateKey( spep_6,  gyan,  0);
setEffAlphaKey( spep_6,  gyan,  255);
setEffScaleKey( spep_6+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6+60,  gyan,  0,  0);
setEffRotateKey( spep_6+60,  gyan,  0);
setEffAlphaKey( spep_6+60,  gyan,  255);

--***SE***
playSe(  spep_6,  1023);  --ギャン

--***白フェード***
entryFade( spep_6+52, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ナビ2(280F)
------------------------------------------------------
spep_7 = spep_6+60;

nabi2 = entryEffect(  spep_7,  SP_07,  0x100,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_7,  nabi2,  -1.0,  1.0);
setEffScaleKey(  spep_7+180,  nabi2,  -1.0,  1.0);
setEffMoveKey(  spep_7,  nabi2,  0,  0);
setEffMoveKey(  spep_7+180,  nabi2,  0,  0);
setEffRotateKey(  spep_7,  nabi2,  0);
setEffRotateKey(  spep_7+180,  nabi2,  0);
setEffAlphaKey(  spep_7,  nabi2,  255);
setEffAlphaKey(  spep_7+180,  nabi2,  255);


--***集中線***
shuchusen7 = entryEffectLife( spep_7, 906, 280, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen7,  1.4,  1.75);
setEffScaleKey(  spep_7+280,  shuchusen7,  1.4,  1.75);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffMoveKey(  spep_7+280,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffRotateKey(  spep_7+280,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+280,  shuchusen7,  255);

--***SE***
playSe(  spep_7,  1024);  --爆発


-- ダメージ表示
dealDamage(spep_7+160);
endPhase(spep_7+260);


end
