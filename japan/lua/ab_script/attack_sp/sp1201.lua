--1014530  ブロリー_メテオクラッシュ_sp1201

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
SP_01 = 152018  --気溜め
SP_02 = 152019  --格闘　手前
SP_03 = 152020  --格闘　奥
SP_04 = 152021  --突進
SP_05 = 152022  --ヒット　手前
SP_06 = 152023  --ヒット　奥

SP_01x = 152024  --敵用：気溜め
SP_02x = 152025  --敵用：格闘　手前
SP_04x = 152026  --敵用：突進

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
-- 気溜め(110F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_1,0,110,0,0,0,0,200);

--***集中線***
shuchusen1 = entryEffectLife( spep_1+40, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+40,  shuchusen1,  2.2,  2.2);
setEffScaleKey(  spep_1+110,  shuchusen1,  2.2,  2.2);
setEffMoveKey(  spep_1+40,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+110,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+40,  shuchusen1,  0);
setEffRotateKey(  spep_1+110,  shuchusen1,  0);
setEffAlphaKey(  spep_1+40,  shuchusen1,  255);
setEffAlphaKey(  spep_1+110,  shuchusen1,  255);

--***突進***
kitame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+110,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+110,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+110,  kitame,  255);
setEffAlphaKey(  spep_1+111,  kitame,  0);
setEffAlphaKey(  spep_1+112,  kitame,  0);

--***SE***
playSe( spep_1+40, SE_01);  --気が広がる
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+90 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setDisp( SP_dodge+9, 1, 1);

changeAnime(  SP_dodge+9,    1,  100);
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
--回避じゃないからカットイン出す
--------------------------------------

--***カットイン***32
speff = entryEffect(  spep_1+22,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+22,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+40, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_1 + 40, ctgogo, 255 );
setEffAlphaKey( spep_1 + 98, ctgogo, 255 );
setEffAlphaKey( spep_1 + 99, ctgogo, 255 );
setEffAlphaKey( spep_1 + 100, ctgogo, 191 );
setEffAlphaKey( spep_1 + 102, ctgogo, 128 );
setEffAlphaKey( spep_1 + 104, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
setEffAlphaKey( spep_1 + 107, ctgogo, 0 );

setEffRotateKey(  spep_1+40,  ctgogo,  0);
setEffRotateKey(  spep_1+107,  ctgogo,  0);

setEffScaleKey(  spep_1+40,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1+98,  ctgogo,  0.7,  0.7);
--setEffScaleKey( spep_1 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_1 + 100, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_1 + 107, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_1+40,  ctgogo,  0,  530);
setEffMoveKey(  spep_1+107,  ctgogo,  0,  530);

--***SE***
playSe( spep_1+22, SE_04);  --カットイン音


------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+110;

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

------------------------------------------------------
-- 格闘(440F)
------------------------------------------------------

spep_3 = spep_2+90;

--***フェードと背景***
entryFade( spep_3-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+274, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+376, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***溜めから発射***
battleFront = entryEffect(  spep_3+2,  SP_02,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3+2,  battleFront,  1.0,  1.0);
setEffScaleKey(  spep_3+440,  battleFront,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  battleFront,  0,  0);
setEffMoveKey(  spep_3+440,  battleFront,  0,  0);
setEffRotateKey(  spep_3+2,  battleFront,  0);
setEffRotateKey(  spep_3+440,  battleFront,  0);
setEffAlphaKey(  spep_3+2,  battleFront,  255);
setEffAlphaKey(  spep_3+440,  battleFront,  255);
setEffAlphaKey(  spep_3+441,  battleFront,  0);
setEffAlphaKey(  spep_3+442,  battleFront,  0);

--***溜めから発射***
battleBack = entryEffect(  spep_3+2,  SP_03,  0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3+2,  battleBack,  1.0,  1.0);
setEffScaleKey(  spep_3+440,  battleBack,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  battleBack,  0,  0);
setEffMoveKey(  spep_3+440,  battleBack,  0,  0);
setEffRotateKey(  spep_3+2,  battleBack,  0);
setEffRotateKey(  spep_3+440,  battleBack,  0);
setEffAlphaKey(  spep_3+2,  battleBack,  255);
setEffAlphaKey(  spep_3+440,  battleBack,  255);
setEffAlphaKey(  spep_3+441,  battleBack,  0);
setEffAlphaKey(  spep_3+442,  battleBack,  0);

--***集中線***
shuchusen3 = entryEffectLife(  spep_3+2,  906,  378,  0x100,  -1,  0,  0,  0);

setEffRotateKey(  spep_3+2, shuchusen3,  0);--固定のまま
setEffRotateKey(  spep_3+380, shuchusen3,  0);--固定のまま

setEffAlphaKey(  spep_3+2,  shuchusen3,  255);--固定のまま
setEffAlphaKey(  spep_3+380,  shuchusen3,  255);--固定のまま

setEffScaleKey(  spep_3+2,  shuchusen3,  2.2,  2.2);
setEffScaleKey(  spep_3+99,  shuchusen3,  2.2,  2.2);
setEffScaleKey(  spep_3+100,  shuchusen3,  1.7,  1.7);
setEffScaleKey(  spep_3+380,  shuchusen3,  1.7,  1.7);

setEffMoveKey(  spep_3+2,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+380,  shuchusen3,  0,  0);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 438, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );--待機
changeAnime( spep_3 + 19, 1, 106 );
changeAnime( spep_3 + 67, 1, 108 );
changeAnime( spep_3 + 87, 1, 106 );
changeAnime( spep_3 + 103, 1, 108 );
changeAnime( spep_3 + 125, 1, 106 );
changeAnime( spep_3 + 139, 1, 108 );
changeAnime( spep_3 + 169, 1, 106 );
changeAnime( spep_3 + 215, 1, 108 );
changeAnime( spep_3 + 279, 1, 106 );
setShakeChara( spep_3 + 279 , 1, 100, 5);--移動の小さな揺れ
changeAnime( spep_3 + 379, 1, 8 );
setShakeChara( spep_3 + 379 , 1, 10, 10);--HIT

setMoveKey( spep_3 + 0, 1, 156.2, 72.1 , 0 );
setMoveKey( spep_3 + 2, 1, 135.3, 65.4 , 0 );
setMoveKey( spep_3 + 4, 1, 117.7, 59.8 , 0 );
setMoveKey( spep_3 + 6, 1, 103, 55 , 0 );
setMoveKey( spep_3 + 8, 1, 91, 51.1 , 0 );
setMoveKey( spep_3 + 10, 1, 81.4, 48 , 0 );
setMoveKey( spep_3 + 12, 1, 73.8, 45.5 , 0 );
setMoveKey( spep_3 + 14, 1, 68.2, 43.7 , 0 );
setMoveKey( spep_3 + 16, 1, 64.4, 42.5 , 0 );
setMoveKey( spep_3 + 18, 1, 62.3, 41.9 , 0 );
setMoveKey( spep_3 + 19, 1, 103.8, 55.6 , 0 );
setMoveKey( spep_3 + 20, 1, 103.8, 55.6 , 0 );--1
setMoveKey( spep_3 + 22, 1, 108.8, 44.7 , 0 );
setMoveKey( spep_3 + 24, 1, 104.8, 44.4 , 0 );
setMoveKey( spep_3 + 26, 1, 113.6, 49.8 , 0 );
setMoveKey( spep_3 + 28, 1, 106.4, 44.6 , 0 );
setMoveKey( spep_3 + 30, 1, 114.7, 50.3 , 0 );
setMoveKey( spep_3 + 32, 1, 103, 38.9 , 0 );
setMoveKey( spep_3 + 34, 1, 161.4, 66.5 , 0 );
setMoveKey( spep_3 + 36, 1, 152.6, 68.8 , 0 );
setMoveKey( spep_3 + 38, 1, 138.8, 69.1 , 0 );
setMoveKey( spep_3 + 40, 1, 125.7, 68.6 , 0 );
setMoveKey( spep_3 + 42, 1, 116.4, 68.5 , 0 );
setMoveKey( spep_3 + 44, 1, 162.9, 123.7 , 0 );
setMoveKey( spep_3 + 46, 1, 160.2, 119.4 , 0 );
setMoveKey( spep_3 + 48, 1, 170.5, 114.4 , 0 );
setMoveKey( spep_3 + 50, 1, 157.8, 119.1 , 0 );
setMoveKey( spep_3 + 52, 1, 178.2, 113.7 , 0 );
setMoveKey( spep_3 + 54, 1, 165.8, 116.7 , 0 );
setMoveKey( spep_3 + 56, 1, 178, 116.8 , 0 );
setMoveKey( spep_3 + 58, 1, 205.6, 151 , 0 );
setMoveKey( spep_3 + 60, 1, 212.6, 144.7 , 0 );
setMoveKey( spep_3 + 62, 1, 202.2, 146.8 , 0 );
setMoveKey( spep_3 + 64, 1, 189, 146.8 , 0 );
setMoveKey( spep_3 + 66, 1, 180.4, 147.2 , 0 );
setMoveKey( spep_3 + 67, 1, 200.8, 155.6 , 0 );
setMoveKey( spep_3 + 68, 1, 200.8, 155.6 , 0 );--2
setMoveKey( spep_3 + 70, 1, 193.1, 135.8 , 0 );
setMoveKey( spep_3 + 72, 1, 220.5, 174.6 , 0 );
setMoveKey( spep_3 + 74, 1, 216.4, 161.2 , 0 );
setMoveKey( spep_3 + 76, 1, 238.7, 183.5 , 0 );
setMoveKey( spep_3 + 78, 1, 235.6, 177.1 , 0 );
setMoveKey( spep_3 + 80, 1, 242.9, 191.8 , 0 );
setMoveKey( spep_3 + 82, 1, 219, 184.8 , 0 );
setMoveKey( spep_3 + 84, 1, 200.3, 182.1 , 0 );
setMoveKey( spep_3 + 86, 1, 188.2, 180 , 0 );
setMoveKey( spep_3 + 87, 1, 153.6, 158.2 , 0 );
setMoveKey( spep_3 + 88, 1, 153.6, 158.2 , 0 );--3
setMoveKey( spep_3 + 90, 1, 211, 87.8 , 0 );
setMoveKey( spep_3 + 92, 1, 238.2, 90.8 , 0 );
setMoveKey( spep_3 + 94, 1, 243.2, 70.8 , 0 );
setMoveKey( spep_3 + 96, 1, 234.9, 77 , 0 );
setMoveKey( spep_3 + 98, 1, 214.8, 57.4 , 0 );
setMoveKey( spep_3 + 100, 1, 170.2, 56.6 , 0 );
setMoveKey( spep_3 + 102, 1, 140.1, 45.6 , 0 );
setMoveKey( spep_3 + 103, 1, 193.1, -4.7 , 0 );
setMoveKey( spep_3 + 104, 1, 193.1, -4.7 , 0 );--4
setMoveKey( spep_3 + 106, 1, 261.7, 18.7 , 0 );
setMoveKey( spep_3 + 108, 1, 297, 17.3 , 0 );
setMoveKey( spep_3 + 110, 1, 310.3, 22.5 , 0 );
setMoveKey( spep_3 + 112, 1, 311.5, 22.2 , 0 );
setMoveKey( spep_3 + 114, 1, 326.9, 21.9 , 0 );
setMoveKey( spep_3 + 116, 1, 313.3, 26.6 , 0 );
setMoveKey( spep_3 + 118, 1, 295.5, 16.6 , 0 );
setMoveKey( spep_3 + 120, 1, 244.5, 6.1 , 0 );
setMoveKey( spep_3 + 122, 1, 192.5, -4.5 , 0 );
setMoveKey( spep_3 + 124, 1, 160.3, -10.8 , 0 );
setMoveKey( spep_3 + 125, 1, 104.9, 38.8 , 0 );
setMoveKey( spep_3 + 126, 1, 104.9, 38.8 , 0 );--5
setMoveKey( spep_3 + 128, 1, 216.6, 93.6 , 0 );
setMoveKey( spep_3 + 130, 1, 198.2, 103 , 0 );
setMoveKey( spep_3 + 132, 1, 207.2, 103 , 0 );
setMoveKey( spep_3 + 134, 1, 167.6, 93.1 , 0 );
setMoveKey( spep_3 + 136, 1, 163, 96.5 , 0 );
setMoveKey( spep_3 + 138, 1, 145.8, 95 , 0 );
setMoveKey( spep_3 + 139, 1, 134.4, 126.1 , 0 );
setMoveKey( spep_3 + 140, 1, 134.4, 126.1 , 0 );--6
setMoveKey( spep_3 + 142, 1, 224.5, 161.7 , 0 );
setMoveKey( spep_3 + 144, 1, 260.1, 182 , 0 );
setMoveKey( spep_3 + 146, 1, 266.6, 192.3 , 0 );
setMoveKey( spep_3 + 148, 1, 277.1, 190.1 , 0 );
setMoveKey( spep_3 + 150, 1, 257, 195.5 , 0 );
setMoveKey( spep_3 + 152, 1, 149.4, 166.2 , 0 );
setMoveKey( spep_3 + 154, 1, 55.8, 149.9 , 0 );
setMoveKey( spep_3 + 156, 1, 51.1, 165 , 0 );
setMoveKey( spep_3 + 158, 1, 158.7, 175.2 , 0 );
setMoveKey( spep_3 + 160, 1, 175.4, 190 , 0 );
setMoveKey( spep_3 + 162, 1, 173.4, 190.7 , 0 );
setMoveKey( spep_3 + 164, 1, 161.1, 186.9 , 0 );
setMoveKey( spep_3 + 166, 1, 158.7, 183.4 , 0 );
setMoveKey( spep_3 + 168, 1, 142.8, 183.1 , 0 );
setMoveKey( spep_3 + 169, 1, 133.2, 159.5 , 0 );
setMoveKey( spep_3 + 170, 1, 133.2, 159.5 , 0 );--7
setMoveKey( spep_3 + 172, 1, 237.4, 227 , 0 );
setMoveKey( spep_3 + 174, 1, 235.3, 207.5 , 0 );
setMoveKey( spep_3 + 176, 1, 260.3, 232.7 , 0 );
setMoveKey( spep_3 + 178, 1, 267.5, 215.5 , 0 );
setMoveKey( spep_3 + 180, 1, 267.9, 219.4 , 0 );
setMoveKey( spep_3 + 182, 1, 277.8, 214.9 , 0 );
setMoveKey( spep_3 + 184, 1, 272, 198.9 , 0 );
setMoveKey( spep_3 + 186, 1, 268.4, 195.8 , 0 );
setMoveKey( spep_3 + 188, 1, 261.5, 175.7 , 0 );
setMoveKey( spep_3 + 190, 1, 251.8, 163.9 , 0 );
setMoveKey( spep_3 + 192, 1, 241.1, 146.7 , 0 );
setMoveKey( spep_3 + 194, 1, 228.7, 127.9 , 0 );
setMoveKey( spep_3 + 196, 1, 216.8, 110.3 , 0 );
setMoveKey( spep_3 + 198, 1, 205.8, 94.2 , 0 );
setMoveKey( spep_3 + 200, 1, 195.8, 79.8 , 0 );
setMoveKey( spep_3 + 202, 1, 186.8, 66.9 , 0 );
setMoveKey( spep_3 + 204, 1, 178.9, 55.7 , 0 );
setMoveKey( spep_3 + 206, 1, 172.1, 46.3 , 0 );
setMoveKey( spep_3 + 208, 1, 166.4, 38.4 , 0 );
setMoveKey( spep_3 + 210, 1, 162, 32.3 , 0 );
setMoveKey( spep_3 + 212, 1, 158.7, 27.9 , 0 );
setMoveKey( spep_3 + 214, 1, 156.6, 25.2 , 0 );
setMoveKey( spep_3 + 215, 1, 213.9, 81.1 , 0 );
setMoveKey( spep_3 + 216, 1, 213.9, 81.1 , 0 );--8
setMoveKey( spep_3 + 218, 1, 193.9, 80.8 , 0 );
setMoveKey( spep_3 + 220, 1, 204, 83 , 0 );
setMoveKey( spep_3 + 222, 1, 192.3, 100 , 0 );
setMoveKey( spep_3 + 224, 1, 184.9, 94.4 , 0 );
setMoveKey( spep_3 + 226, 1, 180.8, 105.4 , 0 );
setMoveKey( spep_3 + 228, 1, 161.7, 104.8 , 0 );
setMoveKey( spep_3 + 230, 1, 160, 99.2 , 0 );
setMoveKey( spep_3 + 232, 1, 148.6, 109.6 , 0 );
setMoveKey( spep_3 + 234, 1, 142.3, 99.7 , 0 );
setMoveKey( spep_3 + 236, 1, 126.8, 105.6 , 0 );
setMoveKey( spep_3 + 238, 1, 128, 104.1 , 0 );
setMoveKey( spep_3 + 240, 1, 113.3, 99.5 , 0 );
setMoveKey( spep_3 + 242, 1, 114.5, 101 , 0 );
setMoveKey( spep_3 + 244, 1, 102.6, 99.6 , 0 );
setMoveKey( spep_3 + 246, 1, 98.5, 105.1 , 0 );
setMoveKey( spep_3 + 248, 1, 94.5, 97.9 , 0 );
setMoveKey( spep_3 + 250, 1, 84.1, 99.4 , 0 );
setMoveKey( spep_3 + 252, 1, 221.8, 203.2 , 0 );
setMoveKey( spep_3 + 254, 1, 347.6, 299.3 , 0 );
setMoveKey( spep_3 + 256, 1, 463.4, 387.8 , 0 );
setMoveKey( spep_3 + 258, 1, 569.1, 468.5 , 0 );
setMoveKey( spep_3 + 260, 1, 664.7, 541.6 , 0 );
setMoveKey( spep_3 + 262, 1, 750.3, 607 , 0 );
setMoveKey( spep_3 + 264, 1, 825.8, 664.7 , 0 );
setMoveKey( spep_3 + 266, 1, 891.2, 714.7 , 0 );
setMoveKey( spep_3 + 268, 1, 946.6, 757 , 0 );
setMoveKey( spep_3 + 270, 1, 991.9, 791.6 , 0 );
setMoveKey( spep_3 + 272, 1, 1027.1, 818.5 , 0 );
setMoveKey( spep_3 + 274, 1, 1052.3, 837.7 , 0 );
setMoveKey( spep_3 + 276, 1, 1067.4, 849.3 , 0 );
setMoveKey( spep_3 + 278, 1, 1072.4, 853.1 , 0 );
setMoveKey( spep_3 + 279, 1, -682.7, -399.7 , 0 );
setMoveKey( spep_3 + 280, 1, -682.7, -399.7 , 0 );--9
setMoveKey( spep_3 + 282, 1, -595.6, -339.1 , 0 );
setMoveKey( spep_3 + 284, 1, -510.9, -278.7 , 0 );
setMoveKey( spep_3 + 286, 1, -450.3, -236.3 , 0 );
setMoveKey( spep_3 + 288, 1, -382.5, -186.1 , 0 );
setMoveKey( spep_3 + 290, 1, -334.6, -155.8 , 0 );
setMoveKey( spep_3 + 292, 1, -282.7, -114 , 0 );
setMoveKey( spep_3 + 294, 1, -258.9, -103.6 , 0 );
setMoveKey( spep_3 + 296, 1, -215.9, -67 , 0 );
setMoveKey( spep_3 + 298, 1, -208.5, -66 , 0 );
setMoveKey( spep_3 + 300, 1, -184.9, -45.3 , 0 );
setMoveKey( spep_3 + 302, 1, -191.6, -53.7 , 0 );
setMoveKey( spep_3 + 304, 1, -183.4, -44.1 , 0 );
setMoveKey( spep_3 + 306, 1, -162.7, -34.5 , 0 );
setMoveKey( spep_3 + 308, 1, -166.8, -33 , 0 );
setMoveKey( spep_3 + 310, 1, -145.9, -22.3 , 0 );
setMoveKey( spep_3 + 312, 1, -149.8, -20.2 , 0 );
setMoveKey( spep_3 + 314, 1, -129.9, -10.3 , 0 );
setMoveKey( spep_3 + 316, 1, -137, -10.4 , 0 );
setMoveKey( spep_3 + 318, 1, -116.2, 1.6 , 0 );
setMoveKey( spep_3 + 320, 1, -118.9, -1.8 , 0 );
setMoveKey( spep_3 + 322, 1, -104.3, 12.7 , 0 );
setMoveKey( spep_3 + 324, 1, -103.9, 6.7 , 0 );
setMoveKey( spep_3 + 326, 1, -95.3, 18.2 , 0 );
setMoveKey( spep_3 + 328, 1, -98.3, 12.3 , 0 );
setMoveKey( spep_3 + 330, 1, -85, 22.7 , 0 );
setMoveKey( spep_3 + 332, 1, -87.7, 19.1 , 0 );
setMoveKey( spep_3 + 334, 1, -80.1, 24.6 , 0 );
setMoveKey( spep_3 + 336, 1, -78.7, 26.6 , 0 );
setMoveKey( spep_3 + 338, 1, -69.1, 32.1 , 0 );
setMoveKey( spep_3 + 340, 1, -77.5, 30.7 , 0 );
setMoveKey( spep_3 + 342, 1, -62.4, 37.4 , 0 );
setMoveKey( spep_3 + 344, 1, -73.9, 28.5 , 0 );
setMoveKey( spep_3 + 346, 1, -60.6, 42.1 , 0 );
setMoveKey( spep_3 + 348, 1, -66.9, 32 , 0 );
setMoveKey( spep_3 + 350, 1, -59.5, 38.1 , 0 );
setMoveKey( spep_3 + 352, 1, -65.8, 31.6 , 0 );
setMoveKey( spep_3 + 354, 1, -62.7, 36.6 , 0 );
setMoveKey( spep_3 + 356, 1, -63.8, 31.3 , 0 );
setMoveKey( spep_3 + 358, 1, -53.1, 42.8 , 0 );
setMoveKey( spep_3 + 360, 1, -61.9, 33.8 , 0 );
setMoveKey( spep_3 + 362, 1, -47, 44.7 , 0 );
setMoveKey( spep_3 + 364, 1, -50.3, 41.8 , 0 );
setMoveKey( spep_3 + 366, 1, -34.5, 53.2 , 0 );
setMoveKey( spep_3 + 368, 1, -40.5, 48.3 , 0 );
setMoveKey( spep_3 + 370, 1, -20.5, 63 , 0 );
setMoveKey( spep_3 + 372, 1, -22.5, 61 , 0 );
setMoveKey( spep_3 + 374, 1, -4.4, 74.3 , 0 );
setMoveKey( spep_3 + 376, 1, -1.5, 76.1 , 0 );
setMoveKey( spep_3 + 378, 1, 8.3, 83.1 , 0 );
setMoveKey( spep_3 + 379, 1, -122.1, 85.2 , 0 );
setMoveKey( spep_3 + 380, 1, -122.1, 85.2 , 0 );--10
setMoveKey( spep_3 + 382, 1, -90.7, 73.8 , 0 );
setMoveKey( spep_3 + 384, 1, -113.4, 83.5 , 0 );
setMoveKey( spep_3 + 386, 1, -105.9, 65.9 , 0 );
setMoveKey( spep_3 + 388, 1, -111.9, 79.9 , 0 );
setMoveKey( spep_3 + 390, 1, -112.5, 65.5 , 0 );
setMoveKey( spep_3 + 392, 1, -106.3, 75.5 , 0 );
setMoveKey( spep_3 + 394, 1, -114.2, 64.5 , 0 );
setMoveKey( spep_3 + 396, 1, -111.9, 73.7 , 0 );
setMoveKey( spep_3 + 398, 1, -110, 62.5 , 0 );
setMoveKey( spep_3 + 400, 1, -112.2, 70.9 , 0 );
setMoveKey( spep_3 + 402, 1, -108.9, 63 , 0 );
setMoveKey( spep_3 + 404, 1, -116.1, 67.2 , 0 );
setMoveKey( spep_3 + 406, 1, -109.4, 64.9 , 0 );
setMoveKey( spep_3 + 408, 1, -115.8, 66.7 , 0 );
setMoveKey( spep_3 + 410, 1, -109.7, 63.5 , 0 );
setMoveKey( spep_3 + 412, 1, -192.1, 26.5 , 0 );
setMoveKey( spep_3 + 414, 1, -215, 14.8 , 0 );
setMoveKey( spep_3 + 416, 1, -228.2, 7.2 , 0 );
setMoveKey( spep_3 + 418, 1, -236.7, 1.9 , 0 );
setMoveKey( spep_3 + 420, 1, -242.2, -2.1 , 0 );
setMoveKey( spep_3 + 422, 1, -245.9, -5.2 , 0 );
setMoveKey( spep_3 + 424, 1, -248.1, -7.5 , 0 );
setMoveKey( spep_3 + 426, 1, -249.4, -9.4 , 0 );
setMoveKey( spep_3 + 428, 1, -250.1, -10.8 , 0 );
setMoveKey( spep_3 + 430, 1, -250.1, -11.9 , 0 );
setMoveKey( spep_3 + 432, 1, -249.9, -12.7 , 0 );
setMoveKey( spep_3 + 434, 1, -249.4, -13.3 , 0 );
setMoveKey( spep_3 + 436, 1, -248.8, -13.7 , 0 );
setMoveKey( spep_3 + 438, 1, -248.1, -14 , 0 );
--setMoveKey( spep_3 + 440, 1, -247.3, -14.2 , 0 );
--setMoveKey( spep_3 + 442, 1, -246.6, -14.3 , 0 );
--setMoveKey( spep_3 + 444, 1, -246, -14.3 , 0 );
--setMoveKey( spep_3 + 446, 1, -245.6, -14.2 , 0 );
--setMoveKey( spep_3 + 448, 1, -245.3, -14.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 2, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 6, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 12, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 16, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 19, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 20, 1, 1.64, 1.64 );--1
setScaleKey( spep_3 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 32, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 34, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 40, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 44, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 50, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 56, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 67, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 68, 1, 1.22, 1.22 );--2
setScaleKey( spep_3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 72, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 74, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 86, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 87, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 88, 1, 1.28, 1.28 );--3
setScaleKey( spep_3 + 90, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 92, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 94, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 96, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 102, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 103, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 104, 1, 1.23, 1.23 );--4
setScaleKey( spep_3 + 106, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 110, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 112, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 124, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 125, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 126, 1, 1.09, 1.09 );--5
setScaleKey( spep_3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 130, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 132, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 134, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 136, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 139, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 140, 1, 1.26, 1.26 );--6
setScaleKey( spep_3 + 142, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 144, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 146, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 148, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 154, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 156, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 158, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 160, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 162, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 164, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 168, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 169, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 170, 1, 1.07, 1.07 );--7
setScaleKey( spep_3 + 172, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 174, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 176, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 178, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 180, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 214, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 215, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 216, 1, 1.6, 1.6 );--8
setScaleKey( spep_3 + 218, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 220, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 222, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 224, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 226, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 228, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 230, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 232, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 234, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 236, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 238, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 240, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 242, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 250, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 252, 1, 1.13, 1.07 );
setScaleKey( spep_3 + 254, 1, 1.17, 1.06 );
setScaleKey( spep_3 + 256, 1, 1.21, 1.04 );
setScaleKey( spep_3 + 258, 1, 1.24, 1.03 );
setScaleKey( spep_3 + 260, 1, 1.27, 1.02 );
setScaleKey( spep_3 + 262, 1, 1.3, 1.01 );
setScaleKey( spep_3 + 264, 1, 1.32, 1 );
setScaleKey( spep_3 + 266, 1, 1.34, 0.99 );
setScaleKey( spep_3 + 268, 1, 1.36, 0.98 );
setScaleKey( spep_3 + 270, 1, 1.38, 0.98 );
setScaleKey( spep_3 + 272, 1, 1.39, 0.97 );
setScaleKey( spep_3 + 274, 1, 1.4, 0.97 );
setScaleKey( spep_3 + 278, 1, 1.4, 0.97 );
setScaleKey( spep_3 + 279, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 280, 1, 1.45, 1.45 );--9
setScaleKey( spep_3 + 308, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 310, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 314, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 316, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 318, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 320, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 322, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 324, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 326, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 328, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 330, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 332, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 340, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 342, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 344, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 346, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 348, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 350, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 352, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 354, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 356, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 358, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 360, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 362, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 364, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 366, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 368, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 370, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 372, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 374, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 376, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 378, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 379, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 380, 1, 1.87, 1.87 );--10
setScaleKey( spep_3 + 382, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 384, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 386, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 388, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 390, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 392, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 394, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 396, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 398, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 400, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 402, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 404, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 406, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 410, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 412, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 414, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 416, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 418, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 420, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 422, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 424, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 426, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 428, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 430, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 432, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 434, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 436, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 438, 1, 0.7, 0.7 );
--setScaleKey( spep_3 + 440, 1, 0.69, 0.69 );

setRotateKey( spep_3 + 0, 1, -12 );
setRotateKey( spep_3 + 18, 1, -12 );
setRotateKey( spep_3 + 19, 1, -49.5 );
setRotateKey( spep_3 + 20, 1, -49.5 );--1
setRotateKey( spep_3 + 32, 1, -49.5 );
setRotateKey( spep_3 + 34, 1, -47.6 );
setRotateKey( spep_3 + 36, 1, -47.2 );
setRotateKey( spep_3 + 38, 1, -47 );
setRotateKey( spep_3 + 42, 1, -47 );
setRotateKey( spep_3 + 44, 1, -44 );
setRotateKey( spep_3 + 56, 1, -44 );
setRotateKey( spep_3 + 58, 1, -35.5 );
setRotateKey( spep_3 + 60, 1, -33.6 );
setRotateKey( spep_3 + 62, 1, -32.7 );
setRotateKey( spep_3 + 64, 1, -32.3 );
setRotateKey( spep_3 + 66, 1, -32.3 );
setRotateKey( spep_3 + 67, 1, -46 );
setRotateKey( spep_3 + 68, 1, -46 );--2
setRotateKey( spep_3 + 70, 1, -43.8 );
setRotateKey( spep_3 + 72, 1, -41.9 );
setRotateKey( spep_3 + 74, 1, -40.3 );
setRotateKey( spep_3 + 76, 1, -38.9 );
setRotateKey( spep_3 + 78, 1, -37.7 );
setRotateKey( spep_3 + 80, 1, -36.8 );
setRotateKey( spep_3 + 82, 1, -36.2 );
setRotateKey( spep_3 + 84, 1, -35.8 );
setRotateKey( spep_3 + 86, 1, -35.7 );
setRotateKey( spep_3 + 87, 1, -35.7 );
setRotateKey( spep_3 + 88, 1, -35.7 );--3
setRotateKey( spep_3 + 90, 1, -33.5 );
setRotateKey( spep_3 + 92, 1, -32.9 );
setRotateKey( spep_3 + 94, 1, -32.6 );
setRotateKey( spep_3 + 96, 1, -32.4 );
setRotateKey( spep_3 + 98, 1, -32.3 );
setRotateKey( spep_3 + 100, 1, -32.2 );
setRotateKey( spep_3 + 102, 1, -32.2 );
setRotateKey( spep_3 + 103, 1, 3.5 );
setRotateKey( spep_3 + 104, 1, 3.5 );--4
setRotateKey( spep_3 + 106, 1, 2 );
setRotateKey( spep_3 + 108, 1, 1.5 );
setRotateKey( spep_3 + 110, 1, 1.2 );
setRotateKey( spep_3 + 112, 1, 1 );
setRotateKey( spep_3 + 114, 1, 0.9 );
setRotateKey( spep_3 + 116, 1, 0.8 );
setRotateKey( spep_3 + 118, 1, 0.8 );
setRotateKey( spep_3 + 120, 1, 0.7 );
setRotateKey( spep_3 + 124, 1, 0.7 );
setRotateKey( spep_3 + 125, 1, -37.5 );
setRotateKey( spep_3 + 126, 1, -37.5 );--5
setRotateKey( spep_3 + 128, 1, -37 );
setRotateKey( spep_3 + 130, 1, -36.8 );
setRotateKey( spep_3 + 132, 1, -36.8 );
setRotateKey( spep_3 + 134, 1, -36.7 );
setRotateKey( spep_3 + 139, 1, -36.7 );
setRotateKey( spep_3 + 140, 1, -36.7 );--6
setRotateKey( spep_3 + 142, 1, -36.5 );
setRotateKey( spep_3 + 154, 1, -36.5 );
setRotateKey( spep_3 + 156, 1, -36.4 );
setRotateKey( spep_3 + 158, 1, -33.4 );
setRotateKey( spep_3 + 160, 1, -32.6 );
setRotateKey( spep_3 + 162, 1, -32.2 );
setRotateKey( spep_3 + 164, 1, -32 );
setRotateKey( spep_3 + 166, 1, -32 );
setRotateKey( spep_3 + 168, 1, -31.9 );
setRotateKey( spep_3 + 169, 1, -48.2 );
setRotateKey( spep_3 + 170, 1, -48.2 );--7
setRotateKey( spep_3 + 172, 1, -44.5 );
setRotateKey( spep_3 + 174, 1, -43.2 );
setRotateKey( spep_3 + 176, 1, -42.4 );
setRotateKey( spep_3 + 178, 1, -41.7 );
setRotateKey( spep_3 + 180, 1, -41.2 );
setRotateKey( spep_3 + 182, 1, -40.8 );
setRotateKey( spep_3 + 184, 1, -40.4 );
setRotateKey( spep_3 + 186, 1, -40.1 );
setRotateKey( spep_3 + 188, 1, -39.9 );
setRotateKey( spep_3 + 190, 1, -39.7 );
setRotateKey( spep_3 + 192, 1, -39.5 );
setRotateKey( spep_3 + 194, 1, -39.4 );
setRotateKey( spep_3 + 196, 1, -39.3 );
setRotateKey( spep_3 + 198, 1, -39.2 );
setRotateKey( spep_3 + 200, 1, -39.1 );
setRotateKey( spep_3 + 202, 1, -39 );
setRotateKey( spep_3 + 206, 1, -39 );
setRotateKey( spep_3 + 208, 1, -38.9 );
setRotateKey( spep_3 + 214, 1, -38.9 );
setRotateKey( spep_3 + 215, 1, -38.7 );
setRotateKey( spep_3 + 216, 1, -38.7 );--8
setRotateKey( spep_3 + 218, 1, -38.8 );
setRotateKey( spep_3 + 220, 1, -38.8 );
setRotateKey( spep_3 + 222, 1, -38.9 );
setRotateKey( spep_3 + 224, 1, -38.9 );
setRotateKey( spep_3 + 226, 1, -39 );
setRotateKey( spep_3 + 230, 1, -39 );
setRotateKey( spep_3 + 232, 1, -39.1 );
setRotateKey( spep_3 + 238, 1, -39.1 );
setRotateKey( spep_3 + 240, 1, -39.2 );
setRotateKey( spep_3 + 250, 1, -39.2 );
setRotateKey( spep_3 + 252, 1, -37.2 );
setRotateKey( spep_3 + 254, 1, -35.4 );
setRotateKey( spep_3 + 256, 1, -33.7 );
setRotateKey( spep_3 + 258, 1, -32.2 );
setRotateKey( spep_3 + 260, 1, -30.8 );
setRotateKey( spep_3 + 262, 1, -29.6 );
setRotateKey( spep_3 + 264, 1, -28.5 );
setRotateKey( spep_3 + 266, 1, -27.5 );
setRotateKey( spep_3 + 268, 1, -26.7 );
setRotateKey( spep_3 + 270, 1, -26.1 );
setRotateKey( spep_3 + 272, 1, -25.6 );
setRotateKey( spep_3 + 274, 1, -25.2 );
setRotateKey( spep_3 + 276, 1, -25 );
setRotateKey( spep_3 + 278, 1, -24.9 );
setRotateKey( spep_3 + 279, 1, -37 );
setRotateKey( spep_3 + 280, 1, -37 );--9
setRotateKey( spep_3 + 378, 1, -37 );
setRotateKey( spep_3 + 379, 1, -8.7 );
setRotateKey( spep_3 + 380, 1, -8.7 );--10
setRotateKey( spep_3 + 382, 1, -8.8 );
setRotateKey( spep_3 + 384, 1, -8.8 );
setRotateKey( spep_3 + 386, 1, -8.9 );
setRotateKey( spep_3 + 388, 1, -9 );
setRotateKey( spep_3 + 390, 1, -9 );
setRotateKey( spep_3 + 392, 1, -9.1 );
setRotateKey( spep_3 + 394, 1, -9.1 );
setRotateKey( spep_3 + 396, 1, -9.2 );
setRotateKey( spep_3 + 400, 1, -9.2 );
setRotateKey( spep_3 + 402, 1, -9.3 );
setRotateKey( spep_3 + 410, 1, -9.3 );
setRotateKey( spep_3 + 412, 1, -16.2 );
setRotateKey( spep_3 + 414, 1, -18.5 );
setRotateKey( spep_3 + 416, 1, -20 );
setRotateKey( spep_3 + 418, 1, -21.1 );
setRotateKey( spep_3 + 420, 1, -22 );
setRotateKey( spep_3 + 422, 1, -22.7 );
setRotateKey( spep_3 + 424, 1, -23.3 );
setRotateKey( spep_3 + 426, 1, -23.8 );
setRotateKey( spep_3 + 428, 1, -24.2 );
setRotateKey( spep_3 + 430, 1, -24.5 );
setRotateKey( spep_3 + 432, 1, -24.7 );
setRotateKey( spep_3 + 434, 1, -24.9 );
setRotateKey( spep_3 + 436, 1, -25.1 );
setRotateKey( spep_3 + 438, 1, -25.2 );
--setRotateKey( spep_3 + 440, 1, -25.3 );

--***書き文字ドン***
ct_don = entryEffectLife( spep_3 + 19, 10019, 17, 0x100, -1, 0, 13.8, 227.6 );--ドン

setEffShake(  spep_3 + 19,  ct_don,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 19, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_3 + 22, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_3 + 24, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_3 + 26, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_3 + 28, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_3 + 30, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_3 + 32, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_3 + 34, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_3 + 36, ct_don, -13.1, 275.1 , 0 );

setEffScaleKey( spep_3 + 19, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_3 + 22, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_3 + 24, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_3 + 26, ct_don, 2, 2 );
setEffScaleKey( spep_3 + 28, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_3 + 30, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_3 + 32, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_3 + 34, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_3 + 36, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_3 + 19, ct_don, -0.8 );
setEffRotateKey( spep_3 + 22, ct_don, -0.2 );
setEffRotateKey( spep_3 + 24, ct_don, 0.3 );
setEffRotateKey( spep_3 + 36, ct_don, 0.3 );

setEffAlphaKey( spep_3 + 19, ct_don, 255 );
setEffAlphaKey( spep_3 + 30, ct_don, 255 );
setEffAlphaKey( spep_3 + 32, ct_don, 170 );
setEffAlphaKey( spep_3 + 34, ct_don, 85 );
setEffAlphaKey( spep_3 + 36, ct_don, 0 );

--***書き文字ガ***
ct_ga = entryEffectLife( spep_3 + 67, 10005, 17, 0x100, -1, 0, 140.1, 318.9 );--ガッ

setEffShake(  spep_3 + 67,  ct_ga,  17,  5);  --揺れ

setEffMoveKey( spep_3 + 67, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_3 + 70, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_3 + 72, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_3 + 74, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_3 + 76, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_3 + 78, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_3 + 80, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_3 + 82, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 84, ct_ga, 123.5, 350.7 , 0 );

setEffScaleKey( spep_3 + 67, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_3 + 70, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_3 + 72, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_3 + 74, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_3 + 76, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_3 + 78, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_3 + 80, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_3 + 82, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_3 + 84, ct_ga, 1.76, 1.76 );

setEffRotateKey( spep_3 + 67, ct_ga, 3 );
setEffRotateKey( spep_3 + 84, ct_ga, 3 );

setEffAlphaKey( spep_3 + 67, ct_ga, 255 );
setEffAlphaKey( spep_3 + 80, ct_ga, 255 );
setEffAlphaKey( spep_3 + 82, ct_ga, 64 );
setEffAlphaKey( spep_3 + 84, ct_ga, 0 );

--***書き文字バキ1***
ct_baki1 = entryEffectLife( spep_3 + 43, 10020, 19, 0x100, -1, 0, 200.5, 322.8 );

setEffShake(  spep_3 + 43,  ct_baki1,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 43, ct_baki1, 200.5, 322.8 , 0 );
setEffMoveKey( spep_3 + 46, ct_baki1, 198.9, 337.3 , 0 );
setEffMoveKey( spep_3 + 48, ct_baki1, 201, 337 , 0 );
setEffMoveKey( spep_3 + 50, ct_baki1, 199.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ct_baki1, 201.4, 342 , 0 );
setEffMoveKey( spep_3 + 54, ct_baki1, 197.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 56, ct_baki1, 208.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 58, ct_baki1, 201.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 60, ct_baki1, 212.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 62, ct_baki1, 216.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 43, ct_baki1, 1.58, 1.58 );
setEffScaleKey( spep_3 + 46, ct_baki1, 1.67, 1.67 );
setEffScaleKey( spep_3 + 48, ct_baki1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 50, ct_baki1, 1.77, 1.77 );
setEffScaleKey( spep_3 + 52, ct_baki1, 1.82, 1.82 );
setEffScaleKey( spep_3 + 54, ct_baki1, 1.86, 1.86 );
setEffScaleKey( spep_3 + 56, ct_baki1, 1.88, 1.88 );
setEffScaleKey( spep_3 + 58, ct_baki1, 1.89, 1.89 );
setEffScaleKey( spep_3 + 60, ct_baki1, 2.14, 2.14 );
setEffScaleKey( spep_3 + 62, ct_baki1, 2.22, 2.22 );

setEffRotateKey( spep_3 + 43, ct_baki1, 35.2 );
setEffRotateKey( spep_3 + 62, ct_baki1, 35.2 );

setEffAlphaKey( spep_3 + 43, ct_baki1, 255 );
setEffAlphaKey( spep_3 + 58, ct_baki1, 255 );
setEffAlphaKey( spep_3 + 60, ct_baki1, 64 );
setEffAlphaKey( spep_3 + 62, ct_baki1, 0 );

--***書き文字バキ2***

ct_baki2 = entryEffectLife( spep_3 + 87, 10020, 19, 0x100, -1, 0, 200.5, 323.2 );

setEffShake(  spep_3 + 87,  ct_baki2,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 87, ct_baki2, 200.5, 323.2 , 0 );
setEffMoveKey( spep_3 + 90, ct_baki2, 198.9, 337.4 , 0 );
setEffMoveKey( spep_3 + 92, ct_baki2, 201, 337 , 0 );
setEffMoveKey( spep_3 + 94, ct_baki2, 199.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 96, ct_baki2, 201.4, 342 , 0 );
setEffMoveKey( spep_3 + 98, ct_baki2, 197.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 100, ct_baki2, 208.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 102, ct_baki2, 201.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 104, ct_baki2, 212.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 106, ct_baki2, 216.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 87, ct_baki2, 1.58, 1.58 );
setEffScaleKey( spep_3 + 90, ct_baki2, 1.67, 1.67 );
setEffScaleKey( spep_3 + 92, ct_baki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 94, ct_baki2, 1.77, 1.77 );
setEffScaleKey( spep_3 + 96, ct_baki2, 1.82, 1.82 );
setEffScaleKey( spep_3 + 98, ct_baki2, 1.86, 1.86 );
setEffScaleKey( spep_3 + 100, ct_baki2, 1.88, 1.88 );
setEffScaleKey( spep_3 + 102, ct_baki2, 1.89, 1.89 );
setEffScaleKey( spep_3 + 104, ct_baki2, 2.14, 2.14 );
setEffScaleKey( spep_3 + 106, ct_baki2, 2.22, 2.22 );

setEffRotateKey( spep_3 + 87, ct_baki2, 35.2 );
setEffRotateKey( spep_3 + 106, ct_baki2, 35.2 );

setEffAlphaKey( spep_3 + 87, ct_baki2, 255 );
setEffAlphaKey( spep_3 + 102, ct_baki2, 255 );
setEffAlphaKey( spep_3 + 104, ct_baki2, 64 );
setEffAlphaKey( spep_3 + 106, ct_baki2, 0 );

--***書き文字ドガガガ***--バキ２よりプライオリティは下にする
ct_dogaga = entryEffectLife( spep_3 + 80, 10017, 98, 0x100, -1, 0, -138.3, 304 );

setEffShake(  spep_3 + 80,  ct_dogaga,  98,  5);  --揺れ

setEffMoveKey( spep_3 + 80, ct_dogaga, -138.3, 304 , 0 );
setEffMoveKey( spep_3 + 100, ct_dogaga, -138.3, 304 , 0 );
setEffMoveKey( spep_3 + 102, ct_dogaga, -115.1, 313.8 , 0 );
setEffMoveKey( spep_3 + 104, ct_dogaga, -72, 319.6 , 0 );
setEffMoveKey( spep_3 + 106, ct_dogaga, -55.2, 324.1 , 0 );
setEffMoveKey( spep_3 + 108, ct_dogaga, -59, 328 , 0 );
setEffMoveKey( spep_3 + 110, ct_dogaga, -39.5, 326.8 , 0 );
setEffMoveKey( spep_3 + 112, ct_dogaga, -56.8, 325.5 , 0 );
setEffMoveKey( spep_3 + 114, ct_dogaga, -44.7, 316.8 , 0 );
setEffMoveKey( spep_3 + 116, ct_dogaga, -57.9, 327.5 , 0 );
setEffMoveKey( spep_3 + 118, ct_dogaga, -37.9, 312.8 , 0 );
setEffMoveKey( spep_3 + 120, ct_dogaga, -50.3, 328.1 , 0 );
setEffMoveKey( spep_3 + 122, ct_dogaga, -34.1, 323.3 , 0 );
setEffMoveKey( spep_3 + 124, ct_dogaga, -43.6, 331.7 , 0 );
setEffMoveKey( spep_3 + 126, ct_dogaga, -32.6, 319.2 , 0 );
setEffMoveKey( spep_3 + 128, ct_dogaga, -32, 332.4 , 0 );
setEffMoveKey( spep_3 + 130, ct_dogaga, -35.1, 318.3 , 0 );
setEffMoveKey( spep_3 + 132, ct_dogaga, -29.5, 334.1 , 0 );
setEffMoveKey( spep_3 + 134, ct_dogaga, -39.6, 317.5 , 0 );
setEffMoveKey( spep_3 + 136, ct_dogaga, -18.5, 328.4 , 0 );
setEffMoveKey( spep_3 + 138, ct_dogaga, -33.6, 322.9 , 0 );
setEffMoveKey( spep_3 + 140, ct_dogaga, -16.3, 328.7 , 0 );
setEffMoveKey( spep_3 + 142, ct_dogaga, -25.6, 316.1 , 0 );
setEffMoveKey( spep_3 + 144, ct_dogaga, -12.6, 328.9 , 0 );
setEffMoveKey( spep_3 + 146, ct_dogaga, -29.3, 325 , 0 );
setEffMoveKey( spep_3 + 148, ct_dogaga, -11.3, 330.5 , 0 );
setEffMoveKey( spep_3 + 150, ct_dogaga, -18.6, 316.8 , 0 );
setEffMoveKey( spep_3 + 152, ct_dogaga, -9.2, 334.7 , 0 );
setEffMoveKey( spep_3 + 154, ct_dogaga, -19.8, 316.2 , 0 );
setEffMoveKey( spep_3 + 156, ct_dogaga, 0.6, 327.8 , 0 );
setEffMoveKey( spep_3 + 158, ct_dogaga, -19.9, 325.7 , 0 );
setEffMoveKey( spep_3 + 160, ct_dogaga, 3.1, 323.6 , 0 );
setEffMoveKey( spep_3 + 162, ct_dogaga, -12.2, 329.8 , 0 );
setEffMoveKey( spep_3 + 164, ct_dogaga, 0, 318.7 , 0 );
setEffMoveKey( spep_3 + 166, ct_dogaga, -0.9, 327.8 , 0 );
setEffMoveKey( spep_3 + 168, ct_dogaga, -5, 331.9 , 0 );
setEffMoveKey( spep_3 + 170, ct_dogaga, 15.5, 330.6 , 0 );
setEffMoveKey( spep_3 + 172, ct_dogaga, 9, 336.1 , 0 );
setEffMoveKey( spep_3 + 174, ct_dogaga, -2, 327.9 , 0 );
setEffMoveKey( spep_3 + 176, ct_dogaga, 19.1, 350.8 , 0 );
setEffMoveKey( spep_3 + 178, ct_dogaga, 21.1, 361.8 , 0 );

setEffScaleKey( spep_3 + 80, ct_dogaga, 1.92, 1.92 );
setEffScaleKey( spep_3 + 100, ct_dogaga, 1.92, 1.92 );
setEffScaleKey( spep_3 + 102, ct_dogaga, 2.18, 2.18 );
setEffScaleKey( spep_3 + 104, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 106, ct_dogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 108, ct_dogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 110, ct_dogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 112, ct_dogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 114, ct_dogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 116, ct_dogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 118, ct_dogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 120, ct_dogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 122, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 + 124, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 + 126, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 128, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 130, ct_dogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 132, ct_dogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 134, ct_dogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 136, ct_dogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 138, ct_dogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 140, ct_dogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 142, ct_dogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 144, ct_dogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 146, ct_dogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 148, ct_dogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 150, ct_dogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 152, ct_dogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 154, ct_dogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 156, ct_dogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 158, ct_dogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 + 160, ct_dogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 + 162, ct_dogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 164, ct_dogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 166, ct_dogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 168, ct_dogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 170, ct_dogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 172, ct_dogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 174, ct_dogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 + 176, ct_dogaga, 2.98, 2.98 );
setEffScaleKey( spep_3 + 178, ct_dogaga, 3.04, 3.04 );

setEffRotateKey( spep_3 + 80, ct_dogaga, 10.5 );
setEffRotateKey( spep_3 + 178, ct_dogaga, 10.5 );

setEffAlphaKey( spep_3 + 80, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 98, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 99, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 100, ct_dogaga, 255 );
setEffAlphaKey( spep_3 + 172, ct_dogaga, 255 );
setEffAlphaKey( spep_3 + 174, ct_dogaga, 170 );
setEffAlphaKey( spep_3 + 176, ct_dogaga, 85 );
setEffAlphaKey( spep_3 + 178, ct_dogaga, 0 );

--***書き文字バキ3***

ct_baki3 = entryEffectLife( spep_3 + 215, 10020, 19, 0x100, -1, 0, 200.5, 323.2 );

setEffShake(  spep_3 + 215,  ct_baki3,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 215, ct_baki3, 200.5, 323.2 , 0 );
setEffMoveKey( spep_3 + 218, ct_baki3, 198.9, 337.4 , 0 );
setEffMoveKey( spep_3 + 220, ct_baki3, 201, 337 , 0 );
setEffMoveKey( spep_3 + 222, ct_baki3, 199.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 224, ct_baki3, 201.4, 342 , 0 );
setEffMoveKey( spep_3 + 226, ct_baki3, 197.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 228, ct_baki3, 208.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 230, ct_baki3, 201.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 232, ct_baki3, 212.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 234, ct_baki3, 216.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 215, ct_baki3, 1.58, 1.58 );
setEffScaleKey( spep_3 + 218, ct_baki3, 1.67, 1.67 );
setEffScaleKey( spep_3 + 220, ct_baki3, 1.7, 1.7 );
setEffScaleKey( spep_3 + 222, ct_baki3, 1.77, 1.77 );
setEffScaleKey( spep_3 + 224, ct_baki3, 1.82, 1.82 );
setEffScaleKey( spep_3 + 226, ct_baki3, 1.86, 1.86 );
setEffScaleKey( spep_3 + 228, ct_baki3, 1.88, 1.88 );
setEffScaleKey( spep_3 + 230, ct_baki3, 1.89, 1.89 );
setEffScaleKey( spep_3 + 232, ct_baki3, 2.14, 2.14 );
setEffScaleKey( spep_3 + 234, ct_baki3, 2.22, 2.22 );

setEffRotateKey( spep_3 + 215, ct_baki3, 35.2 );
setEffRotateKey( spep_3 + 234, ct_baki3, 35.2 );

setEffAlphaKey( spep_3 + 215, ct_baki3, 255 );
setEffAlphaKey( spep_3 + 230, ct_baki3, 255 );
setEffAlphaKey( spep_3 + 232, ct_baki3, 64 );
setEffAlphaKey( spep_3 + 234, ct_baki3, 0 );

--***書き文字シュン1***
ct_shun1 = entryEffectLife( spep_3 + 263, 10011, 15, 0x100, -1, 0, -187.3, 120.4 );

setEffMoveKey( spep_3 + 263, ct_shun1, -187.3, 120.4 , 0 );
setEffMoveKey( spep_3 + 266, ct_shun1, -193.3, 125.8 , 0 );
setEffMoveKey( spep_3 + 268, ct_shun1, -196.9, 129.1 , 0 );
setEffMoveKey( spep_3 + 270, ct_shun1, -198.2, 130.2 , 0 );
setEffMoveKey( spep_3 + 278, ct_shun1, -198.2, 130.2 , 0 );

setEffScaleKey( spep_3 + 263, ct_shun1, 0.6, 0.6 );
setEffScaleKey( spep_3 + 266, ct_shun1, 0.92, 0.92 );
setEffScaleKey( spep_3 + 268, ct_shun1, 1.11, 1.11 );
setEffScaleKey( spep_3 + 270, ct_shun1, 1.17, 1.17 );
setEffScaleKey( spep_3 + 272, ct_shun1, 1.18, 1.18 );
setEffScaleKey( spep_3 + 274, ct_shun1, 1.21, 1.21 );
setEffScaleKey( spep_3 + 276, ct_shun1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 278, ct_shun1, 1.31, 1.31 );

setEffRotateKey( spep_3 + 263, ct_shun1, -14.2 );
setEffRotateKey( spep_3 + 278, ct_shun1, -14.2 );

setEffAlphaKey( spep_3 + 263, ct_shun1, 255 );
setEffAlphaKey( spep_3 + 270, ct_shun1, 255 );
setEffAlphaKey( spep_3 + 272, ct_shun1, 239 );
setEffAlphaKey( spep_3 + 274, ct_shun1, 191 );
setEffAlphaKey( spep_3 + 276, ct_shun1, 112 );
setEffAlphaKey( spep_3 + 278, ct_shun1, 0 );

--***書き文字シュン2***
ct_shun2 = entryEffectLife( spep_3 + 341, 10011, 15, 0x100, -1, 0, 200.9, 265.3 );

setEffMoveKey( spep_3 + 341, ct_shun2, 200.9, 265.3 , 0 );
setEffMoveKey( spep_3 + 344, ct_shun2, 196.9, 272.5 , 0 );
setEffMoveKey( spep_3 + 346, ct_shun2, 194.6, 276.8 , 0 );
setEffMoveKey( spep_3 + 348, ct_shun2, 193.8, 278.2 , 0 );
setEffMoveKey( spep_3 + 354, ct_shun2, 193.8, 278.2 , 0 );
setEffMoveKey( spep_3 + 356, ct_shun2, 193.8, 278.3 , 0 );

setEffScaleKey( spep_3 + 341, ct_shun2, 0.6, 0.6 );
setEffScaleKey( spep_3 + 344, ct_shun2, 0.92, 0.92 );
setEffScaleKey( spep_3 + 346, ct_shun2, 1.11, 1.11 );
setEffScaleKey( spep_3 + 348, ct_shun2, 1.17, 1.17 );
setEffScaleKey( spep_3 + 350, ct_shun2, 1.18, 1.18 );
setEffScaleKey( spep_3 + 352, ct_shun2, 1.21, 1.21 );
setEffScaleKey( spep_3 + 354, ct_shun2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 356, ct_shun2, 1.31, 1.31 );

setEffRotateKey( spep_3 + 341, ct_shun2, 4.7 );
setEffRotateKey( spep_3 + 356, ct_shun2, 4.7 );

setEffAlphaKey( spep_3 + 341, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 348, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 350, ct_shun2, 239 );
setEffAlphaKey( spep_3 + 352, ct_shun2, 191 );
setEffAlphaKey( spep_3 + 354, ct_shun2, 112 );
setEffAlphaKey( spep_3 + 356, ct_shun2, 0 );

--***書き文字バゴ***
ct_bago = entryEffectLife( spep_3 + 380, 10021, 22, 0x100, -1, 0, 39.7, 241.5 );

setEffShake(  spep_3 + 380,  ct_bago,  22,  5);  --揺れ

setEffMoveKey( spep_3 + 380, ct_bago, 39.7, 241.5 , 0 );
setEffMoveKey( spep_3 + 382, ct_bago, 14.6, 280.6 , 0 );
setEffMoveKey( spep_3 + 384, ct_bago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_3 + 386, ct_bago, 6.4, 298.3 , 0 );
setEffMoveKey( spep_3 + 388, ct_bago, 18, 317.8 , 0 );
setEffMoveKey( spep_3 + 390, ct_bago, 6.4, 309.6 , 0 );
setEffMoveKey( spep_3 + 392, ct_bago, 20.3, 313.2 , 0 );
setEffMoveKey( spep_3 + 394, ct_bago, 2.5, 319.8 , 0 );
setEffMoveKey( spep_3 + 396, ct_bago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_3 + 398, ct_bago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_3 + 400, ct_bago, 14, 341.4 , 0 );
setEffMoveKey( spep_3 + 402, ct_bago, 11.5, 356.3 , 0 );

setEffScaleKey( spep_3 + 380, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_3 + 382, ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_3 + 384, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_3 + 386, ct_bago, 2.56, 2.56 );
setEffScaleKey( spep_3 + 388, ct_bago, 2.59, 2.59 );
setEffScaleKey( spep_3 + 390, ct_bago, 2.62, 2.62 );
setEffScaleKey( spep_3 + 392, ct_bago, 2.64, 2.64 );
setEffScaleKey( spep_3 + 394, ct_bago, 2.67, 2.67 );
setEffScaleKey( spep_3 + 396, ct_bago, 2.7, 2.7 );
setEffScaleKey( spep_3 + 398, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_3 + 400, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_3 + 402, ct_bago, 2.96, 2.96 );

setEffRotateKey( spep_3 + 380, ct_bago, -11.7 );
setEffRotateKey( spep_3 + 382, ct_bago, -14.6 );
setEffRotateKey( spep_3 + 384, ct_bago, -15.6 );
setEffRotateKey( spep_3 + 402, ct_bago, -15.6 );

setEffAlphaKey( spep_3 + 380, ct_bago, 255 );
setEffAlphaKey( spep_3 + 396, ct_bago, 255 );
setEffAlphaKey( spep_3 + 398, ct_bago, 227 );
setEffAlphaKey( spep_3 + 400, ct_bago, 142 );
setEffAlphaKey( spep_3 + 402, ct_bago, 0 );

--***集中線2***
shuchusen3a = entryEffectLife(  spep_3+380,  906,  60,  0x100,  -1,  0,  0,  0);

setEffRotateKey(  spep_3+380, shuchusen3a,  0);--固定のまま
setEffRotateKey(  spep_3+440, shuchusen3a,  0);--固定のまま

setEffAlphaKey(  spep_3+380,  shuchusen3a,  255);--固定のまま
setEffAlphaKey(  spep_3+440,  shuchusen3a,  255);--固定のまま

setEffScaleKey(  spep_3+380,  shuchusen3a,  3,  1.6);
setEffScaleKey(  spep_3+440,  shuchusen3a,  3,  1.6);

setEffMoveKey(  spep_3+380,  shuchusen3a,  -310,  0);
setEffMoveKey(  spep_3+440,  shuchusen3a,  -310,  0);

--***SE***
playSe( spep_3+19, 1002);--ドン
playSe( spep_3+43, 1001);--バキ
playSe( spep_3+67, 1000);--ガ
playSe( spep_3+87, 1007);--バキ
playSe( spep_3+103, 1001);--どガガガ
playSe( spep_3+125, 1000);--どガガガ
playSe( spep_3+139, 1007);--どガガガ
playSe( spep_3+155, 1001);--どガガガ
playSe( spep_3+169, 1009);--どガガガ
playSe( spep_3+215, 1010);--バキ
playSe( spep_3+263, 43);--しゅん
playSe( spep_3+341, 43);--しゅん
playSe( spep_3+380, 1011);--ばご

------------------------------------------------------
-- 突進(120F)
------------------------------------------------------
spep_4 = spep_3+440;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- しっかり白

--***突進**+2
toshhin = entryEffect(  spep_4+2,  SP_04,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4+2,  toshhin,  1.05,  1.05);
setEffScaleKey(  spep_4+120,  toshhin,  1.05,  1.05);
setEffMoveKey(  spep_4+2,  toshhin,  0,  0);
setEffMoveKey(  spep_4+120,  toshhin,  0,  0);
setEffRotateKey(  spep_4+2,  toshhin,  0);
setEffRotateKey(  spep_4+120,  toshhin,  0);
setEffAlphaKey(  spep_4+2,  toshhin,  255);
setEffAlphaKey(  spep_4+120,  toshhin,  255);
setEffAlphaKey(  spep_4+121,  toshhin,  0);
setEffAlphaKey(  spep_4+122,  toshhin,  0);

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  120,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.4,  1.4);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4, shuchusen4,  0);
setEffRotateKey(  spep_4+120, shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 38, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 0, -185.7 , 0 );
setMoveKey( spep_4 + 2, 1, 0.2, -204.8 , 0 );
setMoveKey( spep_4 + 4, 1, 0.4, -225.9 , 0 );
setMoveKey( spep_4 + 6, 1, 0.7, -249.1 , 0 );
setMoveKey( spep_4 + 8, 1, 0.9, -274.9 , 0 );
setMoveKey( spep_4 + 10, 1, 1.2, -303.4 , 0 );
setMoveKey( spep_4 + 12, 1, 1.6, -335.1 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, -370.5 , 0 );
setMoveKey( spep_4 + 16, 1, 2.3, -410.1 , 0 );
setMoveKey( spep_4 + 18, 1, 2.8, -454.4 , 0 );
setMoveKey( spep_4 + 20, 1, 3.3, -504.1 , 0 );
setMoveKey( spep_4 + 22, 1, 3.9, -560.2 , 0 );
setMoveKey( spep_4 + 24, 1, 4.5, -623.4 , 0 );
setMoveKey( spep_4 + 26, 1, 5.3, -695.2 , 0 );
setMoveKey( spep_4 + 28, 1, 6.1, -776.9 , 0 );
setMoveKey( spep_4 + 30, 1, 7.1, -870.5 , 0 );
setMoveKey( spep_4 + 32, 1, 8.2, -978.3 , 0 );
setMoveKey( spep_4 + 34, 1, 9.5, -1103.7 , 0 );
setMoveKey( spep_4 + 36, 1, 11, -1251.1 , 0 );
setMoveKey( spep_4 + 38, 1, 12.9, -1427.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 2, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 4, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 6, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 8, 1, 1, 1 );
setScaleKey( spep_4 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 24, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 26, 1, 2, 2 );
setScaleKey( spep_4 + 28, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 30, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 32, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 34, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 38, 1, 2.43, 2.43 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 0.8 );
setRotateKey( spep_4 + 4, 1, 1.6 );
setRotateKey( spep_4 + 6, 1, 2.4 );
setRotateKey( spep_4 + 8, 1, 3.3 );
setRotateKey( spep_4 + 10, 1, 4.1 );
setRotateKey( spep_4 + 12, 1, 4.9 );
setRotateKey( spep_4 + 14, 1, 5.7 );
setRotateKey( spep_4 + 16, 1, 6.5 );
setRotateKey( spep_4 + 18, 1, 7.3 );
setRotateKey( spep_4 + 20, 1, 8.2 );
setRotateKey( spep_4 + 22, 1, 9 );
setRotateKey( spep_4 + 24, 1, 9.8 );
setRotateKey( spep_4 + 26, 1, 10.6 );
setRotateKey( spep_4 + 28, 1, 11.4 );
setRotateKey( spep_4 + 30, 1, 12.2 );
setRotateKey( spep_4 + 32, 1, 13 );
setRotateKey( spep_4 + 34, 1, 13.9 );
setRotateKey( spep_4 + 36, 1, 14.7 );
setRotateKey( spep_4 + 38, 1, 15.5 );

--***SE***
playSe( spep_4+4, 8);--突進のやつ
playSe( spep_4+70, 9);--突進のやつ

------------------------------------------------------
-- ヒット(170F)
------------------------------------------------------

spep_5 = spep_4+120;

--***フェードと背景***
entryFade( spep_5-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     --長い白
entryFade( spep_5+32, 0, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     --長い白

--***ラスト爆発前面***+2
BomFront = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --手前

setEffScaleKey(  spep_5,  BomFront,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  BomFront,  1.0,  1.0);
setEffMoveKey(  spep_5,  BomFront,  0,  0);
setEffMoveKey(  spep_5+180,  BomFront,  0,  0);
setEffRotateKey(  spep_5,  BomFront,  0);
setEffRotateKey(  spep_5+180,  BomFront,  0);
setEffAlphaKey(  spep_5,  BomFront,  255);
setEffAlphaKey(  spep_5+38,  BomFront,  255);
setEffAlphaKey(  spep_5+39,  BomFront,  0);
setEffAlphaKey(  spep_5+40,  BomFront,  0);

--***ラスト爆発背面***+2
BomBack = entryEffect(  spep_5,  SP_06,  0x80,  -1,  0,  0,  0);  --うしろ

setEffScaleKey(  spep_5,  BomBack,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  BomBack,  1.0,  1.0);
setEffMoveKey(  spep_5,  BomBack,  0,  0);
setEffMoveKey(  spep_5+180,  BomBack,  0,  0);
setEffRotateKey(  spep_5,  BomBack,  0);
setEffRotateKey(  spep_5+180,  BomBack,  0);
setEffAlphaKey(  spep_5,  BomBack,  255);
setEffAlphaKey(  spep_5+180,  BomBack,  255);

--***集中線***
shuchusen5 = entryEffectLife(  spep_5,  906,  180,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  2,  3);
setEffScaleKey(  spep_5+180,  shuchusen5,  2, 3);
setEffMoveKey(  spep_5,  shuchusen5,  100,  -350);
setEffMoveKey(  spep_5+180,  shuchusen5,  100,  -350);
setEffRotateKey(  spep_5, shuchusen5,  30);
setEffRotateKey(  spep_5+180, shuchusen5,  30);

setEffAlphaKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5+32,  shuchusen5,  0);
setEffAlphaKey(  spep_5+37,  shuchusen5,  0);
setEffAlphaKey(  spep_5+38,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 32, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5+3 + 0, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5+3 + 2, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5+3 + 4, 1, -114.3, 199 , 0 );
setMoveKey( spep_5+3 + 6, 1, -64.2, 162 , 0 );
setMoveKey( spep_5+3 + 8, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5+3 + 10, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5+3 + 12, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5+3 + 14, 1, 83.7, 11 , 0 );
setMoveKey( spep_5+3 + 16, 1, 109.1, -26 , 0 );
setMoveKey( spep_5+3 + 18, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5+3 + 20, 1, 149.2, -96 , 0 );
setMoveKey( spep_5+3 + 22, 1, 164.6, -129 , 0 );
setMoveKey( spep_5+3 + 24, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5+3 + 26, 1, 185, -190.5 , 0 );
setMoveKey( spep_5+3 + 28, 1, 190, -219.4 , 0 );
setMoveKey( spep_5+3 + 30, 1, 191.8, -246.9 , 0 );
setMoveKey( spep_5+3 + 32, 1, 190.7, -272.7 , 0 );
setMoveKey( spep_5+3 + 34, 1, 187.1, -296.5 , 0 );

--setMoveKey( spep_5+2 + 34, 1, 187.1, -296.5 , 0 );


--[[
setMoveKey( spep_5 , 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 2 , 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 3, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 4, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 5, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5 + 6, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5 + 7, 1, -114.3, 199 , 0 );
setMoveKey( spep_5 + 8, 1, -114.3, 199 , 0 );
setMoveKey( spep_5 + 9, 1, -64.2, 162 , 0 );
setMoveKey( spep_5 + 10, 1, -64.2, 162 , 0 );
setMoveKey( spep_5 + 11, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5 + 12, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5 + 13, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5 + 14, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5 + 15, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5 + 16, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5 + 17, 1, 83.7, 11 , 0 );
setMoveKey( spep_5 + 18, 1, 83.7, 11 , 0 );
setMoveKey( spep_5 + 19, 1, 109.1, -26 , 0 );
setMoveKey( spep_5 + 20, 1, 109.1, -26 , 0 );
setMoveKey( spep_5 + 21, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5 + 22, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5 + 23, 1, 149.2, -96 , 0 );
setMoveKey( spep_5 + 24, 1, 149.2, -96 , 0 );
setMoveKey( spep_5 + 25, 1, 164.6, -129 , 0 );
setMoveKey( spep_5 + 26, 1, 164.6, -129 , 0 );
setMoveKey( spep_5 + 27, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5 + 28, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5 + 29, 1, 185, -190.5 , 0 );
setMoveKey( spep_5 + 30, 1, 185, -190.5 , 0 );
setMoveKey( spep_5 + 31, 1, 190, -219.4 , 0 );
setMoveKey( spep_5 + 32, 1, 190, -219.4 , 0 );
setMoveKey( spep_5 + 33, 1, 191.8, -246.9 , 0 );
setMoveKey( spep_5 + 34, 1, 191.8, -246.9 , 0 );
--setMoveKey( spep_5 + 35, 1, 190.7, -272.7 , 0 );
--setMoveKey( spep_5 + 36, 1, 190.7, -272.7 , 0 );
]]

setScaleKey( spep_5 + 0, 1, 1.76, 1.76 );
setScaleKey( spep_5 + 1, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 3, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 4, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 5, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 7, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 8, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 9, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 11, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 13, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 15, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 17, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 19, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 21, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 22, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 23, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 25, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 26, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 27, 1, 0.2, 0.21 );
setScaleKey( spep_5 + 28, 1, 0.2, 0.21 );
setScaleKey( spep_5 + 29, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 30, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 31, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 32, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 33, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 34, 1, 0.06, 0.06 );

setRotateKey( spep_5 + 0, 1, 14.8 );
setRotateKey( spep_5 + 34, 1, 14.8 );


--***書き文字ドゴォンッ***
ct_dgonn  = entryEffectLife( spep_5 + 34, 10018, 82, 0x100, -1, 0, -70.4, 286.5 );

setEffShake(  spep_5 + 34,  ct_dgonn,  82,  5);  --揺れ

setEffMoveKey( spep_5 + 34, ct_dgonn , -70.4, 286.5 , 0 );
setEffMoveKey( spep_5 + 40, ct_dgonn , -70.4, 286.5 , 0 );
setEffMoveKey( spep_5 + 42, ct_dgonn , -80.3, 297.9 , 0 );
setEffMoveKey( spep_5 + 44, ct_dgonn , -88, 317.7 , 0 );
setEffMoveKey( spep_5 + 46, ct_dgonn , -88.2, 317.7 , 0 );
setEffMoveKey( spep_5 + 48, ct_dgonn , -88.9, 313 , 0 );
setEffMoveKey( spep_5 + 50, ct_dgonn , -91.2, 324.2 , 0 );
setEffMoveKey( spep_5 + 52, ct_dgonn , -87.1, 319.9 , 0 );
setEffMoveKey( spep_5 + 54, ct_dgonn , -94.3, 321.8 , 0 );
setEffMoveKey( spep_5 + 56, ct_dgonn , -87.1, 326.6 , 0 );
setEffMoveKey( spep_5 + 58, ct_dgonn , -92.8, 321.3 , 0 );
setEffMoveKey( spep_5 + 60, ct_dgonn , -91.9, 326.7 , 0 );
setEffMoveKey( spep_5 + 62, ct_dgonn , -92.4, 321.2 , 0 );
setEffMoveKey( spep_5 + 64, ct_dgonn , -94.6, 332.3 , 0 );
setEffMoveKey( spep_5 + 66, ct_dgonn , -90, 327.2 , 0 );
setEffMoveKey( spep_5 + 68, ct_dgonn , -97.3, 328.5 , 0 );
setEffMoveKey( spep_5 + 70, ct_dgonn , -89.5, 332.9 , 0 );
setEffMoveKey( spep_5 + 72, ct_dgonn , -95.2, 326.9 , 0 );
setEffMoveKey( spep_5 + 74, ct_dgonn , -94.1, 331.9 , 0 );
setEffMoveKey( spep_5 + 76, ct_dgonn , -94.3, 325.7 , 0 );
setEffMoveKey( spep_5 + 78, ct_dgonn , -96.3, 336.5 , 0 );
setEffMoveKey( spep_5 + 80, ct_dgonn , -91.4, 330.7 , 0 );
setEffMoveKey( spep_5 + 82, ct_dgonn , -98.6, 331.5 , 0 );
setEffMoveKey( spep_5 + 84, ct_dgonn , -90.5, 335.4 , 0 );
setEffMoveKey( spep_5 + 86, ct_dgonn , -94.6, 333.3 , 0 );
setEffMoveKey( spep_5 + 88, ct_dgonn , -98.2, 328.7 , 0 );
setEffMoveKey( spep_5 + 90, ct_dgonn , -103.5, 341.8 , 0 );
setEffMoveKey( spep_5 + 92, ct_dgonn , -101.2, 337.3 , 0 );
setEffMoveKey( spep_5 + 94, ct_dgonn , -111.8, 339.8 , 0 );
setEffMoveKey( spep_5 + 96, ct_dgonn , -105.3, 345.7 , 0 );
setEffMoveKey( spep_5 + 98, ct_dgonn , -113.8, 339.6 , 0 );
setEffMoveKey( spep_5 + 100, ct_dgonn , -114.3, 346.2 , 0 );
setEffMoveKey( spep_5 + 102, ct_dgonn , -116.2, 339.5 , 0 );
setEffMoveKey( spep_5 + 104, ct_dgonn , -120, 353 , 0 );
setEffMoveKey( spep_5 + 106, ct_dgonn , -115.4, 346.6 , 0 );
setEffMoveKey( spep_5 + 108, ct_dgonn , -125, 348.1 , 0 );
setEffMoveKey( spep_5 + 110, ct_dgonn , -116, 353.2 , 0 );
setEffMoveKey( spep_5 + 112, ct_dgonn , -123.3, 345.4 , 0 );
setEffMoveKey( spep_5 + 114, ct_dgonn , -122, 351.3 , 0 );
setEffMoveKey( spep_5 + 116, ct_dgonn , -122.1, 351.4 , 0 );

setEffScaleKey( spep_5 + 34, ct_dgonn , 2.98, 2.98 );
setEffScaleKey( spep_5 + 40, ct_dgonn , 2.98, 2.98 );
setEffScaleKey( spep_5 + 42, ct_dgonn , 3.14, 3.14 );
setEffScaleKey( spep_5 + 44, ct_dgonn , 3.24, 3.24 );
setEffScaleKey( spep_5 + 46, ct_dgonn , 3.27, 3.27 );
setEffScaleKey( spep_5 + 48, ct_dgonn , 3.3, 3.3 );
setEffScaleKey( spep_5 + 50, ct_dgonn , 3.33, 3.33 );
setEffScaleKey( spep_5 + 52, ct_dgonn , 3.35, 3.35 );
setEffScaleKey( spep_5 + 54, ct_dgonn , 3.37, 3.37 );
setEffScaleKey( spep_5 + 56, ct_dgonn , 3.4, 3.4 );
setEffScaleKey( spep_5 + 58, ct_dgonn , 3.42, 3.42 );
setEffScaleKey( spep_5 + 60, ct_dgonn , 3.44, 3.44 );
setEffScaleKey( spep_5 + 62, ct_dgonn , 3.46, 3.46 );
setEffScaleKey( spep_5 + 64, ct_dgonn , 3.47, 3.47 );
setEffScaleKey( spep_5 + 66, ct_dgonn , 3.49, 3.49 );
setEffScaleKey( spep_5 + 68, ct_dgonn , 3.5, 3.5 );
setEffScaleKey( spep_5 + 70, ct_dgonn , 3.51, 3.51 );
setEffScaleKey( spep_5 + 72, ct_dgonn , 3.52, 3.52 );
setEffScaleKey( spep_5 + 74, ct_dgonn , 3.53, 3.53 );
setEffScaleKey( spep_5 + 76, ct_dgonn , 3.54, 3.54 );
setEffScaleKey( spep_5 + 78, ct_dgonn , 3.55, 3.55 );
setEffScaleKey( spep_5 + 80, ct_dgonn , 3.55, 3.55 );
setEffScaleKey( spep_5 + 82, ct_dgonn , 3.56, 3.56 );
setEffScaleKey( spep_5 + 86, ct_dgonn , 3.56, 3.56 );
setEffScaleKey( spep_5 + 88, ct_dgonn , 3.66, 3.66 );
setEffScaleKey( spep_5 + 90, ct_dgonn , 3.76, 3.76 );
setEffScaleKey( spep_5 + 92, ct_dgonn , 3.84, 3.84 );
setEffScaleKey( spep_5 + 94, ct_dgonn , 3.93, 3.93 );
setEffScaleKey( spep_5 + 96, ct_dgonn , 4, 4 );
setEffScaleKey( spep_5 + 98, ct_dgonn , 4.07, 4.07 );
setEffScaleKey( spep_5 + 100, ct_dgonn , 4.13, 4.13 );
setEffScaleKey( spep_5 + 102, ct_dgonn , 4.18, 4.18 );
setEffScaleKey( spep_5 + 104, ct_dgonn , 4.22, 4.22 );
setEffScaleKey( spep_5 + 106, ct_dgonn , 4.26, 4.26 );
setEffScaleKey( spep_5 + 108, ct_dgonn , 4.29, 4.29 );
setEffScaleKey( spep_5 + 110, ct_dgonn , 4.32, 4.32 );
setEffScaleKey( spep_5 + 112, ct_dgonn , 4.34, 4.34 );
setEffScaleKey( spep_5 + 114, ct_dgonn , 4.35, 4.35 );
setEffScaleKey( spep_5 + 116, ct_dgonn , 4.35, 4.35 );

setEffRotateKey( spep_5 + 34, ct_dgonn , -31.7 );
setEffRotateKey( spep_5 + 116, ct_dgonn , -31.7 );

setEffAlphaKey( spep_5 + 34, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 40, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 86, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 88, ct_dgonn , 222 );
setEffAlphaKey( spep_5 + 90, ct_dgonn , 192 );
setEffAlphaKey( spep_5 + 92, ct_dgonn , 163 );
setEffAlphaKey( spep_5 + 94, ct_dgonn , 137 );
setEffAlphaKey( spep_5 + 96, ct_dgonn , 113 );
setEffAlphaKey( spep_5 + 98, ct_dgonn , 92 );
setEffAlphaKey( spep_5 + 100, ct_dgonn , 73 );
setEffAlphaKey( spep_5 + 102, ct_dgonn , 56 );
setEffAlphaKey( spep_5 + 104, ct_dgonn , 41 );
setEffAlphaKey( spep_5 + 106, ct_dgonn , 28 );
setEffAlphaKey( spep_5 + 108, ct_dgonn , 18 );
setEffAlphaKey( spep_5 + 110, ct_dgonn , 10 );
setEffAlphaKey( spep_5 + 112, ct_dgonn , 5 );
setEffAlphaKey( spep_5 + 114, ct_dgonn , 1 );
setEffAlphaKey( spep_5 + 116, ct_dgonn , 0 );


--***SE***
playSe( spep_5, 44);--突進のやつ
playSe( spep_5+38, 1068);--突進のやつ
playSe( spep_5+50, 1023);--突進のやつ

-- ダメージ表示
dealDamage(spep_5+38);
--entryFade( spep_5+160, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_5+170);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_1,0,110,0,0,0,0,200);

--***集中線***
shuchusen1 = entryEffectLife( spep_1+40, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+40,  shuchusen1,  2.2,  2.2);
setEffScaleKey(  spep_1+110,  shuchusen1,  2.2,  2.2);
setEffMoveKey(  spep_1+40,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+110,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+40,  shuchusen1,  0);
setEffRotateKey(  spep_1+110,  shuchusen1,  0);
setEffAlphaKey(  spep_1+40,  shuchusen1,  255);
setEffAlphaKey(  spep_1+110,  shuchusen1,  255);

--***突進***
kitame = entryEffect(  spep_1,  SP_01x,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  kitame,  1.0,  1.0);
setEffMoveKey(  spep_1,  kitame,  0,  0);
setEffMoveKey(  spep_1+110,  kitame,  0,  0);
setEffRotateKey(  spep_1,  kitame,  0);
setEffRotateKey(  spep_1+110,  kitame,  0);
setEffAlphaKey(  spep_1,  kitame,  255);
setEffAlphaKey(  spep_1+110,  kitame,  255);
setEffAlphaKey(  spep_1+111,  kitame,  0);
setEffAlphaKey(  spep_1+112,  kitame,  0);


--***SE***
playSe( spep_1+40, SE_01);  --気が広がる

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+90 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setDisp( SP_dodge+9, 1, 1);

changeAnime(  SP_dodge+9,    1,  100);
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
--回避じゃないからカットイン出す
--------------------------------------
--[[
--***カットイン***32
speff = entryEffect(  spep_1+22,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+22,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+40, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_1 + 40, ctgogo, 255 );
setEffAlphaKey( spep_1 + 98, ctgogo, 255 );
setEffAlphaKey( spep_1 + 99, ctgogo, 255 );
setEffAlphaKey( spep_1 + 100, ctgogo, 191 );
setEffAlphaKey( spep_1 + 102, ctgogo, 128 );
setEffAlphaKey( spep_1 + 104, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
setEffAlphaKey( spep_1 + 107, ctgogo, 0 );

setEffRotateKey(  spep_1+40,  ctgogo,  0);
setEffRotateKey(  spep_1+107,  ctgogo,  0);

setEffScaleKey(  spep_1+40,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1+98,  ctgogo,  0.7,  0.7);
--setEffScaleKey( spep_1 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_1 + 100, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_1 + 107, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_1+40,  ctgogo,  0,  530);
setEffMoveKey(  spep_1+107,  ctgogo,  0,  530);

--***SE***
playSe( spep_1+22, SE_04);  --カットイン音

]]



------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+110;

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

------------------------------------------------------
-- 格闘(440F)
------------------------------------------------------

spep_3 = spep_2+90;

--***フェードと背景***
entryFade( spep_3-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+274, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+376, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***溜めから発射***
battleFront = entryEffect(  spep_3+2,  SP_02x,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3+2,  battleFront,  1.0,  1.0);
setEffScaleKey(  spep_3+440,  battleFront,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  battleFront,  0,  0);
setEffMoveKey(  spep_3+440,  battleFront,  0,  0);
setEffRotateKey(  spep_3+2,  battleFront,  0);
setEffRotateKey(  spep_3+440,  battleFront,  0);
setEffAlphaKey(  spep_3+2,  battleFront,  255);
setEffAlphaKey(  spep_3+440,  battleFront,  255);
setEffAlphaKey(  spep_3+441,  battleFront,  0);
setEffAlphaKey(  spep_3+442,  battleFront,  0);

--***溜めから発射***
battleBack = entryEffect(  spep_3+2,  SP_03,  0x80,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_3+2,  battleBack,  1.0,  1.0);
setEffScaleKey(  spep_3+440,  battleBack,  1.0,  1.0);
setEffMoveKey(  spep_3+2,  battleBack,  0,  0);
setEffMoveKey(  spep_3+440,  battleBack,  0,  0);
setEffRotateKey(  spep_3+2,  battleBack,  0);
setEffRotateKey(  spep_3+440,  battleBack,  0);
setEffAlphaKey(  spep_3+2,  battleBack,  255);
setEffAlphaKey(  spep_3+440,  battleBack,  255);
setEffAlphaKey(  spep_3+441,  battleBack,  0);
setEffAlphaKey(  spep_3+442,  battleBack,  0);

--***集中線***
shuchusen3 = entryEffectLife(  spep_3+2,  906,  378,  0x100,  -1,  0,  0,  0);

setEffRotateKey(  spep_3+2, shuchusen3,  0);--固定のまま
setEffRotateKey(  spep_3+380, shuchusen3,  0);--固定のまま

setEffAlphaKey(  spep_3+2,  shuchusen3,  255);--固定のまま
setEffAlphaKey(  spep_3+380,  shuchusen3,  255);--固定のまま

setEffScaleKey(  spep_3+2,  shuchusen3,  2.2,  2.2);
setEffScaleKey(  spep_3+99,  shuchusen3,  2.2,  2.2);
setEffScaleKey(  spep_3+100,  shuchusen3,  1.7,  1.7);
setEffScaleKey(  spep_3+380,  shuchusen3,  1.7,  1.7);

setEffMoveKey(  spep_3+2,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+380,  shuchusen3,  0,  0);

--***敵の動き***
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 438, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );--待機
changeAnime( spep_3 + 19, 1, 106 );
changeAnime( spep_3 + 67, 1, 108 );
changeAnime( spep_3 + 87, 1, 106 );
changeAnime( spep_3 + 103, 1, 108 );
changeAnime( spep_3 + 125, 1, 106 );
changeAnime( spep_3 + 139, 1, 108 );
changeAnime( spep_3 + 169, 1, 106 );
changeAnime( spep_3 + 215, 1, 108 );
changeAnime( spep_3 + 279, 1, 106 );
setShakeChara( spep_3 + 279 , 1, 100, 5);--移動の小さな揺れ
changeAnime( spep_3 + 379, 1, 8 );
setShakeChara( spep_3 + 379 , 1, 10, 10);--HIT

setMoveKey( spep_3 + 0, 1, 156.2, 72.1 , 0 );
setMoveKey( spep_3 + 2, 1, 135.3, 65.4 , 0 );
setMoveKey( spep_3 + 4, 1, 117.7, 59.8 , 0 );
setMoveKey( spep_3 + 6, 1, 103, 55 , 0 );
setMoveKey( spep_3 + 8, 1, 91, 51.1 , 0 );
setMoveKey( spep_3 + 10, 1, 81.4, 48 , 0 );
setMoveKey( spep_3 + 12, 1, 73.8, 45.5 , 0 );
setMoveKey( spep_3 + 14, 1, 68.2, 43.7 , 0 );
setMoveKey( spep_3 + 16, 1, 64.4, 42.5 , 0 );
setMoveKey( spep_3 + 18, 1, 62.3, 41.9 , 0 );
setMoveKey( spep_3 + 19, 1, 103.8, 55.6 , 0 );
setMoveKey( spep_3 + 20, 1, 103.8, 55.6 , 0 );--1
setMoveKey( spep_3 + 22, 1, 108.8, 44.7 , 0 );
setMoveKey( spep_3 + 24, 1, 104.8, 44.4 , 0 );
setMoveKey( spep_3 + 26, 1, 113.6, 49.8 , 0 );
setMoveKey( spep_3 + 28, 1, 106.4, 44.6 , 0 );
setMoveKey( spep_3 + 30, 1, 114.7, 50.3 , 0 );
setMoveKey( spep_3 + 32, 1, 103, 38.9 , 0 );
setMoveKey( spep_3 + 34, 1, 161.4, 66.5 , 0 );
setMoveKey( spep_3 + 36, 1, 152.6, 68.8 , 0 );
setMoveKey( spep_3 + 38, 1, 138.8, 69.1 , 0 );
setMoveKey( spep_3 + 40, 1, 125.7, 68.6 , 0 );
setMoveKey( spep_3 + 42, 1, 116.4, 68.5 , 0 );
setMoveKey( spep_3 + 44, 1, 162.9, 123.7 , 0 );
setMoveKey( spep_3 + 46, 1, 160.2, 119.4 , 0 );
setMoveKey( spep_3 + 48, 1, 170.5, 114.4 , 0 );
setMoveKey( spep_3 + 50, 1, 157.8, 119.1 , 0 );
setMoveKey( spep_3 + 52, 1, 178.2, 113.7 , 0 );
setMoveKey( spep_3 + 54, 1, 165.8, 116.7 , 0 );
setMoveKey( spep_3 + 56, 1, 178, 116.8 , 0 );
setMoveKey( spep_3 + 58, 1, 205.6, 151 , 0 );
setMoveKey( spep_3 + 60, 1, 212.6, 144.7 , 0 );
setMoveKey( spep_3 + 62, 1, 202.2, 146.8 , 0 );
setMoveKey( spep_3 + 64, 1, 189, 146.8 , 0 );
setMoveKey( spep_3 + 66, 1, 180.4, 147.2 , 0 );
setMoveKey( spep_3 + 67, 1, 200.8, 155.6 , 0 );
setMoveKey( spep_3 + 68, 1, 200.8, 155.6 , 0 );--2
setMoveKey( spep_3 + 70, 1, 193.1, 135.8 , 0 );
setMoveKey( spep_3 + 72, 1, 220.5, 174.6 , 0 );
setMoveKey( spep_3 + 74, 1, 216.4, 161.2 , 0 );
setMoveKey( spep_3 + 76, 1, 238.7, 183.5 , 0 );
setMoveKey( spep_3 + 78, 1, 235.6, 177.1 , 0 );
setMoveKey( spep_3 + 80, 1, 242.9, 191.8 , 0 );
setMoveKey( spep_3 + 82, 1, 219, 184.8 , 0 );
setMoveKey( spep_3 + 84, 1, 200.3, 182.1 , 0 );
setMoveKey( spep_3 + 86, 1, 188.2, 180 , 0 );
setMoveKey( spep_3 + 87, 1, 153.6, 158.2 , 0 );
setMoveKey( spep_3 + 88, 1, 153.6, 158.2 , 0 );--3
setMoveKey( spep_3 + 90, 1, 211, 87.8 , 0 );
setMoveKey( spep_3 + 92, 1, 238.2, 90.8 , 0 );
setMoveKey( spep_3 + 94, 1, 243.2, 70.8 , 0 );
setMoveKey( spep_3 + 96, 1, 234.9, 77 , 0 );
setMoveKey( spep_3 + 98, 1, 214.8, 57.4 , 0 );
setMoveKey( spep_3 + 100, 1, 170.2, 56.6 , 0 );
setMoveKey( spep_3 + 102, 1, 140.1, 45.6 , 0 );
setMoveKey( spep_3 + 103, 1, 193.1, -4.7 , 0 );
setMoveKey( spep_3 + 104, 1, 193.1, -4.7 , 0 );--4
setMoveKey( spep_3 + 106, 1, 261.7, 18.7 , 0 );
setMoveKey( spep_3 + 108, 1, 297, 17.3 , 0 );
setMoveKey( spep_3 + 110, 1, 310.3, 22.5 , 0 );
setMoveKey( spep_3 + 112, 1, 311.5, 22.2 , 0 );
setMoveKey( spep_3 + 114, 1, 326.9, 21.9 , 0 );
setMoveKey( spep_3 + 116, 1, 313.3, 26.6 , 0 );
setMoveKey( spep_3 + 118, 1, 295.5, 16.6 , 0 );
setMoveKey( spep_3 + 120, 1, 244.5, 6.1 , 0 );
setMoveKey( spep_3 + 122, 1, 192.5, -4.5 , 0 );
setMoveKey( spep_3 + 124, 1, 160.3, -10.8 , 0 );
setMoveKey( spep_3 + 125, 1, 104.9, 38.8 , 0 );
setMoveKey( spep_3 + 126, 1, 104.9, 38.8 , 0 );--5
setMoveKey( spep_3 + 128, 1, 216.6, 93.6 , 0 );
setMoveKey( spep_3 + 130, 1, 198.2, 103 , 0 );
setMoveKey( spep_3 + 132, 1, 207.2, 103 , 0 );
setMoveKey( spep_3 + 134, 1, 167.6, 93.1 , 0 );
setMoveKey( spep_3 + 136, 1, 163, 96.5 , 0 );
setMoveKey( spep_3 + 138, 1, 145.8, 95 , 0 );
setMoveKey( spep_3 + 139, 1, 134.4, 126.1 , 0 );
setMoveKey( spep_3 + 140, 1, 134.4, 126.1 , 0 );--6
setMoveKey( spep_3 + 142, 1, 224.5, 161.7 , 0 );
setMoveKey( spep_3 + 144, 1, 260.1, 182 , 0 );
setMoveKey( spep_3 + 146, 1, 266.6, 192.3 , 0 );
setMoveKey( spep_3 + 148, 1, 277.1, 190.1 , 0 );
setMoveKey( spep_3 + 150, 1, 257, 195.5 , 0 );
setMoveKey( spep_3 + 152, 1, 149.4, 166.2 , 0 );
setMoveKey( spep_3 + 154, 1, 55.8, 149.9 , 0 );
setMoveKey( spep_3 + 156, 1, 51.1, 165 , 0 );
setMoveKey( spep_3 + 158, 1, 158.7, 175.2 , 0 );
setMoveKey( spep_3 + 160, 1, 175.4, 190 , 0 );
setMoveKey( spep_3 + 162, 1, 173.4, 190.7 , 0 );
setMoveKey( spep_3 + 164, 1, 161.1, 186.9 , 0 );
setMoveKey( spep_3 + 166, 1, 158.7, 183.4 , 0 );
setMoveKey( spep_3 + 168, 1, 142.8, 183.1 , 0 );
setMoveKey( spep_3 + 169, 1, 133.2, 159.5 , 0 );
setMoveKey( spep_3 + 170, 1, 133.2, 159.5 , 0 );--7
setMoveKey( spep_3 + 172, 1, 237.4, 227 , 0 );
setMoveKey( spep_3 + 174, 1, 235.3, 207.5 , 0 );
setMoveKey( spep_3 + 176, 1, 260.3, 232.7 , 0 );
setMoveKey( spep_3 + 178, 1, 267.5, 215.5 , 0 );
setMoveKey( spep_3 + 180, 1, 267.9, 219.4 , 0 );
setMoveKey( spep_3 + 182, 1, 277.8, 214.9 , 0 );
setMoveKey( spep_3 + 184, 1, 272, 198.9 , 0 );
setMoveKey( spep_3 + 186, 1, 268.4, 195.8 , 0 );
setMoveKey( spep_3 + 188, 1, 261.5, 175.7 , 0 );
setMoveKey( spep_3 + 190, 1, 251.8, 163.9 , 0 );
setMoveKey( spep_3 + 192, 1, 241.1, 146.7 , 0 );
setMoveKey( spep_3 + 194, 1, 228.7, 127.9 , 0 );
setMoveKey( spep_3 + 196, 1, 216.8, 110.3 , 0 );
setMoveKey( spep_3 + 198, 1, 205.8, 94.2 , 0 );
setMoveKey( spep_3 + 200, 1, 195.8, 79.8 , 0 );
setMoveKey( spep_3 + 202, 1, 186.8, 66.9 , 0 );
setMoveKey( spep_3 + 204, 1, 178.9, 55.7 , 0 );
setMoveKey( spep_3 + 206, 1, 172.1, 46.3 , 0 );
setMoveKey( spep_3 + 208, 1, 166.4, 38.4 , 0 );
setMoveKey( spep_3 + 210, 1, 162, 32.3 , 0 );
setMoveKey( spep_3 + 212, 1, 158.7, 27.9 , 0 );
setMoveKey( spep_3 + 214, 1, 156.6, 25.2 , 0 );
setMoveKey( spep_3 + 215, 1, 213.9, 81.1 , 0 );
setMoveKey( spep_3 + 216, 1, 213.9, 81.1 , 0 );--8
setMoveKey( spep_3 + 218, 1, 193.9, 80.8 , 0 );
setMoveKey( spep_3 + 220, 1, 204, 83 , 0 );
setMoveKey( spep_3 + 222, 1, 192.3, 100 , 0 );
setMoveKey( spep_3 + 224, 1, 184.9, 94.4 , 0 );
setMoveKey( spep_3 + 226, 1, 180.8, 105.4 , 0 );
setMoveKey( spep_3 + 228, 1, 161.7, 104.8 , 0 );
setMoveKey( spep_3 + 230, 1, 160, 99.2 , 0 );
setMoveKey( spep_3 + 232, 1, 148.6, 109.6 , 0 );
setMoveKey( spep_3 + 234, 1, 142.3, 99.7 , 0 );
setMoveKey( spep_3 + 236, 1, 126.8, 105.6 , 0 );
setMoveKey( spep_3 + 238, 1, 128, 104.1 , 0 );
setMoveKey( spep_3 + 240, 1, 113.3, 99.5 , 0 );
setMoveKey( spep_3 + 242, 1, 114.5, 101 , 0 );
setMoveKey( spep_3 + 244, 1, 102.6, 99.6 , 0 );
setMoveKey( spep_3 + 246, 1, 98.5, 105.1 , 0 );
setMoveKey( spep_3 + 248, 1, 94.5, 97.9 , 0 );
setMoveKey( spep_3 + 250, 1, 84.1, 99.4 , 0 );
setMoveKey( spep_3 + 252, 1, 221.8, 203.2 , 0 );
setMoveKey( spep_3 + 254, 1, 347.6, 299.3 , 0 );
setMoveKey( spep_3 + 256, 1, 463.4, 387.8 , 0 );
setMoveKey( spep_3 + 258, 1, 569.1, 468.5 , 0 );
setMoveKey( spep_3 + 260, 1, 664.7, 541.6 , 0 );
setMoveKey( spep_3 + 262, 1, 750.3, 607 , 0 );
setMoveKey( spep_3 + 264, 1, 825.8, 664.7 , 0 );
setMoveKey( spep_3 + 266, 1, 891.2, 714.7 , 0 );
setMoveKey( spep_3 + 268, 1, 946.6, 757 , 0 );
setMoveKey( spep_3 + 270, 1, 991.9, 791.6 , 0 );
setMoveKey( spep_3 + 272, 1, 1027.1, 818.5 , 0 );
setMoveKey( spep_3 + 274, 1, 1052.3, 837.7 , 0 );
setMoveKey( spep_3 + 276, 1, 1067.4, 849.3 , 0 );
setMoveKey( spep_3 + 278, 1, 1072.4, 853.1 , 0 );
setMoveKey( spep_3 + 279, 1, -682.7, -399.7 , 0 );
setMoveKey( spep_3 + 280, 1, -682.7, -399.7 , 0 );--9
setMoveKey( spep_3 + 282, 1, -595.6, -339.1 , 0 );
setMoveKey( spep_3 + 284, 1, -510.9, -278.7 , 0 );
setMoveKey( spep_3 + 286, 1, -450.3, -236.3 , 0 );
setMoveKey( spep_3 + 288, 1, -382.5, -186.1 , 0 );
setMoveKey( spep_3 + 290, 1, -334.6, -155.8 , 0 );
setMoveKey( spep_3 + 292, 1, -282.7, -114 , 0 );
setMoveKey( spep_3 + 294, 1, -258.9, -103.6 , 0 );
setMoveKey( spep_3 + 296, 1, -215.9, -67 , 0 );
setMoveKey( spep_3 + 298, 1, -208.5, -66 , 0 );
setMoveKey( spep_3 + 300, 1, -184.9, -45.3 , 0 );
setMoveKey( spep_3 + 302, 1, -191.6, -53.7 , 0 );
setMoveKey( spep_3 + 304, 1, -183.4, -44.1 , 0 );
setMoveKey( spep_3 + 306, 1, -162.7, -34.5 , 0 );
setMoveKey( spep_3 + 308, 1, -166.8, -33 , 0 );
setMoveKey( spep_3 + 310, 1, -145.9, -22.3 , 0 );
setMoveKey( spep_3 + 312, 1, -149.8, -20.2 , 0 );
setMoveKey( spep_3 + 314, 1, -129.9, -10.3 , 0 );
setMoveKey( spep_3 + 316, 1, -137, -10.4 , 0 );
setMoveKey( spep_3 + 318, 1, -116.2, 1.6 , 0 );
setMoveKey( spep_3 + 320, 1, -118.9, -1.8 , 0 );
setMoveKey( spep_3 + 322, 1, -104.3, 12.7 , 0 );
setMoveKey( spep_3 + 324, 1, -103.9, 6.7 , 0 );
setMoveKey( spep_3 + 326, 1, -95.3, 18.2 , 0 );
setMoveKey( spep_3 + 328, 1, -98.3, 12.3 , 0 );
setMoveKey( spep_3 + 330, 1, -85, 22.7 , 0 );
setMoveKey( spep_3 + 332, 1, -87.7, 19.1 , 0 );
setMoveKey( spep_3 + 334, 1, -80.1, 24.6 , 0 );
setMoveKey( spep_3 + 336, 1, -78.7, 26.6 , 0 );
setMoveKey( spep_3 + 338, 1, -69.1, 32.1 , 0 );
setMoveKey( spep_3 + 340, 1, -77.5, 30.7 , 0 );
setMoveKey( spep_3 + 342, 1, -62.4, 37.4 , 0 );
setMoveKey( spep_3 + 344, 1, -73.9, 28.5 , 0 );
setMoveKey( spep_3 + 346, 1, -60.6, 42.1 , 0 );
setMoveKey( spep_3 + 348, 1, -66.9, 32 , 0 );
setMoveKey( spep_3 + 350, 1, -59.5, 38.1 , 0 );
setMoveKey( spep_3 + 352, 1, -65.8, 31.6 , 0 );
setMoveKey( spep_3 + 354, 1, -62.7, 36.6 , 0 );
setMoveKey( spep_3 + 356, 1, -63.8, 31.3 , 0 );
setMoveKey( spep_3 + 358, 1, -53.1, 42.8 , 0 );
setMoveKey( spep_3 + 360, 1, -61.9, 33.8 , 0 );
setMoveKey( spep_3 + 362, 1, -47, 44.7 , 0 );
setMoveKey( spep_3 + 364, 1, -50.3, 41.8 , 0 );
setMoveKey( spep_3 + 366, 1, -34.5, 53.2 , 0 );
setMoveKey( spep_3 + 368, 1, -40.5, 48.3 , 0 );
setMoveKey( spep_3 + 370, 1, -20.5, 63 , 0 );
setMoveKey( spep_3 + 372, 1, -22.5, 61 , 0 );
setMoveKey( spep_3 + 374, 1, -4.4, 74.3 , 0 );
setMoveKey( spep_3 + 376, 1, -1.5, 76.1 , 0 );
setMoveKey( spep_3 + 378, 1, 8.3, 83.1 , 0 );
setMoveKey( spep_3 + 379, 1, -122.1, 85.2 , 0 );
setMoveKey( spep_3 + 380, 1, -122.1, 85.2 , 0 );--10
setMoveKey( spep_3 + 382, 1, -90.7, 73.8 , 0 );
setMoveKey( spep_3 + 384, 1, -113.4, 83.5 , 0 );
setMoveKey( spep_3 + 386, 1, -105.9, 65.9 , 0 );
setMoveKey( spep_3 + 388, 1, -111.9, 79.9 , 0 );
setMoveKey( spep_3 + 390, 1, -112.5, 65.5 , 0 );
setMoveKey( spep_3 + 392, 1, -106.3, 75.5 , 0 );
setMoveKey( spep_3 + 394, 1, -114.2, 64.5 , 0 );
setMoveKey( spep_3 + 396, 1, -111.9, 73.7 , 0 );
setMoveKey( spep_3 + 398, 1, -110, 62.5 , 0 );
setMoveKey( spep_3 + 400, 1, -112.2, 70.9 , 0 );
setMoveKey( spep_3 + 402, 1, -108.9, 63 , 0 );
setMoveKey( spep_3 + 404, 1, -116.1, 67.2 , 0 );
setMoveKey( spep_3 + 406, 1, -109.4, 64.9 , 0 );
setMoveKey( spep_3 + 408, 1, -115.8, 66.7 , 0 );
setMoveKey( spep_3 + 410, 1, -109.7, 63.5 , 0 );
setMoveKey( spep_3 + 412, 1, -192.1, 26.5 , 0 );
setMoveKey( spep_3 + 414, 1, -215, 14.8 , 0 );
setMoveKey( spep_3 + 416, 1, -228.2, 7.2 , 0 );
setMoveKey( spep_3 + 418, 1, -236.7, 1.9 , 0 );
setMoveKey( spep_3 + 420, 1, -242.2, -2.1 , 0 );
setMoveKey( spep_3 + 422, 1, -245.9, -5.2 , 0 );
setMoveKey( spep_3 + 424, 1, -248.1, -7.5 , 0 );
setMoveKey( spep_3 + 426, 1, -249.4, -9.4 , 0 );
setMoveKey( spep_3 + 428, 1, -250.1, -10.8 , 0 );
setMoveKey( spep_3 + 430, 1, -250.1, -11.9 , 0 );
setMoveKey( spep_3 + 432, 1, -249.9, -12.7 , 0 );
setMoveKey( spep_3 + 434, 1, -249.4, -13.3 , 0 );
setMoveKey( spep_3 + 436, 1, -248.8, -13.7 , 0 );
setMoveKey( spep_3 + 438, 1, -248.1, -14 , 0 );
--setMoveKey( spep_3 + 440, 1, -247.3, -14.2 , 0 );
--setMoveKey( spep_3 + 442, 1, -246.6, -14.3 , 0 );
--setMoveKey( spep_3 + 444, 1, -246, -14.3 , 0 );
--setMoveKey( spep_3 + 446, 1, -245.6, -14.2 , 0 );
--setMoveKey( spep_3 + 448, 1, -245.3, -14.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 2, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 6, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 12, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 16, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 19, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 20, 1, 1.64, 1.64 );--1
setScaleKey( spep_3 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 28, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 32, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 34, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 40, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 44, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 50, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 56, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 66, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 67, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 68, 1, 1.22, 1.22 );--2
setScaleKey( spep_3 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 72, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 74, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 76, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 78, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 86, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 87, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 88, 1, 1.28, 1.28 );--3
setScaleKey( spep_3 + 90, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 92, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 94, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 96, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 102, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 103, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 104, 1, 1.23, 1.23 );--4
setScaleKey( spep_3 + 106, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 110, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 112, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 124, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 125, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 126, 1, 1.09, 1.09 );--5
setScaleKey( spep_3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 130, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 132, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 134, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 136, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 139, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 140, 1, 1.26, 1.26 );--6
setScaleKey( spep_3 + 142, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 144, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 146, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 148, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 154, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 156, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 158, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 160, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 162, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 164, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 168, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 169, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 170, 1, 1.07, 1.07 );--7
setScaleKey( spep_3 + 172, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 174, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 176, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 178, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 180, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 214, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 215, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 216, 1, 1.6, 1.6 );--8
setScaleKey( spep_3 + 218, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 220, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 222, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 224, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 226, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 228, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 230, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 232, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 234, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 236, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 238, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 240, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 242, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 250, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 252, 1, 1.13, 1.07 );
setScaleKey( spep_3 + 254, 1, 1.17, 1.06 );
setScaleKey( spep_3 + 256, 1, 1.21, 1.04 );
setScaleKey( spep_3 + 258, 1, 1.24, 1.03 );
setScaleKey( spep_3 + 260, 1, 1.27, 1.02 );
setScaleKey( spep_3 + 262, 1, 1.3, 1.01 );
setScaleKey( spep_3 + 264, 1, 1.32, 1 );
setScaleKey( spep_3 + 266, 1, 1.34, 0.99 );
setScaleKey( spep_3 + 268, 1, 1.36, 0.98 );
setScaleKey( spep_3 + 270, 1, 1.38, 0.98 );
setScaleKey( spep_3 + 272, 1, 1.39, 0.97 );
setScaleKey( spep_3 + 274, 1, 1.4, 0.97 );
setScaleKey( spep_3 + 278, 1, 1.4, 0.97 );
setScaleKey( spep_3 + 279, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 280, 1, 1.45, 1.45 );--9
setScaleKey( spep_3 + 308, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 310, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 314, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 316, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 318, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 320, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 322, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 324, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 326, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 328, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 330, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 332, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 340, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 342, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 344, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 346, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 348, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 350, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 352, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 354, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 356, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 358, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 360, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 362, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 364, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 366, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 368, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 370, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 372, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 374, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 376, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 378, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 379, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 380, 1, 1.87, 1.87 );--10
setScaleKey( spep_3 + 382, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 384, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 386, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 388, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 390, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 392, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 394, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 396, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 398, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 400, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 402, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 404, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 406, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 410, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 412, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 414, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 416, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 418, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 420, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 422, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 424, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 426, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 428, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 430, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 432, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 434, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 436, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 438, 1, 0.7, 0.7 );
--setScaleKey( spep_3 + 440, 1, 0.69, 0.69 );

setRotateKey( spep_3 + 0, 1, -12 );
setRotateKey( spep_3 + 18, 1, -12 );
setRotateKey( spep_3 + 19, 1, -49.5 );
setRotateKey( spep_3 + 20, 1, -49.5 );--1
setRotateKey( spep_3 + 32, 1, -49.5 );
setRotateKey( spep_3 + 34, 1, -47.6 );
setRotateKey( spep_3 + 36, 1, -47.2 );
setRotateKey( spep_3 + 38, 1, -47 );
setRotateKey( spep_3 + 42, 1, -47 );
setRotateKey( spep_3 + 44, 1, -44 );
setRotateKey( spep_3 + 56, 1, -44 );
setRotateKey( spep_3 + 58, 1, -35.5 );
setRotateKey( spep_3 + 60, 1, -33.6 );
setRotateKey( spep_3 + 62, 1, -32.7 );
setRotateKey( spep_3 + 64, 1, -32.3 );
setRotateKey( spep_3 + 66, 1, -32.3 );
setRotateKey( spep_3 + 67, 1, -46 );
setRotateKey( spep_3 + 68, 1, -46 );--2
setRotateKey( spep_3 + 70, 1, -43.8 );
setRotateKey( spep_3 + 72, 1, -41.9 );
setRotateKey( spep_3 + 74, 1, -40.3 );
setRotateKey( spep_3 + 76, 1, -38.9 );
setRotateKey( spep_3 + 78, 1, -37.7 );
setRotateKey( spep_3 + 80, 1, -36.8 );
setRotateKey( spep_3 + 82, 1, -36.2 );
setRotateKey( spep_3 + 84, 1, -35.8 );
setRotateKey( spep_3 + 86, 1, -35.7 );
setRotateKey( spep_3 + 87, 1, -35.7 );
setRotateKey( spep_3 + 88, 1, -35.7 );--3
setRotateKey( spep_3 + 90, 1, -33.5 );
setRotateKey( spep_3 + 92, 1, -32.9 );
setRotateKey( spep_3 + 94, 1, -32.6 );
setRotateKey( spep_3 + 96, 1, -32.4 );
setRotateKey( spep_3 + 98, 1, -32.3 );
setRotateKey( spep_3 + 100, 1, -32.2 );
setRotateKey( spep_3 + 102, 1, -32.2 );
setRotateKey( spep_3 + 103, 1, 3.5 );
setRotateKey( spep_3 + 104, 1, 3.5 );--4
setRotateKey( spep_3 + 106, 1, 2 );
setRotateKey( spep_3 + 108, 1, 1.5 );
setRotateKey( spep_3 + 110, 1, 1.2 );
setRotateKey( spep_3 + 112, 1, 1 );
setRotateKey( spep_3 + 114, 1, 0.9 );
setRotateKey( spep_3 + 116, 1, 0.8 );
setRotateKey( spep_3 + 118, 1, 0.8 );
setRotateKey( spep_3 + 120, 1, 0.7 );
setRotateKey( spep_3 + 124, 1, 0.7 );
setRotateKey( spep_3 + 125, 1, -37.5 );
setRotateKey( spep_3 + 126, 1, -37.5 );--5
setRotateKey( spep_3 + 128, 1, -37 );
setRotateKey( spep_3 + 130, 1, -36.8 );
setRotateKey( spep_3 + 132, 1, -36.8 );
setRotateKey( spep_3 + 134, 1, -36.7 );
setRotateKey( spep_3 + 139, 1, -36.7 );
setRotateKey( spep_3 + 140, 1, -36.7 );--6
setRotateKey( spep_3 + 142, 1, -36.5 );
setRotateKey( spep_3 + 154, 1, -36.5 );
setRotateKey( spep_3 + 156, 1, -36.4 );
setRotateKey( spep_3 + 158, 1, -33.4 );
setRotateKey( spep_3 + 160, 1, -32.6 );
setRotateKey( spep_3 + 162, 1, -32.2 );
setRotateKey( spep_3 + 164, 1, -32 );
setRotateKey( spep_3 + 166, 1, -32 );
setRotateKey( spep_3 + 168, 1, -31.9 );
setRotateKey( spep_3 + 169, 1, -48.2 );
setRotateKey( spep_3 + 170, 1, -48.2 );--7
setRotateKey( spep_3 + 172, 1, -44.5 );
setRotateKey( spep_3 + 174, 1, -43.2 );
setRotateKey( spep_3 + 176, 1, -42.4 );
setRotateKey( spep_3 + 178, 1, -41.7 );
setRotateKey( spep_3 + 180, 1, -41.2 );
setRotateKey( spep_3 + 182, 1, -40.8 );
setRotateKey( spep_3 + 184, 1, -40.4 );
setRotateKey( spep_3 + 186, 1, -40.1 );
setRotateKey( spep_3 + 188, 1, -39.9 );
setRotateKey( spep_3 + 190, 1, -39.7 );
setRotateKey( spep_3 + 192, 1, -39.5 );
setRotateKey( spep_3 + 194, 1, -39.4 );
setRotateKey( spep_3 + 196, 1, -39.3 );
setRotateKey( spep_3 + 198, 1, -39.2 );
setRotateKey( spep_3 + 200, 1, -39.1 );
setRotateKey( spep_3 + 202, 1, -39 );
setRotateKey( spep_3 + 206, 1, -39 );
setRotateKey( spep_3 + 208, 1, -38.9 );
setRotateKey( spep_3 + 214, 1, -38.9 );
setRotateKey( spep_3 + 215, 1, -38.7 );
setRotateKey( spep_3 + 216, 1, -38.7 );--8
setRotateKey( spep_3 + 218, 1, -38.8 );
setRotateKey( spep_3 + 220, 1, -38.8 );
setRotateKey( spep_3 + 222, 1, -38.9 );
setRotateKey( spep_3 + 224, 1, -38.9 );
setRotateKey( spep_3 + 226, 1, -39 );
setRotateKey( spep_3 + 230, 1, -39 );
setRotateKey( spep_3 + 232, 1, -39.1 );
setRotateKey( spep_3 + 238, 1, -39.1 );
setRotateKey( spep_3 + 240, 1, -39.2 );
setRotateKey( spep_3 + 250, 1, -39.2 );
setRotateKey( spep_3 + 252, 1, -37.2 );
setRotateKey( spep_3 + 254, 1, -35.4 );
setRotateKey( spep_3 + 256, 1, -33.7 );
setRotateKey( spep_3 + 258, 1, -32.2 );
setRotateKey( spep_3 + 260, 1, -30.8 );
setRotateKey( spep_3 + 262, 1, -29.6 );
setRotateKey( spep_3 + 264, 1, -28.5 );
setRotateKey( spep_3 + 266, 1, -27.5 );
setRotateKey( spep_3 + 268, 1, -26.7 );
setRotateKey( spep_3 + 270, 1, -26.1 );
setRotateKey( spep_3 + 272, 1, -25.6 );
setRotateKey( spep_3 + 274, 1, -25.2 );
setRotateKey( spep_3 + 276, 1, -25 );
setRotateKey( spep_3 + 278, 1, -24.9 );
setRotateKey( spep_3 + 279, 1, -37 );
setRotateKey( spep_3 + 280, 1, -37 );--9
setRotateKey( spep_3 + 378, 1, -37 );
setRotateKey( spep_3 + 379, 1, -8.7 );
setRotateKey( spep_3 + 380, 1, -8.7 );--10
setRotateKey( spep_3 + 382, 1, -8.8 );
setRotateKey( spep_3 + 384, 1, -8.8 );
setRotateKey( spep_3 + 386, 1, -8.9 );
setRotateKey( spep_3 + 388, 1, -9 );
setRotateKey( spep_3 + 390, 1, -9 );
setRotateKey( spep_3 + 392, 1, -9.1 );
setRotateKey( spep_3 + 394, 1, -9.1 );
setRotateKey( spep_3 + 396, 1, -9.2 );
setRotateKey( spep_3 + 400, 1, -9.2 );
setRotateKey( spep_3 + 402, 1, -9.3 );
setRotateKey( spep_3 + 410, 1, -9.3 );
setRotateKey( spep_3 + 412, 1, -16.2 );
setRotateKey( spep_3 + 414, 1, -18.5 );
setRotateKey( spep_3 + 416, 1, -20 );
setRotateKey( spep_3 + 418, 1, -21.1 );
setRotateKey( spep_3 + 420, 1, -22 );
setRotateKey( spep_3 + 422, 1, -22.7 );
setRotateKey( spep_3 + 424, 1, -23.3 );
setRotateKey( spep_3 + 426, 1, -23.8 );
setRotateKey( spep_3 + 428, 1, -24.2 );
setRotateKey( spep_3 + 430, 1, -24.5 );
setRotateKey( spep_3 + 432, 1, -24.7 );
setRotateKey( spep_3 + 434, 1, -24.9 );
setRotateKey( spep_3 + 436, 1, -25.1 );
setRotateKey( spep_3 + 438, 1, -25.2 );
--setRotateKey( spep_3 + 440, 1, -25.3 );

--***書き文字ドン***
ct_don = entryEffectLife( spep_3 + 19, 10019, 17, 0x100, -1, 0, 13.8, 227.6 );--ドン

setEffShake(  spep_3 + 19,  ct_don,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 19, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_3 + 22, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_3 + 24, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_3 + 26, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_3 + 28, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_3 + 30, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_3 + 32, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_3 + 34, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_3 + 36, ct_don, -13.1, 275.1 , 0 );

setEffScaleKey( spep_3 + 19, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_3 + 22, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_3 + 24, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_3 + 26, ct_don, 2, 2 );
setEffScaleKey( spep_3 + 28, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_3 + 30, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_3 + 32, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_3 + 34, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_3 + 36, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_3 + 19, ct_don, -0.8 );
setEffRotateKey( spep_3 + 22, ct_don, -0.2 );
setEffRotateKey( spep_3 + 24, ct_don, 0.3 );
setEffRotateKey( spep_3 + 36, ct_don, 0.3 );

setEffAlphaKey( spep_3 + 19, ct_don, 255 );
setEffAlphaKey( spep_3 + 30, ct_don, 255 );
setEffAlphaKey( spep_3 + 32, ct_don, 170 );
setEffAlphaKey( spep_3 + 34, ct_don, 85 );
setEffAlphaKey( spep_3 + 36, ct_don, 0 );

--***書き文字ガ***
ct_ga = entryEffectLife( spep_3 + 67, 10005, 17, 0x100, -1, 0, 140.1, 318.9 );--ガッ

setEffShake(  spep_3 + 67,  ct_ga,  17,  5);  --揺れ

setEffMoveKey( spep_3 + 67, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_3 + 70, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_3 + 72, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_3 + 74, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_3 + 76, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_3 + 78, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_3 + 80, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_3 + 82, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 84, ct_ga, 123.5, 350.7 , 0 );

setEffScaleKey( spep_3 + 67, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_3 + 70, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_3 + 72, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_3 + 74, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_3 + 76, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_3 + 78, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_3 + 80, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_3 + 82, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_3 + 84, ct_ga, 1.76, 1.76 );

setEffRotateKey( spep_3 + 67, ct_ga, 3 );
setEffRotateKey( spep_3 + 84, ct_ga, 3 );

setEffAlphaKey( spep_3 + 67, ct_ga, 255 );
setEffAlphaKey( spep_3 + 80, ct_ga, 255 );
setEffAlphaKey( spep_3 + 82, ct_ga, 64 );
setEffAlphaKey( spep_3 + 84, ct_ga, 0 );

--***書き文字バキ1***
ct_baki1 = entryEffectLife( spep_3 + 43, 10020, 19, 0x100, -1, 0, 200.5, 322.8 );

setEffShake(  spep_3 + 43,  ct_baki1,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 43, ct_baki1, 150.5, 322.8 , 0 );
setEffMoveKey( spep_3 + 46, ct_baki1, 148.9, 337.3 , 0 );
setEffMoveKey( spep_3 + 48, ct_baki1, 151, 337 , 0 );
setEffMoveKey( spep_3 + 50, ct_baki1, 149.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ct_baki1, 151.4, 342 , 0 );
setEffMoveKey( spep_3 + 54, ct_baki1, 147.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 56, ct_baki1, 158.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 58, ct_baki1, 151.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 60, ct_baki1, 162.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 62, ct_baki1, 166.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 43, ct_baki1, 1.58, 1.58 );
setEffScaleKey( spep_3 + 46, ct_baki1, 1.67, 1.67 );
setEffScaleKey( spep_3 + 48, ct_baki1, 1.7, 1.7 );
setEffScaleKey( spep_3 + 50, ct_baki1, 1.77, 1.77 );
setEffScaleKey( spep_3 + 52, ct_baki1, 1.82, 1.82 );
setEffScaleKey( spep_3 + 54, ct_baki1, 1.86, 1.86 );
setEffScaleKey( spep_3 + 56, ct_baki1, 1.88, 1.88 );
setEffScaleKey( spep_3 + 58, ct_baki1, 1.89, 1.89 );
setEffScaleKey( spep_3 + 60, ct_baki1, 2.14, 2.14 );
setEffScaleKey( spep_3 + 62, ct_baki1, 2.22, 2.22 );

setEffRotateKey( spep_3 + 43, ct_baki1, -35.2 );
setEffRotateKey( spep_3 + 62, ct_baki1, -35.2 );

setEffAlphaKey( spep_3 + 43, ct_baki1, 255 );
setEffAlphaKey( spep_3 + 58, ct_baki1, 255 );
setEffAlphaKey( spep_3 + 60, ct_baki1, 64 );
setEffAlphaKey( spep_3 + 62, ct_baki1, 0 );

--***書き文字バキ2***

ct_baki2 = entryEffectLife( spep_3 + 87, 10020, 19, 0x100, -1, 0, 200.5, 323.2 );

setEffShake(  spep_3 + 87,  ct_baki2,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 87, ct_baki2, 150.5, 323.2 , 0 );
setEffMoveKey( spep_3 + 90, ct_baki2, 148.9, 337.4 , 0 );
setEffMoveKey( spep_3 + 92, ct_baki2, 151, 337 , 0 );
setEffMoveKey( spep_3 + 94, ct_baki2, 149.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 96, ct_baki2, 151.4, 342 , 0 );
setEffMoveKey( spep_3 + 98, ct_baki2, 147.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 100, ct_baki2, 158.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 102, ct_baki2, 151.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 104, ct_baki2, 162.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 106, ct_baki2, 166.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 87, ct_baki2, 1.58, 1.58 );
setEffScaleKey( spep_3 + 90, ct_baki2, 1.67, 1.67 );
setEffScaleKey( spep_3 + 92, ct_baki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 94, ct_baki2, 1.77, 1.77 );
setEffScaleKey( spep_3 + 96, ct_baki2, 1.82, 1.82 );
setEffScaleKey( spep_3 + 98, ct_baki2, 1.86, 1.86 );
setEffScaleKey( spep_3 + 100, ct_baki2, 1.88, 1.88 );
setEffScaleKey( spep_3 + 102, ct_baki2, 1.89, 1.89 );
setEffScaleKey( spep_3 + 104, ct_baki2, 2.14, 2.14 );
setEffScaleKey( spep_3 + 106, ct_baki2, 2.22, 2.22 );

setEffRotateKey( spep_3 + 87, ct_baki2, -35.2 );
setEffRotateKey( spep_3 + 106, ct_baki2, -35.2 );

setEffAlphaKey( spep_3 + 87, ct_baki2, 255 );
setEffAlphaKey( spep_3 + 102, ct_baki2, 255 );
setEffAlphaKey( spep_3 + 104, ct_baki2, 64 );
setEffAlphaKey( spep_3 + 106, ct_baki2, 0 );

--***書き文字ドガガガ***--バキ２よりプライオリティは下にする
ct_dogaga = entryEffectLife( spep_3 + 80, 10017, 98, 0x100, -1, 0, -138.3, 304 );

setEffShake(  spep_3 + 80,  ct_dogaga,  98,  5);  --揺れ

setEffMoveKey( spep_3 + 80, ct_dogaga, -138.3, 304 , 0 );
setEffMoveKey( spep_3 + 100, ct_dogaga, -138.3, 304 , 0 );
setEffMoveKey( spep_3 + 102, ct_dogaga, -115.1, 313.8 , 0 );
setEffMoveKey( spep_3 + 104, ct_dogaga, -72, 319.6 , 0 );
setEffMoveKey( spep_3 + 106, ct_dogaga, -55.2, 324.1 , 0 );
setEffMoveKey( spep_3 + 108, ct_dogaga, -59, 328 , 0 );
setEffMoveKey( spep_3 + 110, ct_dogaga, -39.5, 326.8 , 0 );
setEffMoveKey( spep_3 + 112, ct_dogaga, -56.8, 325.5 , 0 );
setEffMoveKey( spep_3 + 114, ct_dogaga, -44.7, 316.8 , 0 );
setEffMoveKey( spep_3 + 116, ct_dogaga, -57.9, 327.5 , 0 );
setEffMoveKey( spep_3 + 118, ct_dogaga, -37.9, 312.8 , 0 );
setEffMoveKey( spep_3 + 120, ct_dogaga, -50.3, 328.1 , 0 );
setEffMoveKey( spep_3 + 122, ct_dogaga, -34.1, 323.3 , 0 );
setEffMoveKey( spep_3 + 124, ct_dogaga, -43.6, 331.7 , 0 );
setEffMoveKey( spep_3 + 126, ct_dogaga, -32.6, 319.2 , 0 );
setEffMoveKey( spep_3 + 128, ct_dogaga, -32, 332.4 , 0 );
setEffMoveKey( spep_3 + 130, ct_dogaga, -35.1, 318.3 , 0 );
setEffMoveKey( spep_3 + 132, ct_dogaga, -29.5, 334.1 , 0 );
setEffMoveKey( spep_3 + 134, ct_dogaga, -39.6, 317.5 , 0 );
setEffMoveKey( spep_3 + 136, ct_dogaga, -18.5, 328.4 , 0 );
setEffMoveKey( spep_3 + 138, ct_dogaga, -33.6, 322.9 , 0 );
setEffMoveKey( spep_3 + 140, ct_dogaga, -16.3, 328.7 , 0 );
setEffMoveKey( spep_3 + 142, ct_dogaga, -25.6, 316.1 , 0 );
setEffMoveKey( spep_3 + 144, ct_dogaga, -12.6, 328.9 , 0 );
setEffMoveKey( spep_3 + 146, ct_dogaga, -29.3, 325 , 0 );
setEffMoveKey( spep_3 + 148, ct_dogaga, -11.3, 330.5 , 0 );
setEffMoveKey( spep_3 + 150, ct_dogaga, -18.6, 316.8 , 0 );
setEffMoveKey( spep_3 + 152, ct_dogaga, -9.2, 334.7 , 0 );
setEffMoveKey( spep_3 + 154, ct_dogaga, -19.8, 316.2 , 0 );
setEffMoveKey( spep_3 + 156, ct_dogaga, 0.6, 327.8 , 0 );
setEffMoveKey( spep_3 + 158, ct_dogaga, -19.9, 325.7 , 0 );
setEffMoveKey( spep_3 + 160, ct_dogaga, 3.1, 323.6 , 0 );
setEffMoveKey( spep_3 + 162, ct_dogaga, -12.2, 329.8 , 0 );
setEffMoveKey( spep_3 + 164, ct_dogaga, 0, 318.7 , 0 );
setEffMoveKey( spep_3 + 166, ct_dogaga, -0.9, 327.8 , 0 );
setEffMoveKey( spep_3 + 168, ct_dogaga, -5, 331.9 , 0 );
setEffMoveKey( spep_3 + 170, ct_dogaga, 15.5, 330.6 , 0 );
setEffMoveKey( spep_3 + 172, ct_dogaga, 9, 336.1 , 0 );
setEffMoveKey( spep_3 + 174, ct_dogaga, -2, 327.9 , 0 );
setEffMoveKey( spep_3 + 176, ct_dogaga, 19.1, 350.8 , 0 );
setEffMoveKey( spep_3 + 178, ct_dogaga, 21.1, 361.8 , 0 );

setEffScaleKey( spep_3 + 80, ct_dogaga, 1.92, 1.92 );
setEffScaleKey( spep_3 + 100, ct_dogaga, 1.92, 1.92 );
setEffScaleKey( spep_3 + 102, ct_dogaga, 2.18, 2.18 );
setEffScaleKey( spep_3 + 104, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 + 106, ct_dogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 108, ct_dogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 + 110, ct_dogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 112, ct_dogaga, 2.72, 2.72 );
setEffScaleKey( spep_3 + 114, ct_dogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 116, ct_dogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 + 118, ct_dogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 120, ct_dogaga, 2.74, 2.74 );
setEffScaleKey( spep_3 + 122, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 + 124, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 + 126, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 128, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_3 + 130, ct_dogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 132, ct_dogaga, 2.77, 2.77 );
setEffScaleKey( spep_3 + 134, ct_dogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 136, ct_dogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 + 138, ct_dogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 140, ct_dogaga, 2.79, 2.79 );
setEffScaleKey( spep_3 + 142, ct_dogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 144, ct_dogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 + 146, ct_dogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 148, ct_dogaga, 2.81, 2.81 );
setEffScaleKey( spep_3 + 150, ct_dogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 152, ct_dogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 + 154, ct_dogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 156, ct_dogaga, 2.83, 2.83 );
setEffScaleKey( spep_3 + 158, ct_dogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 + 160, ct_dogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 + 162, ct_dogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 164, ct_dogaga, 2.85, 2.85 );
setEffScaleKey( spep_3 + 166, ct_dogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 168, ct_dogaga, 2.86, 2.86 );
setEffScaleKey( spep_3 + 170, ct_dogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 172, ct_dogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 + 174, ct_dogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 + 176, ct_dogaga, 2.98, 2.98 );
setEffScaleKey( spep_3 + 178, ct_dogaga, 3.04, 3.04 );

setEffRotateKey( spep_3 + 80, ct_dogaga, -10.5 );
setEffRotateKey( spep_3 + 178, ct_dogaga, -10.5 );

setEffAlphaKey( spep_3 + 80, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 98, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 99, ct_dogaga, 0 );
setEffAlphaKey( spep_3 + 100, ct_dogaga, 255 );
setEffAlphaKey( spep_3 + 172, ct_dogaga, 255 );
setEffAlphaKey( spep_3 + 174, ct_dogaga, 170 );
setEffAlphaKey( spep_3 + 176, ct_dogaga, 85 );
setEffAlphaKey( spep_3 + 178, ct_dogaga, 0 );

--***書き文字バキ3***

ct_baki3 = entryEffectLife( spep_3 + 215, 10020, 19, 0x100, -1, 0, 200.5, 323.2 );

setEffShake(  spep_3 + 215,  ct_baki3,  19,  5);  --揺れ

setEffMoveKey( spep_3 + 215, ct_baki3, 150.5, 323.2 , 0 );
setEffMoveKey( spep_3 + 218, ct_baki3, 148.9, 337.4 , 0 );
setEffMoveKey( spep_3 + 220, ct_baki3, 151, 337 , 0 );
setEffMoveKey( spep_3 + 222, ct_baki3, 149.2, 348.8 , 0 );
setEffMoveKey( spep_3 + 224, ct_baki3, 151.4, 342 , 0 );
setEffMoveKey( spep_3 + 226, ct_baki3, 147.1, 361.1 , 0 );
setEffMoveKey( spep_3 + 228, ct_baki3, 158.6, 357.5 , 0 );
setEffMoveKey( spep_3 + 230, ct_baki3, 151.7, 358.4 , 0 );
setEffMoveKey( spep_3 + 232, ct_baki3, 162.5, 367.8 , 0 );
setEffMoveKey( spep_3 + 234, ct_baki3, 166.9, 369.4 , 0 );

setEffScaleKey( spep_3 + 215, ct_baki3, 1.58, 1.58 );
setEffScaleKey( spep_3 + 218, ct_baki3, 1.67, 1.67 );
setEffScaleKey( spep_3 + 220, ct_baki3, 1.7, 1.7 );
setEffScaleKey( spep_3 + 222, ct_baki3, 1.77, 1.77 );
setEffScaleKey( spep_3 + 224, ct_baki3, 1.82, 1.82 );
setEffScaleKey( spep_3 + 226, ct_baki3, 1.86, 1.86 );
setEffScaleKey( spep_3 + 228, ct_baki3, 1.88, 1.88 );
setEffScaleKey( spep_3 + 230, ct_baki3, 1.89, 1.89 );
setEffScaleKey( spep_3 + 232, ct_baki3, 2.14, 2.14 );
setEffScaleKey( spep_3 + 234, ct_baki3, 2.22, 2.22 );

setEffRotateKey( spep_3 + 215, ct_baki3, -35.2 );
setEffRotateKey( spep_3 + 234, ct_baki3, -35.2 );

setEffAlphaKey( spep_3 + 215, ct_baki3, 255 );
setEffAlphaKey( spep_3 + 230, ct_baki3, 255 );
setEffAlphaKey( spep_3 + 232, ct_baki3, 64 );
setEffAlphaKey( spep_3 + 234, ct_baki3, 0 );

--***書き文字シュン1***
ct_shun1 = entryEffectLife( spep_3 + 263, 10011, 15, 0x100, -1, 0, -187.3, 120.4 );

setEffMoveKey( spep_3 + 263, ct_shun1, -187.3, 120.4 , 0 );
setEffMoveKey( spep_3 + 266, ct_shun1, -193.3, 125.8 , 0 );
setEffMoveKey( spep_3 + 268, ct_shun1, -196.9, 129.1 , 0 );
setEffMoveKey( spep_3 + 270, ct_shun1, -198.2, 130.2 , 0 );
setEffMoveKey( spep_3 + 278, ct_shun1, -198.2, 130.2 , 0 );

setEffScaleKey( spep_3 + 263, ct_shun1, 0.6, 0.6 );
setEffScaleKey( spep_3 + 266, ct_shun1, 0.92, 0.92 );
setEffScaleKey( spep_3 + 268, ct_shun1, 1.11, 1.11 );
setEffScaleKey( spep_3 + 270, ct_shun1, 1.17, 1.17 );
setEffScaleKey( spep_3 + 272, ct_shun1, 1.18, 1.18 );
setEffScaleKey( spep_3 + 274, ct_shun1, 1.21, 1.21 );
setEffScaleKey( spep_3 + 276, ct_shun1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 278, ct_shun1, 1.31, 1.31 );

setEffRotateKey( spep_3 + 263, ct_shun1, 4.7 );
setEffRotateKey( spep_3 + 278, ct_shun1, 4.7 );

setEffAlphaKey( spep_3 + 263, ct_shun1, 255 );
setEffAlphaKey( spep_3 + 270, ct_shun1, 255 );
setEffAlphaKey( spep_3 + 272, ct_shun1, 239 );
setEffAlphaKey( spep_3 + 274, ct_shun1, 191 );
setEffAlphaKey( spep_3 + 276, ct_shun1, 112 );
setEffAlphaKey( spep_3 + 278, ct_shun1, 0 );

--***書き文字シュン2***
ct_shun2 = entryEffectLife( spep_3 + 341, 10011, 15, 0x100, -1, 0, 200.9, 265.3 );

setEffMoveKey( spep_3 + 341, ct_shun2, 200.9, 265.3 , 0 );
setEffMoveKey( spep_3 + 344, ct_shun2, 196.9, 272.5 , 0 );
setEffMoveKey( spep_3 + 346, ct_shun2, 194.6, 276.8 , 0 );
setEffMoveKey( spep_3 + 348, ct_shun2, 193.8, 278.2 , 0 );
setEffMoveKey( spep_3 + 354, ct_shun2, 193.8, 278.2 , 0 );
setEffMoveKey( spep_3 + 356, ct_shun2, 193.8, 278.3 , 0 );

setEffScaleKey( spep_3 + 341, ct_shun2, 0.6, 0.6 );
setEffScaleKey( spep_3 + 344, ct_shun2, 0.92, 0.92 );
setEffScaleKey( spep_3 + 346, ct_shun2, 1.11, 1.11 );
setEffScaleKey( spep_3 + 348, ct_shun2, 1.17, 1.17 );
setEffScaleKey( spep_3 + 350, ct_shun2, 1.18, 1.18 );
setEffScaleKey( spep_3 + 352, ct_shun2, 1.21, 1.21 );
setEffScaleKey( spep_3 + 354, ct_shun2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 356, ct_shun2, 1.31, 1.31 );

setEffRotateKey( spep_3 + 341, ct_shun2, -14.2 );
setEffRotateKey( spep_3 + 356, ct_shun2, -14.2 );

setEffAlphaKey( spep_3 + 341, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 348, ct_shun2, 255 );
setEffAlphaKey( spep_3 + 350, ct_shun2, 239 );
setEffAlphaKey( spep_3 + 352, ct_shun2, 191 );
setEffAlphaKey( spep_3 + 354, ct_shun2, 112 );
setEffAlphaKey( spep_3 + 356, ct_shun2, 0 );

--***書き文字バゴ***
ct_bago = entryEffectLife( spep_3 + 380, 10021, 22, 0x100, -1, 0, 39.7, 241.5 );

setEffShake(  spep_3 + 380,  ct_bago,  22,  5);  --揺れ

setEffMoveKey( spep_3 + 380, ct_bago, 39.7, 241.5 , 0 );
setEffMoveKey( spep_3 + 382, ct_bago, 14.6, 280.6 , 0 );
setEffMoveKey( spep_3 + 384, ct_bago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_3 + 386, ct_bago, 6.4, 298.3 , 0 );
setEffMoveKey( spep_3 + 388, ct_bago, 18, 317.8 , 0 );
setEffMoveKey( spep_3 + 390, ct_bago, 6.4, 309.6 , 0 );
setEffMoveKey( spep_3 + 392, ct_bago, 20.3, 313.2 , 0 );
setEffMoveKey( spep_3 + 394, ct_bago, 2.5, 319.8 , 0 );
setEffMoveKey( spep_3 + 396, ct_bago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_3 + 398, ct_bago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_3 + 400, ct_bago, 14, 341.4 , 0 );
setEffMoveKey( spep_3 + 402, ct_bago, 11.5, 356.3 , 0 );

setEffScaleKey( spep_3 + 380, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_3 + 382, ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_3 + 384, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_3 + 386, ct_bago, 2.56, 2.56 );
setEffScaleKey( spep_3 + 388, ct_bago, 2.59, 2.59 );
setEffScaleKey( spep_3 + 390, ct_bago, 2.62, 2.62 );
setEffScaleKey( spep_3 + 392, ct_bago, 2.64, 2.64 );
setEffScaleKey( spep_3 + 394, ct_bago, 2.67, 2.67 );
setEffScaleKey( spep_3 + 396, ct_bago, 2.7, 2.7 );
setEffScaleKey( spep_3 + 398, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_3 + 400, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_3 + 402, ct_bago, 2.96, 2.96 );

setEffRotateKey( spep_3 + 380, ct_bago, -11.7 );
setEffRotateKey( spep_3 + 382, ct_bago, -14.6 );
setEffRotateKey( spep_3 + 384, ct_bago, -15.6 );
setEffRotateKey( spep_3 + 402, ct_bago, -15.6 );

setEffAlphaKey( spep_3 + 380, ct_bago, 255 );
setEffAlphaKey( spep_3 + 396, ct_bago, 255 );
setEffAlphaKey( spep_3 + 398, ct_bago, 227 );
setEffAlphaKey( spep_3 + 400, ct_bago, 142 );
setEffAlphaKey( spep_3 + 402, ct_bago, 0 );

--***集中線2***
shuchusen3a = entryEffectLife(  spep_3+380,  906,  60,  0x100,  -1,  0,  0,  0);

setEffRotateKey(  spep_3+380, shuchusen3a,  0);--固定のまま
setEffRotateKey(  spep_3+440, shuchusen3a,  0);--固定のまま

setEffAlphaKey(  spep_3+380,  shuchusen3a,  255);--固定のまま
setEffAlphaKey(  spep_3+440,  shuchusen3a,  255);--固定のまま

setEffScaleKey(  spep_3+380,  shuchusen3a,  3,  1.6);
setEffScaleKey(  spep_3+440,  shuchusen3a,  3,  1.6);

setEffMoveKey(  spep_3+380,  shuchusen3a,  -310,  0);
setEffMoveKey(  spep_3+440,  shuchusen3a,  -310,  0);

--***SE***
playSe( spep_3+19, 1002);--ドン
playSe( spep_3+43, 1001);--バキ
playSe( spep_3+67, 1000);--ガ
playSe( spep_3+87, 1007);--バキ
playSe( spep_3+103, 1001);--どガガガ
playSe( spep_3+125, 1000);--どガガガ
playSe( spep_3+139, 1007);--どガガガ
playSe( spep_3+155, 1001);--どガガガ
playSe( spep_3+169, 1009);--どガガガ
playSe( spep_3+215, 1010);--バキ
playSe( spep_3+263, 43);--しゅん
playSe( spep_3+341, 43);--しゅん
playSe( spep_3+380, 1011);--ばご

------------------------------------------------------
-- 突進(120F)
------------------------------------------------------
spep_4 = spep_3+440;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- しっかり白

--***突進**+2
toshhin = entryEffect(  spep_4+2,  SP_04x,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4+2,  toshhin,  1.05,  1.05);
setEffScaleKey(  spep_4+120,  toshhin,  1.05,  1.05);
setEffMoveKey(  spep_4+2,  toshhin,  0,  0);
setEffMoveKey(  spep_4+120,  toshhin,  0,  0);
setEffRotateKey(  spep_4+2,  toshhin,  0);
setEffRotateKey(  spep_4+120,  toshhin,  0);
setEffAlphaKey(  spep_4+2,  toshhin,  255);
setEffAlphaKey(  spep_4+120,  toshhin,  255);
setEffAlphaKey(  spep_4+121,  toshhin,  0);
setEffAlphaKey(  spep_4+122,  toshhin,  0);

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  120,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.4,  1.4);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4, shuchusen4,  0);
setEffRotateKey(  spep_4+120, shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 32, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 0, -185.7 , 0 );
setMoveKey( spep_4 + 2, 1, 0.2, -204.8 , 0 );
setMoveKey( spep_4 + 4, 1, 0.4, -225.9 , 0 );
setMoveKey( spep_4 + 6, 1, 0.7, -249.1 , 0 );
setMoveKey( spep_4 + 8, 1, 0.9, -274.9 , 0 );
setMoveKey( spep_4 + 10, 1, 1.2, -303.4 , 0 );
setMoveKey( spep_4 + 12, 1, 1.6, -335.1 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, -370.5 , 0 );
setMoveKey( spep_4 + 16, 1, 2.3, -410.1 , 0 );
setMoveKey( spep_4 + 18, 1, 2.8, -454.4 , 0 );
setMoveKey( spep_4 + 20, 1, 3.3, -504.1 , 0 );
setMoveKey( spep_4 + 22, 1, 3.9, -560.2 , 0 );
setMoveKey( spep_4 + 24, 1, 4.5, -623.4 , 0 );
setMoveKey( spep_4 + 26, 1, 5.3, -695.2 , 0 );
setMoveKey( spep_4 + 28, 1, 6.1, -776.9 , 0 );
setMoveKey( spep_4 + 30, 1, 7.1, -870.5 , 0 );
setMoveKey( spep_4 + 32, 1, 8.2, -978.3 , 0 );
setMoveKey( spep_4 + 34, 1, 9.5, -1103.7 , 0 );
setMoveKey( spep_4 + 36, 1, 11, -1251.1 , 0 );
setMoveKey( spep_4 + 38, 1, 12.9, -1427.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 2, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 4, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 6, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 8, 1, 1, 1 );
setScaleKey( spep_4 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 24, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 26, 1, 2, 2 );
setScaleKey( spep_4 + 28, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 30, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 32, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 34, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 38, 1, 2.43, 2.43 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 0.8 );
setRotateKey( spep_4 + 4, 1, 1.6 );
setRotateKey( spep_4 + 6, 1, 2.4 );
setRotateKey( spep_4 + 8, 1, 3.3 );
setRotateKey( spep_4 + 10, 1, 4.1 );
setRotateKey( spep_4 + 12, 1, 4.9 );
setRotateKey( spep_4 + 14, 1, 5.7 );
setRotateKey( spep_4 + 16, 1, 6.5 );
setRotateKey( spep_4 + 18, 1, 7.3 );
setRotateKey( spep_4 + 20, 1, 8.2 );
setRotateKey( spep_4 + 22, 1, 9 );
setRotateKey( spep_4 + 24, 1, 9.8 );
setRotateKey( spep_4 + 26, 1, 10.6 );
setRotateKey( spep_4 + 28, 1, 11.4 );
setRotateKey( spep_4 + 30, 1, 12.2 );
setRotateKey( spep_4 + 32, 1, 13 );
setRotateKey( spep_4 + 34, 1, 13.9 );
setRotateKey( spep_4 + 36, 1, 14.7 );
setRotateKey( spep_4 + 38, 1, 15.5 );

--***SE***
playSe( spep_4+4, 8);--突進のやつ
playSe( spep_4+70, 9);--突進のやつ

------------------------------------------------------
-- ヒット(170F)
------------------------------------------------------

spep_5 = spep_4+120;

--***フェードと背景***
entryFade( spep_5-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     --長い白
entryFade( spep_5+32, 0, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     --長い白

--***ラスト爆発前面***+2
BomFront = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --手前

setEffScaleKey(  spep_5,  BomFront,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  BomFront,  1.0,  1.0);
setEffMoveKey(  spep_5,  BomFront,  0,  0);
setEffMoveKey(  spep_5+180,  BomFront,  0,  0);
setEffRotateKey(  spep_5,  BomFront,  0);
setEffRotateKey(  spep_5+180,  BomFront,  0);
setEffAlphaKey(  spep_5,  BomFront,  255);
setEffAlphaKey(  spep_5+38,  BomFront,  255);
setEffAlphaKey(  spep_5+39,  BomFront,  0);
setEffAlphaKey(  spep_5+40,  BomFront,  0);

--***ラスト爆発背面***+2
BomBack = entryEffect(  spep_5,  SP_06,  0x80,  -1,  0,  0,  0);  --うしろ

setEffScaleKey(  spep_5,  BomBack,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  BomBack,  1.0,  1.0);
setEffMoveKey(  spep_5,  BomBack,  0,  0);
setEffMoveKey(  spep_5+180,  BomBack,  0,  0);
setEffRotateKey(  spep_5,  BomBack,  0);
setEffRotateKey(  spep_5+180,  BomBack,  0);
setEffAlphaKey(  spep_5,  BomBack,  255);
setEffAlphaKey(  spep_5+180,  BomBack,  255);

--***集中線***
shuchusen5 = entryEffectLife(  spep_5,  906,  180,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  2,  3);
setEffScaleKey(  spep_5+180,  shuchusen5,  2, 3);
setEffMoveKey(  spep_5,  shuchusen5,  100,  -350);
setEffMoveKey(  spep_5+180,  shuchusen5,  100,  -350);
setEffRotateKey(  spep_5, shuchusen5,  30);
setEffRotateKey(  spep_5+180, shuchusen5,  30);

setEffAlphaKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5+32,  shuchusen5,  0);
setEffAlphaKey(  spep_5+37,  shuchusen5,  0);
setEffAlphaKey(  spep_5+38,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 34, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5+3 + 0, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5+3 + 2, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5+3 + 4, 1, -114.3, 199 , 0 );
setMoveKey( spep_5+3 + 6, 1, -64.2, 162 , 0 );
setMoveKey( spep_5+3 + 8, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5+3 + 10, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5+3 + 12, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5+3 + 14, 1, 83.7, 11 , 0 );
setMoveKey( spep_5+3 + 16, 1, 109.1, -26 , 0 );
setMoveKey( spep_5+3 + 18, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5+3 + 20, 1, 149.2, -96 , 0 );
setMoveKey( spep_5+3 + 22, 1, 164.6, -129 , 0 );
setMoveKey( spep_5+3 + 24, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5+3 + 26, 1, 185, -190.5 , 0 );
setMoveKey( spep_5+3 + 28, 1, 190, -219.4 , 0 );
setMoveKey( spep_5+3 + 30, 1, 191.8, -246.9 , 0 );
setMoveKey( spep_5+3 + 32, 1, 190.7, -272.7 , 0 );
setMoveKey( spep_5+3 + 34, 1, 187.1, -296.5 , 0 );

--[[
setMoveKey( spep_5 , 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 , 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 3, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 4, 1, -234.8, 269.8 , 0 );
setMoveKey( spep_5 + 5, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5 + 6, 1, -170.9, 235.6 , 0 );
setMoveKey( spep_5 + 7, 1, -114.3, 199 , 0 );
setMoveKey( spep_5 + 8, 1, -114.3, 199 , 0 );
setMoveKey( spep_5 + 9, 1, -64.2, 162 , 0 );
setMoveKey( spep_5 + 10, 1, -64.2, 162 , 0 );
setMoveKey( spep_5 + 11, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5 + 12, 1, -19.5, 124.6 , 0 );
setMoveKey( spep_5 + 13, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5 + 14, 1, 19.9, 86.6 , 0 );
setMoveKey( spep_5 + 15, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5 + 16, 1, 54.3, 48.6 , 0 );
setMoveKey( spep_5 + 17, 1, 83.7, 11 , 0 );
setMoveKey( spep_5 + 18, 1, 83.7, 11 , 0 );
setMoveKey( spep_5 + 19, 1, 109.1, -26 , 0 );
setMoveKey( spep_5 + 20, 1, 109.1, -26 , 0 );
setMoveKey( spep_5 + 21, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5 + 22, 1, 130.8, -61.6 , 0 );
setMoveKey( spep_5 + 23, 1, 149.2, -96 , 0 );
setMoveKey( spep_5 + 24, 1, 149.2, -96 , 0 );
setMoveKey( spep_5 + 25, 1, 164.6, -129 , 0 );
setMoveKey( spep_5 + 26, 1, 164.6, -129 , 0 );
setMoveKey( spep_5 + 27, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5 + 28, 1, 176.6, -160.4 , 0 );
setMoveKey( spep_5 + 29, 1, 185, -190.5 , 0 );
setMoveKey( spep_5 + 30, 1, 185, -190.5 , 0 );
setMoveKey( spep_5 + 31, 1, 190, -219.4 , 0 );
setMoveKey( spep_5 + 32, 1, 190, -219.4 , 0 );
setMoveKey( spep_5 + 33, 1, 191.8, -246.9 , 0 );
setMoveKey( spep_5 + 34, 1, 191.8, -246.9 , 0 );
--setMoveKey( spep_5 + 35, 1, 190.7, -272.7 , 0 );
--setMoveKey( spep_5 + 36, 1, 190.7, -272.7 , 0 );
]]

setScaleKey( spep_5 + 0, 1, 1.76, 1.76 );
setScaleKey( spep_5 + 1, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 2, 1, 1.65, 1.65 );
setScaleKey( spep_5 + 3, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 4, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 5, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 7, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 8, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 9, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 11, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 13, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 15, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 17, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 19, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 21, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 22, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 23, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 25, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 26, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 27, 1, 0.2, 0.21 );
setScaleKey( spep_5 + 28, 1, 0.2, 0.21 );
setScaleKey( spep_5 + 29, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 30, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 31, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 32, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 33, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 34, 1, 0.06, 0.06 );

setRotateKey( spep_5 + 0, 1, 14.8 );
setRotateKey( spep_5 + 34, 1, 14.8 );

--***書き文字ドゴォンッ***
ct_dgonn  = entryEffectLife( spep_5 + 34, 10018, 82, 0x100, -1, 0, -70.4, 286.5 );

setEffShake(  spep_5 + 34,  ct_dgonn,  82,  5);  --揺れ

setEffMoveKey( spep_5 + 34, ct_dgonn , -70.4, 286.5 , 0 );
setEffMoveKey( spep_5 + 40, ct_dgonn , -70.4, 286.5 , 0 );
setEffMoveKey( spep_5 + 42, ct_dgonn , -80.3, 297.9 , 0 );
setEffMoveKey( spep_5 + 44, ct_dgonn , -88, 317.7 , 0 );
setEffMoveKey( spep_5 + 46, ct_dgonn , -88.2, 317.7 , 0 );
setEffMoveKey( spep_5 + 48, ct_dgonn , -88.9, 313 , 0 );
setEffMoveKey( spep_5 + 50, ct_dgonn , -91.2, 324.2 , 0 );
setEffMoveKey( spep_5 + 52, ct_dgonn , -87.1, 319.9 , 0 );
setEffMoveKey( spep_5 + 54, ct_dgonn , -94.3, 321.8 , 0 );
setEffMoveKey( spep_5 + 56, ct_dgonn , -87.1, 326.6 , 0 );
setEffMoveKey( spep_5 + 58, ct_dgonn , -92.8, 321.3 , 0 );
setEffMoveKey( spep_5 + 60, ct_dgonn , -91.9, 326.7 , 0 );
setEffMoveKey( spep_5 + 62, ct_dgonn , -92.4, 321.2 , 0 );
setEffMoveKey( spep_5 + 64, ct_dgonn , -94.6, 332.3 , 0 );
setEffMoveKey( spep_5 + 66, ct_dgonn , -90, 327.2 , 0 );
setEffMoveKey( spep_5 + 68, ct_dgonn , -97.3, 328.5 , 0 );
setEffMoveKey( spep_5 + 70, ct_dgonn , -89.5, 332.9 , 0 );
setEffMoveKey( spep_5 + 72, ct_dgonn , -95.2, 326.9 , 0 );
setEffMoveKey( spep_5 + 74, ct_dgonn , -94.1, 331.9 , 0 );
setEffMoveKey( spep_5 + 76, ct_dgonn , -94.3, 325.7 , 0 );
setEffMoveKey( spep_5 + 78, ct_dgonn , -96.3, 336.5 , 0 );
setEffMoveKey( spep_5 + 80, ct_dgonn , -91.4, 330.7 , 0 );
setEffMoveKey( spep_5 + 82, ct_dgonn , -98.6, 331.5 , 0 );
setEffMoveKey( spep_5 + 84, ct_dgonn , -90.5, 335.4 , 0 );
setEffMoveKey( spep_5 + 86, ct_dgonn , -94.6, 333.3 , 0 );
setEffMoveKey( spep_5 + 88, ct_dgonn , -98.2, 328.7 , 0 );
setEffMoveKey( spep_5 + 90, ct_dgonn , -103.5, 341.8 , 0 );
setEffMoveKey( spep_5 + 92, ct_dgonn , -101.2, 337.3 , 0 );
setEffMoveKey( spep_5 + 94, ct_dgonn , -111.8, 339.8 , 0 );
setEffMoveKey( spep_5 + 96, ct_dgonn , -105.3, 345.7 , 0 );
setEffMoveKey( spep_5 + 98, ct_dgonn , -113.8, 339.6 , 0 );
setEffMoveKey( spep_5 + 100, ct_dgonn , -114.3, 346.2 , 0 );
setEffMoveKey( spep_5 + 102, ct_dgonn , -116.2, 339.5 , 0 );
setEffMoveKey( spep_5 + 104, ct_dgonn , -120, 353 , 0 );
setEffMoveKey( spep_5 + 106, ct_dgonn , -115.4, 346.6 , 0 );
setEffMoveKey( spep_5 + 108, ct_dgonn , -125, 348.1 , 0 );
setEffMoveKey( spep_5 + 110, ct_dgonn , -116, 353.2 , 0 );
setEffMoveKey( spep_5 + 112, ct_dgonn , -123.3, 345.4 , 0 );
setEffMoveKey( spep_5 + 114, ct_dgonn , -122, 351.3 , 0 );
setEffMoveKey( spep_5 + 116, ct_dgonn , -122.1, 351.4 , 0 );

setEffScaleKey( spep_5 + 34, ct_dgonn , 2.98, 2.98 );
setEffScaleKey( spep_5 + 40, ct_dgonn , 2.98, 2.98 );
setEffScaleKey( spep_5 + 42, ct_dgonn , 3.14, 3.14 );
setEffScaleKey( spep_5 + 44, ct_dgonn , 3.24, 3.24 );
setEffScaleKey( spep_5 + 46, ct_dgonn , 3.27, 3.27 );
setEffScaleKey( spep_5 + 48, ct_dgonn , 3.3, 3.3 );
setEffScaleKey( spep_5 + 50, ct_dgonn , 3.33, 3.33 );
setEffScaleKey( spep_5 + 52, ct_dgonn , 3.35, 3.35 );
setEffScaleKey( spep_5 + 54, ct_dgonn , 3.37, 3.37 );
setEffScaleKey( spep_5 + 56, ct_dgonn , 3.4, 3.4 );
setEffScaleKey( spep_5 + 58, ct_dgonn , 3.42, 3.42 );
setEffScaleKey( spep_5 + 60, ct_dgonn , 3.44, 3.44 );
setEffScaleKey( spep_5 + 62, ct_dgonn , 3.46, 3.46 );
setEffScaleKey( spep_5 + 64, ct_dgonn , 3.47, 3.47 );
setEffScaleKey( spep_5 + 66, ct_dgonn , 3.49, 3.49 );
setEffScaleKey( spep_5 + 68, ct_dgonn , 3.5, 3.5 );
setEffScaleKey( spep_5 + 70, ct_dgonn , 3.51, 3.51 );
setEffScaleKey( spep_5 + 72, ct_dgonn , 3.52, 3.52 );
setEffScaleKey( spep_5 + 74, ct_dgonn , 3.53, 3.53 );
setEffScaleKey( spep_5 + 76, ct_dgonn , 3.54, 3.54 );
setEffScaleKey( spep_5 + 78, ct_dgonn , 3.55, 3.55 );
setEffScaleKey( spep_5 + 80, ct_dgonn , 3.55, 3.55 );
setEffScaleKey( spep_5 + 82, ct_dgonn , 3.56, 3.56 );
setEffScaleKey( spep_5 + 86, ct_dgonn , 3.56, 3.56 );
setEffScaleKey( spep_5 + 88, ct_dgonn , 3.66, 3.66 );
setEffScaleKey( spep_5 + 90, ct_dgonn , 3.76, 3.76 );
setEffScaleKey( spep_5 + 92, ct_dgonn , 3.84, 3.84 );
setEffScaleKey( spep_5 + 94, ct_dgonn , 3.93, 3.93 );
setEffScaleKey( spep_5 + 96, ct_dgonn , 4, 4 );
setEffScaleKey( spep_5 + 98, ct_dgonn , 4.07, 4.07 );
setEffScaleKey( spep_5 + 100, ct_dgonn , 4.13, 4.13 );
setEffScaleKey( spep_5 + 102, ct_dgonn , 4.18, 4.18 );
setEffScaleKey( spep_5 + 104, ct_dgonn , 4.22, 4.22 );
setEffScaleKey( spep_5 + 106, ct_dgonn , 4.26, 4.26 );
setEffScaleKey( spep_5 + 108, ct_dgonn , 4.29, 4.29 );
setEffScaleKey( spep_5 + 110, ct_dgonn , 4.32, 4.32 );
setEffScaleKey( spep_5 + 112, ct_dgonn , 4.34, 4.34 );
setEffScaleKey( spep_5 + 114, ct_dgonn , 4.35, 4.35 );
setEffScaleKey( spep_5 + 116, ct_dgonn , 4.35, 4.35 );

setEffRotateKey( spep_5 + 34, ct_dgonn , -31.7 );
setEffRotateKey( spep_5 + 116, ct_dgonn , -31.7 );

setEffAlphaKey( spep_5 + 34, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 40, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 86, ct_dgonn , 255 );
setEffAlphaKey( spep_5 + 88, ct_dgonn , 222 );
setEffAlphaKey( spep_5 + 90, ct_dgonn , 192 );
setEffAlphaKey( spep_5 + 92, ct_dgonn , 163 );
setEffAlphaKey( spep_5 + 94, ct_dgonn , 137 );
setEffAlphaKey( spep_5 + 96, ct_dgonn , 113 );
setEffAlphaKey( spep_5 + 98, ct_dgonn , 92 );
setEffAlphaKey( spep_5 + 100, ct_dgonn , 73 );
setEffAlphaKey( spep_5 + 102, ct_dgonn , 56 );
setEffAlphaKey( spep_5 + 104, ct_dgonn , 41 );
setEffAlphaKey( spep_5 + 106, ct_dgonn , 28 );
setEffAlphaKey( spep_5 + 108, ct_dgonn , 18 );
setEffAlphaKey( spep_5 + 110, ct_dgonn , 10 );
setEffAlphaKey( spep_5 + 112, ct_dgonn , 5 );
setEffAlphaKey( spep_5 + 114, ct_dgonn , 1 );
setEffAlphaKey( spep_5 + 116, ct_dgonn , 0 );


--***SE***
playSe( spep_5, 44);--突進のやつ
playSe( spep_5+38, 1068);--突進のやつ
playSe( spep_5+50, 1023);--突進のやつ

-- ダメージ表示
dealDamage(spep_5+38);
--entryFade( spep_5+160, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_5+170);

end
