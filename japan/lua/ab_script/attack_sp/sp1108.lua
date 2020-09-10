

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

SE_01 = 1035; --気を貯める
SE_02 = 1000; --HIT
SE_03 = 1001; --HIT(1000より重い)
SE_04 = 1007; --こもったHIT
SE_05 = 1009; --HIT会心
SE_06 = 1010; --蹴り上げ用
SE_07 = 1021; --発射(迫り音にも)
SE_08 = 1022; --のびる発射
SE_09 = 1017; --ドーナツ締まる
SE_10 = 1018; --かめはめ波溜め
SE_11 = 1035; --カットイン
SE_12 = 1023; --ギャン音(つかう)

SP_01 = 150511; --溜め
SP_02 = 150512; --連打・蹴り上げ
SP_03 = 150513; --ドーナツ発射
SP_04 = 150515; --ドーナツ手前
SP_05 = 150516; --ドーナツ奥
SP_06 = 150517; --かめはめ波・構え
SP_07 = 150519; --かめはめ波・発射

SP_08 = 150514; --ドーナツ発射(敵側)
SP_09 = 150518; --かめはめ波・構え(敵側)
SP_10 = 150520; --かめはめ波・発射(敵側)

SP_11 = 190000;--ギャン
SP_12 = 1557;--伸びるかめはめ波


------------------------------------------------------
-- 気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 115, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
tame = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); -- 溜め
setEffShake( 18, tame, 97, 10);

-- ** キャラクター指定 ** --
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

-- ** 集中線 ** --
entryEffectLife( 0, 906, 115, 0x80, -1, 0, 0, 0); -- 集中線

-- ** 音 ** --
playSe( 18, SE_01);

-- ** ホワイトフェード ** --
entryFade( 17, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( 112, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep1=115;



------------------------------------------------------
-- アタック(115Fから)
------------------------------------------------------

-- ** キャラクター指定 ** --
setDisp( spep1, 1, 1);

setRotateKey( spep1, 1, 0);
setRotateKey( spep1+102, 1, 0);

changeAnime( spep1, 1, 101);
setMoveKey( spep1, 1, -400, 0, 0);
setMoveKey( spep1+15, 1, -30, 0, 0);
setMoveKey( spep1+25, 1, 0, 0, 0);

setScaleKey( spep1, 1, 1.6, 1.6);
setScaleKey( spep1+24, 1, 1.6, 1.6);
setScaleKey( spep1+25, 1, 1.7, 1.7);

changeAnime( spep1+25, 1, 108);
setMoveKey( spep1+79, 1, 100, 0, 0);
setMoveKey( spep1+102, 1, 100, 40, 0);

changeAnime( spep1+103, 1, 106);
setRotateKey( spep1+103, 1, -50);
setMoveKey( spep1+103, 1, 100, 150, 0);
setMoveKey( spep1+129, 1, 100, 150, 0);
setMoveKey( spep1+165, 1, 600, 900, 0);

setScaleKey( spep1+129, 1, 1.7, 1.7);
setScaleKey( spep1+165, 1, 0.2, 0.2);

setShakeChara( spep1+28, 1, 80, 10);


-- ** 溜めエフェクト ** --
rengeki = entryEffect( spep1, SP_02, 0x100, -1, 0, 0, 0); -- 連打・蹴り上げ


-- ** 背景 ** --
entryFadeBg( spep1, 0, 155, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep1, 920, 102, 0x80, -1, 0, 0, 0); -- 流線

ryuusen = entryEffectLife( spep1+103, 920, 51, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep1+103, ryuusen, -70);
setEffScaleKey( spep1, ryuusen, 1.6, 1.6);

-- ** 集中線 ** --
entryEffectLife( spep1, 906, 155, 0x80, -1, 0, 0, 0); -- 集中線

-- ** 文字 ** --
dogaga = entryEffectLife( spep1+27, 10017, 70, 0x100,  -1,  0,  70, 280); -- ドガガガッ
setEffScaleKey( spep1+27, dogaga, 1.8, 1.8);
setEffScaleKey( spep1+30, dogaga, 1.8, 1.8);

setEffMoveKey( spep1+31, dogaga, 100, 290);
setEffMoveKey( spep1+97, dogaga, 100, 290);
setEffScaleKey( spep1+31, dogaga, 2.7, 2.7);
setEffScaleKey( spep1+97, dogaga, 2.7, 2.7);
setEffRotateKey( spep1+27, dogaga, 20);
setEffRotateKey( spep1+97, dogaga, 20);
setEffShake( spep1+27, dogaga, 70, 15);

baki = entryEffectLife( spep1+103, 10020, 100, 0x100,  -1,  0,  -60, 370); -- バキッ
setEffScaleKey( spep1+103, baki, 1.7, 1.7);
setEffScaleKey( spep1+104, baki, 1.7, 1.7);
setEffScaleKey( spep1+105, baki, 1.8, 1.8);
setEffScaleKey( spep1+107, baki, 1.8, 1.8);
setEffScaleKey( spep1+108, baki, 2.5, 2.5);
setEffScaleKey( spep1+111, baki, 2.5, 2.5);
setEffScaleKey( spep1+112, baki, 2.2, 2.2);
setEffScaleKey( spep1+119, baki, 2.2, 2.2);
setEffScaleKey( spep1+142, baki, 2.4, 2.4);

setEffRotateKey( spep1+103, baki, -10);
setEffRotateKey( spep1+104, baki, -10);
setEffRotateKey( spep1+105, baki, -5);
setEffRotateKey( spep1+107, baki, -5);
setEffRotateKey( spep1+108, baki, 10);
setEffRotateKey( spep1+111, baki, 10);
setEffRotateKey( spep1+112, baki, -5);
setEffRotateKey( spep1+114, baki, -5);
setEffRotateKey( spep1+115, baki, 10);
setEffRotateKey( spep1+118, baki, 10);
setEffRotateKey( spep1+119, baki, -5);
setEffAlphaKey( spep1+103, baki, 256);
setEffAlphaKey( spep1+136, baki, 256);
setEffAlphaKey( spep1+142, baki, 0);


-- ** 音 ** --
seID = playSe( spep1+25, SE_05);
playSe( spep1+33, SE_02);
playSe( spep1+41, SE_05);
playSe( spep1+53, SE_03);
playSe( spep1+59, SE_02);
playSe( spep1+65, SE_03);
playSe( spep1+71, SE_04);
playSe( spep1+77, SE_05);
playSe( spep1+83, SE_03);
playSe( spep1+103, SE_06);

-- ** 一瞬のフラッシュ ** --
entryFade( spep1+27, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade
entryFade( spep1+103, 0, 10, 0, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade


-- ** ホワイトフェード ** --
entryFade( spep1+150, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep2=(spep1+155);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
--stopSe( SP_dodge+6, seID, 4);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 連続ドーナツ発射(270Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep2, 0, 117, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
hassya = entryEffect( spep2, SP_03, 0x100, -1, 0, 0, 0); -- ドーナツ発射
setEffShake( spep2, hassya, 50, 15);

-- ** キャラクター指定 ** --
setDisp( spep2, 1, 0);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep2, 906, 117, 0x80, -1, 0, -100, -80); -- 集中線
setEffMoveKey( spep2+45, syutyu, -100, -80);
setEffMoveKey( spep2+50, syutyu, 0, 0);
setEffScaleKey( spep2, syutyu, 1.5, 1.5);
setEffScaleKey( spep2+45, syutyu, 1.8, 2);


-- ** 流線 ** --
ryuusen2 = entryEffectLife( spep2, 920, 117, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep2, ryuusen2, -65);
setEffScaleKey( spep2, ryuusen2, 1.6, 1.6);
setEffAlphaKey( spep2, ryuusen2, 0);
setEffAlphaKey( spep2+46, ryuusen2, 0);
setEffAlphaKey( spep2+50, ryuusen2, 256);
setEffAlphaKey( spep2+120, ryuusen2, 256);

zuo = entryEffectLife( spep2+6, 10012, 100, 0x100,  -1,  0,  -130, 200); -- ズオッ
setEffMoveKey( spep2+11, zuo, -130, 400);
setEffMoveKey( spep2+13, zuo, -130, 400);
setEffMoveKey( spep2+14, zuo, -110, 380);
setEffMoveKey( spep2+16, zuo, -110, 380);
setEffMoveKey( spep2+17, zuo, -130, 400);
setEffMoveKey( spep2+19, zuo, -130, 400);
setEffMoveKey( spep2+20, zuo, -110, 380);
setEffMoveKey( spep2+22, zuo, -110, 380);
setEffMoveKey( spep2+23, zuo, -130, 400);
setEffMoveKey( spep2+25, zuo, -130, 400);
setEffMoveKey( spep2+26, zuo, -110, 380);
setEffMoveKey( spep2+28, zuo, -110, 380);
setEffMoveKey( spep2+29, zuo, -130, 400);
setEffMoveKey( spep2+31, zuo, -130, 400);
setEffMoveKey( spep2+32, zuo, -110, 380);
setEffMoveKey( spep2+34, zuo, -110, 380);
setEffMoveKey( spep2+43, zuo, -70, 390);


setEffScaleKey( spep2+6, zuo, 0.1, 0.1);
setEffScaleKey( spep2+11, zuo, 2.5, 2.5);
setEffScaleKey( spep2+34, zuo, 2.5, 2.5);
setEffScaleKey( spep2+41, zuo, 5, 5);
setEffRotateKey( spep2+5, zuo, 25);

setEffAlphaKey( spep2+6, zuo, 256)
setEffAlphaKey( spep2+34, zuo, 256)
setEffAlphaKey( spep2+43, zuo, 0)

-- ** 音 ** --
playSe( spep2+19, SE_07);
playSe( spep2+27, SE_07);
playSe( spep2+37, SE_07);
playSe( spep2+98, SE_08);


-- ** ホワイトフェード ** --
entryFade( spep2+112, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep3=(spep2+118);


------------------------------------------------------
-- 連続ドーナツ迫る(388Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep3, 0, 75, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラクター指定 ** --
setDisp( spep3, 1, 1);
changeAnime( spep3, 1, 104);
setMoveKey( spep3, 1, -300, -700, 0);
setMoveKey( spep3+18, 1, 50, 160, 0);
setMoveKey( spep3+22, 1, 50, 160, 0);
setMoveKey( spep3+37, 1, 40, 120, 0);
setScaleKey( spep3, 1, 2, 2);
setScaleKey( spep3+75, 1, 2, 2);
setRotateKey( spep3, 1, 10);
setRotateKey( spep3+75, 1, 10);
setShakeChara( spep3, 1, 75, 15);


-- ** 流線 ** --
ryuusen3 = entryEffectLife( spep3, 920, 75, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep3, ryuusen3, -65);
setEffScaleKey( spep3, ryuusen3, 1.6, 1.6);


-- ** ドーナツ迫るエフェクト ** --
semaru = entryEffect( spep3, SP_04, 0x100, -1, 0, 0, 0); -- ドーナツ迫る(手前)
semaru2 = entryEffect( spep3, SP_05, 0x80, -1, 0, 0, 0); -- ドーナツ迫る(奥)

-- ** 文字 ** --
zudodo = entryEffectLife( spep3+19, 10014, 52, 0x100, -1, 0, -250, -600); -- ズドドドッ
setEffMoveKey( spep3+23, zudodo, -120, -300);
setEffMoveKey( spep3+24, zudodo, -120, -300);
setEffMoveKey( spep3+25, zudodo, -135, -315);
setEffMoveKey( spep3+26, zudodo, -135, -315);
setEffMoveKey( spep3+27, zudodo, -120, -300);
setEffMoveKey( spep3+28, zudodo, -120, -300);
setEffMoveKey( spep3+29, zudodo, -135, -315);
setEffMoveKey( spep3+30, zudodo, -135, -315);
setEffMoveKey( spep3+31, zudodo, -120, -300);
setEffMoveKey( spep3+32, zudodo, -120, -300);
setEffMoveKey( spep3+33, zudodo, -135, -315);
setEffMoveKey( spep3+34, zudodo, -135, -315);
setEffMoveKey( spep3+35, zudodo, -120, -300);
setEffMoveKey( spep3+36, zudodo, -120, -300);
setEffMoveKey( spep3+37, zudodo, -135, -315);
setEffMoveKey( spep3+38, zudodo, -135, -315);
setEffMoveKey( spep3+39, zudodo, -120, -300);
setEffMoveKey( spep3+40, zudodo, -120, -300);
setEffMoveKey( spep3+41, zudodo, -135, -315);
setEffMoveKey( spep3+42, zudodo, -135, -315);
setEffMoveKey( spep3+43, zudodo, -120, -300);
setEffMoveKey( spep3+44, zudodo, -120, -300);
setEffMoveKey( spep3+45, zudodo, -135, -315);
setEffMoveKey( spep3+46, zudodo, -135, -315);
setEffMoveKey( spep3+47, zudodo, -120, -300);
setEffMoveKey( spep3+48, zudodo, -120, -300);
setEffMoveKey( spep3+49, zudodo, -135, -315);
setEffMoveKey( spep3+50, zudodo, -135, -315);
setEffMoveKey( spep3+51, zudodo, -120, -300);
setEffMoveKey( spep3+52, zudodo, -120, -300);
setEffMoveKey( spep3+53, zudodo, -135, -315);
setEffMoveKey( spep3+54, zudodo, -135, -315);
setEffMoveKey( spep3+55, zudodo, -120, -300);
setEffMoveKey( spep3+56, zudodo, -120, -300);
setEffMoveKey( spep3+57, zudodo, -135, -315);
setEffMoveKey( spep3+58, zudodo, -135, -315);
setEffMoveKey( spep3+59, zudodo, -120, -300);
setEffMoveKey( spep3+60, zudodo, -120, -300);
setEffMoveKey( spep3+61, zudodo, -135, -315);
setEffMoveKey( spep3+62, zudodo, -135, -315);
setEffMoveKey( spep3+63, zudodo, -120, -300);
setEffMoveKey( spep3+64, zudodo, -120, -300);
setEffMoveKey( spep3+65, zudodo, -135, -315);
setEffMoveKey( spep3+66, zudodo, -135, -315);
setEffMoveKey( spep3+67, zudodo, -120, -300);
setEffMoveKey( spep3+68, zudodo, -120, -300);
setEffMoveKey( spep3+69, zudodo, -135, -315);
setEffMoveKey( spep3+70, zudodo, -135, -315);
setEffMoveKey( spep3+71, zudodo, -120, -300);
setEffMoveKey( spep3+72, zudodo, -120, -300);
setEffMoveKey( spep3+73, zudodo, -135, -315);
setEffMoveKey( spep3+74, zudodo, -135, -315);
setEffMoveKey( spep3+75, zudodo, -120, -300);

setEffScaleKey( spep3+19, zudodo, 5, 5);
setEffScaleKey( spep3+23, zudodo, 2.5, 2.5);
setEffScaleKey( spep3+75, zudodo, 2.5, 2.5);
setEffRotateKey( spep3+19, zudodo, 75);
setEffRotateKey( spep3+23, zudodo, 75);
setEffRotateKey( spep3+75, zudodo, 75);


-- ** 音 ** --
playSe( spep3+52, SE_09);

-- ** 集中線 ** --
entryEffectLife( spep3, 906, 75, 0x80, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep3+70, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep4=(spep3+76); --464F

------------------------------------------------------
-- かめはめ波溜め(464Fから)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep4, 0, 155, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
entryEffectLife( spep4, 906, 155, 0x80, -1, 0, 0, 0); -- 集中線


-- ** キャラクター指定 ** --
setDisp( spep4, 1, 0);

-- ** ドーナツ迫るエフェクト ** --
kamekamae = entryEffect( spep4, SP_06, 0x100, -1, 0, 0, 0); -- かめはめ波・構え
setEffShake( spep4+13, kamekamae, 90, 15);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep4+18, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep4+18, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep4+31, 190006, 72, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffMoveKey( spep4+99, gogogo, 0, 520);
setEffMoveKey( spep4+103, gogogo, 0, 500);
setEffScaleKey( spep4+31, gogogo, 0.8, 0.8);
setEffScaleKey( spep4+95, gogogo, 0.8, 0.8);
setEffScaleKey( spep4+103, gogogo, 1.5, 1.5);
setEffAlphaKey( spep4+31, gogogo, 256);
setEffAlphaKey( spep4+95, gogogo, 256);
setEffAlphaKey( spep4+103, gogogo, 0);

-- ** 音 ** --
playSe( spep4+11, SE_10);


-- ** ホワイトフェード ** --
entryFade( spep4+103, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 斜め線 ** --
naname = entryEffectLife( spep4+105, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep4+105, naname, 135);
setEffScaleKey( spep4+105, naname, 1.6, 1.6);

-- ** ホワイトフェード ** --
entryFade( spep4+145, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep5=(spep4+156); --620F


------------------------------------------------------
-- カードカットイン(620Fから)
------------------------------------------------------
-- ** 集中線 ** --
entryEffectLife( spep5, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線

speff = entryEffect( spep5-1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep5+83, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep5, SE_11);

spep6=(spep5+92); --712F


------------------------------------------------------
-- かめはめ波発射(712Fから)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep6, 0, 99, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** ドーナツ迫るエフェクト ** --
kamehame = entryEffect( spep6, SP_07, 0x100, -1, 0, 0, 0); -- かめはめ波発射

-- ** 斜め線 ** --
naname2 = entryEffectLife( spep6, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep6, naname2, 135);
setEffScaleKey( spep6, naname2, 1.6, 1.6);

-- ** ホワイトフェード ** --
entryFade( spep6+4, 0, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

zuo2 = entryEffectLife( spep6+8, 10012, 100, 0x100,  -1,  0,  110, -300); -- ズオッ
setEffMoveKey( spep6+9, zuo2, 110, -300);
setEffMoveKey( spep6+10, zuo2, 120, -200);
setEffMoveKey( spep6+11, zuo2, 130, -210);
setEffMoveKey( spep6+12, zuo2, 130, -210);
setEffMoveKey( spep6+13, zuo2, 120, -200);
setEffMoveKey( spep6+15, zuo2, 120, -200);
setEffMoveKey( spep6+16, zuo2, 130, -210);
setEffMoveKey( spep6+17, zuo2, 130, -210);
setEffMoveKey( spep6+18, zuo2, 120, -200);
setEffMoveKey( spep6+20, zuo2, 120, -200);
setEffMoveKey( spep6+21, zuo2, 130, -210);
setEffMoveKey( spep6+22, zuo2, 130, -210);
setEffMoveKey( spep6+23, zuo2, 120, -200);
setEffMoveKey( spep6+25, zuo2, 120, -200);
setEffMoveKey( spep6+26, zuo2, 130, -210);
setEffMoveKey( spep6+27, zuo2, 130, -210);
setEffMoveKey( spep6+28, zuo2, 120, -200);
setEffMoveKey( spep6+30, zuo2, 120, -200);
setEffMoveKey( spep6+31, zuo2, 130, -210);
setEffMoveKey( spep6+32, zuo2, 130, -210);
setEffMoveKey( spep6+33, zuo2, 120, -200);
setEffMoveKey( spep6+35, zuo2, 120, -200);
setEffMoveKey( spep6+36, zuo2, 130, -210);
setEffMoveKey( spep6+37, zuo2, 130, -210);
setEffMoveKey( spep6+38, zuo2, 120, -200);
setEffMoveKey( spep6+40, zuo2, 120, -200);
setEffMoveKey( spep6+41, zuo2, 130, -210);
setEffMoveKey( spep6+42, zuo2, 130, -210);
setEffMoveKey( spep6+43, zuo2, 120, -200);
setEffMoveKey( spep6+45, zuo2, 120, -200);
setEffMoveKey( spep6+46, zuo2, 130, -210);
setEffMoveKey( spep6+47, zuo2, 130, -210);
setEffMoveKey( spep6+48, zuo2, 120, -200);
setEffMoveKey( spep6+50, zuo2, 120, -200);
setEffMoveKey( spep6+51, zuo2, 130, -210);
setEffMoveKey( spep6+52, zuo2, 130, -210);
setEffMoveKey( spep6+53, zuo2, 120, -200);
setEffMoveKey( spep6+55, zuo2, 120, -200);
setEffMoveKey( spep6+56, zuo2, 130, -210);
setEffMoveKey( spep6+57, zuo2, 130, -210);
setEffMoveKey( spep6+58, zuo2, 120, -200);
setEffMoveKey( spep6+60, zuo2, 120, -200);
setEffMoveKey( spep6+61, zuo2, 130, -210);
setEffMoveKey( spep6+62, zuo2, 130, -210);
setEffMoveKey( spep6+63, zuo2, 120, -200);
setEffMoveKey( spep6+65, zuo2, 120, -200);

setEffScaleKey( spep6+8, zuo2, 1.2, 1.2);
setEffScaleKey( spep6+9, zuo2, 1.2, 1.2);
setEffScaleKey( spep6+10, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+10, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+58, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+65, zuo2, 6, 6);

setEffRotateKey( spep6+8, zuo2, -15);


setEffAlphaKey( spep6+8, zuo2, 256);
setEffAlphaKey( spep6+58, zuo2, 256);
setEffAlphaKey( spep6+65, zuo2, 0);

-- ** 音 ** --
playSe( spep6+9, SE_08);
playSe( spep6+74, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep6+96, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep7=(spep6+100); --812F

------------------------------------------------------
-- ギャン(812Fから)
------------------------------------------------------
-- ** ギャンエフェクト ** --
gyan = entryEffect( spep7, SP_11, 0x80, -1,  0,  0,  0);   -- ギャン

gyantext = entryEffectLife( spep7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン

setEffScaleKey( spep7, gyantext, 0.1, 0.1);
setEffScaleKey( spep7+30, gyantext, 3.4, 3.4);
setEffScaleKey( spep7+54, gyantext, 3.8, 3.8);
setEffAlphaKey(spep7, gyantext, 255);
setEffAlphaKey(spep7+50, gyantext, 255);
setEffAlphaKey(spep7+54, gyantext, 0);
setEffShake(spep7, gyantext, 99, 20);

entryFade( spep7+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep7+40, 1, 0);

-- ** 音 ** --
playSe( spep7+50, SE_12);

removeAllEffect(spep7+54);

spep8=(spep7+60); --872F


------------------------------------------------------
-- 爆発(872Fから)
------------------------------------------------------
-- ** 伸びるエフェクト ** --
nobiru = entryEffect( spep8-2, SP_12, 0, -1, 0, 0, 0);
setEffScaleKey( spep8, nobiru, -1.1, 1.1);

-- ** 音 ** --
playSe( spep8+4, SE_8);


-- ダメージ表示
dealDamage(spep8+17);

endPhase(spep8+125);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 気溜め
------------------------------------------------------

setVisibleUI(0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 115, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
tame = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); -- 溜め
setEffShake( 18, tame, 97, 10);

-- ** キャラクター指定 ** --
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

-- ** 集中線 ** --
entryEffectLife( 0, 906, 115, 0x80, -1, 0, 0, 0); -- 集中線

-- ** 音 ** --
playSe( 18, SE_01);

-- ** ホワイトフェード ** --
entryFade( 17, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( 112, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep1=115;



------------------------------------------------------
-- アタック(115Fから)
------------------------------------------------------

-- ** キャラクター指定 ** --
setDisp( spep1, 1, 1);

setRotateKey( spep1, 1, 0);
setRotateKey( spep1+102, 1, 0);

changeAnime( spep1, 1, 101);
setMoveKey( spep1, 1, -400, 0, 0);
setMoveKey( spep1+15, 1, -30, 0, 0);
setMoveKey( spep1+25, 1, 0, 0, 0);

setScaleKey( spep1, 1, 1.6, 1.6);
setScaleKey( spep1+24, 1, 1.6, 1.6);
setScaleKey( spep1+25, 1, 1.7, 1.7);

changeAnime( spep1+25, 1, 108);
setMoveKey( spep1+79, 1, 100, 0, 0);
setMoveKey( spep1+102, 1, 100, 40, 0);

changeAnime( spep1+103, 1, 106);
setRotateKey( spep1+103, 1, -50);
setMoveKey( spep1+103, 1, 100, 150, 0);
setMoveKey( spep1+129, 1, 100, 150, 0);
setMoveKey( spep1+165, 1, 600, 900, 0);

setScaleKey( spep1+129, 1, 1.7, 1.7);
setScaleKey( spep1+165, 1, 0.2, 0.2);

setShakeChara( spep1+28, 1, 80, 10);


-- ** 溜めエフェクト ** --
rengeki = entryEffect( spep1, SP_02, 0x100, -1, 0, 0, 0); -- 連打・蹴り上げ


-- ** 背景 ** --
entryFadeBg( spep1, 0, 155, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線 ** --
entryEffectLife( spep1, 920, 102, 0x80, -1, 0, 0, 0); -- 流線

ryuusen = entryEffectLife( spep1+103, 920, 51, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep1+103, ryuusen, -70);
setEffScaleKey( spep1, ryuusen, 1.6, 1.6);

-- ** 集中線 ** --
entryEffectLife( spep1, 906, 155, 0x80, -1, 0, 0, 0); -- 集中線

-- ** 文字 ** --
dogaga = entryEffectLife( spep1+27, 10017, 70, 0x100,  -1,  0,  70, 280); -- ドガガガッ
setEffScaleKey( spep1+27, dogaga, 1.8, 1.8);
setEffScaleKey( spep1+30, dogaga, 1.8, 1.8);

setEffMoveKey( spep1+31, dogaga, 100, 290);
setEffMoveKey( spep1+97, dogaga, 100, 290);
setEffScaleKey( spep1+31, dogaga, 2.7, 2.7);
setEffScaleKey( spep1+97, dogaga, 2.7, 2.7);
setEffRotateKey( spep1+27, dogaga, 20);
setEffRotateKey( spep1+97, dogaga, 20);
setEffShake( spep1+27, dogaga, 70, 15);

baki = entryEffectLife( spep1+103, 10020, 100, 0x100,  -1,  0,  -60, 370); -- バキッ
setEffScaleKey( spep1+103, baki, 1.7, 1.7);
setEffScaleKey( spep1+104, baki, 1.7, 1.7);
setEffScaleKey( spep1+105, baki, 1.8, 1.8);
setEffScaleKey( spep1+107, baki, 1.8, 1.8);
setEffScaleKey( spep1+108, baki, 2.5, 2.5);
setEffScaleKey( spep1+111, baki, 2.5, 2.5);
setEffScaleKey( spep1+112, baki, 2.2, 2.2);
setEffScaleKey( spep1+119, baki, 2.2, 2.2);
setEffScaleKey( spep1+142, baki, 2.4, 2.4);

setEffRotateKey( spep1+103, baki, -10);
setEffRotateKey( spep1+104, baki, -10);
setEffRotateKey( spep1+105, baki, -5);
setEffRotateKey( spep1+107, baki, -5);
setEffRotateKey( spep1+108, baki, 10);
setEffRotateKey( spep1+111, baki, 10);
setEffRotateKey( spep1+112, baki, -5);
setEffRotateKey( spep1+114, baki, -5);
setEffRotateKey( spep1+115, baki, 10);
setEffRotateKey( spep1+118, baki, 10);
setEffRotateKey( spep1+119, baki, -5);
setEffAlphaKey( spep1+103, baki, 256);
setEffAlphaKey( spep1+136, baki, 256);
setEffAlphaKey( spep1+142, baki, 0);


-- ** 音 ** --
seID = playSe( spep1+25, SE_05);
playSe( spep1+33, SE_02);
playSe( spep1+41, SE_05);
playSe( spep1+53, SE_03);
playSe( spep1+59, SE_02);
playSe( spep1+65, SE_03);
playSe( spep1+71, SE_04);
playSe( spep1+77, SE_05);
playSe( spep1+83, SE_03);
playSe( spep1+103, SE_06);

-- ** 一瞬のフラッシュ ** --
entryFade( spep1+27, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade
entryFade( spep1+103, 0, 10, 0, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade


-- ** ホワイトフェード ** --
entryFade( spep1+150, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep2=(spep1+155);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
--stopSe( SP_dodge+6, seID, 4);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 連続ドーナツ発射(270Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep2, 0, 117, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
hassya = entryEffect( spep2, SP_08, 0x100, -1, 0, 0, 0); -- ドーナツ発射
setEffShake( spep2, hassya, 50, 15);

-- ** キャラクター指定 ** --
setDisp( spep2, 1, 0);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep2, 906, 117, 0x80, -1, 0, -100, -80); -- 集中線
setEffMoveKey( spep2+45, syutyu, -100, -80);
setEffMoveKey( spep2+50, syutyu, 0, 0);
setEffScaleKey( spep2, syutyu, 1.5, 1.5);
setEffScaleKey( spep2+45, syutyu, 1.8, 2);


-- ** 流線 ** --
ryuusen2 = entryEffectLife( spep2, 920, 117, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep2, ryuusen2, -65);
setEffScaleKey( spep2, ryuusen2, 1.6, 1.6);
setEffAlphaKey( spep2, ryuusen2, 0);
setEffAlphaKey( spep2+46, ryuusen2, 0);
setEffAlphaKey( spep2+50, ryuusen2, 256);
setEffAlphaKey( spep2+120, ryuusen2, 256);

zuo = entryEffectLife( spep2+6, 10012, 100, 0x100,  -1,  0,  -130, 200); -- ズオッ
setEffMoveKey( spep2+11, zuo, -130, 400);
setEffMoveKey( spep2+13, zuo, -130, 400);
setEffMoveKey( spep2+14, zuo, -110, 380);
setEffMoveKey( spep2+16, zuo, -110, 380);
setEffMoveKey( spep2+17, zuo, -130, 400);
setEffMoveKey( spep2+19, zuo, -130, 400);
setEffMoveKey( spep2+20, zuo, -110, 380);
setEffMoveKey( spep2+22, zuo, -110, 380);
setEffMoveKey( spep2+23, zuo, -130, 400);
setEffMoveKey( spep2+25, zuo, -130, 400);
setEffMoveKey( spep2+26, zuo, -110, 380);
setEffMoveKey( spep2+28, zuo, -110, 380);
setEffMoveKey( spep2+29, zuo, -130, 400);
setEffMoveKey( spep2+31, zuo, -130, 400);
setEffMoveKey( spep2+32, zuo, -110, 380);
setEffMoveKey( spep2+34, zuo, -110, 380);
setEffMoveKey( spep2+43, zuo, -70, 390);


setEffScaleKey( spep2+6, zuo, 0.1, 0.1);
setEffScaleKey( spep2+11, zuo, 2.5, 2.5);
setEffScaleKey( spep2+34, zuo, 2.5, 2.5);
setEffScaleKey( spep2+41, zuo, 5, 5);
setEffRotateKey( spep2+5, zuo, 25);

setEffAlphaKey( spep2+6, zuo, 256)
setEffAlphaKey( spep2+34, zuo, 256)
setEffAlphaKey( spep2+43, zuo, 0)

-- ** 音 ** --
playSe( spep2+19, SE_07);
playSe( spep2+27, SE_07);
playSe( spep2+37, SE_07);
playSe( spep2+98, SE_08);


-- ** ホワイトフェード ** --
entryFade( spep2+112, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep3=(spep2+118);


------------------------------------------------------
-- 連続ドーナツ迫る(388Fから)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep3, 0, 75, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラクター指定 ** --
setDisp( spep3, 1, 1);
changeAnime( spep3, 1, 104);
setMoveKey( spep3, 1, -300, -700, 0);
setMoveKey( spep3+18, 1, 50, 160, 0);
setMoveKey( spep3+22, 1, 50, 160, 0);
setMoveKey( spep3+37, 1, 40, 120, 0);
setScaleKey( spep3, 1, 2, 2);
setScaleKey( spep3+75, 1, 2, 2);
setRotateKey( spep3, 1, 10);
setRotateKey( spep3+75, 1, 10);
setShakeChara( spep3, 1, 75, 15);


-- ** 流線 ** --
ryuusen3 = entryEffectLife( spep3, 920, 75, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffRotateKey( spep3, ryuusen3, -65);
setEffScaleKey( spep3, ryuusen3, 1.6, 1.6);


-- ** ドーナツ迫るエフェクト ** --
semaru = entryEffect( spep3, SP_04, 0x100, -1, 0, 0, 0); -- ドーナツ迫る(手前)
semaru2 = entryEffect( spep3, SP_05, 0x80, -1, 0, 0, 0); -- ドーナツ迫る(奥)

-- ** 文字 ** --
zudodo = entryEffectLife( spep3+19, 10014, 52, 0x100, -1, 0, -250, -600); -- ズドドドッ
setEffMoveKey( spep3+23, zudodo, -120, -300);
setEffMoveKey( spep3+24, zudodo, -120, -300);
setEffMoveKey( spep3+25, zudodo, -135, -315);
setEffMoveKey( spep3+26, zudodo, -135, -315);
setEffMoveKey( spep3+27, zudodo, -120, -300);
setEffMoveKey( spep3+28, zudodo, -120, -300);
setEffMoveKey( spep3+29, zudodo, -135, -315);
setEffMoveKey( spep3+30, zudodo, -135, -315);
setEffMoveKey( spep3+31, zudodo, -120, -300);
setEffMoveKey( spep3+32, zudodo, -120, -300);
setEffMoveKey( spep3+33, zudodo, -135, -315);
setEffMoveKey( spep3+34, zudodo, -135, -315);
setEffMoveKey( spep3+35, zudodo, -120, -300);
setEffMoveKey( spep3+36, zudodo, -120, -300);
setEffMoveKey( spep3+37, zudodo, -135, -315);
setEffMoveKey( spep3+38, zudodo, -135, -315);
setEffMoveKey( spep3+39, zudodo, -120, -300);
setEffMoveKey( spep3+40, zudodo, -120, -300);
setEffMoveKey( spep3+41, zudodo, -135, -315);
setEffMoveKey( spep3+42, zudodo, -135, -315);
setEffMoveKey( spep3+43, zudodo, -120, -300);
setEffMoveKey( spep3+44, zudodo, -120, -300);
setEffMoveKey( spep3+45, zudodo, -135, -315);
setEffMoveKey( spep3+46, zudodo, -135, -315);
setEffMoveKey( spep3+47, zudodo, -120, -300);
setEffMoveKey( spep3+48, zudodo, -120, -300);
setEffMoveKey( spep3+49, zudodo, -135, -315);
setEffMoveKey( spep3+50, zudodo, -135, -315);
setEffMoveKey( spep3+51, zudodo, -120, -300);
setEffMoveKey( spep3+52, zudodo, -120, -300);
setEffMoveKey( spep3+53, zudodo, -135, -315);
setEffMoveKey( spep3+54, zudodo, -135, -315);
setEffMoveKey( spep3+55, zudodo, -120, -300);
setEffMoveKey( spep3+56, zudodo, -120, -300);
setEffMoveKey( spep3+57, zudodo, -135, -315);
setEffMoveKey( spep3+58, zudodo, -135, -315);
setEffMoveKey( spep3+59, zudodo, -120, -300);
setEffMoveKey( spep3+60, zudodo, -120, -300);
setEffMoveKey( spep3+61, zudodo, -135, -315);
setEffMoveKey( spep3+62, zudodo, -135, -315);
setEffMoveKey( spep3+63, zudodo, -120, -300);
setEffMoveKey( spep3+64, zudodo, -120, -300);
setEffMoveKey( spep3+65, zudodo, -135, -315);
setEffMoveKey( spep3+66, zudodo, -135, -315);
setEffMoveKey( spep3+67, zudodo, -120, -300);
setEffMoveKey( spep3+68, zudodo, -120, -300);
setEffMoveKey( spep3+69, zudodo, -135, -315);
setEffMoveKey( spep3+70, zudodo, -135, -315);
setEffMoveKey( spep3+71, zudodo, -120, -300);
setEffMoveKey( spep3+72, zudodo, -120, -300);
setEffMoveKey( spep3+73, zudodo, -135, -315);
setEffMoveKey( spep3+74, zudodo, -135, -315);
setEffMoveKey( spep3+75, zudodo, -120, -300);

setEffScaleKey( spep3+19, zudodo, 5, 5);
setEffScaleKey( spep3+23, zudodo, 2.5, 2.5);
setEffScaleKey( spep3+75, zudodo, 2.5, 2.5);
setEffRotateKey( spep3+19, zudodo, -1);
setEffRotateKey( spep3+23, zudodo, -1);
setEffRotateKey( spep3+75, zudodo, -1);


-- ** 音 ** --
playSe( spep3+52, SE_09);

-- ** 集中線 ** --
entryEffectLife( spep3, 906, 75, 0x80, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep3+70, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep4=(spep3+76); --464F

------------------------------------------------------
-- かめはめ波溜め(464Fから)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep4, 0, 155, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
entryEffectLife( spep4, 906, 155, 0x80, -1, 0, 0, 0); -- 集中線


-- ** キャラクター指定 ** --
setDisp( spep4, 1, 0);

-- ** ドーナツ迫るエフェクト ** --
kamekamae = entryEffect( spep4, SP_09, 0x100, -1, 0, 0, 0); -- かめはめ波・構え
kamekamae2 = entryEffect( spep4, SP_09, 0x100, -1, 0, 0, 0); -- かめはめ波・構え
setEffShake( spep4+13, kamekamae, 90, 15);
setEffScaleKey( spep4, kamekamae, -1, 1); --反転対応

setEffAlphaKey( spep4, kamekamae, 256);
setEffAlphaKey( spep4+103, kamekamae, 256);
setEffAlphaKey( spep4+104, kamekamae, 0);
setEffAlphaKey( spep4+155, kamekamae, 0);

setEffAlphaKey( spep4, kamekamae2, 0);
setEffAlphaKey( spep4+103, kamekamae2, 0);
setEffAlphaKey( spep4+104, kamekamae2, 256);
setEffAlphaKey( spep4+155, kamekamae2, 256);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep4+18, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep4+18, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep4+31, 190006, 72, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffMoveKey( spep4+99, gogogo, 0, 520);
setEffMoveKey( spep4+103, gogogo, 0, 500);
setEffScaleKey( spep4+31, gogogo, -0.8, 0.8);
setEffScaleKey( spep4+95, gogogo, -0.8, 0.8);
setEffScaleKey( spep4+103, gogogo, -1.5, 1.5);
setEffAlphaKey( spep4+31, gogogo, 256);
setEffAlphaKey( spep4+95, gogogo, 256);
setEffAlphaKey( spep4+103, gogogo, 0);

-- ** 音 ** --
playSe( spep4+11, SE_10);


-- ** ホワイトフェード ** --
entryFade( spep4+103, 0, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 斜め線 ** --
naname = entryEffectLife( spep4+105, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep4+105, naname, 135);
setEffScaleKey( spep4+105, naname, 1.6, 1.6);

-- ** ホワイトフェード ** --
entryFade( spep4+145, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep5=(spep4+156); --620F


------------------------------------------------------
-- カードカットイン(620Fから)
------------------------------------------------------
-- ** 集中線 ** --
entryEffectLife( spep5, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線

speff = entryEffect( spep5-1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep5+83, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep5, SE_11);

spep6=(spep5+92); --712F


------------------------------------------------------
-- かめはめ波発射(712Fから)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep6, 0, 99, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** ドーナツ迫るエフェクト ** --
kamehame = entryEffect( spep6, SP_10, 0x100, -1, 0, 0, 0); -- かめはめ波発射

-- ** 斜め線 ** --
naname2 = entryEffectLife( spep6, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep6, naname2, 135);
setEffScaleKey( spep6, naname2, 1.6, 1.6);

-- ** ホワイトフェード ** --
entryFade( spep6+4, 0, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

zuo2 = entryEffectLife( spep6+8, 10012, 100, 0x100,  -1,  0,  110, -300); -- ズオッ
setEffMoveKey( spep6+9, zuo2, 110, -300);
setEffMoveKey( spep6+10, zuo2, 120, -200);
setEffMoveKey( spep6+11, zuo2, 130, -210);
setEffMoveKey( spep6+12, zuo2, 130, -210);
setEffMoveKey( spep6+13, zuo2, 120, -200);
setEffMoveKey( spep6+15, zuo2, 120, -200);
setEffMoveKey( spep6+16, zuo2, 130, -210);
setEffMoveKey( spep6+17, zuo2, 130, -210);
setEffMoveKey( spep6+18, zuo2, 120, -200);
setEffMoveKey( spep6+20, zuo2, 120, -200);
setEffMoveKey( spep6+21, zuo2, 130, -210);
setEffMoveKey( spep6+22, zuo2, 130, -210);
setEffMoveKey( spep6+23, zuo2, 120, -200);
setEffMoveKey( spep6+25, zuo2, 120, -200);
setEffMoveKey( spep6+26, zuo2, 130, -210);
setEffMoveKey( spep6+27, zuo2, 130, -210);
setEffMoveKey( spep6+28, zuo2, 120, -200);
setEffMoveKey( spep6+30, zuo2, 120, -200);
setEffMoveKey( spep6+31, zuo2, 130, -210);
setEffMoveKey( spep6+32, zuo2, 130, -210);
setEffMoveKey( spep6+33, zuo2, 120, -200);
setEffMoveKey( spep6+35, zuo2, 120, -200);
setEffMoveKey( spep6+36, zuo2, 130, -210);
setEffMoveKey( spep6+37, zuo2, 130, -210);
setEffMoveKey( spep6+38, zuo2, 120, -200);
setEffMoveKey( spep6+40, zuo2, 120, -200);
setEffMoveKey( spep6+41, zuo2, 130, -210);
setEffMoveKey( spep6+42, zuo2, 130, -210);
setEffMoveKey( spep6+43, zuo2, 120, -200);
setEffMoveKey( spep6+45, zuo2, 120, -200);
setEffMoveKey( spep6+46, zuo2, 130, -210);
setEffMoveKey( spep6+47, zuo2, 130, -210);
setEffMoveKey( spep6+48, zuo2, 120, -200);
setEffMoveKey( spep6+50, zuo2, 120, -200);
setEffMoveKey( spep6+51, zuo2, 130, -210);
setEffMoveKey( spep6+52, zuo2, 130, -210);
setEffMoveKey( spep6+53, zuo2, 120, -200);
setEffMoveKey( spep6+55, zuo2, 120, -200);
setEffMoveKey( spep6+56, zuo2, 130, -210);
setEffMoveKey( spep6+57, zuo2, 130, -210);
setEffMoveKey( spep6+58, zuo2, 120, -200);
setEffMoveKey( spep6+60, zuo2, 120, -200);
setEffMoveKey( spep6+61, zuo2, 130, -210);
setEffMoveKey( spep6+62, zuo2, 130, -210);
setEffMoveKey( spep6+63, zuo2, 120, -200);
setEffMoveKey( spep6+65, zuo2, 120, -200);

setEffScaleKey( spep6+8, zuo2, 1.2, 1.2);
setEffScaleKey( spep6+9, zuo2, 1.2, 1.2);
setEffScaleKey( spep6+10, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+10, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+58, zuo2, 2.8, 2.8);
setEffScaleKey( spep6+65, zuo2, 6, 6);

setEffRotateKey( spep6+8, zuo2, -15);


setEffAlphaKey( spep6+8, zuo2, 256);
setEffAlphaKey( spep6+58, zuo2, 256);
setEffAlphaKey( spep6+65, zuo2, 0);

-- ** 音 ** --
playSe( spep6+9, SE_08);
playSe( spep6+74, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep6+96, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep7=(spep6+100); --812F

------------------------------------------------------
-- ギャン(812Fから)
------------------------------------------------------
-- ** ギャンエフェクト ** --
gyan = entryEffect( spep7, SP_11, 0x80, -1,  0,  0,  0);   -- ギャン

gyantext = entryEffectLife( spep7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン

setEffScaleKey( spep7, gyantext, 0.1, 0.1);
setEffScaleKey( spep7+30, gyantext, 3.4, 3.4);
setEffScaleKey( spep7+54, gyantext, 3.8, 3.8);
setEffAlphaKey(spep7, gyantext, 255);
setEffAlphaKey(spep7+50, gyantext, 255);
setEffAlphaKey(spep7+54, gyantext, 0);
setEffShake(spep7, gyantext, 99, 20);

entryFade( spep7+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep7+40, 1, 0);

-- ** 音 ** --
playSe( spep7+50, SE_12);

removeAllEffect(spep7+54);

spep8=(spep7+60); --872F


------------------------------------------------------
-- 爆発(872Fから)
------------------------------------------------------
-- ** 伸びるエフェクト ** --
nobiru = entryEffect( spep8-2, SP_12, 0, -1, 0, 0, 0);
setEffScaleKey( spep8, nobiru, -1.1, 1.1);

-- ** 音 ** --
playSe( spep8+4, SE_8);

-- ダメージ表示
dealDamage(spep8+17);

endPhase(spep8+125);

end

