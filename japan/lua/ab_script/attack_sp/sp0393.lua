print ("[lua]sp0393");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 43; --瞬間移動
SE_02 = 1021; --溜め
SE_03 = 1018; --カットイン
SE_04 = 1035; --カードカットイン
SE_05 = 1022; --発射
SE_06 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SP_01 = 150809; --瞬間移動
SP_02 = 150810; --瞬間移動(敵)
SP_03 = 150811; --溜め
SP_04 = 150812; --溜め(敵)
SP_05 = 150813; --放つ
SP_06 = 150814; --放つ(敵)
SP_07 = 150815; --敵にヒット
SP_08 = 1652; --大爆発
SP_09 = 1653; --大爆発（全体攻撃用）
SP_10 = 1654; --大爆発（全体攻撃ラスト用）

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;


multi_frm = 2;

------------------------------------------------------
-- 瞬間移動から敵前へ
------------------------------------------------------
kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
setDisp( 56, 1, 0); --敵非表示
setDisp( 57, 1, 1); --敵表示
setDisp( 86, 1, 0); --敵表示
changeAnime( 57, 1, 118); -- 敵モーション
setScaleKey( 57, 1, 3, 3); -- 敵サイズ
setScaleKey( 127, 1, 3, 3); -- 敵サイズ
setMoveKey( 57, 1, 250, -170, 0); -- 敵位置
setMoveKey( 79, 1, 280, -200, 0); -- 敵位置
setMoveKey( 84, 1, 600, -500, 0); -- 敵位置
setMoveKey( 85, 1, 2500, -2500, 0); -- 敵位置

-- ** 背景 ** --
entryFadeBg( 0, 0, 121, 0, 0, 0, 0, 180); -- ベース暗め　背景



if (_IS_PLAYER_SIDE_ == 1) then

 -- ** エフェクト等 ** --
 idou = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --瞬間移動
 setEffMoveKey( 0, idou, 0, 0, 0);
 setEffScaleKey( 0, idou, 1.0, 1.0);
 setEffAlphaKey( 0, idou, 255);
 setEffRotateKey( 0, idou, 0);

else

 -- ** エフェクト等 ** --
 idou = entryEffect( 0, SP_02, 0x100, -1, 0, 0, 0); --瞬間移動
 setEffMoveKey( 0, idou, 0, 0, 0);
 setEffScaleKey( 0, idou, 1.0, 1.0);
 setEffAlphaKey( 0, idou, 255);
 setEffRotateKey( 0, idou, 0);

end




-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 15, 906, 40, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( 15, shuchusen1, 0, 0, 0);
setEffScaleKey( 15, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 15, shuchusen1, 255);
setEffRotateKey( 15, shuchusen1, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( 84, 921, 36, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( 84, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( 84, okuyukiryusennaname, -130);
setEffScaleKey( 84, okuyukiryusennaname, 1.7, 1.5);
setEffAlphaKey( 84, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( 15, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 180); -- white fade(瞬間移動中)
entryFade( 43, 10, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(瞬間移動時)
entryFade( 111, 5, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 15, SE_01);
playSe( 58, SE_01);

------------------------------------------------------
-- 溜める(122F開始)
------------------------------------------------------

spep_1 = 122;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 157, 0, 0, 0, 0, 180); -- ベース暗め　背景


if (_IS_PLAYER_SIDE_ == 1) then

 -- ** エフェクト等 ** --
 tame = entryEffect( spep_1, SP_03, 0x100, -1, 0, 0, 0); --溜め
 setEffMoveKey( spep_1, tame, 0, 0, 0);
 setEffScaleKey( spep_1, tame, 1.0, 1.0);
 setEffAlphaKey( spep_1, tame, 255);
 setEffRotateKey( spep_1, tame, 0);

else

 -- ** エフェクト等 ** --
 tame = entryEffect( spep_1, SP_04, 0x100, -1, 0, 0, 0); --溜め
 setEffMoveKey( spep_1, tame, 0, 0, 0);
 setEffScaleKey( spep_1, tame, 1.0, 1.0);
 setEffAlphaKey( spep_1, tame, 255);
 setEffRotateKey( spep_1, tame, 0);

end


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 158, 0x100, -1, 0, 0, 0);   -- 集中線2
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_1, 921, 36, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め2
setEffMoveKey( spep_1, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_1, okuyukiryusennaname2, -130);
setEffScaleKey( spep_1, okuyukiryusennaname2, 1.7, 1.5);
setEffAlphaKey( spep_1, okuyukiryusennaname2, 255);



if (_IS_PLAYER_SIDE_ == 1) then

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_1+56, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_1+56, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- 書き文字エントリー --
zuo = entryEffectLife( spep_1+38, 10012, 29, 0x100, -1, 0, 0, 0); -- ズオッ
setEffRotateKey( spep_1+38, zuo, 25);
setEffMoveKey( spep_1+38, zuo, 80, 300, 0);
setEffMoveKey( spep_1+45, zuo, 150, 350, 0);
setEffMoveKey( spep_1+46, zuo, 140, 360, 0);
setEffMoveKey( spep_1+47, zuo, 140, 360, 0);
setEffMoveKey( spep_1+48, zuo, 150, 350, 0);
setEffMoveKey( spep_1+49, zuo, 150, 350, 0);
setEffMoveKey( spep_1+50, zuo, 140, 360, 0);
setEffMoveKey( spep_1+51, zuo, 140, 360, 0);
setEffMoveKey( spep_1+52, zuo, 150, 350, 0);
setEffMoveKey( spep_1+53, zuo, 150, 350, 0);
setEffMoveKey( spep_1+54, zuo, 140, 360, 0);
setEffMoveKey( spep_1+55, zuo, 140, 360, 0);
setEffMoveKey( spep_1+56, zuo, 150, 350, 0);
setEffMoveKey( spep_1+57, zuo, 150, 350, 0);
setEffMoveKey( spep_1+58, zuo, 140, 360, 0);
setEffMoveKey( spep_1+59, zuo, 140, 360, 0);
setEffMoveKey( spep_1+60, zuo, 150, 350, 0);
setEffMoveKey( spep_1+61, zuo, 150, 350, 0);

setEffScaleKey( spep_1+38, zuo, 1, 1);
setEffScaleKey( spep_1+45, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+61, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+67, zuo, 5, 5);
setEffAlphaKey( spep_1+38, zuo, 255);
setEffAlphaKey( spep_1+61, zuo, 255);
setEffAlphaKey( spep_1+67, zuo, 0);

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_1+69, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+69, gogogo, 0.6, 0.6);
setEffAlphaKey( spep_1+69, gogogo, 255);
setEffRotateKey( spep_1+69, gogogo, 0);

else

-- 書き文字エントリー --
zuo = entryEffectLife( spep_1+38, 10012, 29, 0x100, -1, 0, 0, 0); -- ズオッ
setEffRotateKey( spep_1+38, zuo, -25);
setEffMoveKey( spep_1+38, zuo, 80, 300, 0);
setEffMoveKey( spep_1+45, zuo, 150, 350, 0);
setEffMoveKey( spep_1+46, zuo, 140, 360, 0);
setEffMoveKey( spep_1+47, zuo, 140, 360, 0);
setEffMoveKey( spep_1+48, zuo, 150, 350, 0);
setEffMoveKey( spep_1+49, zuo, 150, 350, 0);
setEffMoveKey( spep_1+50, zuo, 140, 360, 0);
setEffMoveKey( spep_1+51, zuo, 140, 360, 0);
setEffMoveKey( spep_1+52, zuo, 150, 350, 0);
setEffMoveKey( spep_1+53, zuo, 150, 350, 0);
setEffMoveKey( spep_1+54, zuo, 140, 360, 0);
setEffMoveKey( spep_1+55, zuo, 140, 360, 0);
setEffMoveKey( spep_1+56, zuo, 150, 350, 0);
setEffMoveKey( spep_1+57, zuo, 150, 350, 0);
setEffMoveKey( spep_1+58, zuo, 140, 360, 0);
setEffMoveKey( spep_1+59, zuo, 140, 360, 0);
setEffMoveKey( spep_1+60, zuo, 150, 350, 0);
setEffMoveKey( spep_1+61, zuo, 150, 350, 0);

setEffScaleKey( spep_1+38, zuo, 1, 1);
setEffScaleKey( spep_1+45, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+61, zuo, 2.5, 2.5);
setEffScaleKey( spep_1+67, zuo, 5, 5);
setEffAlphaKey( spep_1+38, zuo, 255);
setEffAlphaKey( spep_1+61, zuo, 255);
setEffAlphaKey( spep_1+67, zuo, 0);

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_1+69, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+69, gogogo, -0.6, 0.6);
setEffAlphaKey( spep_1+69, gogogo, 255);
setEffRotateKey( spep_1+69, gogogo, 0);

end

-- ** ホワイトフェード ** --
entryFade( spep_1+20, 15, 3, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_1+151, 5, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+6, SE_02);
playSe( spep_1+65, SE_03);

------------------------------------------------------
-- カードカットイン(284F開始)
------------------------------------------------------

spep_2 = (spep_1+162); --284F
--[[
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_2, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen3, 255);
setEffRotateKey( spep_2, shuchusen3, 0);
]]

-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusenz, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusenz, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusenz, 0 );
setEffRotateKey( spep_2 + 90, shuchusenz, 0 );

setEffAlphaKey( spep_2 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_2 + 90, shuchusenz, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_04);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_04);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_04);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--playSe( spep_2, SE_04);

------------------------------------------------------
-- 放つ(377F開始)
------------------------------------------------------

spep_3 = (spep_2+93); --377F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 117, 0, 0, 0, 0, 180); -- ベース暗め　背景



if (_IS_PLAYER_SIDE_ == 1) then

 -- ** エフェクト等 ** --
 hanatu = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --放つ
 setEffMoveKey( spep_3, hanatu, 0, 0, 0);
 setEffScaleKey( spep_3, hanatu, 1.0, 1.0);
 setEffAlphaKey( spep_3, hanatu, 255);
 setEffRotateKey( spep_3, hanatu, 0);

else

 -- ** エフェクト等 ** --
 hanatu = entryEffect( spep_3, SP_06, 0x100, -1, 0, 0, 0); --放つ
 setEffMoveKey( spep_3, hanatu, 0, 0, 0);
 setEffScaleKey( spep_3, hanatu, 1.0, 1.0);
 setEffAlphaKey( spep_3, hanatu, 255);
 setEffRotateKey( spep_3, hanatu, 0);

end


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 117, 0x100, -1, 0, 0, 0);   -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname3 = entryEffectLife( spep_3, 921, 117, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め3
setEffMoveKey( spep_3, okuyukiryusennaname3, 0, 0, 0);
setEffRotateKey( spep_3, okuyukiryusennaname3, -130);
setEffScaleKey( spep_3, okuyukiryusennaname3, 1.7, 1.5);
setEffAlphaKey( spep_3, okuyukiryusennaname3, 255);

if (_IS_PLAYER_SIDE_ == 1) then

 zuo2 = entryEffectLife( spep_3+29, 10012, 49, 0x100, -1, 0, 0, 0); -- ズオッ
 setEffRotateKey( spep_3+29, zuo2, 25);
 setEffMoveKey( spep_3+29, zuo2, 80, 300, 0);
 setEffMoveKey( spep_3+36, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+37, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+38, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+39, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+40, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+41, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+42, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+43, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+44, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+45, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+46, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+47, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+48, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+49, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+50, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+51, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+52, zuo2, 150, 350, 0);

 setEffMoveKey( spep_3+53, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+54, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+55, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+56, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+57, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+58, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+59, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+60, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+61, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+62, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+63, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+64, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+65, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+66, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+67, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+68, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+69, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+70, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+71, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+72, zuo2, 150, 350, 0); 

 setEffScaleKey( spep_3+29, zuo2, 1, 1);
 setEffScaleKey( spep_3+36, zuo2, 2.5, 2.5);
 setEffScaleKey( spep_3+72, zuo2, 2.5, 2.5);
 setEffScaleKey( spep_3+78, zuo2, 5, 5); 

 setEffAlphaKey( spep_3+29, zuo2, 255);
 setEffAlphaKey( spep_3+72, zuo2, 255);
 setEffAlphaKey( spep_3+78, zuo2, 0);

else

 zuo2 = entryEffectLife( spep_3+29, 10012, 49, 0x100, -1, 0, 0, 0); -- ズオッ
 setEffRotateKey( spep_3+29, zuo2, -25);
 setEffMoveKey( spep_3+29, zuo2, 80, 300, 0);
 setEffMoveKey( spep_3+36, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+37, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+38, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+39, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+40, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+41, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+42, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+43, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+44, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+45, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+46, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+47, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+48, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+49, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+50, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+51, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+52, zuo2, 150, 350, 0);

 setEffMoveKey( spep_3+53, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+54, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+55, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+56, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+57, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+58, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+59, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+60, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+61, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+62, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+63, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+64, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+65, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+66, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+67, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+68, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+69, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+70, zuo2, 140, 360, 0);
 setEffMoveKey( spep_3+71, zuo2, 150, 350, 0);
 setEffMoveKey( spep_3+72, zuo2, 150, 350, 0); 

 setEffScaleKey( spep_3+29, zuo2, 1, 1);
 setEffScaleKey( spep_3+36, zuo2, 2.5, 2.5);
 setEffScaleKey( spep_3+72, zuo2, 2.5, 2.5);
 setEffScaleKey( spep_3+78, zuo2, 5, 5); 

 setEffAlphaKey( spep_3+29, zuo2, 255);
 setEffAlphaKey( spep_3+72, zuo2, 255);
 setEffAlphaKey( spep_3+78, zuo2, 0);

end


-- ** ホワイトフェード ** --
entryFade( spep_3+23, 0, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_3+111, 5, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+33, SE_05);

------------------------------------------------------
-- ヒット(499F開始)
------------------------------------------------------

spep_4 = (spep_3+122); --499F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 68, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_4-1, 1, 1); --敵表示
changeAnime( spep_4-1, 1, 118); -- 敵モーション
setScaleKey( spep_4-1, 1, 3, 3); -- 敵サイズ
setScaleKey( spep_4+15, 1, 2.2, 2.2); -- 敵サイズ
setScaleKey( spep_4+72, 1, 1.8, 1.8); -- 敵サイズ
setMoveKey( spep_4-1, 1, 600, -500, 0); -- 敵位置
setMoveKey( spep_4+15, 1, 280, -280, 0); -- 敵位置
setMoveKey( spep_4+68, 1, 230, -150, 0); -- 敵位置
setMoveKey( spep_4+69, 1, 2500, -2500, 0); -- 敵位置
setDisp( spep_4+70, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 200, 0x100, -1, 0, 0, 0);   -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname4 = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め4
setEffMoveKey( spep_4, okuyukiryusennaname4, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname4, -130);
setEffScaleKey( spep_4, okuyukiryusennaname4, 1.7, 1.5);
setEffAlphaKey( spep_4, okuyukiryusennaname4, 255);

-- ** エフェクト等 ** --
hit = entryEffect( spep_4, SP_07, 0x80, -1, 0, 0, 0); --ヒット
setEffMoveKey( spep_4, hit, 0, 0, 0);
setEffScaleKey( spep_4, hit, 1.0, 1.0);
setEffAlphaKey( spep_4, hit, 255);
setEffRotateKey( spep_4, hit, 0);



if (_IS_PLAYER_SIDE_ == 1) then

 -- ** 書き文字エントリー ** --
 zudodo = entryEffectLife( spep_4, 10014, 66, 0x100, -1, 0, 0, 0); -- ズドド
 setEffMoveKey( spep_4, zudodo, 120, 380, 0);
 setEffMoveKey( spep_4+1, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+2, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+3, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+4, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+5, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+6, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+7, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+8, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+9, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+10, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+11, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+12, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+13, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+14, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+15, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+16, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+17, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+18, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+19, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+20, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+21, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+22, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+23, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+24, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+25, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+26, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+27, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+28, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+29, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+30, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+31, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+32, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+33, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+34, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+35, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+36, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+37, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+38, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+39, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+40, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+41, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+42, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+43, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+44, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+45, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+46, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+47, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+48, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+49, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+50, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+51, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+52, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+53, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+54, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+55, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+56, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+57, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+58, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+59, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+60, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+61, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+62, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+63, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+64, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+65, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+66, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+67, zudodo, 160, 390, 0); 

 setEffScaleKey( spep_4, zudodo, 2.5, 2.5);
 setEffRotateKey( spep_4, zudodo, 65);
 setEffAlphaKey( spep_4, zudodo, 255);

else

 -- ** 書き文字エントリー ** --
 zudodo = entryEffectLife( spep_4, 10014, 66, 0x100, -1, 0, 0, 0); -- ズドド
 setEffMoveKey( spep_4, zudodo, 120, 380, 0);
 setEffMoveKey( spep_4+1, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+2, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+3, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+4, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+5, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+6, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+7, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+8, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+9, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+10, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+11, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+12, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+13, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+14, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+15, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+16, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+17, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+18, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+19, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+20, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+21, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+22, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+23, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+24, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+25, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+26, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+27, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+28, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+29, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+30, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+31, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+32, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+33, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+34, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+35, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+36, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+37, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+38, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+39, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+40, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+41, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+42, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+43, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+44, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+45, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+46, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+47, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+48, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+49, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+50, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+51, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+52, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+53, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+54, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+55, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+56, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+57, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+58, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+59, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+60, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+61, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+62, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+63, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+64, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+65, zudodo, 150, 380, 0);
 setEffMoveKey( spep_4+66, zudodo, 160, 390, 0);
 setEffMoveKey( spep_4+67, zudodo, 160, 390, 0); 

 setEffScaleKey( spep_4, zudodo, 2.5, 2.5);
 setEffRotateKey( spep_4, zudodo, -65);
 setEffAlphaKey( spep_4, zudodo, 255);

end

-- ** ホワイトフェード ** --
entryFade( spep_4+61, 5, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
SE01 = playSe( spep_4+2, SE_05);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 520; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE01, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ヒット(571F開始)
------------------------------------------------------

spep_5 = (spep_4+72); --571F



if (_IS_PLAYER_SIDE_ == 1) then

 -- ** エフェクト等 ** --
 gyan = entryEffect( spep_5, 190001, 0x80, -1, 0, 0, 0); --ギャン
 setEffMoveKey( spep_5, gyan, 0, 0, 0);
 setEffScaleKey( spep_5, gyan, 1.0, 1.0);
 setEffAlphaKey( spep_5, gyan, 255);
 setEffRotateKey( spep_5, gyan, 0);

 -- 書き文字エントリー --
 ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
 setEffShake( spep_5, ctg, 99, 20);
 setEffScaleKey( spep_5, ctg, 0.1, 0.1);
 setEffScaleKey( spep_5+30, ctg, 3.4, 3.4);
 setEffScaleKey( spep_5+54, ctg, 3.8, 3.8);
 setEffAlphaKey( spep_5, ctg, 255);
 setEffAlphaKey( spep_5+50, ctg, 255);
 setEffAlphaKey( spep_5+54, ctg, 0);

else

 -- ** エフェクト等 ** --
 gyan = entryEffect( spep_5, 190001, 0x80, -1, 0, 0, 0); --ギャン
 setEffMoveKey( spep_5, gyan, 0, 0, 0);
 setEffScaleKey( spep_5, gyan, -1.0, 1.0);
 setEffAlphaKey( spep_5, gyan, 255);
 setEffRotateKey( spep_5, gyan, 0);

 -- 書き文字エントリー --
 ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
 setEffShake( spep_5, ctg, 99, 20);
 setEffScaleKey( spep_5, ctg, 0.1, 0.1);
 setEffScaleKey( spep_5+30, ctg, 3.4, 3.4);
 setEffScaleKey( spep_5+54, ctg, 3.8, 3.8);
 setEffAlphaKey( spep_5, ctg, 255);
 setEffAlphaKey( spep_5+50, ctg, 255);
 setEffAlphaKey( spep_5+54, ctg, 0);

end

entryFade( spep_5+50, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5, SE_06);

------------------------------------------------------
-- 爆発(636F開始)
------------------------------------------------------

spep_6 = (spep_5+65); --636F


if (_IS_PLAYER_SIDE_ == 1) then

 -- ** エフェクト等 ** --
 bakuha = entryEffect( spep_6, SP_08, 0x100, -1, 0, 0, 0); --爆発
 setEffMoveKey( spep_6, bakuha, 0, 0, 0);
 setEffScaleKey( spep_6, bakuha, 1.0 +0.2, 1.0 +0.2);
 setEffAlphaKey( spep_6, bakuha, 255);
 setEffRotateKey( spep_6, bakuha, 0);

else

 -- ** エフェクト等 ** --
 bakuha = entryEffect( spep_6, SP_08, 0x100, -1, 0, 0, 0); --爆発
 setEffMoveKey( spep_6, bakuha, 0, 0, 0);
 setEffScaleKey( spep_6, bakuha, 1.0 +0.2, 1.0 +0.2);
 setEffAlphaKey( spep_6, bakuha, 255);
 setEffRotateKey( spep_6, bakuha, 0);

end

-- ** 音 ** --
playSe( spep_6+1, SE_06);
playSe( spep_6+45, SE_10);

-- ダメージ表示
dealDamage(spep_6+17);
entryFade( spep_6+180, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase(spep_6+190);

end


------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = 0;

setVisibleUI( SP_ATK_4, 0);
setDisp( SP_ATK_4, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = SP_ATK_4; --エンドフェイズのフレーム数を置き換える

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


setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( SP_ATK_4+1, 1, 1);
entryEffect( SP_ATK_4+1, SP_09,  0x80,  -1,  0,  0,  0); -- 全体攻撃用背景
entryEffect( SP_ATK_4+1, SP_10,  0x80,  -1,  0,  0,  0); -- 全体攻撃用爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,    -250,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,    0,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+20, SE_11);

shuchusen6 = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( SP_ATK_4+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( SP_ATK_4, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( SP_ATK_4+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(SP_ATK_4+33);

entryFade( SP_ATK_4+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+80);

end