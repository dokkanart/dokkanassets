print ("[lua]sp1119");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150677;--ef_001
SP_01e = 150678;--ef_001e
SP_02 = 150679;--ef_002
SP_03 = 150680;--ef_003
SP_03e = 150681;--ef_003e
SP_04 = 150682;--ef_004
SP_04e = 150683;--ef_004e
SP_05 = 150684;--ef_005
SP_05e = 150685;--ef_005e
SP_06 = 150686;--ef_006
SP_07 = 150687;--ef_007
SP_08 = 150688;--ef_008
SP_08e = 150689;--ef_008e
SP_09 = 150690;--ef_009
SP_09e =150691;--ef_009e
SP_10 = 150692;--ef_010
SP_11 = 150693;--ef_011
SP_12 = 150703;--緑オーラ手前	ef_012
SP_13 = 150704;--緑オーラ奥	ef_013


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
SE_13 = 1042; --!?

multi_frm = 2;
                   

------------------------------------------------------
--溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

-- ** キャラクター ** --
setVisibleUI( 0, 0);
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0); --敵非表示
setScaleKey( 0, 0, 1.8, 1.8);
setScaleKey( 1, 0, 1.8, 1.8);
setScaleKey( 2, 0, 1.8, 1.8);
setScaleKey( 3, 0, 1.8, 1.8);
setScaleKey( 4, 0, 1.8, 1.8);
setScaleKey( 5, 0, 1.8, 1.8);
setScaleKey( 40, 0, 1.8, 1.8);
setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setShakeChara( 0, 0, 40, 10);


-- ** 背景フェード ** --
entryFadeBg( 0, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
aura1 = entryEffect( 0, SP_12, 0x100, -1, 0, 0, 0); --手前オーラ
setEffMoveKey( 0, aura1, 0, 0, 0);
setEffScaleKey( 0, aura1, 1.0, 1.0);
setEffAlphaKey( 0, aura1, 255);
setEffRotateKey( 0, aura1, 0);

aura2 = entryEffect( 0, SP_13, 0x80, -1, 0, 0, 0); --奥オーラ
setEffMoveKey( 0, aura2, 0, 0, 0);
setEffScaleKey( 0, aura2, 1.0, 1.0);
setEffAlphaKey( 0, aura2, 255);
setEffRotateKey( 0, aura2, 0);

aura_y1 = entryEffectLife( 0, 1500, 17, 0, -1, 0, 0, 0);  -- eff_001
setEffMoveKey( 0, aura_y1,0,0,0);
setEffScaleKey( 0, aura_y1, 1.0, 1.0);
setEffRotateKey( 0, aura_y1, 0);
setEffAlphaKey( 0, aura_y1, 255);

aura_y2 = entryEffectLife( 14, 1500, 17, 0, -1, 0, 0, 0);  -- eff_001
setEffMoveKey( 14, aura_y2,0,0,0);
setEffScaleKey( 14, aura_y2, 1.0, 1.0);
setEffRotateKey( 14, aura_y2, 0);
setEffAlphaKey( 14, aura_y2, 0);
setEffAlphaKey( 16, aura_y2, 0);
setEffAlphaKey( 17, aura_y2, 255);

-- ** ホワイトフェード ** --
entryFade( 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( 32, 0, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 0, SE_01);

------------------------------------------------------
-- カードカットイン(43F)
------------------------------------------------------

spep_1 = 43;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, -2000, -54, 0);
setDisp( spep_1, 0, 0);

-- ** カードカットイン ** --
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);

-- ** 音 ** --
playSe( spep_1+5, SE_05);

-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 左移動→ビーム(f)
------------------------------------------------------

spep_2 = spep_1+100; --143F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 流線 ** --
ryusen = entryEffectLife( spep_2, 920, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffScaleKey( spep_2, ryusen, 1.0, 1.0);
setEffAlphaKey( spep_2, ryusen, 255);
setEffRotateKey( spep_2, ryusen, 0);

-- ** エフェクト ** --
bidou = entryEffectLife( spep_2, SP_01, 90, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_2, bidou, 0, 0, 0);
setEffScaleKey( spep_2, bidou, 1.0, 1.0);
setEffAlphaKey( spep_2, bidou, 255);
setEffRotateKey( spep_2, bidou, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2+25, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2+25, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2+25, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_2+25, shuchusen, 255);
setEffRotateKey( spep_2+25, shuchusen, 0);

-- ** 奥行き流線 ** --
okuyuki = entryEffectLife( spep_2+40, 921, 67, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey( spep_2+40, okuyuki, 0, 60, 0);
setEffRotateKey( spep_2+40, okuyuki, -180);
setEffScaleKey( spep_2+40, okuyuki, 1.6, 1.7);
setEffAlphaKey( spep_2+40, okuyuki, 255);

-- ** 音 ** --
playSe( spep_2+10, 43);
seId = playSe( spep_2+46, 1021);

-- ** ホワイトフェード ** --
entryFade( spep_2+85, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 197; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_2+46, seId, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------

spep_3 = spep_2+98; --241F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 169, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
mukau = entryEffect( spep_3, SP_02, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_3, mukau, 0, 0, 0);
setEffScaleKey( spep_3, mukau, 1.0, 1.0);
setEffAlphaKey( spep_3, mukau, 255);
setEffRotateKey( spep_3, mukau, 0);

-- ** キャラクター ** --
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 101);                       -- 立ち
setScaleKey( spep_3, 1, 1.5, 1.5);
setScaleKey( spep_3+169, 1, 1.5, 1.5);
setMoveKey( spep_3-1, 1, 0, 20, 0);
setMoveKey( spep_3, 1, 160, 20, 0);
setMoveKey( spep_3+20, 1, 120, 20, 0);
setMoveKey( spep_3+64, 1, 120, 20, 0);
changeAnime( spep_3+20, 1, 104);                       -- ガード
--setMoveKey( spep_3+20, 1, 50, -54, 0);
setShakeChara( spep_3+26, 1, 143, 20);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 920, 103, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 0);
setEffScaleKey( spep_3, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen3, 255);

-- ** !! ** --
bikkuri = entryEffectLife( spep_3, 10000, 19, 0x100, -1, 0, -50, 200); -- ビックリ
setEffMoveKey( spep_3, bikkuri, 0, 250, 0);
setEffRotateKey( spep_3, bikkuri, 0);
setEffScaleKey( spep_3, bikkuri, 2, 2);
setEffScaleKey( spep_3+3, bikkuri, 2, 2);
setEffScaleKey( spep_3+4, bikkuri, 2.2, 2.2);
setEffScaleKey( spep_3+5, bikkuri, 2.2, 2.2);
setEffScaleKey( spep_3+6, bikkuri, 2, 2);
setEffAlphaKey( spep_3, bikkuri, 255);
setEffShake( spep_3+7, bikkuri, 18, 10);

-- ** 音 ** --
playSe( spep_3, 1021);
--playSe( spep_3+4, 1); --241
--playSe( spep_3+4, SE_13);

------------------------------------------------------
-- 剣で切る(100F)
------------------------------------------------------

spep_4 = spep_3+64; --305F

-- ** ゴクアエフェクト ** --
gokuha = entryEffect( spep_4+10, SP_03, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_4+12, gokuha, 0, 0, 0);
setEffScaleKey( spep_4+12, gokuha, 1.0, 1.0);
setEffAlphaKey( spep_4+12, gokuha, 255);
setEffRotateKey( spep_4+12, gokuha, 0);

entryFade( spep_4+36, 5, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFadeBg( spep_4+41, 0, 24, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_4+65, 0, 0, 2, 0, 0, 0, 150);          -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_4+17, 1, -150, -80, 0);
setMoveKey( spep_4+41, 1, -150, -80, 0);

setDisp( spep_4+41, 1, 0);
setDisp( spep_4+65, 1, 1);

setMoveKey( spep_4+65, 1, -90, 0, 0);
changeAnime( spep_4+65, 1, 106);                       -- 立ち
setRotateKey( spep_4+65, 1, -50);
--setRotateKey( spep_4+70, 1, -60);

setMoveKey( spep_4+79, 1, -600, -600, 0);
setDisp( spep_4+80, 1, 0);
setRotateKey( spep_4+80, 1, -110);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4+65, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4+65, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4+65, ryusen4, -30);
setEffScaleKey( spep_4+65, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+65, ryusen4, 255);

-- ** 音 ** --
playSe( spep_4+12, 43);
playSe( spep_4+49, 1032);

-- ** ホワイトフェード ** --
entryFade( spep_4+100, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 蹴る→気弾放つ(100F)
------------------------------------------------------

spep_5 = spep_4+113; --418

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_5, 1, 1);
setMoveKey( spep_5, 1, 600, 800, 0);
setMoveKey( spep_5+16, 1, 20, 80, 0);
setScaleKey( spep_5, 1, 1.5, 1.5);
setScaleKey( spep_5+40, 1, 1.5, 1.5);
changeAnime( spep_5+17, 1, 108);                       -- くの字
setRotateKey( spep_5+16, 1, -110);
setRotateKey( spep_5+17, 1, -10);
setMoveKey( spep_5+17, 1, 65, 100, 0);
setMoveKey( spep_5+40, 1, 600, 800, 0);
setDisp( spep_5+40, 1, 0);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, 0);
setEffScaleKey( spep_5, ryusen5, 1.2, 1.2);
setEffAlphaKey( spep_5, ryusen5, 255);

-- ** エフェクト ** --
zangya = entryEffect(  spep_5,   SP_04,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, zangya, 0, 0, 0);
setEffScaleKey( spep_5, zangya, 1.0, 1.0);
setEffAlphaKey( spep_5, zangya, 255);
setEffRotateKey( spep_5, zangya, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+20, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_5+20, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5+20, shuchusen5, 1.2, 1.2);
setEffAlphaKey( spep_5+20, shuchusen5, 255);
setEffRotateKey( spep_5+20, shuchusen5, 0);

entryFade( spep_5+76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 奥行き流線 ** --
ryusenoku = entryEffectLife( spep_5+80, 921, 20, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_5+80, ryusenoku, 0, 0, 0);
setEffRotateKey( spep_5+80, ryusenoku, -200);
setEffScaleKey( spep_5+80, ryusenoku, 1.6, 1.7);
setEffAlphaKey( spep_5+80, ryusenoku, 255);

-- ** 音 ** --
playSe( spep_5+15, 1010);

playSe( spep_5+60, 1035);
playSe( spep_5+82, 1008);

-- ** ホワイトフェード ** --
entryFade( spep_5+95, 5, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 二人で糸出す
------------------------------------------------------

spep_6 = spep_5+106; --524F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 35, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
futari = entryEffect( spep_6, SP_05, 0x80, -1, 0, 0, 0);--導入
setEffMoveKey( spep_6, futari, 0, 0, 0);
setEffScaleKey( spep_6, futari, 1.0, 1.0);
setEffAlphaKey( spep_6, futari, 255);
setEffRotateKey( spep_6, futari, 0);

-- ** 音 ** --
playSe( spep_6+14, 1038);

-- ** ホワイトフェード ** --
entryFade( spep_6+28, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 気弾が敵に
------------------------------------------------------

spep_7 = spep_6+38; --562F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 50, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
kousoku = entryEffect( spep_7,   SP_06,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_7, kousoku, 0, 0, 0);
setEffScaleKey( spep_7, kousoku, 1.0, 1.0);
setEffAlphaKey( spep_7, kousoku, 255);
setEffRotateKey( spep_7, kousoku, 0);

-- ** キャラクター ** --
setRotateKey( spep_7-1, 1, -10 );
setMoveKey( spep_7-1, 1, 1000, 1054, 0);
setRotateKey( spep_7, 1, 0);
setScaleKey( spep_7, 1, 1.5, 1.5);
setScaleKey( spep_7+45, 1, 1.5, 1.5);
setMoveKey( spep_7, 1, 100, 100, 0);
setDisp( spep_7, 1, 1);
setMoveKey( spep_7+14, 1, 50, 50, 0);
setMoveKey( spep_7+45, 1, 50, 50, 0);

-- ** 音 ** --
playSe( spep_7+14, 1038);

-- ** ホワイトフェード ** --
entryFade( spep_7+37, 5, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 糸が敵を巻いてる
------------------------------------------------------

spep_8 = spep_7+48; --610F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 39, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
ito = entryEffect( spep_8, SP_07, 0x100,  -1,  0,  0,  0);--導入
setEffMoveKey( spep_8, ito, 0, 0, 0);
setEffScaleKey( spep_8, ito, 1.0, 1.0);
setEffAlphaKey( spep_8, ito, 255);
setEffRotateKey( spep_8, ito, 0);

setEffAlphaKey( spep_8+48, ito, 255);
setEffAlphaKey( spep_8+49, ito, 0);

-- ** キャラクター ** --
setRotateKey( spep_8-1, 1, 0);
setRotateKey( spep_8, 1, -40);
changeAnime( spep_8, 1, 106);      -- 立ち

setScaleKey( spep_8-1, 1, 1.5, 1.5);
setScaleKey( spep_8, 1, 2.0, 2.0);
setScaleKey( spep_8+48, 1, 2.0, 2.0);

setMoveKey( spep_8-1, 1, 50, 50, 0);
setMoveKey( spep_8, 1, 0, 100, 0);
setMoveKey( spep_8+32, 1, 0, 150, 0);
setMoveKey( spep_8+33, 1, 0, 60, 0);
setMoveKey( spep_8+34, 1, 0, 60, 0);
setMoveKey( spep_8+35, 1, 0, -30, 0);
setMoveKey( spep_8+36, 1, 0, -30, 0);
setMoveKey( spep_8+37, 1, 0, -110, 0);
setMoveKey( spep_8+38, 1, 0, -110, 0);--3
setMoveKey( spep_8+39, 1, 0, -190, 0);--4
setMoveKey( spep_8+40, 1, 0, -190, 0);--4
setMoveKey( spep_8+41, 1, 0, -275, 0);--5
setMoveKey( spep_8+42, 1, 0, -275, 0);--5
setMoveKey( spep_8+43, 1, 0, -360, 0);--6
setMoveKey( spep_8+44, 1, 0, -360, 0);--6
setMoveKey( spep_8+45, 1, 0, -445, 0);--7
setMoveKey( spep_8+46, 1, 0, -900, 0);
--setMoveKey( spep_8+50, 1, 0, -750, 0);
setDisp( spep_8+48, 1, 0);

-- ** 音 ** --
playSe( spep_8, 1038);

------------------------------------------------------
-- ボージャックが放つ(100F)
------------------------------------------------------

spep_9 = spep_8+40; --650F

-- ** 流線(横) ** --
ryusen8 = entryEffectLife( spep_9-5, 920, 132, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_9-5, ryusen8, 0, 0, 0);
setEffRotateKey( spep_9-5, ryusen8, -90);
setEffScaleKey( spep_9-5, ryusen8, 1.6, 1.6);
setEffAlphaKey( spep_9-5, ryusen8, 255);

-- ** 背景 ** --
--entryFade( spep_9-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9-1, 0, 190, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
bojack = entryEffect( spep_9, SP_08, 0x80, -1, 0, 0, 0);--導入
setEffMoveKey( spep_9, bojack, 0, 0, 0);
setEffScaleKey( spep_9, bojack, 1.0, 1.0);
setEffAlphaKey( spep_9, bojack, 255);
setEffRotateKey( spep_9, bojack, 0);

-- ** カットイン ** --
speff = entryEffect( spep_9+17, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_9+17, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_9+30, 190006, 68, 0x100, -1, 0, -250, 460);    -- ゴゴゴゴ
setEffScaleKey( spep_9+30, ctgogo, 0.8, 0.8);
setEffRotateKey( spep_9+30, ctgogo, -20);
setEffAlphaKey( spep_9+30, ctgogo, 255);

--setDisp( spep_9+0, 1, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_9+13, 906, 173, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_9+13, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_9+13, shuchusen6, 1.2, 1.2);
setEffAlphaKey( spep_9+13, shuchusen6, 255);
setEffRotateKey( spep_9+13, shuchusen6, 0);

-- ** ホワイトフェード ** --
entryFade( spep_9+97, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_9+132, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_9+180, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_9+27, SE_04);
--playSe( spep_9+102, SE_02);
--playSe( spep_9+122, SE_02);
--playSe( spep_9+130, SE_02);
playSe( spep_9+127, SE_06);

------------------------------------------------------
-- 三人で糸→離す(100F)
------------------------------------------------------

spep_10 = spep_9+190; --840F

-- ** 背景 ** --
entryFadeBg( spep_10, 0, 140, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** エフェクト ** --
hanasu = entryEffect( spep_10, SP_09, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_10, hanasu, 0, 0, 0);
setEffScaleKey( spep_10, hanasu, 1.0, 1.0);
setEffAlphaKey( spep_10, hanasu, 255);
setEffRotateKey( spep_10, hanasu, 0);

-- ** キャラクター ** --
setDisp( spep_10, 1, 1);
setMoveKey( spep_10, 1, 0, 40, 0);
setScaleKey( spep_10-1, 1, 2.4, 2.4);
setScaleKey( spep_10, 1, 1.2, 1.2);
setShakeChara( spep_10, 1, 90, 10);

-- ** 音 ** --
playSe( spep_10, 1038);

------------------------------------------------------
-- 迫る
------------------------------------------------------
spep_11 = spep_10+20;

--entryFade( spep_11-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_11, 0, 96, 0, 10, 10, 10, 180);          -- ベース暗め　背景
kidann = entryEffect(  spep_11,   SP_10,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_11, kidann, 0, 0, 0);
setEffScaleKey( spep_11, kidann, 1.0, 1.0);
setEffAlphaKey( spep_11, kidann, 255);
setEffRotateKey( spep_11, kidann, 0);

shuchusen11 = entryEffectLife( spep_11+0, 906, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_11+0, shuchusen11, 0, 0, 0);
setEffScaleKey( spep_11+0, shuchusen11, 1.2, 1.2);
setEffAlphaKey( spep_11+0, shuchusen11, 255);
setEffRotateKey( spep_11+0, shuchusen11, 0);

playSe( spep_11, 43);
playSe( spep_11+30, SE_07);

------------------------------------------------------
-- 気弾ヒット
------------------------------------------------------

spep_12 = spep_11+90;

entryFade( spep_12-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+5, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+26, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+36, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+46, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+56, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+66, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_12, 0, 120, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース暗め　背景
entryFadeBg( spep_12, 0, 120, 0, 90, 253, 253, 255);          -- ベース暗め　背景

kidanhit = entryEffect( spep_12, SP_11, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey(spep_12, kidanhit, 0, 0, 0);
setEffScaleKey( spep_12, kidanhit, 1.0, 1.0);
setEffAlphaKey( spep_12, kidanhit, 255);
setEffRotateKey( spep_12, kidanhit, 0);
setDisp( spep_12+0, 1, 0);
setRotateKey( spep_12,  1,  -50 );

huchusenkuro = entryEffectLife( spep_12+0, 911, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_12+0, huchusenkuro, 0, 0, 0);
setEffScaleKey( spep_12+0, huchusenkuro, 1.2, 1.2);
setEffAlphaKey( spep_12+0, huchusenkuro, 255);
setEffRotateKey( spep_12+0, huchusenkuro, 0);

playSe( spep_12, SE_09);

------------------------------------------------------
-- ギャン
------------------------------------------------------

spep_13=spep_12+120;

entryFade( spep_13-50, 30, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

last = entryEffect(  spep_13,   1651,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_13, last, 0, 0, 0);
setEffScaleKey( spep_13, last, 1.0, 1.0);
setEffAlphaKey( spep_13, last, 255);
setEffRotateKey( spep_13, last, 0);

shuchusenlast = entryEffectLife( spep_13+0, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_13+0, shuchusenlast, 0, 0, 0);
setEffScaleKey( spep_13+0, shuchusenlast, 1.2, 1.2);
setEffAlphaKey( spep_13+0, shuchusenlast, 255);
setEffRotateKey( spep_13+0, shuchusenlast, 0);

playSe( spep_13, SE_09);
playSe( spep_13+30, SE_10);

-- ダメージ表示
dealDamage(spep_13+16);

entryFade( spep_13+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_13+140);


else

------------------------------------------------------
--反転敵
------------------------------------------------------
------------------------------------------------------
--溜め
------------------------------------------------------

setVisibleUI( 0, 0);

-- ** キャラクター ** --
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0); --敵非表示
setScaleKey( 0, 0, 1.8, 1.8);
setScaleKey( 1, 0, 1.8, 1.8);
setScaleKey( 2, 0, 1.8, 1.8);
setScaleKey( 3, 0, 1.8, 1.8);
setScaleKey( 4, 0, 1.8, 1.8);
setScaleKey( 5, 0, 1.8, 1.8);
setScaleKey( 40, 0, 1.8, 1.8);
setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setShakeChara( 0, 0, 40, 10);


-- ** 背景フェード ** --
entryFadeBg( 0, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
aura1 = entryEffect( 0, SP_12, 0x100, -1, 0, 0, 0); --手前オーラ
setEffMoveKey( 0, aura1, 0, 0, 0);
setEffScaleKey( 0, aura1, 1.0, 1.0);
setEffAlphaKey( 0, aura1, 255);
setEffRotateKey( 0, aura1, 0);

aura2 = entryEffect( 0, SP_13, 0x80, -1, 0, 0, 0); --奥オーラ
setEffMoveKey( 0, aura2, 0, 0, 0);
setEffScaleKey( 0, aura2, 1.0, 1.0);
setEffAlphaKey( 0, aura2, 255);
setEffRotateKey( 0, aura2, 0);

aura_y1 = entryEffectLife( 0, 1500, 17, 0, -1, 0, 0, 0);  -- eff_001
setEffMoveKey( 0, aura_y1,0,0,0);
setEffScaleKey( 0, aura_y1, 1.0, 1.0);
setEffRotateKey( 0, aura_y1, 0);
setEffAlphaKey( 0, aura_y1, 255);

aura_y2 = entryEffectLife( 14, 1500, 17, 0, -1, 0, 0, 0);  -- eff_001
setEffMoveKey( 14, aura_y2,0,0,0);
setEffScaleKey( 14, aura_y2, 1.0, 1.0);
setEffRotateKey( 14, aura_y2, 0);
setEffAlphaKey( 14, aura_y2, 0);
setEffAlphaKey( 16, aura_y2, 0);
setEffAlphaKey( 17, aura_y2, 255);

-- ** ホワイトフェード ** --
entryFade( 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( 32, 0, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 0, SE_01);

------------------------------------------------------
-- カードカットイン(43F)
------------------------------------------------------

spep_1 = 43;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, -2000, -54, 0);
setDisp( spep_1, 0, 0);

-- ** カードカットイン ** --
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);

-- ** 音 ** --
playSe( spep_1+5, SE_05);

-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 左移動→ビーム(f)
------------------------------------------------------

spep_2 = spep_1+100; --143F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 流線 ** --
ryusen = entryEffectLife( spep_2, 920, 24, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_2, ryusen, 0, 0, 0);
setEffScaleKey( spep_2, ryusen, 1.0, 1.0);
setEffAlphaKey( spep_2, ryusen, 255);
setEffRotateKey( spep_2, ryusen, 0);

-- ** エフェクト ** --
bidou = entryEffectLife( spep_2, SP_01e, 90, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_2, bidou, 0, 0, 0);
setEffScaleKey( spep_2, bidou, 1.0, 1.0);
setEffAlphaKey( spep_2, bidou, 255);
setEffRotateKey( spep_2, bidou, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2+25, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2+25, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2+25, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_2+25, shuchusen, 255);
setEffRotateKey( spep_2+25, shuchusen, 0);

-- ** 奥行き流線 ** --
okuyuki = entryEffectLife( spep_2+40, 921, 67, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey( spep_2+40, okuyuki, 0, 60, 0);
setEffRotateKey( spep_2+40, okuyuki, -180);
setEffScaleKey( spep_2+40, okuyuki, 1.6, 1.7);
setEffAlphaKey( spep_2+40, okuyuki, 255);

-- ** 音 ** --
playSe( spep_2+10, 43);
seId = playSe( spep_2+46, 1021);

-- ** ホワイトフェード ** --
entryFade( spep_2+85, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 197; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_2+46, seId, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------

spep_3 = spep_2+98; --241F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 169, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
mukau = entryEffect( spep_3, SP_02, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_3, mukau, 0, 0, 0);
setEffScaleKey( spep_3, mukau, 1.0, 1.0);
setEffAlphaKey( spep_3, mukau, 255);
setEffRotateKey( spep_3, mukau, 0);

-- ** キャラクター ** --
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 101);                       -- 立ち
setScaleKey( spep_3, 1, 1.5, 1.5);
setScaleKey( spep_3+169, 1, 1.5, 1.5);
setMoveKey( spep_3-1, 1, 0, 20, 0);
setMoveKey( spep_3, 1, 160, 20, 0);
setMoveKey( spep_3+20, 1, 120, 20, 0);
setMoveKey( spep_3+64, 1, 120, 20, 0);
changeAnime( spep_3+20, 1, 104);                       -- ガード
--setMoveKey( spep_3+20, 1, 50, -54, 0);
setShakeChara( spep_3+26, 1, 143, 20);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 920, 103, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffRotateKey( spep_3, ryusen3, 0);
setEffScaleKey( spep_3, ryusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, ryusen3, 255);

-- ** !! ** --
bikkuri = entryEffectLife( spep_3, 10000, 19, 0x100, -1, 0, -50, 200); -- ビックリ
setEffMoveKey( spep_3, bikkuri, 0, 250, 0);
setEffRotateKey( spep_3, bikkuri, 0);
setEffScaleKey( spep_3, bikkuri, 2, 2);
setEffScaleKey( spep_3+3, bikkuri, 2, 2);
setEffScaleKey( spep_3+4, bikkuri, 2.2, 2.2);
setEffScaleKey( spep_3+5, bikkuri, 2.2, 2.2);
setEffScaleKey( spep_3+6, bikkuri, 2, 2);
setEffAlphaKey( spep_3, bikkuri, 255);
setEffShake( spep_3+7, bikkuri, 18, 10);

-- ** 音 ** --
playSe( spep_3, 1021);
--playSe( spep_3+4, 1); --241
--playSe( spep_3+4, SE_13);

------------------------------------------------------
-- 剣で切る(100F)
------------------------------------------------------

spep_4 = spep_3+64; --305F

-- ** ゴクアエフェクト ** --
gokuha = entryEffect( spep_4+10, SP_03e, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_4+12, gokuha, 0, 0, 0);
setEffScaleKey( spep_4+12, gokuha, 1.0, 1.0);
setEffAlphaKey( spep_4+12, gokuha, 255);
setEffRotateKey( spep_4+12, gokuha, 0);

entryFade( spep_4+36, 5, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFadeBg( spep_4+41, 0, 24, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFade( spep_4+65, 0, 0, 2, 0, 0, 0, 150);          -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_4+17, 1, -150, -80, 0);
setMoveKey( spep_4+41, 1, -150, -80, 0);

setDisp( spep_4+41, 1, 0);
setDisp( spep_4+65, 1, 1);

setMoveKey( spep_4+65, 1, -90, 0, 0);
changeAnime( spep_4+65, 1, 106);                       -- 立ち
setRotateKey( spep_4+65, 1, -50);
--setRotateKey( spep_4+70, 1, -60);

setMoveKey( spep_4+79, 1, -600, -600, 0);
setDisp( spep_4+80, 1, 0);
setRotateKey( spep_4+80, 1, -110);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4+65, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4+65, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4+65, ryusen4, -30);
setEffScaleKey( spep_4+65, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4+65, ryusen4, 255);

-- ** 音 ** --
playSe( spep_4+12, 43);
playSe( spep_4+49, 1032);

-- ** ホワイトフェード ** --
entryFade( spep_4+100, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 蹴る→気弾放つ(100F)
------------------------------------------------------

spep_5 = spep_4+113; --418

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_5, 1, 1);
setMoveKey( spep_5, 1, 600, 800, 0);
setMoveKey( spep_5+16, 1, 20, 80, 0);
setScaleKey( spep_5, 1, 1.5, 1.5);
setScaleKey( spep_5+40, 1, 1.5, 1.5);
changeAnime( spep_5+17, 1, 108);                       -- くの字
setRotateKey( spep_5+16, 1, -110);
setRotateKey( spep_5+17, 1, -10);
setMoveKey( spep_5+17, 1, 65, 100, 0);
setMoveKey( spep_5+40, 1, 600, 800, 0);
setDisp( spep_5+40, 1, 0);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, 0);
setEffScaleKey( spep_5, ryusen5, 1.2, 1.2);
setEffAlphaKey( spep_5, ryusen5, 255);

-- ** エフェクト ** --
zangya = entryEffect(  spep_5, SP_04e, 0x100, -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, zangya, 0, 0, 0);
setEffScaleKey( spep_5, zangya, 1.0, 1.0);
setEffAlphaKey( spep_5, zangya, 255);
setEffRotateKey( spep_5, zangya, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+20, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_5+20, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5+20, shuchusen5, 1.2, 1.2);
setEffAlphaKey( spep_5+20, shuchusen5, 255);
setEffRotateKey( spep_5+20, shuchusen5, 0);

entryFade( spep_5+76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 奥行き流線 ** --
ryusenoku = entryEffectLife( spep_5+80, 921, 20, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_5+80, ryusenoku, 0, 0, 0);
setEffRotateKey( spep_5+80, ryusenoku, -200);
setEffScaleKey( spep_5+80, ryusenoku, 1.6, 1.7);
setEffAlphaKey( spep_5+80, ryusenoku, 255);

-- ** 音 ** --
playSe( spep_5+15, 1010);

playSe( spep_5+60, 1035);
playSe( spep_5+82, 1008);

-- ** ホワイトフェード ** --
entryFade( spep_5+95, 5, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 二人で糸出す
------------------------------------------------------

spep_6 = spep_5+106; --524F

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 35, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
futari = entryEffect( spep_6, SP_05e, 0x80, -1, 0, 0, 0);--導入
setEffMoveKey( spep_6, futari, 0, 0, 0);
setEffScaleKey( spep_6, futari, 1.0, 1.0);
setEffAlphaKey( spep_6, futari, 255);
setEffRotateKey( spep_6, futari, 0);

-- ** 音 ** --
playSe( spep_6+14, 1038);

-- ** ホワイトフェード ** --
entryFade( spep_6+28, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- 気弾が敵に
------------------------------------------------------

spep_7 = spep_6+38; --562F

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 50, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
kousoku = entryEffect( spep_7,   SP_06,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_7, kousoku, 0, 0, 0);
setEffScaleKey( spep_7, kousoku, 1.0, 1.0);
setEffAlphaKey( spep_7, kousoku, 255);
setEffRotateKey( spep_7, kousoku, 0);

-- ** キャラクター ** --
setRotateKey( spep_7-1, 1, -10 );
setMoveKey( spep_7-1, 1, 1000, 1054, 0);
setRotateKey( spep_7, 1, 0);
setScaleKey( spep_7, 1, 1.5, 1.5);
setScaleKey( spep_7+45, 1, 1.5, 1.5);
setMoveKey( spep_7, 1, 100, 100, 0);
setDisp( spep_7, 1, 1);
setMoveKey( spep_7+14, 1, 50, 50, 0);
setMoveKey( spep_7+45, 1, 50, 50, 0);

-- ** 音 ** --
playSe( spep_7+14, 1038);

-- ** ホワイトフェード ** --
entryFade( spep_7+37, 5, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 糸が敵を巻いてる
------------------------------------------------------

spep_8 = spep_7+48; --610F

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 39, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
ito = entryEffect( spep_8, SP_07, 0x100,  -1,  0,  0,  0);--導入
setEffMoveKey( spep_8, ito, 0, 0, 0);
setEffScaleKey( spep_8, ito, 1.0, 1.0);
setEffAlphaKey( spep_8, ito, 255);
setEffRotateKey( spep_8, ito, 0);

setEffAlphaKey( spep_8+48, ito, 255);
setEffAlphaKey( spep_8+49, ito, 0);

-- ** キャラクター ** --
setRotateKey( spep_8-1, 1, 0);
setRotateKey( spep_8, 1, -40);
changeAnime( spep_8, 1, 106);      -- 立ち

setScaleKey( spep_8-1, 1, 1.5, 1.5);
setScaleKey( spep_8, 1, 2.0, 2.0);
setScaleKey( spep_8+48, 1, 2.0, 2.0);

setMoveKey( spep_8-1, 1, 50, 50, 0);
setMoveKey( spep_8, 1, 0, 100, 0);
setMoveKey( spep_8+32, 1, 0, 150, 0);
setMoveKey( spep_8+33, 1, 0, 60, 0);
setMoveKey( spep_8+34, 1, 0, 60, 0);
setMoveKey( spep_8+35, 1, 0, -30, 0);
setMoveKey( spep_8+36, 1, 0, -30, 0);
setMoveKey( spep_8+37, 1, 0, -110, 0);
setMoveKey( spep_8+38, 1, 0, -110, 0);--3
setMoveKey( spep_8+39, 1, 0, -190, 0);--4
setMoveKey( spep_8+40, 1, 0, -190, 0);--4
setMoveKey( spep_8+41, 1, 0, -275, 0);--5
setMoveKey( spep_8+42, 1, 0, -275, 0);--5
setMoveKey( spep_8+43, 1, 0, -360, 0);--6
setMoveKey( spep_8+44, 1, 0, -360, 0);--6
setMoveKey( spep_8+45, 1, 0, -445, 0);--7
setMoveKey( spep_8+46, 1, 0, -900, 0);
--setMoveKey( spep_8+50, 1, 0, -750, 0);
setDisp( spep_8+48, 1, 0);

-- ** 音 ** --
playSe( spep_8, 1038);

------------------------------------------------------
-- ボージャックが放つ(100F)
------------------------------------------------------

spep_9 = spep_8+40; --650F

-- ** 流線(横) ** --
ryusen8 = entryEffectLife( spep_9-5, 920, 132, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_9-5, ryusen8, 0, 0, 0);
setEffRotateKey( spep_9-5, ryusen8, -90);
setEffScaleKey( spep_9-5, ryusen8, 1.6, 1.6);
setEffAlphaKey( spep_9-5, ryusen8, 255);

-- ** 背景 ** --
--entryFade( spep_9-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9-1, 0, 190, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
bojack = entryEffect( spep_9, SP_08, 0x80, -1, 0, 0, 0);--導入
setEffMoveKey( spep_9, bojack, 0, 0, 0);
setEffScaleKey( spep_9, bojack, -1.0, 1.0);
setEffAlphaKey( spep_9, bojack, 255);
setEffRotateKey( spep_9, bojack, 0);

--[[
-- ** カットイン ** --
speff = entryEffect( spep_9+17, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_9+17, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_9+30, 190006, 68, 0x100, -1, 0, 250, 460);    -- ゴゴゴゴ
setEffScaleKey( spep_9+30, ctgogo, -0.8, 0.8);
setEffRotateKey( spep_9+30, ctgogo, 20);
setEffAlphaKey( spep_9+30, ctgogo, 255);

--setDisp( spep_9+0, 1, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_9+13, 906, 173, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_9+13, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_9+13, shuchusen6, 1.2, 1.2);
setEffAlphaKey( spep_9+13, shuchusen6, 255);
setEffRotateKey( spep_9+13, shuchusen6, 0);

-- ** ホワイトフェード ** --
entryFade( spep_9+97, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_9+132, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_9+180, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_9+27, SE_04);
--playSe( spep_9+102, SE_02);
--playSe( spep_9+122, SE_02);
--playSe( spep_9+130, SE_02);
playSe( spep_9+127, SE_06);

------------------------------------------------------
-- 三人で糸→離す(100F)
------------------------------------------------------

spep_10 = spep_9+190; --840F

-- ** 背景 ** --
entryFadeBg( spep_10, 0, 140, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** エフェクト ** --
hanasu = entryEffect( spep_10, SP_09e, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey( spep_10, hanasu, 0, 0, 0);
setEffScaleKey( spep_10, hanasu, 1.0, 1.0);
setEffAlphaKey( spep_10, hanasu, 255);
setEffRotateKey( spep_10, hanasu, 0);

-- ** キャラクター ** --
setDisp( spep_10, 1, 1);
setMoveKey( spep_10, 1, 0, 40, 0);
setScaleKey( spep_10-1, 1, 2.4, 2.4);
setScaleKey( spep_10, 1, 1.2, 1.2);
setShakeChara( spep_10, 1, 90, 10);

-- ** 音 ** --
playSe( spep_10, 1038);

------------------------------------------------------
-- 迫る
------------------------------------------------------
spep_11 = spep_10+20;

--entryFade( spep_11-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_11, 0, 96, 0, 10, 10, 10, 180);          -- ベース暗め　背景
kidann = entryEffect(  spep_11,   SP_10,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_11, kidann, 0, 0, 0);
setEffScaleKey( spep_11, kidann, 1.0, 1.0);
setEffAlphaKey( spep_11, kidann, 255);
setEffRotateKey( spep_11, kidann, 0);

shuchusen11 = entryEffectLife( spep_11+0, 906, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_11+0, shuchusen11, 0, 0, 0);
setEffScaleKey( spep_11+0, shuchusen11, 1.2, 1.2);
setEffAlphaKey( spep_11+0, shuchusen11, 255);
setEffRotateKey( spep_11+0, shuchusen11, 0);

playSe( spep_11, 43);
playSe( spep_11+30, SE_07);

------------------------------------------------------
-- 気弾ヒット
------------------------------------------------------

spep_12 = spep_11+90;

entryFade( spep_12-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+5, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+16, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+26, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+36, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+46, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+56, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_12+66, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_12, 0, 120, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース暗め　背景
entryFadeBg( spep_12, 0, 120, 0, 90, 253, 253, 255);          -- ベース暗め　背景

kidanhit = entryEffect( spep_12, SP_11, 0x100, -1, 0, 0, 0);--導入
setEffMoveKey(spep_12, kidanhit, 0, 0, 0);
setEffScaleKey( spep_12, kidanhit, 1.0, 1.0);
setEffAlphaKey( spep_12, kidanhit, 255);
setEffRotateKey( spep_12, kidanhit, 0);
setDisp( spep_12+0, 1, 0);
setRotateKey( spep_12,  1,  -50 );

huchusenkuro = entryEffectLife( spep_12+0, 911, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_12+0, huchusenkuro, 0, 0, 0);
setEffScaleKey( spep_12+0, huchusenkuro, 1.2, 1.2);
setEffAlphaKey( spep_12+0, huchusenkuro, 255);
setEffRotateKey( spep_12+0, huchusenkuro, 0);

playSe( spep_12, SE_09);

------------------------------------------------------
-- ギャン
------------------------------------------------------

spep_13=spep_12+120;

entryFade( spep_13-50, 30, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

last = entryEffect(  spep_13,   1651,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_13, last, 0, 0, 0);
setEffScaleKey( spep_13, last, 1.0, 1.0);
setEffAlphaKey( spep_13, last, 255);
setEffRotateKey( spep_13, last, 0);

shuchusenlast = entryEffectLife( spep_13+0, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_13+0, shuchusenlast, 0, 0, 0);
setEffScaleKey( spep_13+0, shuchusenlast, 1.2, 1.2);
setEffAlphaKey( spep_13+0, shuchusenlast, 255);
setEffRotateKey( spep_13+0, shuchusenlast, 0);

playSe( spep_13, SE_09);
playSe( spep_13+30, SE_10);

-- ダメージ表示
dealDamage(spep_13+16);

entryFade( spep_13+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_13+140);


end
