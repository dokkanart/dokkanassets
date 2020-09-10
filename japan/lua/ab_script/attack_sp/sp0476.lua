-- ピッコロ：魔貫光殺砲 sp0476 カードID = 1014670 sp_effect_a3_00050


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
SP_01 = 151968;--魔貫光殺砲：構え
SP_02 = 151969;--魔貫光殺砲：発射
SP_03 = 151970;--魔貫光殺砲：前
SP_04 = 151971;--魔貫光殺砲:後ろ

--敵側は味方側に1xをつけてます
SP_11 = 151972;--敵側魔貫光殺砲：発射


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -24,   0);
setMoveKey(   0,   1,    0, -24,   0);
setMoveKey(   1,   0,    0, -24,   0);
setMoveKey(   1,   1,    0, -24,   0);
setMoveKey(   2,   0,    0, -24,   0);
setMoveKey(   2,   1,    0, -24,   0);
setMoveKey(   3,   0,    0, -24,   0);
setMoveKey(   3,   1,    0, -24,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--アイドリング
------------------------------------------------------


spep_0 = 0;

--味方キャラの登場
setDisp( 0, 0, 1);

changeAnime(0, 0, 1);
changeAnime(30, 0, 17);


setMoveKey( 0, 0, 0, -24,   0);
setMoveKey( 1, 0, 0, -24,   0);
setMoveKey( 2, 0, 0, -24,   0);
setMoveKey( 3, 0, 0, -24,   0);
setMoveKey( 29, 0, 0, -24,   0);

setScaleKey( 0, 0, 1.6, 1.6);
setScaleKey( 64, 0, 1.6, 1.6);

setRotateKey( 1, 0, 0);
setRotateKey( spep_0+30, 0, 0);

setShakeChara( spep_0 + 30, 0, 34, 10);

setDisp( spep_0 + 64, 0, 0);


ef_ki=entryEffectLife(spep_0+31, 1501, 33, 0x80, 0, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_0+31, ef_ki, 1.2, 1.2);
setEffScaleKey(spep_0+64, ef_ki, 1.2, 1.2);

setEffAlphaKey( spep_0 + 30, ef_ki, 255 );
setEffAlphaKey( spep_0 + 64, ef_ki, 255 );


ef_bati = entryEffectLife(spep_0+31, 1502, 33, 0x100, 0, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_0+31, ef_bati, 1.2, 1.2);
setEffScaleKey(spep_0+64, ef_bati, 1.2, 1.2);



ctzuzun = entryEffectLife( spep_0+30, 10013, 36, 0, -1, 22, 191.9, 0); -- ズズンッ


setEffMoveKey( spep_0 + 30, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 66, ctzuzun, 46, 309.9 , 0 );


setEffScaleKey( spep_0 + 30, ctzuzun, 1.7, 1.7 );
setEffScaleKey( spep_0 + 32, ctzuzun, 2, 2 );
setEffScaleKey( spep_0 + 34, ctzuzun, 2.3, 2.3 );
setEffScaleKey( spep_0 + 36, ctzuzun, 2.9, 2.9 );
setEffScaleKey( spep_0 + 64, ctzuzun, 2.9, 2.9 );
setEffScaleKey( spep_0 + 66, ctzuzun, 2.9, 2.9 );


setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 64, ctzuzun, 0 );
setEffRotateKey( spep_0 + 66, ctzuzun, 0 );


setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 64, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 66, ctzuzun, 255 );


playSe( spep_0 + 31, SE_01);


entryFade(spep_0+29,0,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+60, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( spep_0, 0, 128, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 魔貫光殺砲構え
------------------------------------------------------

spep_1 = spep_0+64;

kamae = entryEffectLife(spep_1, SP_01, 84, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, kamae, 0, 0, 0);
setEffMoveKey(spep_1 + 84, kamae, 0, 0, 0);

setEffScaleKey(spep_1, kamae, 1.0, 1.0);
setEffScaleKey(spep_1 + 84, kamae, 1.0, 1.0);

setEffAlphaKey(spep_1, kamae, 255);
setEffAlphaKey(spep_1 + 84, kamae, 255);

setEffRotateKey(spep_1, kamae, 0);
setEffRotateKey(spep_1 + 84, kamae, 0);

setEffShake(spep_1, kamae, 84, 8);

ef_ki2 = entryEffectLife(spep_1 , 1503, 84, 0x80, 0, 0, 0, 0);   -- 集中線

setEffMoveKey(spep_1, ef_ki2, 0, 0, 0);
setEffMoveKey(spep_1+84, ef_ki2, 0, 0, 0);

setEffScaleKey(spep_1,  ef_ki2, 1.1, 1.1);
setEffScaleKey(spep_1 + 84, ef_ki2, 1.1, 1.1);

setEffAlphaKey(spep_1, ef_ki2, 255);
setEffAlphaKey(spep_1 + 84, ef_ki2, 255);

setEffRotateKey(spep_1, ef_ki2, 0);
setEffRotateKey(spep_1 + 84, ef_ki2, 0);


aura = entryEffectLife( spep_1 , 311, 84, 0x80,  -1,  0, -350, 0); -- オーラ

setEffMoveKey(spep_1, aura, 0, -350, 0);
setEffMoveKey(spep_1 + 84, aura, 0, -350, 0);

setEffScaleKey(spep_1, aura, 2.7, 2.7);
setEffScaleKey(spep_1 + 84, aura, 2.7, 2.7);

setEffAlphaKey(spep_1, aura, 255);
setEffAlphaKey(spep_1 + 84, aura, 255);

setEffRotateKey(spep_1, aura, 0);
setEffRotateKey(spep_1 + 84, aura, 0);

--顔＆セリフカットイン
speff = entryEffect(spep_1 + 2, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

speff1 = entryEffect(spep_1 + 2, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_1 + 15, 190006, 69, 0x100, -1, 0, 500, 0);--ゴゴゴ

setEffMoveKey(spep_1 + 15,ctgogo, 0, 500, 0);
setEffMoveKey(spep_1 + 84,ctgogo, 0, 500, 0);

setEffScaleKey(spep_1 + 15, ctgogo, 0.8, 0.8);
setEffScaleKey(spep_1 + 84, ctgogo, 0.8, 0.8);

setEffAlphaKey(spep_1 + 15, ctgogo, 255);
setEffAlphaKey(spep_1 + 84, ctgogo, 255);


playSe( spep_1+2, SE_04);


entryFade( spep_1 + 80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 96, 0, 0, 0, 0, 180); -- ベース暗め　背景


-----------------------------------------------------
--カードカットイン(90F)
-----------------------------------------------------

spep_2 = spep_1+84;

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);
--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
entryFade( spep_2 + 85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


end

-- ** エフェクト等 ** --
entryFade(spep_2 + 86, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




-- 次の準備
-- spep_2 = spep_1+84;

-- psetScaleKey( spep5-1,   0, 1.5, 1.5);
-- setScaleKey( spep5,   0, 1.0, 1.0);

-- playSe(spep_2,SE_05);
-- speff2=entryEffect(spep_2, 1507, 0, -1, 0, 0, 0);   -- カード

-- setEffReplaceTexture(speff2,1,1);
-- setEffReplaceTexture(speff2,2,0);-- カード差し替え
-- setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- --shuchusen1 = entryEffectLife(spep_2, 906, 90, 0x100, -1, 20, 0, 0);   -- 集中線

-- setEffScaleKey(spep_2, shuchusen1, 1.6, 1.6);

-- -- ** エフェクト等 ** --
-- entryFade(spep_2 + 86, 2,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 190); -- ベース暗め　背景


------------------------------------------------------
-- 魔貫光殺砲：放つ
------------------------------------------------------
-- ** 次の準備 ** --
spep_3 = spep_2+90;

launch = entryEffectLife(spep_3, SP_02, 176, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_3, launch, 0, 0, 0);
setEffMoveKey(spep_3 + 176, launch, 0, 0, 0);

setEffScaleKey(spep_3, launch, 1.0, 1.0);
setEffScaleKey(spep_3 + 176, launch, 1.0, 1.0);

setEffAlphaKey(spep_3, launch, 255);
setEffAlphaKey(spep_3 + 176, launch, 255);

setEffRotateKey(spep_3, launch, 0);
setEffRotateKey(spep_3 + 176, launch, 0);

setEffShake(spep_3, launch, 176, 8);

-- ctzuo2 = entryEffectLife( spep_3 + 46,  10012, 48, 0x100, -1, 0, 77.2, 237.9 );--ズオ

-- setEffMoveKey( spep_3 + 46, ctzuo2, 77.2, 237.9 , 0 );
-- setEffMoveKey( spep_3 + 50, ctzuo2, 77.3, 239.1 , 0 );
-- setEffMoveKey( spep_3 + 52, ctzuo2, 23.3, 262.5 , 0 );
-- setEffMoveKey( spep_3 + 54, ctzuo2, -30.1, 287.9 , 0 );
-- setEffMoveKey( spep_3 + 56, ctzuo2, -22.5, 289.8 , 0 );
-- setEffMoveKey( spep_3 + 58, ctzuo2, -31.8, 287.8 , 0 );
-- setEffMoveKey( spep_3 + 60, ctzuo2, -24.1, 289.8 , 0 );
-- setEffMoveKey( spep_3 + 62, ctzuo2, -30.9, 288.5 , 0 );
-- setEffMoveKey( spep_3 + 64, ctzuo2, -23.2, 290.5 , 0 );
-- setEffMoveKey( spep_3 + 66, ctzuo2, -32.8, 288.4 , 0 );
-- setEffMoveKey( spep_3 + 68, ctzuo2, -24.8, 290.4 , 0 );
-- setEffMoveKey( spep_3 + 70, ctzuo2, -31.9, 289.2 , 0 );
-- setEffMoveKey( spep_3 + 72, ctzuo2, -24, 291.1 , 0 );
-- setEffMoveKey( spep_3 + 74, ctzuo2, -31, 289.9 , 0 );
-- setEffMoveKey( spep_3 + 76, ctzuo2, -25.7, 291.1 , 0 );
-- setEffMoveKey( spep_3 + 78, ctzuo2, -32.7, 289.8 , 0 );
-- setEffMoveKey( spep_3 + 80, ctzuo2, -24.8, 291.8 , 0 );
-- setEffMoveKey( spep_3 + 82, ctzuo2, -31.9, 290.5 , 0 );
-- setEffMoveKey( spep_3 + 84, ctzuo2, -23.9, 292.6 , 0 );
-- setEffMoveKey( spep_3 + 86, ctzuo2, -33.7, 290.4 , 0 );
-- setEffMoveKey( spep_3 + 88, ctzuo2, -25.5, 292.5 , 0 );
-- setEffMoveKey( spep_3 + 90, ctzuo2, -32.8, 291.2 , 0 );
-- setEffMoveKey( spep_3 + 92, ctzuo2, -24.7, 293.2 , 0 );
-- setEffMoveKey( spep_3 + 94, ctzuo2, -31.9, 291.9 , 0 );


-- setEffScaleKey( spep_3 + 46, ctzuo2, 0.33, 0.33 );
-- setEffScaleKey( spep_3 + 50, ctzuo2, 0.33, 0.33 );
-- setEffScaleKey( spep_3 + 52, ctzuo2, 1.27, 1.27 );
-- setEffScaleKey( spep_3 + 54, ctzuo2, 2.2, 2.2 );
-- setEffScaleKey( spep_3 + 56, ctzuo2, 2.2, 2.2 );
-- setEffScaleKey( spep_3 + 58, ctzuo2, 2.24, 2.24 );
-- setEffScaleKey( spep_3 + 64, ctzuo2, 2.24, 2.24 );
-- setEffScaleKey( spep_3 + 66, ctzuo2, 2.27, 2.27 );
-- setEffScaleKey( spep_3 + 74, ctzuo2, 2.27, 2.27 );
-- setEffScaleKey( spep_3 + 76, ctzuo2, 2.3, 2.3 );
-- setEffScaleKey( spep_3 + 84, ctzuo2, 2.3, 2.3 );
-- setEffScaleKey( spep_3 + 86, ctzuo2, 2.34, 2.34 );
-- setEffScaleKey( spep_3 + 94, ctzuo2, 2.34, 2.34 );


-- setEffRotateKey( spep_3 + 46, ctzuo2, -43.9 );
-- setEffRotateKey( spep_3 + 50, ctzuo2, -43.9 );
-- setEffRotateKey( spep_3 + 52, ctzuo2, -34.5 );
-- setEffRotateKey( spep_3 + 54, ctzuo2, -25.2 );
-- setEffRotateKey( spep_3 + 94, ctzuo2, -25.2 );

-- setEffAlphaKey( spep_3 + 46, ctzuo2, 255 );
-- setEffAlphaKey( spep_3 + 94, ctzuo2, 255 );


-- ctbi = entryEffectLife( spep_3 + 46,  10024, 48, 0x100, -1, 0, 105.7, 257 );--ビッ


-- setEffMoveKey( spep_3 + 46, ctbi, 105.7, 257 , 0 );
-- setEffMoveKey( spep_3 + 50, ctbi, 105.7, 269.3 , 0 );
-- setEffMoveKey( spep_3 + 52, ctbi, 148.3, 357.9 , 0 );
-- setEffMoveKey( spep_3 + 54, ctbi, 210.9, 416.3 , 0 );
-- setEffMoveKey( spep_3 + 56, ctbi, 218.5, 418.3 , 0 );
-- setEffMoveKey( spep_3 + 58, ctbi, 212.8, 418.2 , 0 );
-- setEffMoveKey( spep_3 + 60, ctbi, 220.6, 420.2 , 0 );
-- setEffMoveKey( spep_3 + 62, ctbi, 213.7, 418.9 , 0 );
-- setEffMoveKey( spep_3 + 64, ctbi, 221.5, 420.9 , 0 );
-- setEffMoveKey( spep_3 + 66, ctbi, 215.6, 420.8 , 0 );
-- setEffMoveKey( spep_3 + 68, ctbi, 223.5, 422.8 , 0 );
-- setEffMoveKey( spep_3 + 70, ctbi, 216.5, 421.6 , 0 );
-- setEffMoveKey( spep_3 + 72, ctbi, 224.3, 423.5 , 0 );
-- setEffMoveKey( spep_3 + 74, ctbi, 217.4, 422.3 , 0 );
-- setEffMoveKey( spep_3 + 76, ctbi, 226.3, 425.4 , 0 );
-- setEffMoveKey( spep_3 + 78, ctbi, 219.3, 424.1 , 0 );
-- setEffMoveKey( spep_3 + 80, ctbi, 227.2, 426.1 , 0 );
-- setEffMoveKey( spep_3 + 82, ctbi, 220.1, 424.8 , 0 );
-- setEffMoveKey( spep_3 + 84, ctbi, 228.1, 426.9 , 0 );
-- setEffMoveKey( spep_3 + 86, ctbi, 222, 426.7 , 0 );
-- setEffMoveKey( spep_3 + 88, ctbi, 230.1, 428.8 , 0 );
-- setEffMoveKey( spep_3 + 90, ctbi, 222.9, 427.5 , 0 );
-- setEffMoveKey( spep_3 + 92, ctbi, 230.9, 429.5 , 0 );
-- setEffMoveKey( spep_3 + 94, ctbi, 223.8, 428.2 , 0 );


-- setEffScaleKey( spep_3 + 46, ctbi, 0.37, 0.37 );
-- setEffScaleKey( spep_3 + 50, ctbi, 0.37, 0.37 );
-- setEffScaleKey( spep_3 + 52, ctbi, 1.39, 1.39 );
-- setEffScaleKey( spep_3 + 54, ctbi, 2.41, 2.41 );
-- setEffScaleKey( spep_3 + 56, ctbi, 2.41, 2.41 );
-- setEffScaleKey( spep_3 + 58, ctbi, 2.45, 2.45 );
-- setEffScaleKey( spep_3 + 64, ctbi, 2.45, 2.45 );
-- setEffScaleKey( spep_3 + 66, ctbi, 2.49, 2.49 );
-- setEffScaleKey( spep_3 + 74, ctbi, 2.49, 2.49 );
-- setEffScaleKey( spep_3 + 76, ctbi, 2.52, 2.52 );
-- setEffScaleKey( spep_3 + 84, ctbi, 2.52, 2.52 );
-- setEffScaleKey( spep_3 + 86, ctbi, 2.56, 2.56 );
-- setEffScaleKey( spep_3 + 94, ctbi, 2.56, 2.56 );


-- setEffRotateKey( spep_3 + 46, ctbi, -22.7 );
-- setEffRotateKey( spep_3 + 50, ctbi, -22.7 );
-- setEffRotateKey( spep_3 + 52, ctbi, -13.3 );
-- setEffRotateKey( spep_3 + 54, ctbi, -4 );
-- setEffRotateKey( spep_3 + 94, ctbi, -4 );


-- setEffAlphaKey( spep_3 + 46, ctbi, 255 );
-- setEffAlphaKey( spep_3 + 94, ctbi, 255 );


ctgyun = entryEffectLife( spep_3 + 146,  10007, 28, 0x100, -1, 50.4, 32.8, 0);--ギュンッ

setEffMoveKey( spep_3 + 146, ctgyun, 50.4, 32.8, 0 );
setEffMoveKey( spep_3 + 150, ctgyun, 50.4, 32.8 , 0 );
setEffMoveKey( spep_3 + 152, ctgyun, 50.2, 88.1 , 0 );
setEffMoveKey( spep_3 + 154, ctgyun, 50.1, 121.3 , 0 );
setEffMoveKey( spep_3 + 156, ctgyun, 50.1, 132.4 , 0 );
setEffMoveKey( spep_3 + 174, ctgyun, 50.1, 132.4 , 0 );


setEffScaleKey( spep_3 + 146, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_3 + 148, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_3 + 150, ctgyun, 2.0, 2.0 );
setEffScaleKey( spep_3 + 152, ctgyun, 3.21, 3.21 );
setEffScaleKey( spep_3 + 154, ctgyun, 3.93, 3.93 );
setEffScaleKey( spep_3 + 156, ctgyun, 4.17, 4.17 );
setEffScaleKey( spep_3 + 158, ctgyun, 4.21, 4.21 );
setEffScaleKey( spep_3 + 160, ctgyun, 4.25, 4.25 );
setEffScaleKey( spep_3 + 162, ctgyun, 4.28, 4.28 );
setEffScaleKey( spep_3 + 164, ctgyun, 4.32, 4.32 );
setEffScaleKey( spep_3 + 166, ctgyun, 4.36, 4.36 );
setEffScaleKey( spep_3 + 168, ctgyun, 4.4, 4.4 );
setEffScaleKey( spep_3 + 170, ctgyun, 4.44, 4.44 );
setEffScaleKey( spep_3 + 172, ctgyun, 4.48, 4.48 );
setEffScaleKey( spep_3 + 174, ctgyun, 4.51, 4.51 );
setEffScaleKey( spep_3 + 174, ctgyun, 4.55, 4.55 );


setEffRotateKey( spep_3 + 146, ctgyun, -7 );
setEffRotateKey( spep_3 + 150, ctgyun, -7 );
setEffRotateKey( spep_3 + 152, ctgyun, -8.1 );
setEffRotateKey( spep_3 + 154, ctgyun, -8.8 );
setEffRotateKey( spep_3 + 156, ctgyun, -9 );
setEffRotateKey( spep_3 + 174, ctgyun, -9 );


setEffAlphaKey( spep_3 + 146, ctgyun, 255 );
setEffAlphaKey( spep_3 + 150, ctgyun, 255 );
setEffAlphaKey( spep_3 + 156, ctgyun, 255 );
setEffAlphaKey( spep_3 + 174, ctgyun, 255 );


shuchusen2 = entryEffectLife(spep_3, 906, 24, 0x100, -1, 0, 46, 0);   -- 集中線


setEffMoveKey( spep_3 + 0, shuchusen2, 0, 46 , 0 );
setEffMoveKey( spep_3 + 24, shuchusen2, 0, 46 , 0 );


setEffScaleKey( spep_3 + 0, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_3 + 24, shuchusen2, 1.15, 1.15 );


setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 2, shuchusen2, 0 );
setEffRotateKey( spep_3 + 4, shuchusen2, 180 );
setEffRotateKey( spep_3 + 6, shuchusen2, 0 );
setEffRotateKey( spep_3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_3 + 10, shuchusen2, 0 );
setEffRotateKey( spep_3 + 12, shuchusen2, 180 );
setEffRotateKey( spep_3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_3 + 16, shuchusen2, 180 );
setEffRotateKey( spep_3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_3 + 20, shuchusen2, 180 );
setEffRotateKey( spep_3 + 22, shuchusen2, 0 );
setEffRotateKey( spep_3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 23, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 24, shuchusen2, 0 );


ryusen = entryEffectLife(spep_3+26, 921, 68, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_3 + 26, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, ryusen, 0, 0 , 0 );


setEffScaleKey( spep_3 + 26, ryusen, 1.42, 1.42 );
setEffScaleKey( spep_3 + 94, ryusen, 1.42, 1.42 );


setEffRotateKey( spep_3 + 26, ryusen, 180 );
setEffRotateKey( spep_3 + 94, ryusen, 180 );


setEffAlphaKey( spep_3 + 26, ryusen, 255 );
setEffAlphaKey( spep_3 + 94, ryusen, 255 );


ryusen2 = entryEffectLife(spep_3+96, 921, 80, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_3 + 96, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, ryusen2, 0, 0 , 0 );


setEffScaleKey( spep_3 + 96, ryusen2, 1.42, 1.42 );
setEffScaleKey( spep_3 + 176, ryusen2, 1.42, 1.42 );


setEffRotateKey( spep_3 + 96, ryusen2, 200 );
setEffRotateKey( spep_3 + 176, ryusen2, 200 );


setEffAlphaKey( spep_3 + 96, ryusen2, 255 );
setEffAlphaKey( spep_3 + 176, ryusen2, 255 );

playSe( spep_3, 1036);
playSe( spep_3+20, 1036);
playSe( spep_3+40, SE_06);
playSe( spep_3+96, SE_07);

entryFade( spep_3 + 22, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 40, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 93, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 172, 3, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 176, 0, 0, 0, 0, 180); -- ベース暗め　背景


------------------------------------------------------
-- 被弾(前後)
------------------------------------------------------


-- ** 次の準備 ** --
spep_4 = spep_3+176;


hit = entryEffectLife(spep_4, SP_03, 76, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, hit, 0, 0 ,0);
setEffMoveKey(spep_4+76, hit, 0, 0, 0);

setEffScaleKey(spep_4, hit, 1.0, 1.0);
setEffScaleKey(spep_4+76, hit, 1.0, 1.0);

setEffAlphaKey(spep_4, hit, 255);
setEffAlphaKey(spep_4+76, hit, 255);

setEffRotateKey(spep_4, hit, 0);
setEffRotateKey(spep_4+76, hit, 0);


ryusen3 = entryEffectLife(spep_4 , 921, 76, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_4 , ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, ryusen3, 0, 0 , 0 );


setEffScaleKey( spep_4 , ryusen3, 1, 1 );
setEffScaleKey( spep_4 + 76, ryusen3, 1, 1 );


setEffRotateKey( spep_4 , ryusen3, 0 );
setEffRotateKey( spep_4 + 76, ryusen3, 0 );


setEffAlphaKey( spep_4 , ryusen3, 255 );
setEffAlphaKey( spep_4 + 76, ryusen3, 255 );


--エフェクトの再生(後)
hit2 = entryEffectLife(spep_4, SP_04, 76, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_4, hit2, 0, 0, 0);
setEffMoveKey(spep_4+76, hit2, 0, 0, 0);

setEffScaleKey(spep_4,hit2, 1.0, 1.0);
setEffScaleKey(spep_4+76, hit2, 1.0, 1.0);

setEffAlphaKey(spep_4, hit2, 255);
setEffAlphaKey(spep_4+76, hit2, 255);

setEffRotateKey(spep_4, hit2, 0);
setEffRotateKey(spep_4+76, hit2, 0);


ctzudodo = entryEffectLife( spep_4 + 29,  10014, 46, 0x100, -1, 0, 105.7, 257 );--ズドドド

setEffMoveKey( spep_4 + 29, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 75, ctzudodo, 63.1, 347.5 , 0 );


setEffScaleKey( spep_4 + 29, ctzudodo, 2.72, 2.72 );
setEffScaleKey( spep_4 + 75, ctzudodo, 2.72, 2.72 );


setEffRotateKey( spep_4 + 29, ctzudodo, 59.1 );
setEffRotateKey( spep_4 + 75, ctzudodo, 59.1 );

setEffAlphaKey( spep_4 + 29, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 75, ctzudodo, 255 );

-----------------------------------敵の動き-----------------------------------

setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 29, 1, 108 );


setMoveKey( spep_4 + 0, 1, 96.2, -0.2 , 0 );
setMoveKey( spep_4 + 2, 1, 95.7, 0.6 , 0 );
setMoveKey( spep_4 + 4, 1, 97.1, 0.6 , 0 );
setMoveKey( spep_4 + 6, 1, 98.3, -3.1 , 0 );
setMoveKey( spep_4 + 8, 1, 99.6, 0.2 , 0 );
setMoveKey( spep_4 + 10, 1, 92.9, -1.5 , 0 );
setMoveKey( spep_4 + 12, 1, 97.2, 2.4 , 0 );
setMoveKey( spep_4 + 14, 1, 93.3, 0.5 , 0 );
setMoveKey( spep_4 + 16, 1, 96.2, -4.1 , 0 );
setMoveKey( spep_4 + 18, 1, 94.2, 4.1 , 0 );
setMoveKey( spep_4 + 20, 1, 92.1, -3.2 , 0 );
setMoveKey( spep_4 + 22, 1, 92.1, -4.5 , 0 );
setMoveKey( spep_4 + 24, 1, 99.9, -2.7 , 0 );
setMoveKey( spep_4 + 26, 1, 95.8, 3.1 , 0 );
setMoveKey( spep_4 + 28, 1, 97.2, -4.8 , 0 );
setMoveKey( spep_4 + 30, 1, 100.6, -1 , 0 );
setMoveKey( spep_4 + 33, 1, 91.7, -2 , 0 );
setMoveKey( spep_4 + 34, 1, 142.3, 35.1 , 0 );
setMoveKey( spep_4 + 36, 1, 148.6, 33.5 , 0 );
setMoveKey( spep_4 + 38, 1, 148.4, 23.7 , 0 );
setMoveKey( spep_4 + 40, 1, 171.6, 17.6 , 0 );
setMoveKey( spep_4 + 42, 1, 193.8, 23.5 , 0 );
setMoveKey( spep_4 + 44, 1, 194.6, 23.6 , 0 );
setMoveKey( spep_4 + 46, 1, 209, 16.6 , 0 );
setMoveKey( spep_4 + 48, 1, 228.5, 10.5 , 0 );
setMoveKey( spep_4 + 50, 1, 217.9, 26.1 , 0 );
setMoveKey( spep_4 + 52, 1, 232.7, 14.9 , 0 );
setMoveKey( spep_4 + 54, 1, 216.1, 21.9 , 0 );
setMoveKey( spep_4 + 56, 1, 216.4, 17.4 , 0 );
setMoveKey( spep_4 + 58, 1, 226.9, 29.8 , 0 );
setMoveKey( spep_4 + 60, 1, 226.5, 12.3 , 0 );
setMoveKey( spep_4 + 62, 1, 231.1, 25.3 , 0 );
setMoveKey( spep_4 + 64, 1, 218.7, 12 , 0 );
setMoveKey( spep_4 + 66, 1, 228.2, 12.8 , 0 );
setMoveKey( spep_4 + 68, 1, 215.2, 19.6 , 0 );
setMoveKey( spep_4 + 70, 1, 223.2, 15.1 , 0 );
setMoveKey( spep_4 + 72, 1, 219, 24.1 , 0 );
setMoveKey( spep_4 + 74, 1, 213, 17.6 , 0 );
setMoveKey( spep_4 + 75, 1, 232.7, 24.4 , 0 );


setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 33, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 36, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 75, 1, 1.48, 1.48 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 33, 1, 0 );
setRotateKey( spep_4 + 34, 1, -4 );
setRotateKey( spep_4 + 74, 1, -4 );
setRotateKey( spep_4 + 75, 1, -4 );


setShakeChara( spep_4, 1, 75, 10);


playSe( spep_4, SE_07);

entryFade( spep_4 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 78, 0, 0, 0, 0, 180); -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+20; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);


setMoveKey(SP_dodge, 1, 120.2, -0.2);
setScaleKey(SP_dodge, 1, 2.5, 2.5);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, 120.2, -0.2);
setScaleKey(SP_dodge+8, 1, 2.5, 2.5);
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


------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5 = spep_4+74;
entryFade( spep_5-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線




-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--アイドリング
------------------------------------------------------


spep_0 = 0;

--味方キャラの登場
setDisp( 0, 0, 1);

changeAnime(0, 0, 1);
changeAnime(30, 0, 17);


setMoveKey( 0, 0, 0, -24,   0);
setMoveKey( 1, 0, 0, -24,   0);
setMoveKey( 2, 0, 0, -24,   0);
setMoveKey( 3, 0, 0, -24,   0);
setMoveKey( 29, 0, 0, -24,   0);

setScaleKey( 0, 0, 1.6, 1.6);
setScaleKey( 64, 0, 1.6, 1.6);

setRotateKey( 1, 0, 0);
setRotateKey( spep_0+30, 0, 0);


setShakeChara( spep_0 + 30, 0, 34, 10);

setDisp( spep_0 + 64, 0, 0);


ef_ki=entryEffectLife(spep_0+31, 1501, 33, 0x80, 0, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_0+31, ef_ki, 1.2, 1.2);
setEffScaleKey(spep_0+64, ef_ki, 1.2, 1.2);

setEffAlphaKey( spep_0 + 31, ef_ki, 255 );
setEffAlphaKey( spep_0 + 64, ef_ki, 255 );


ef_bati = entryEffectLife(spep_0+31, 1502, 33, 0x100, 0, 0, 0, 0);   -- 集中線

setEffScaleKey(spep_0+31, ef_bati, 1.2, 1.2);
setEffScaleKey(spep_0+64, ef_bati, 1.2, 1.2);



ctzuzun = entryEffectLife( spep_0+30, 10013, 36, 0, -1, 22, 191.9, 0); -- ズズンッ


setEffMoveKey( spep_0 + 30, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_0 + 66, ctzuzun, 46, 309.9 , 0 );


setEffScaleKey( spep_0 + 30, ctzuzun, 1.7, 1.7 );
setEffScaleKey( spep_0 + 32, ctzuzun, 2, 2 );
setEffScaleKey( spep_0 + 34, ctzuzun, 2.3, 2.3 );
setEffScaleKey( spep_0 + 36, ctzuzun, 2.9, 2.9 );
setEffScaleKey( spep_0 + 64, ctzuzun, 2.9, 2.9 );
setEffScaleKey( spep_0 + 66, ctzuzun, 2.9, 2.9 );


setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 64, ctzuzun, 0 );
setEffRotateKey( spep_0 + 66, ctzuzun, 0 );


setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 64, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 66, ctzuzun, 255 );


playSe( spep_0 + 31, SE_01);


entryFade(spep_0+29,0,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+60, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( spep_0, 0, 128, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 魔貫光殺砲構え
------------------------------------------------------

spep_1 = spep_0+64;

kamae = entryEffectLife(spep_1, SP_01, 84, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_1, kamae, 0, 0, 0);
setEffMoveKey(spep_1 + 84, kamae, 0, 0, 0);

setEffScaleKey(spep_1, kamae, -1.0, 1.0);
setEffScaleKey(spep_1 + 84, kamae, -1.0, 1.0);

setEffAlphaKey(spep_1, kamae, 255);
setEffAlphaKey(spep_1 + 84, kamae, 255);

setEffRotateKey(spep_1, kamae, 0);
setEffRotateKey(spep_1 + 84, kamae, 0);

setEffShake(spep_1, kamae, 84, 8);

ef_ki2 = entryEffectLife(spep_1 , 1503, 84, 0x80, 0, 0, 0, 0);   -- 集中線

setEffMoveKey(spep_1, ef_ki2, 0, 0, 0);
setEffMoveKey(spep_1+84, ef_ki2, 0, 0, 0);

setEffScaleKey(spep_1,  ef_ki2, 1.1, 1.1);
setEffScaleKey(spep_1 + 84, ef_ki2, 1.1, 1.1);

setEffAlphaKey(spep_1, ef_ki2, 255);
setEffAlphaKey(spep_1 + 84, ef_ki2, 255);

setEffRotateKey(spep_1, ef_ki2, 0);
setEffRotateKey(spep_1 + 84, ef_ki2, 0);


aura = entryEffectLife( spep_1 , 311, 84, 0x80,  -1,  0, -350, 0); -- オーラ

setEffMoveKey(spep_1, aura, 0, -350, 0);
setEffMoveKey(spep_1 + 84, aura, 0, -350, 0);

setEffScaleKey(spep_1, aura, 2.7, 2.7);
setEffScaleKey(spep_1 + 84, aura, 2.7, 2.7);

setEffAlphaKey(spep_1, aura, 255);
setEffAlphaKey(spep_1 + 84, aura, 255);

setEffRotateKey(spep_1, aura, 0);
setEffRotateKey(spep_1 + 84, aura, 0);

--顔＆セリフカットイン
--speff = entryEffect(spep_1 + 2, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え

--speff1 = entryEffect(spep_1 + 2, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--文字エントリー

ctgogo = entryEffectLife(spep_1 + 15, 190006, 69, 0x100, -1, 0, 500, 0);--ゴゴゴ

setEffMoveKey(spep_1 + 15,ctgogo, 0, 500, 0);
setEffMoveKey(spep_1 + 84,ctgogo, 0, 500, 0);

setEffScaleKey(spep_1 + 15, ctgogo, -0.8, 0.8);
setEffScaleKey(spep_1 + 84, ctgogo, -0.8, 0.8);

setEffAlphaKey(spep_1 + 15, ctgogo, 255);
setEffAlphaKey(spep_1 + 84, ctgogo, 255);


playSe( spep_1+2, SE_04);


entryFade( spep_1 + 80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 96, 0, 0, 0, 0, 180); -- ベース暗め　背景


-----------------------------------------------------
--カードカットイン(90F)
-----------------------------------------------------

--次の準備
spep_2 = spep_1+84;

playSe(spep_2,SE_05);

speff2=entryEffect(spep_2, 1507, 0, -1, 0, 0, 0);   -- カード

setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife(spep_2, 906, 90, 0x100, -1, 20, 0, 0);   -- 集中線

setEffScaleKey(spep_2, shuchusen1, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_2+86, 2,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 190); -- ベース暗め　背景

------------------------------------------------------
-- 魔貫光殺砲：放つ
------------------------------------------------------
-- ** 次の準備 ** --
spep_3 = spep_2+90;

launch = entryEffectLife(spep_3, SP_11, 176, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_3, launch, 0, 0, 0);
setEffMoveKey(spep_3 + 176, launch, 0, 0, 0);

setEffScaleKey(spep_3, launch, 1.0, 1.0);
setEffScaleKey(spep_3 + 176, launch, 1.0, 1.0);

setEffAlphaKey(spep_3, launch, 255);
setEffAlphaKey(spep_3 + 176, launch, 255);

setEffRotateKey(spep_3, launch, 0);
setEffRotateKey(spep_3 + 176, launch, 0);

setEffShake(spep_3, launch, 176, 8);


-- ctzuo2 = entryEffectLife( spep_3 + 46,  10012, 48, 0x100, -1, -22.4, 198.1 , 0 );--ズオ

-- setEffMoveKey( spep_3 + 46, ctzuo2, -22.4, 198.1 , 0 );
-- setEffMoveKey( spep_3 + 50, ctzuo2, -22.4, 198.1 , 0 );
-- setEffMoveKey( spep_3 + 52, ctzuo2, 46.2, 252.2 , 0 );
-- setEffMoveKey( spep_3 + 54, ctzuo2, 107.8, 310.2 , 0 );
-- setEffMoveKey( spep_3 + 56, ctzuo2, 113.6, 309.8 , 0 );
-- setEffMoveKey( spep_3 + 58, ctzuo2, 109, 314.8 , 0 );
-- setEffMoveKey( spep_3 + 60, ctzuo2, 115, 314.4 , 0 );
-- setEffMoveKey( spep_3 + 62, ctzuo2, 108.9, 319.6 , 0 );
-- setEffMoveKey( spep_3 + 64, ctzuo2, 116.3, 319 , 0 );
-- setEffMoveKey( spep_3 + 66, ctzuo2, 110.1, 324.2 , 0 );
-- setEffMoveKey( spep_3 + 68, ctzuo2, 117.2, 321.4 , 0 );
-- setEffMoveKey( spep_3 + 70, ctzuo2, 113.4, 324.2 , 0 );
-- setEffMoveKey( spep_3 + 72, ctzuo2, 120.5, 321.3 , 0 );
-- setEffMoveKey( spep_3 + 74, ctzuo2, 115.3, 324.3 , 0 );
-- setEffMoveKey( spep_3 + 76, ctzuo2, 124, 321.2 , 0 );
-- setEffMoveKey( spep_3 + 78, ctzuo2, 118.6, 324.2 , 0 );
-- setEffMoveKey( spep_3 + 80, ctzuo2, 125.8, 321.3 , 0 );
-- setEffMoveKey( spep_3 + 82, ctzuo2, 121.9, 324.2 , 0 );
-- setEffMoveKey( spep_3 + 84, ctzuo2, 129.2, 321.2 , 0 );
-- setEffMoveKey( spep_3 + 86, ctzuo2, 123.8, 324.3 , 0 );
-- setEffMoveKey( spep_3 + 88, ctzuo2, 132.6, 321.1 , 0 );
-- setEffMoveKey( spep_3 + 90, ctzuo2, 127.1, 324.2 , 0 );
-- setEffMoveKey( spep_3 + 92, ctzuo2, 134.5, 321.2 , 0 );
-- setEffMoveKey( spep_3 + 94, ctzuo2, 130.4, 324.2 , 0 );


-- setEffScaleKey( spep_3 + 46, ctzuo2, 0.4, 0.4 );
-- setEffScaleKey( spep_3 + 50, ctzuo2, 0.4, 0.4 );
-- setEffScaleKey( spep_3 + 52, ctzuo2, 1.35, 1.35 );
-- setEffScaleKey( spep_3 + 54, ctzuo2, 2.31, 2.31 );
-- setEffScaleKey( spep_3 + 56, ctzuo2, 2.31, 2.31 );
-- setEffScaleKey( spep_3 + 58, ctzuo2, 2.35, 2.35 );
-- setEffScaleKey( spep_3 + 62, ctzuo2, 2.35, 2.35 );
-- setEffScaleKey( spep_3 + 64, ctzuo2, 2.39, 2.39 );
-- setEffScaleKey( spep_3 + 68, ctzuo2, 2.39, 2.39 );
-- setEffScaleKey( spep_3 + 70, ctzuo2, 2.43, 2.43 );
-- setEffScaleKey( spep_3 + 74, ctzuo2, 2.43, 2.43 );
-- setEffScaleKey( spep_3 + 76, ctzuo2, 2.47, 2.47 );
-- setEffScaleKey( spep_3 + 80, ctzuo2, 2.47, 2.47 );
-- setEffScaleKey( spep_3 + 82, ctzuo2, 2.51, 2.51 );
-- setEffScaleKey( spep_3 + 86, ctzuo2, 2.51, 2.51 );
-- setEffScaleKey( spep_3 + 88, ctzuo2, 2.55, 2.55 );
-- setEffScaleKey( spep_3 + 92, ctzuo2, 2.55, 2.55 );
-- setEffScaleKey( spep_3 + 94, ctzuo2, 2.59, 2.59 );


-- setEffRotateKey( spep_3 + 46, ctzuo2, -31.1 );
-- setEffRotateKey( spep_3 + 50, ctzuo2, -31.1 );
-- setEffRotateKey( spep_3 + 52, ctzuo2, -30.8 );
-- setEffRotateKey( spep_3 + 54, ctzuo2, -30.6 );
-- setEffRotateKey( spep_3 + 96, ctzuo2, -30.6 );


-- setEffAlphaKey( spep_3 + 46, ctzuo2, 255 );
-- setEffAlphaKey( spep_3 + 94, ctzuo2, 255 );



-- ctbi = entryEffectLife( spep_3 + 46,  10024, 48, 0x100, -1, -73.2, 180.9 , 0 );--ビッ


-- setEffMoveKey( spep_3 + 46, ctbi, -73.2, 180.9 , 0 );
-- setEffMoveKey( spep_3 + 50, ctbi, -73.2, 180.9 , 0 );
-- setEffMoveKey( spep_3 + 52, ctbi, -88.6, 190 , 0 );
-- setEffMoveKey( spep_3 + 54, ctbi, -94.2, 195.6 , 0 );
-- setEffMoveKey( spep_3 + 56, ctbi, -105.4, 190.2 , 0 );
-- setEffMoveKey( spep_3 + 58, ctbi, -116.7, 190.7 , 0 );
-- setEffMoveKey( spep_3 + 60, ctbi, -136.8, 190.3 , 0 );
-- setEffMoveKey( spep_3 + 62, ctbi, -139.8, 192.5 , 0 );
-- setEffMoveKey( spep_3 + 64, ctbi, -140.2, 190.5 , 0 );
-- setEffMoveKey( spep_3 + 66, ctbi, -142.4, 191.7 , 0 );
-- setEffMoveKey( spep_3 + 68, ctbi, -140.3, 192.9 , 0 );
-- setEffMoveKey( spep_3 + 70, ctbi, -147.9, 194.2 , 0 );
-- setEffMoveKey( spep_3 + 72, ctbi, -148.8, 193.3 , 0 );
-- setEffMoveKey( spep_3 + 74, ctbi, -148, 192.3 , 0 );
-- setEffMoveKey( spep_3 + 76, ctbi, -146.1, 186.8 , 0 );
-- setEffMoveKey( spep_3 + 78, ctbi, -148.5, 189.7 , 0 );
-- setEffMoveKey( spep_3 + 80, ctbi, -147.3, 186.9 , 0 );
-- setEffMoveKey( spep_3 + 82, ctbi, -148, 187.2 , 0 );
-- setEffMoveKey( spep_3 + 84, ctbi, -150.7, 180.3 , 0 );
-- setEffMoveKey( spep_3 + 86, ctbi, -156.1, 179.3 , 0 );
-- setEffMoveKey( spep_3 + 88, ctbi, -156.1, 186.7 , 0 );
-- setEffMoveKey( spep_3 + 90, ctbi, -155.6, 181.8 , 0 );
-- setEffMoveKey( spep_3 + 92, ctbi, -156.2, 180.8 , 0 );
-- setEffMoveKey( spep_3 + 94, ctbi, -155.1, 184.3 , 0 );

-- setEffMoveKey( spep_3 + 46, ctbi, -50.2, 173.9 , 0 );
-- setEffMoveKey( spep_3 + 52, ctbi, -67.6, 265 , 0 );
-- setEffMoveKey( spep_3 + 54, ctbi, -97.2, 359.6 , 0 );
-- setEffMoveKey( spep_3 + 56, ctbi, -91.4, 399.2 , 0 );
-- setEffMoveKey( spep_3 + 58, ctbi, -99.7, 405.7 , 0 );
-- setEffMoveKey( spep_3 + 60, ctbi, -93.8, 405.3 , 0 );
-- setEffMoveKey( spep_3 + 62, ctbi, -99.8, 410.5 , 0 );
-- setEffMoveKey( spep_3 + 64, ctbi, -96.2, 411.5 , 0 );
-- setEffMoveKey( spep_3 + 66, ctbi, -102.4, 416.7 , 0 );
-- setEffMoveKey( spep_3 + 68, ctbi, -110.3, 413.9 , 0 );
-- setEffMoveKey( spep_3 + 70, ctbi, -117.9, 418.2 , 0 );
-- setEffMoveKey( spep_3 + 72, ctbi, -110.8, 415.3 , 0 );
-- setEffMoveKey( spep_3 + 74, ctbi, -116, 418.3 , 0 );
-- setEffMoveKey( spep_3 + 76, ctbi, -111.1, 416.8 , 0 );
-- setEffMoveKey( spep_3 + 78, ctbi, -116.5, 419.7 , 0 );
-- setEffMoveKey( spep_3 + 80, ctbi, -109.3, 416.9 , 0 );
-- setEffMoveKey( spep_3 + 82, ctbi, -117, 421.2 , 0 );
-- setEffMoveKey( spep_3 + 84, ctbi, -109.7, 418.3 , 0 );
-- setEffMoveKey( spep_3 + 86, ctbi, -65.1, 321.3 , 0 );
-- setEffMoveKey( spep_3 + 88, ctbi, -60.1, 319.7 , 0 );
-- setEffMoveKey( spep_3 + 90, ctbi, -65.6, 322.8 , 0 );
-- setEffMoveKey( spep_3 + 92, ctbi, -58.2, 319.8 , 0 );
-- setEffMoveKey( spep_3 + 94, ctbi, -66.1, 324.3 , 0 );


-- setEffScaleKey( spep_3 + 46, ctbi, 0.4, 0.4 );
-- setEffScaleKey( spep_3 + 50, ctbi, 0.4, 0.4 );
-- setEffScaleKey( spep_3 + 52, ctbi, 1.97, 1.97 );
-- setEffScaleKey( spep_3 + 54, ctbi, 2.33, 2.33 );
-- setEffScaleKey( spep_3 + 56, ctbi, 2.33, 2.33 );
-- setEffScaleKey( spep_3 + 58, ctbi, 2.37, 2.37 );
-- setEffScaleKey( spep_3 + 62, ctbi, 2.37, 2.37 );
-- setEffScaleKey( spep_3 + 64, ctbi, 2.61, 2.61 );
-- setEffScaleKey( spep_3 + 68, ctbi, 2.61, 2.61 );
-- setEffScaleKey( spep_3 + 70, ctbi, 2.65, 2.65 );
-- setEffScaleKey( spep_3 + 74, ctbi, 2.65, 2.65 );
-- setEffScaleKey( spep_3 + 76, ctbi, 2.69, 2.69 );
-- setEffScaleKey( spep_3 + 80, ctbi, 2.69, 2.69 );
-- setEffScaleKey( spep_3 + 82, ctbi, 2.73, 2.73 );
-- setEffScaleKey( spep_3 + 86, ctbi, 2.73, 2.73 );
-- setEffScaleKey( spep_3 + 88, ctbi, 2.77, 2.77 );
-- setEffScaleKey( spep_3 + 92, ctbi, 2.77, 2.77 );
-- setEffScaleKey( spep_3 + 94, ctbi, 2.81, 2.81 );


-- setEffRotateKey( spep_3 + 46, ctbi, -48 );
-- setEffRotateKey( spep_3 + 50, ctbi, -48 );
-- setEffRotateKey( spep_3 + 52, ctbi, -48 );
-- setEffRotateKey( spep_3 + 54, ctbi, -48 );
-- setEffRotateKey( spep_3 + 96, ctbi, -48 );


-- setEffAlphaKey( spep_3 + 46, ctbi, 255 );
-- setEffAlphaKey( spep_3 + 94, ctbi, 255 );



ctgyun = entryEffectLife( spep_3 + 146,  10007, 28, 0x100, -1, -10.4, 32.8, 0);--ギュンッ

setEffMoveKey( spep_3 + 146, ctgyun, -10.4, 32.8, 0 );
setEffMoveKey( spep_3 + 150, ctgyun, -10.4, 32.8 , 0 );
setEffMoveKey( spep_3 + 152, ctgyun, -10.2, 88.1 , 0 );
setEffMoveKey( spep_3 + 154, ctgyun, -10.1, 121.3 , 0 );
setEffMoveKey( spep_3 + 156, ctgyun, -10.1, 132.4 , 0 );
setEffMoveKey( spep_3 + 174, ctgyun, -10.1, 132.4 , 0 );


setEffScaleKey( spep_3 + 146, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_3 + 148, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_3 + 150, ctgyun, 2.0, 2.0 );
setEffScaleKey( spep_3 + 152, ctgyun, 3.21, 3.21 );
setEffScaleKey( spep_3 + 154, ctgyun, 3.93, 3.93 );
setEffScaleKey( spep_3 + 156, ctgyun, 4.17, 4.17 );
setEffScaleKey( spep_3 + 158, ctgyun, 4.21, 4.21 );
setEffScaleKey( spep_3 + 160, ctgyun, 4.25, 4.25 );
setEffScaleKey( spep_3 + 162, ctgyun, 4.28, 4.28 );
setEffScaleKey( spep_3 + 164, ctgyun, 4.32, 4.32 );
setEffScaleKey( spep_3 + 166, ctgyun, 4.36, 4.36 );
setEffScaleKey( spep_3 + 168, ctgyun, 4.4, 4.4 );
setEffScaleKey( spep_3 + 170, ctgyun, 4.44, 4.44 );
setEffScaleKey( spep_3 + 172, ctgyun, 4.48, 4.48 );
setEffScaleKey( spep_3 + 174, ctgyun, 4.51, 4.51 );
setEffScaleKey( spep_3 + 174, ctgyun, 4.55, 4.55 );


setEffRotateKey( spep_3 + 146, ctgyun, -7 );
setEffRotateKey( spep_3 + 150, ctgyun, -7 );
setEffRotateKey( spep_3 + 152, ctgyun, -8.1 );
setEffRotateKey( spep_3 + 154, ctgyun, -8.8 );
setEffRotateKey( spep_3 + 156, ctgyun, -9 );
setEffRotateKey( spep_3 + 174, ctgyun, -9 );


setEffAlphaKey( spep_3 + 146, ctgyun, 255 );
setEffAlphaKey( spep_3 + 150, ctgyun, 255 );
setEffAlphaKey( spep_3 + 156, ctgyun, 255 );
setEffAlphaKey( spep_3 + 174, ctgyun, 255 );


shuchusen2 = entryEffectLife(spep_3, 906, 24, 0x100, -1, 0, 46, 0);   -- 集中線


setEffMoveKey( spep_3 + 0, shuchusen2, 0, 46 , 0 );
setEffMoveKey( spep_3 + 24, shuchusen2, 0, 46 , 0 );


setEffScaleKey( spep_3 + 0, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_3 + 24, shuchusen2, 1.15, 1.15 );


setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 2, shuchusen2, 0 );
setEffRotateKey( spep_3 + 4, shuchusen2, 180 );
setEffRotateKey( spep_3 + 6, shuchusen2, 0 );
setEffRotateKey( spep_3 + 8, shuchusen2, 180 );
setEffRotateKey( spep_3 + 10, shuchusen2, 0 );
setEffRotateKey( spep_3 + 12, shuchusen2, 180 );
setEffRotateKey( spep_3 + 14, shuchusen2, 0 );
setEffRotateKey( spep_3 + 16, shuchusen2, 180 );
setEffRotateKey( spep_3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_3 + 20, shuchusen2, 180 );
setEffRotateKey( spep_3 + 22, shuchusen2, 0 );
setEffRotateKey( spep_3 + 24, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 23, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 24, shuchusen2, 0 );


ryusen = entryEffectLife(spep_3+26, 921, 68, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_3 + 26, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, ryusen, 0, 0 , 0 );


setEffScaleKey( spep_3 + 26, ryusen, 1.42, 1.42 );
setEffScaleKey( spep_3 + 94, ryusen, 1.42, 1.42 );


setEffRotateKey( spep_3 + 26, ryusen, 180 );
setEffRotateKey( spep_3 + 94, ryusen, 180 );


setEffAlphaKey( spep_3 + 26, ryusen, 255 );
setEffAlphaKey( spep_3 + 94, ryusen, 255 );


ryusen2 = entryEffectLife(spep_3+96, 921, 80, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_3 + 96, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, ryusen2, 0, 0 , 0 );


setEffScaleKey( spep_3 + 96, ryusen2, 1.42, 1.42 );
setEffScaleKey( spep_3 + 176, ryusen2, 1.42, 1.42 );


setEffRotateKey( spep_3 + 96, ryusen2, 200 );
setEffRotateKey( spep_3 + 176, ryusen2, 200 );


setEffAlphaKey( spep_3 + 96, ryusen2, 255 );
setEffAlphaKey( spep_3 + 176, ryusen2, 255 );

playSe( spep_3, 1036);
playSe( spep_3+20, 1036);
playSe( spep_3+40, SE_06);
playSe( spep_3+96, SE_07);

entryFade( spep_3 + 22, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 40, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 93, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 172, 3, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 176, 0, 0, 0, 0, 180); -- ベース暗め　背景


------------------------------------------------------
-- 被弾(前後)
------------------------------------------------------


-- ** 次の準備 ** --
spep_4 = spep_3+176;


hit = entryEffectLife(spep_4, SP_03, 76, 0x100, -1, 0, 0, 0);

setEffMoveKey(spep_4, hit, 0, 0 ,0);
setEffMoveKey(spep_4+76, hit, 0, 0, 0);

setEffScaleKey(spep_4, hit, 1.0, 1.0);
setEffScaleKey(spep_4+76, hit, 1.0, 1.0);

setEffAlphaKey(spep_4, hit, 255);
setEffAlphaKey(spep_4+76, hit, 255);

setEffRotateKey(spep_4, hit, 0);
setEffRotateKey(spep_4+76, hit, 0);


ryusen3 = entryEffectLife(spep_4 , 921, 76, 0x80, -1, 0, 0, 0);   -- 集中線


setEffMoveKey( spep_4 , ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, ryusen3, 0, 0 , 0 );


setEffScaleKey( spep_4 , ryusen3, 1, 1 );
setEffScaleKey( spep_4 + 76, ryusen3, 1, 1 );


setEffRotateKey( spep_4 , ryusen3, 0 );
setEffRotateKey( spep_4 + 76, ryusen3, 0 );


setEffAlphaKey( spep_4 , ryusen3, 255 );
setEffAlphaKey( spep_4 + 76, ryusen3, 255 );


--エフェクトの再生(後)
hit2 = entryEffectLife(spep_4, SP_04, 76, 0x80, -1, 0, 0, 0);

setEffMoveKey(spep_4, hit2, 0, 0, 0);
setEffMoveKey(spep_4+76, hit2, 0, 0, 0);

setEffScaleKey(spep_4,hit2, 1.0, 1.0);
setEffScaleKey(spep_4+76, hit2, 1.0, 1.0);

setEffAlphaKey(spep_4, hit2, 255);
setEffAlphaKey(spep_4+76, hit2, 255);

setEffRotateKey(spep_4, hit2, 0);
setEffRotateKey(spep_4+76, hit2, 0);


ctzudodo = entryEffectLife( spep_4 + 29,  10014, 46, 0x100, -1, 0, 105.7, 257 );--ズドドド


setEffMoveKey( spep_4 + 29, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo, 63.1, 347.5 , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo, 47.5, 329.1 , 0 );
setEffMoveKey( spep_4 + 75, ctzudodo, 63.1, 347.5 , 0 );

setEffScaleKey( spep_4 + 29, ctzudodo, 2.72, 2.72 );
setEffScaleKey( spep_4 + 75, ctzudodo, 2.72, 2.72 );


setEffRotateKey( spep_4 + 29, ctzudodo, 360 );
setEffRotateKey( spep_4 + 75, ctzudodo, 360);

setEffAlphaKey( spep_4 + 29, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 75, ctzudodo, 255 );

-----------------------------------敵の動き-----------------------------------

setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 29, 1, 108 );


setMoveKey( spep_4 + 0, 1, 96.2, -0.2 , 0 );
setMoveKey( spep_4 + 2, 1, 95.7, 0.6 , 0 );
setMoveKey( spep_4 + 4, 1, 97.1, 0.6 , 0 );
setMoveKey( spep_4 + 6, 1, 98.3, -3.1 , 0 );
setMoveKey( spep_4 + 8, 1, 99.6, 0.2 , 0 );
setMoveKey( spep_4 + 10, 1, 92.9, -1.5 , 0 );
setMoveKey( spep_4 + 12, 1, 97.2, 2.4 , 0 );
setMoveKey( spep_4 + 14, 1, 93.3, 0.5 , 0 );
setMoveKey( spep_4 + 16, 1, 96.2, -4.1 , 0 );
setMoveKey( spep_4 + 18, 1, 94.2, 4.1 , 0 );
setMoveKey( spep_4 + 20, 1, 92.1, -3.2 , 0 );
setMoveKey( spep_4 + 22, 1, 92.1, -4.5 , 0 );
setMoveKey( spep_4 + 24, 1, 99.9, -2.7 , 0 );
setMoveKey( spep_4 + 26, 1, 95.8, 3.1 , 0 );
setMoveKey( spep_4 + 28, 1, 97.2, -4.8 , 0 );
setMoveKey( spep_4 + 30, 1, 100.6, -1 , 0 );
setMoveKey( spep_4 + 33, 1, 91.7, -2 , 0 );
setMoveKey( spep_4 + 34, 1, 142.3, 35.1 , 0 );
setMoveKey( spep_4 + 36, 1, 148.6, 33.5 , 0 );
setMoveKey( spep_4 + 38, 1, 148.4, 23.7 , 0 );
setMoveKey( spep_4 + 40, 1, 171.6, 17.6 , 0 );
setMoveKey( spep_4 + 42, 1, 193.8, 23.5 , 0 );
setMoveKey( spep_4 + 44, 1, 194.6, 23.6 , 0 );
setMoveKey( spep_4 + 46, 1, 209, 16.6 , 0 );
setMoveKey( spep_4 + 48, 1, 228.5, 10.5 , 0 );
setMoveKey( spep_4 + 50, 1, 217.9, 26.1 , 0 );
setMoveKey( spep_4 + 52, 1, 232.7, 14.9 , 0 );
setMoveKey( spep_4 + 54, 1, 216.1, 21.9 , 0 );
setMoveKey( spep_4 + 56, 1, 216.4, 17.4 , 0 );
setMoveKey( spep_4 + 58, 1, 226.9, 29.8 , 0 );
setMoveKey( spep_4 + 60, 1, 226.5, 12.3 , 0 );
setMoveKey( spep_4 + 62, 1, 231.1, 25.3 , 0 );
setMoveKey( spep_4 + 64, 1, 218.7, 12 , 0 );
setMoveKey( spep_4 + 66, 1, 228.2, 12.8 , 0 );
setMoveKey( spep_4 + 68, 1, 215.2, 19.6 , 0 );
setMoveKey( spep_4 + 70, 1, 223.2, 15.1 , 0 );
setMoveKey( spep_4 + 72, 1, 219, 24.1 , 0 );
setMoveKey( spep_4 + 74, 1, 213, 17.6 , 0 );
setMoveKey( spep_4 + 75, 1, 232.7, 24.4 , 0 );


setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 33, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 36, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 75, 1, 1.48, 1.48 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 33, 1, 0 );
setRotateKey( spep_4 + 34, 1, -4 );
setRotateKey( spep_4 + 74, 1, -4 );
setRotateKey( spep_4 + 75, 1, -4 );


setShakeChara( spep_4, 1, 76, 10);

playSe( spep_4, SE_07);

entryFade( spep_4 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 78, 0, 0, 0, 0, 180); -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+20; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置


playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);


setMoveKey(SP_dodge, 1, 120.2, -0.2);
setScaleKey(SP_dodge, 1, 2.5, 2.5);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, 120.2, -0.2);
setScaleKey(SP_dodge+8, 1, 2.5, 2.5);
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


------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5 = spep_4+74;
entryFade( spep_5-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線




-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);


end


