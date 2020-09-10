print ("[lua]sp1132");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150896;--溜め（キャラ前面）
SP_02 = 150897;--溜め（キャラ背面）
SP_03 = 150898;--発射
SP_04 = 150899;--迫る


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;


multi_frm = 2;

------------------------------------------------------
-- 移動〜蹴り
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 30);
setAnimeLoop( 0, 0, 1);

setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);

setRotateKey( 0, 0, -15);
setRotateKey( 1, 0, -15);
setRotateKey( 2, 0, -15);
setRotateKey( 3, 0, -15);
setRotateKey( 4, 0, -15);
setRotateKey( 5, 0, -15);

setScaleKey( 0, 0, 2.4, 2.4);
setScaleKey( 9, 0, 1.8, 1.8);
setScaleKey( 87, 0, 1.8, 1.8);

setDisp( 88, 0, 0); --味方非表示

-- ** エフェクト等 ** --
tamemae = entryEffectLife( 0, SP_01, 87, 0x100, -1, 0, 0, 0); --溜め（キャラ前面）
setEffMoveKey( 0, tamemae, 88, 100, 0);
setEffMoveKey( 9, tamemae, 65, 85, 0);
setEffMoveKey( 200, tamemae, 65, 85, 0);
setEffScaleKey( 0, tamemae, 2.5, 2.5);
setEffScaleKey( 9, tamemae, 1.8, 1.8);
setEffScaleKey( 200, tamemae, 1.8, 1.8);
setEffAlphaKey( 0, tamemae, 255);
setEffRotateKey( 0, tamemae, 0);

tameushiro = entryEffectLife( 0, SP_02, 87, 0x80, -1, 0, 0, 0); --溜め（キャラ前面）
setEffMoveKey( 0, tameushiro, 88, 100, 0);
setEffMoveKey( 9, tameushiro, 65, 85, 0);
setEffMoveKey( 200, tameushiro, 65, 85, 0);
setEffScaleKey( 0, tameushiro, 2.5, 2.5);
setEffScaleKey( 9, tameushiro, 1.8, 1.8);
setEffScaleKey( 200, tameushiro, 1.8, 1.8);
setEffAlphaKey( 0, tameushiro, 255);
setEffRotateKey( 0, tameushiro, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 87, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

-- ** カットイン&セリフ ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);            -- セリフ差し替え

-- ** 書き文字 ** --
ctgogo = entryEffectLife( 13, 190006, 74, 0x100, -1, 0, -100, 480);    -- ゴゴゴゴ
setEffScaleKey( 13, ctgogo, 0.7, 0.7);
setEffRotateKey( 13, ctgogo, 0);
setEffAlphaKey( 13, ctgogo, 255);


playSe( 10, SE_04);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カードカットイン (89F開始)
------------------------------------------------------

spep_1 = 89; --89F

speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_1, shuchusen, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen, 255);
setEffRotateKey( spep_1, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+3, SE_05);

------------------------------------------------------
-- 放つ (182F開始)
------------------------------------------------------

spep_2 = ( spep_1+93); --182F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 114, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 114, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -180);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.1, 1.1);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** キャラクター ** --
setDisp( spep_2-1, 0, 1); --味方表示
changeAnime( spep_2-1, 0, 31);
setAnimeLoop( spep_2, 0, 1);

setScaleKey( spep_2, 0, 0.6, 0.6);
setScaleKey( spep_2+8, 0, 1.0, 1.0);
setScaleKey( spep_2+36, 0, 1.0, 1.0);
setScaleKey( spep_2+37, 0, 0.8, 0.8);
setScaleKey( spep_2+38, 0, 0.8, 0.8);
setScaleKey( spep_2+39, 0, 0.6, 0.6);
setScaleKey( spep_2+43, 0, 0.6, 0.6);

setMoveKey( spep_2-1, 0, 0, 0, 0);
setMoveKey( spep_2, 0, -320, 0, 0);
setMoveKey( spep_2+8, 0, -170, 40, 0);
setMoveKey( spep_2+36, 0, -170, 40, 0);
setMoveKey( spep_2+37, 0, -270, 40, 0);
setMoveKey( spep_2+38, 0, -270, 40, 0);
setMoveKey( spep_2+39, 0, -380, 40, 0);
setMoveKey( spep_2+40, 0, -380, 40, 0);
setMoveKey( spep_2+41, 0, -2000, 0, 0);

setRotateKey( spep_2-1, 0, -15);
setRotateKey( spep_2, 0, 0);

setDisp( spep_2+42, 0, 0); --味方非表示

-- ** エフェクト等 ** --
hassya = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_2, hassya, -130, -10, 0);
setEffMoveKey( spep_2+4, hassya, -150, -10, 0);
setEffMoveKey( spep_2+8, hassya, -40, -10, 0);
setEffScaleKey( spep_2, hassya, 0.7, 0.7);
setEffScaleKey( spep_2+8, hassya, 1.0, 1.0);
setEffRotateKey( spep_2, hassya, 0);
setEffAlphaKey( spep_2, hassya, 255);

-- ** 技名 ** --
spname = entryEffect( spep_2, 1508, 0, -1, 0, 0, 0); -- 必殺文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え

-- ** 書き文字 ** --
zuo = entryEffectLife( spep_2+6, 10012, 39, 0x100, -1, 0, 0, 0); -- ズオッ
setEffScaleKey( spep_2+6, zuo, 0.8, 0.8);
setEffScaleKey( spep_2+9, zuo, 2.5, 2.5);
setEffScaleKey( spep_2+37, zuo, 2.5, 2.5);
setEffScaleKey( spep_2+45, zuo, 5.4, 5.4);

setEffMoveKey( spep_2+6, zuo, 150, 320, 0);
setEffMoveKey( spep_2+9, zuo, 150, 320, 0);
setEffMoveKey( spep_2+10, zuo, 150, 320, 0);
setEffMoveKey( spep_2+11, zuo, 160, 310, 0);
setEffMoveKey( spep_2+12, zuo, 160, 310, 0);
setEffMoveKey( spep_2+13, zuo, 150, 320, 0);
setEffMoveKey( spep_2+14, zuo, 150, 320, 0);
setEffMoveKey( spep_2+15, zuo, 160, 310, 0);
setEffMoveKey( spep_2+16, zuo, 160, 310, 0);
setEffMoveKey( spep_2+17, zuo, 150, 320, 0);
setEffMoveKey( spep_2+18, zuo, 150, 320, 0);
setEffMoveKey( spep_2+19, zuo, 160, 310, 0);
setEffMoveKey( spep_2+20, zuo, 160, 310, 0);
setEffMoveKey( spep_2+21, zuo, 150, 320, 0);
setEffMoveKey( spep_2+22, zuo, 150, 320, 0);
setEffMoveKey( spep_2+23, zuo, 160, 310, 0);
setEffMoveKey( spep_2+24, zuo, 160, 310, 0);
setEffMoveKey( spep_2+25, zuo, 150, 320, 0);
setEffMoveKey( spep_2+26, zuo, 150, 320, 0);
setEffMoveKey( spep_2+27, zuo, 160, 310, 0);
setEffMoveKey( spep_2+28, zuo, 160, 310, 0);
setEffMoveKey( spep_2+29, zuo, 150, 320, 0);
setEffMoveKey( spep_2+30, zuo, 150, 320, 0);
setEffMoveKey( spep_2+31, zuo, 160, 310, 0);
setEffMoveKey( spep_2+32, zuo, 160, 310, 0);
setEffMoveKey( spep_2+33, zuo, 150, 320, 0);
setEffMoveKey( spep_2+34, zuo, 150, 320, 0);
setEffMoveKey( spep_2+35, zuo, 160, 310, 0);
setEffMoveKey( spep_2+36, zuo, 160, 310, 0);
setEffMoveKey( spep_2+37, zuo, 150, 320, 0);


setEffRotateKey( spep_2+6, zuo, 28);
setEffAlphaKey( spep_2+6, zuo, 255);
setEffAlphaKey( spep_2+37, zuo, 255);
setEffAlphaKey( spep_2+45, zuo, 0);

playSe( spep_2+3, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_2+101, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 迫る (298F開始)
------------------------------------------------------

spep_3 = ( spep_2+116); --298F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_3, 921, 87, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_3, okuyukiryusennaname2, 0);
setEffScaleKey( spep_3, okuyukiryusennaname2, 1.1, 1.1);
setEffAlphaKey( spep_3, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_3, SP_04, 87, 0x100, -1, 0, 0, 0); --発射
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffRotateKey( spep_3, semaru, 0);
setEffAlphaKey( spep_3, semaru, 255);

-- ** キャラクター ** --
setDisp( spep_3-1, 1, 1); --敵表示
changeAnime( spep_3-1, 1, 104);
changeAnime( spep_3+61, 1, 108);
setScaleKey( spep_3-1, 1, 1.0, 1.0);
setScaleKey( spep_3+60, 1, 2.0, 2.0);
setScaleKey( spep_3+63, 1, 2.0, 2.0);
setScaleKey( spep_3+86, 1, 0.5, 0.5);

setMoveKey( spep_3-1, 1, 300, 0, 0);
setMoveKey( spep_3+60, 1, 230, 0, 0);
setMoveKey( spep_3+63, 1, 230, 0, 0);
setMoveKey( spep_3+86, 1, 390, 0, 0);
setMoveKey( spep_3+87, 1, 2000, 0, 0);

setRotateKey( spep_3-1, 1, 0);
setRotateKey( spep_3+60, 1, 0);
setRotateKey( spep_3+61, 1, 20);
setRotateKey( spep_3+62, 1, -10);
setRotateKey( spep_3+63, 1, 0);

setShakeChara( spep_3, 1, 200, 15);

setDisp( spep_3+86, 1, 0); --敵非表示

-- 書き文字エントリー
zudodo = entryEffectLife( spep_3, 10014, 87, 0, -1, 0, -100, 255); -- ズドドッ
setEffMoveKey( spep_3, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+1, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+2, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+3, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+4, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+5, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+6, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+7, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+8, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+9, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+10, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+11, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+12, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+13, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+14, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+15, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+16, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+17, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+18, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+19, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+20, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+21, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+22, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+23, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+24, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+25, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+26, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+27, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+28, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+29, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+30, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+31, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+32, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+33, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+34, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+35, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+36, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+37, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+38, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+39, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+40, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+41, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+42, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+43, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+44, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+45, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+46, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+47, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+48, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+49, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+50, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+51, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+52, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+53, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+54, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+55, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+56, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+57, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+58, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+59, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+60, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+61, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+62, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+63, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+64, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+65, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+66, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+67, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+68, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+69, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+70, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+71, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+72, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+73, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+74, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+75, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+76, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+77, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+78, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+79, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+80, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+81, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+82, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+83, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+84, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+85, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+86, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+87, zudodo, 10, 340, 0);
setEffScaleKey( spep_3, zudodo, 2.8, 2.8);
setEffRotateKey( spep_3, zudodo, 70);
setEffAlphaKey( spep_3, zudodo, 255);

playSe( spep_3, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_3+80, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- バリン
------------------------------------------------------

spep_4 = ( spep_3+87); --空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setDisp( spep_4-1, 1, 1);
setMoveKey( spep_4-1, 1, 2000, 0, 0);
setScaleKey( spep_4-1, 1, 0.5, 0.5);
setRotateKey( spep_4-1, 1, 0);

setMoveKey(  spep_4, 1, 0, 0, 128);
setScaleKey( spep_4, 1, 0.1, 0.1);
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_4+8, SE_11);

setMoveKey( spep_4+8, 1, 0, 0, 128); --478
setMoveKey( spep_4+15, 1, -60, -200, -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake( spep_4+7, 6, 15);
setShake( spep_4+13, 15, 10);

setRotateKey( spep_4, 1, 30 );
setRotateKey( spep_4+2, 1, 80 );
setRotateKey( spep_4+4, 1, 120 );
setRotateKey( spep_4+6, 1, 160 );
setRotateKey( spep_4+8, 1, 200 );
setRotateKey( spep_4+10, 1, 260 );
setRotateKey( spep_4+12, 1, 320 );
setRotateKey( spep_4+14, 1, 0 );

setShakeChara( spep_4+15, 1, 5, 10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_10);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_4+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_4+16);
entryFade( spep_4+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_4+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI( 0, 0);

-- ** 背景 ** --
entryFadeBg( 0, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 30);
setAnimeLoop( 0, 0, 1);

setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);

setRotateKey( 0, 0, -15);
setRotateKey( 1, 0, -15);
setRotateKey( 2, 0, -15);
setRotateKey( 3, 0, -15);
setRotateKey( 4, 0, -15);
setRotateKey( 5, 0, -15);

setScaleKey( 0, 0, 2.4, 2.4);
setScaleKey( 9, 0, 1.8, 1.8);
setScaleKey( 87, 0, 1.8, 1.8);

setDisp( 88, 0, 0); --味方非表示

-- ** エフェクト等 ** --
tamemae = entryEffectLife( 0, SP_01, 87, 0x100, -1, 0, 0, 0); --溜め（キャラ前面）
setEffMoveKey( 0, tamemae, -88, 60, 0);
setEffMoveKey( 9, tamemae, -65, 45, 0);
setEffMoveKey( 200, tamemae, -65, 45, 0);
setEffScaleKey( 0, tamemae, -2.5, 2.5);
setEffScaleKey( 9, tamemae, -1.8, 1.8);
setEffScaleKey( 200, tamemae, -1.8, 1.8);
setEffAlphaKey( 0, tamemae, 255);
setEffRotateKey( 0, tamemae, 0);

tameushiro = entryEffectLife( 0, SP_02, 87, 0x80, -1, 0, 0, 0); --溜め（キャラ前面）
setEffMoveKey( 0, tameushiro, -88, 60, 0);
setEffMoveKey( 9, tameushiro, -65, 45, 0);
setEffMoveKey( 200, tameushiro, -65, 45, 0);
setEffScaleKey( 0, tameushiro, -2.5, 2.5);
setEffScaleKey( 9, tameushiro, -1.8, 1.8);
setEffScaleKey( 200, tameushiro, -1.8, 1.8);
setEffAlphaKey( 0, tameushiro, 255);
setEffRotateKey( 0, tameushiro, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 87, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);
--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);            -- セリフ差し替え
]]--
-- ** 書き文字 ** --
ctgogo = entryEffectLife( 13, 190006, 74, 0x100, -1, 0, -100, 480);    -- ゴゴゴゴ
setEffScaleKey( 13, ctgogo, -0.7, 0.7);
setEffRotateKey( 13, ctgogo, 0);
setEffAlphaKey( 13, ctgogo, 255);


playSe( 10, SE_04);

-- ** ホワイトフェード ** --
entryFade( 80, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カードカットイン (89F開始)
------------------------------------------------------

spep_1 = 89; --89F

speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_1, shuchusen, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen, 255);
setEffRotateKey( spep_1, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+3, SE_05);

------------------------------------------------------
-- 放つ (182F開始)
------------------------------------------------------

spep_2 = ( spep_1+93); --182F

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 114, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 114, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -180);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.1, 1.1);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** キャラクター ** --
setDisp( spep_2-1, 0, 1); --味方表示
changeAnime( spep_2-1, 0, 31);
setAnimeLoop( spep_2, 0, 1);

setScaleKey( spep_2, 0, 0.6, 0.6);
setScaleKey( spep_2+8, 0, 1.0, 1.0);
setScaleKey( spep_2+36, 0, 1.0, 1.0);
setScaleKey( spep_2+37, 0, 0.8, 0.8);
setScaleKey( spep_2+38, 0, 0.8, 0.8);
setScaleKey( spep_2+39, 0, 0.6, 0.6);
setScaleKey( spep_2+43, 0, 0.6, 0.6);

setMoveKey( spep_2-1, 0, 0, 0, 0);
setMoveKey( spep_2, 0, -320, 0, 0);
setMoveKey( spep_2+8, 0, -170, 40, 0);
setMoveKey( spep_2+36, 0, -170, 40, 0);
setMoveKey( spep_2+37, 0, -270, 40, 0);
setMoveKey( spep_2+38, 0, -270, 40, 0);
setMoveKey( spep_2+39, 0, -380, 40, 0);
setMoveKey( spep_2+40, 0, -380, 40, 0);
setMoveKey( spep_2+41, 0, -2000, 0, 0);

setRotateKey( spep_2-1, 0, -15);
setRotateKey( spep_2, 0, 0);

setDisp( spep_2+42, 0, 0); --味方非表示

-- ** エフェクト等 ** --
hassya = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_2, hassya, -130, -10, 0);
setEffMoveKey( spep_2+4, hassya, -150, -10, 0);
setEffMoveKey( spep_2+8, hassya, -40, -10, 0);
setEffScaleKey( spep_2, hassya, 0.7, 0.7);
setEffScaleKey( spep_2+8, hassya, 1.0, 1.0);
setEffRotateKey( spep_2, hassya, 0);
setEffAlphaKey( spep_2, hassya, 255);

-- ** 技名 ** --
spname = entryEffect( spep_2, 1508, 0, -1, 0, 0, 0); -- 必殺文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え

-- ** 書き文字 ** --
zuo = entryEffectLife( spep_2+6, 10012, 39, 0x100, -1, 0, 0, 0); -- ズオッ
setEffScaleKey( spep_2+6, zuo, 0.8, 0.8);
setEffScaleKey( spep_2+9, zuo, 2.5, 2.5);
setEffScaleKey( spep_2+37, zuo, 2.5, 2.5);
setEffScaleKey( spep_2+45, zuo, 5.4, 5.4);

setEffMoveKey( spep_2+6, zuo, 150, 320, 0);
setEffMoveKey( spep_2+9, zuo, 150, 320, 0);
setEffMoveKey( spep_2+10, zuo, 150, 320, 0);
setEffMoveKey( spep_2+11, zuo, 160, 310, 0);
setEffMoveKey( spep_2+12, zuo, 160, 310, 0);
setEffMoveKey( spep_2+13, zuo, 150, 320, 0);
setEffMoveKey( spep_2+14, zuo, 150, 320, 0);
setEffMoveKey( spep_2+15, zuo, 160, 310, 0);
setEffMoveKey( spep_2+16, zuo, 160, 310, 0);
setEffMoveKey( spep_2+17, zuo, 150, 320, 0);
setEffMoveKey( spep_2+18, zuo, 150, 320, 0);
setEffMoveKey( spep_2+19, zuo, 160, 310, 0);
setEffMoveKey( spep_2+20, zuo, 160, 310, 0);
setEffMoveKey( spep_2+21, zuo, 150, 320, 0);
setEffMoveKey( spep_2+22, zuo, 150, 320, 0);
setEffMoveKey( spep_2+23, zuo, 160, 310, 0);
setEffMoveKey( spep_2+24, zuo, 160, 310, 0);
setEffMoveKey( spep_2+25, zuo, 150, 320, 0);
setEffMoveKey( spep_2+26, zuo, 150, 320, 0);
setEffMoveKey( spep_2+27, zuo, 160, 310, 0);
setEffMoveKey( spep_2+28, zuo, 160, 310, 0);
setEffMoveKey( spep_2+29, zuo, 150, 320, 0);
setEffMoveKey( spep_2+30, zuo, 150, 320, 0);
setEffMoveKey( spep_2+31, zuo, 160, 310, 0);
setEffMoveKey( spep_2+32, zuo, 160, 310, 0);
setEffMoveKey( spep_2+33, zuo, 150, 320, 0);
setEffMoveKey( spep_2+34, zuo, 150, 320, 0);
setEffMoveKey( spep_2+35, zuo, 160, 310, 0);
setEffMoveKey( spep_2+36, zuo, 160, 310, 0);
setEffMoveKey( spep_2+37, zuo, 150, 320, 0);


setEffRotateKey( spep_2+6, zuo, -28);
setEffAlphaKey( spep_2+6, zuo, 255);
setEffAlphaKey( spep_2+37, zuo, 255);
setEffAlphaKey( spep_2+45, zuo, 0);

playSe( spep_2+3, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_2+101, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 迫る (298F開始)
------------------------------------------------------

spep_3 = ( spep_2+116); --298F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_3, 921, 87, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_3, okuyukiryusennaname2, 0);
setEffScaleKey( spep_3, okuyukiryusennaname2, 1.1, 1.1);
setEffAlphaKey( spep_3, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_3, SP_04, 87, 0x100, -1, 0, 0, 0); --発射
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffRotateKey( spep_3, semaru, 0);
setEffAlphaKey( spep_3, semaru, 255);

-- ** キャラクター ** --
setDisp( spep_3-1, 1, 1); --敵表示
changeAnime( spep_3-1, 1, 104);
changeAnime( spep_3+61, 1, 108);
setScaleKey( spep_3-1, 1, 1.0, 1.0);
setScaleKey( spep_3+60, 1, 2.0, 2.0);
setScaleKey( spep_3+63, 1, 2.0, 2.0);
setScaleKey( spep_3+86, 1, 0.5, 0.5);

setMoveKey( spep_3-1, 1, 300, 0, 0);
setMoveKey( spep_3+60, 1, 230, 0, 0);
setMoveKey( spep_3+63, 1, 230, 0, 0);
setMoveKey( spep_3+86, 1, 390, 0, 0);
setMoveKey( spep_3+87, 1, 2000, 0, 0);

setRotateKey( spep_3-1, 1, 0);
setRotateKey( spep_3+60, 1, 0);
setRotateKey( spep_3+61, 1, 20);
setRotateKey( spep_3+62, 1, -10);
setRotateKey( spep_3+63, 1, 0);

setShakeChara( spep_3, 1, 200, 15);

setDisp( spep_3+86, 1, 0); --敵非表示

-- 書き文字エントリー
zudodo = entryEffectLife( spep_3, 10014, 87, 0, -1, 0, -100, 255); -- ズドドッ
setEffMoveKey( spep_3, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+1, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+2, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+3, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+4, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+5, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+6, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+7, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+8, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+9, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+10, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+11, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+12, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+13, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+14, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+15, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+16, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+17, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+18, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+19, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+20, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+21, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+22, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+23, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+24, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+25, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+26, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+27, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+28, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+29, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+30, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+31, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+32, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+33, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+34, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+35, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+36, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+37, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+38, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+39, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+40, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+41, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+42, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+43, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+44, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+45, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+46, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+47, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+48, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+49, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+50, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+51, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+52, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+53, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+54, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+55, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+56, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+57, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+58, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+59, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+60, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+61, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+62, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+63, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+64, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+65, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+66, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+67, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+68, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+69, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+70, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+71, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+72, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+73, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+74, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+75, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+76, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+77, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+78, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+79, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+80, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+81, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+82, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+83, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+84, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+85, zudodo, 20, 350, 0);
setEffMoveKey( spep_3+86, zudodo, 10, 340, 0);
setEffMoveKey( spep_3+87, zudodo, 10, 340, 0);
setEffScaleKey( spep_3, zudodo, 2.8, 2.8);
setEffRotateKey( spep_3, zudodo, 10);
setEffAlphaKey( spep_3, zudodo, 255);

playSe( spep_3, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_3+80, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- バリン
------------------------------------------------------

spep_4 = ( spep_3+87); --空きをつくらない為に詰めてます

-- ** 敵キャラの動き ** --
setDisp( spep_4-1, 1, 1);
setMoveKey( spep_4-1, 1, 2000, 0, 0);
setScaleKey( spep_4-1, 1, 0.5, 0.5);
setRotateKey( spep_4-1, 1, 0);

setMoveKey(  spep_4, 1, 0, 0, 128);
setScaleKey( spep_4, 1, 0.1, 0.1);
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_4+8, SE_11);

setMoveKey( spep_4+8, 1, 0, 0, 128); --478
setMoveKey( spep_4+15, 1, -60, -200, -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake( spep_4+7, 6, 15);
setShake( spep_4+13, 15, 10);

setRotateKey( spep_4, 1, 30 );
setRotateKey( spep_4+2, 1, 80 );
setRotateKey( spep_4+4, 1, 120 );
setRotateKey( spep_4+6, 1, 160 );
setRotateKey( spep_4+8, 1, 200 );
setRotateKey( spep_4+10, 1, 260 );
setRotateKey( spep_4+12, 1, 320 );
setRotateKey( spep_4+14, 1, 0 );

setShakeChara( spep_4+15, 1, 5, 10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_10);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_4+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_4+16);
entryFade( spep_4+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_4+110);

end

