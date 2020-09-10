print ("[lua]sp1120");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SE_01 = 1018; --カットイン＆飛んでくる
SE_02 = 1010; --突っ込みヒット＆棒ヒット
SE_03 = 1053; --飛んでいく
SE_04 = 1035; --カードカットイン
SE_05 = 1003; --シュッ
SE_06 = 1054; --割れる音
SE_07 = 1024; --爆破

SP_01 = 150735; --手前に突っ込む
SP_02 = 150736; --手前に突っ込む(敵用)
SP_03 = 150737; --横移動→激突
SP_04 = 150738; --横移動→激突(敵用)
SP_05 = 150739; --突進時オーラ
SP_06 = 150740; --如意棒伸びる
SP_07 = 150741; --如意棒伸びる(敵用)
SP_08 = 150742; --如意棒で叩く
SP_09 = 150743; --如意棒で叩く(敵用)
SP_10 = 150744; --如意棒が敵にヒット

multi_frm = 2;
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );



------------------------------------------------------
-- 手前に突っ込む
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 62, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, 1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( 0, 10012, 42, 0x100, -1, 0, 100, 270); -- ズオッ
setEffMoveKey( 0, zuo, 100, 270);
setEffMoveKey( 32, zuo, 100, 270);
setEffMoveKey( 42, zuo, 140, 310);
setEffScaleKey( 0, zuo, 2.6, 2.6);
setEffScaleKey( 32, zuo, 2.6, 2.6);
setEffScaleKey( 42, zuo, 5, 5);
setEffRotateKey( 0, zuo, 30);
setEffRotateKey( 42, zuo, 30);
setEffAlphaKey( 0, zuo, 255);
setEffAlphaKey( 32, zuo, 255);
setEffAlphaKey( 42, zuo, 0);
setEffShake( 0, zuo, 200, 15);

-- ** ホワイトフェード ** --
entryFade( 45, 10, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 1, SE_01);

spep_1 = 63;

------------------------------------------------------
-- 横移動→激突(63F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 101, 0, 0, 0, 0, 130); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1-1, 920, 101, 0x80, -1,  0,  0,  0); -- 流線1
setEffMoveKey( spep_1-1, ryusen1, 0, 0, 0);
setEffRotateKey( spep_1-1, ryusen1, 0);
setEffScaleKey( spep_1-1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1-1, ryusen1, 255);

-- ** キャラクター ** --
setDisp( spep_1-1, 1, 1); --敵表示
changeAnime( spep_1-1, 1, 101); --敵モーション
setScaleKey( spep_1-1, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_1+93, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_1-1, 1, 700, 80, 0); --敵位置
setMoveKey( spep_1+33, 1, 130, 80, 0); --敵位置
setMoveKey( spep_1+64, 1, 130, 80, 0); --敵位置129
setMoveKey( spep_1+72, 1, 600, 80, 0); --敵位置
setMoveKey( spep_1+92, 1, 2000, 80, 0); --敵位置
changeAnime( spep_1+36, 1, 108); --敵モーション(くの字)
setShakeChara( spep_1+36, 1, 48, 15); --敵揺れ
setDisp( spep_1+93, 1, 0); --敵非表示

-- ** エフェクト等 ** --
aura_ki = entryEffect( spep_1-1, SP_05, 0x80, -1, 0, 0, 0); --横移動→激突
setEffMoveKey( spep_1-1, aura_ki, 0, 0, 0);
setEffScaleKey( spep_1-1, aura_ki, 1.0, 1.0);
setEffAlphaKey( spep_1-1, aura_ki, 255);
setEffRotateKey( spep_1-1, aura_ki, 0);

yokoidou = entryEffect( spep_1, SP_03, 0x100, -1, 0, 0, 0); --横移動→激突
setEffMoveKey( spep_1, yokoidou, 0, 0, 0);
setEffScaleKey( spep_1, yokoidou, 1.0, 1.0);
setEffAlphaKey( spep_1, yokoidou, 255);
setEffRotateKey( spep_1, yokoidou, 0);

-- 書き文字エントリー --
ga = entryEffectLife( spep_1+39, 10005, 33, 0x100, -1, 0, 0, 300); -- ガッ
setEffScaleKey( spep_1+39, ga, 2.2, 2.2);
setEffScaleKey( spep_1+66, ga, 2.2, 2.2);
setEffScaleKey( spep_1+72, ga, 2, 2);
setEffRotateKey( spep_1+39, ga, -10);
setEffRotateKey( spep_1+41, ga, -10);
setEffRotateKey( spep_1+42, ga, 0);
setEffRotateKey( spep_1+44, ga, 0);
setEffRotateKey( spep_1+45, ga, -10);
setEffRotateKey( spep_1+47, ga, -10);
setEffRotateKey( spep_1+48, ga, 0);
setEffRotateKey( spep_1+50, ga, 0);
setEffRotateKey( spep_1+51, ga, -10);
setEffAlphaKey( spep_1+39, ga, 255);
setEffAlphaKey( spep_1+66, ga, 255);
setEffAlphaKey( spep_1+72, ga, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+35, 0, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_1+90, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+42, SE_02);

spep_2 = (spep_1+102);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- 敵が奥へ奥へ・・・・(165F開始)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_2-1, 1, 1); --敵表示
changeAnime( spep_2-1, 1, 105); --敵モーション
setScaleKey( spep_2-1, 1, 5, 5); --敵サイズ
setScaleKey( spep_2+35, 1, 0.5, 0.5); --敵サイズ
setMoveKey( spep_2-1, 1, 80, -250, 0); --敵位置
setMoveKey( spep_2+35, 1, 20, 200, 0); --敵位置
setDisp( spep_2+36, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 35, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 35, 0x100, -1, 0, 0, 0);   -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 35, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -90);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_2+27, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = (spep_2+40);

------------------------------------------------------
-- 如意棒伸びる(205F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 107, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
nobiru = entryEffect( spep_3, SP_06, 0x100, -1, 0, 0, 0); --如意棒伸びる
setEffMoveKey( spep_3, nobiru, 0, 0, 0);
setEffScaleKey( spep_3, nobiru, 1.0, 1.0);
setEffAlphaKey( spep_3, nobiru, 255);
setEffRotateKey( spep_3, nobiru, 0);
setEffShake( spep_3+16, nobiru, 100, 15);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_3+6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_3+6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+19, 190006, 71, 0x100, -1, 0, 80, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+19, gogogo, 0.6, 0.6);
setEffAlphaKey( spep_3+19, gogogo, 255);
setEffRotateKey( spep_3+19, gogogo, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+98, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+19, SE_01);

spep_4 = (spep_3+111);

------------------------------------------------------
-- カードカットイン(316F開始)
------------------------------------------------------
--[[
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_04);
]]--
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_04 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_5 = (spep_4+93);

------------------------------------------------------
-- 如意棒でドーン(409F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
doon = entryEffect( spep_5, SP_08, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_5, doon, 0, 0, 0);
setEffScaleKey( spep_5, doon, 1.0, 1.0);
setEffAlphaKey( spep_5, doon, 255);
setEffRotateKey( spep_5, doon, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+71, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+21, SE_05);

spep_6 = (spep_5+81);

------------------------------------------------------
-- 如意棒が敵にヒット(490F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_6-1, 1, 1); --敵表示
changeAnime( spep_6-1, 1, 105); --敵モーション
setScaleKey( spep_6-1, 1, 2.5, 2.5); --敵サイズ
setScaleKey( spep_6+25, 1, 1, 1); --敵サイズ
setScaleKey( spep_6+60, 1, 0.8, 0.8); --敵サイズ
setMoveKey( spep_6-1, 1, 80, 100, 0); --敵位置
setMoveKey( spep_6+25, 1, 20, 120, 0); --敵位置
setMoveKey( spep_6+60, 1, 10, 150, 0); --敵位置
setDisp( spep_6+61, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_6, 921, 60, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_6, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
hit = entryEffect( spep_6+2, SP_10, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_6+2, hit, 0, 0, 0);
setEffScaleKey( spep_6+2, hit, 1.0, 1.0);
setEffAlphaKey( spep_6+2, hit, 255);
setEffRotateKey( spep_6+2, hit, 0);

-- ** 書き文字エントリ ** --
baki = entryEffectLife( spep_6+10, 10020, 50, 0x100, -1, 0, 0, 350); -- バキ
setEffScaleKey( spep_6+10, baki, 2, 2);
setEffScaleKey( spep_6+15, baki, 2, 2);
setEffScaleKey( spep_6+16, baki, 3.5, 3.5);
setEffScaleKey( spep_6+19, baki, 3.5, 3.5);
setEffScaleKey( spep_6+20, baki, 2, 2);
setEffRotateKey( spep_6+10, baki, -10);
setEffRotateKey( spep_6+15, baki, -10);
setEffRotateKey( spep_6+16, baki, 10);
setEffRotateKey( spep_6+19, baki, 10);
setEffRotateKey( spep_6+20, baki, 0);
setEffRotateKey( spep_6+24, baki, 0);
setEffRotateKey( spep_6+25, baki, 10);
setEffRotateKey( spep_6+30, baki, 10);
setEffRotateKey( spep_6+31, baki, 0);
setEffRotateKey( spep_6+50, baki, 10);
setEffAlphaKey( spep_6+10, baki, 255);
setEffAlphaKey( spep_6+31, baki, 255);
setEffAlphaKey( spep_6+50, baki, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+5, 0, 5, 15, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+53, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+11, SE_02);

spep_7 = (spep_6+63);

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手前に突っ込む
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( 0, 0, 62, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_02, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, 1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 0, 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen1, 0, 0, 0);
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen1, 255);
setEffRotateKey( 0, shuchusen1, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( 0, 10012, 42, 0x100, -1, 0, 100, 270); -- ズオッ
setEffMoveKey( 0, zuo, 100, 270);
setEffMoveKey( 32, zuo, 100, 270);
setEffMoveKey( 42, zuo, 140, 310);
setEffScaleKey( 0, zuo, 2.6, 2.6);
setEffScaleKey( 32, zuo, 2.6, 2.6);
setEffScaleKey( 42, zuo, 5, 5);
setEffRotateKey( 0, zuo, 30);
setEffRotateKey( 42, zuo, 30);
setEffAlphaKey( 0, zuo, 255);
setEffAlphaKey( 32, zuo, 255);
setEffAlphaKey( 42, zuo, 0);
setEffShake( 0, zuo, 200, 15);

-- ** ホワイトフェード ** --
entryFade( 45, 10, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 1, SE_01);

spep_1 = 63;

------------------------------------------------------
-- 横移動→激突(63F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 101, 0, 0, 0, 0, 130); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1-1, 920, 101, 0x80, -1,  0,  0,  0); -- 流線1
setEffMoveKey( spep_1-1, ryusen1, 0, 0, 0);
setEffRotateKey( spep_1-1, ryusen1, 0);
setEffScaleKey( spep_1-1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1-1, ryusen1, 255);

-- ** キャラクター ** --
setDisp( spep_1-1, 1, 1); --敵表示
changeAnime( spep_1-1, 1, 101); --敵モーション
setScaleKey( spep_1-1, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_1+93, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_1-1, 1, 700, 80, 0); --敵位置
setMoveKey( spep_1+33, 1, 130, 80, 0); --敵位置
setMoveKey( spep_1+64, 1, 130, 80, 0); --敵位置129
setMoveKey( spep_1+72, 1, 600, 80, 0); --敵位置
setMoveKey( spep_1+92, 1, 2000, 80, 0); --敵位置
changeAnime( spep_1+36, 1, 108); --敵モーション(くの字)
setShakeChara( spep_1+36, 1, 48, 15); --敵揺れ
setDisp( spep_1+93, 1, 0); --敵非表示

-- ** エフェクト等 ** --
aura_ki = entryEffect( spep_1-1, SP_05, 0x80, -1, 0, 0, 0); --横移動→激突
setEffMoveKey( spep_1-1, aura_ki, 0, 0, 0);
setEffScaleKey( spep_1-1, aura_ki, 1.0, 1.0);
setEffAlphaKey( spep_1-1, aura_ki, 255);
setEffRotateKey( spep_1-1, aura_ki, 0);

yokoidou = entryEffect( spep_1, SP_04, 0x100, -1, 0, 0, 0); --横移動→激突
setEffMoveKey( spep_1, yokoidou, 0, 0, 0);
setEffScaleKey( spep_1, yokoidou, 1.0, 1.0);
setEffAlphaKey( spep_1, yokoidou, 255);
setEffRotateKey( spep_1, yokoidou, 0);

-- 書き文字エントリー --
ga = entryEffectLife( spep_1+39, 10005, 33, 0x100, -1, 0, 0, 300); -- ガッ
setEffScaleKey( spep_1+39, ga, 2.2, 2.2);
setEffScaleKey( spep_1+66, ga, 2.2, 2.2);
setEffScaleKey( spep_1+72, ga, 2, 2);
setEffRotateKey( spep_1+39, ga, -10);
setEffRotateKey( spep_1+41, ga, -10);
setEffRotateKey( spep_1+42, ga, 0);
setEffRotateKey( spep_1+44, ga, 0);
setEffRotateKey( spep_1+45, ga, -10);
setEffRotateKey( spep_1+47, ga, -10);
setEffRotateKey( spep_1+48, ga, 0);
setEffRotateKey( spep_1+50, ga, 0);
setEffRotateKey( spep_1+51, ga, -10);
setEffAlphaKey( spep_1+39, ga, 255);
setEffAlphaKey( spep_1+66, ga, 255);
setEffAlphaKey( spep_1+72, ga, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+35, 0, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_1+90, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+42, SE_02);

spep_2 = (spep_1+102);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-- 敵が奥へ奥へ・・・・(165F開始)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_2-1, 1, 1); --敵表示
changeAnime( spep_2-1, 1, 105); --敵モーション
setScaleKey( spep_2-1, 1, 5, 5); --敵サイズ
setScaleKey( spep_2+35, 1, 0.5, 0.5); --敵サイズ
setMoveKey( spep_2-1, 1, 80, -250, 0); --敵位置
setMoveKey( spep_2+35, 1, 20, 200, 0); --敵位置
setDisp( spep_2+36, 1, 0); --敵非表示

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 35, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 35, 0x100, -1, 0, 0, 0);   -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_2, 921, 35, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_2, okuyukiryusennaname, -90);
setEffScaleKey( spep_2, okuyukiryusennaname, 1.5, 1);
setEffAlphaKey( spep_2, okuyukiryusennaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_2+27, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = (spep_2+40);

------------------------------------------------------
-- 如意棒伸びる(205F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 107, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
nobiru = entryEffect( spep_3, SP_07, 0x100, -1, 0, 0, 0); --如意棒伸びる
setEffMoveKey( spep_3, nobiru, 0, 0, 0);
setEffScaleKey( spep_3, nobiru, 1.0, 1.0);
setEffAlphaKey( spep_3, nobiru, 255);
setEffRotateKey( spep_3, nobiru, 0);
setEffShake( spep_3+16, nobiru, 100, 15);

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_3+6, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_3+6, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+19, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+19, gogogo, -0.6, 0.6);
setEffAlphaKey( spep_3+19, gogogo, 255);
setEffRotateKey( spep_3+19, gogogo, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+98, 8, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3+19, SE_01);

spep_4 = (spep_3+111);

------------------------------------------------------
-- カードカットイン(316F開始)
------------------------------------------------------
--[[
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4, SE_04);
]]--
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_04);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_04 );


--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_5 = (spep_4+93);

------------------------------------------------------
-- 如意棒でドーン(409F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 110); -- ベース暗め　背景

-- ** エフェクト等 ** --
doon = entryEffect( spep_5, SP_09, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_5, doon, 0, 0, 0);
setEffScaleKey( spep_5, doon, 1.0, 1.0);
setEffAlphaKey( spep_5, doon, 255);
setEffRotateKey( spep_5, doon, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+71, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_5+21, SE_05);

spep_6 = (spep_5+81);

------------------------------------------------------
-- 如意棒が敵にヒット(490F開始)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_6-1, 1, 1); --敵表示
changeAnime( spep_6-1, 1, 105); --敵モーション
setScaleKey( spep_6-1, 1, 2.5, 2.5); --敵サイズ
setScaleKey( spep_6+25, 1, 1, 1); --敵サイズ
setScaleKey( spep_6+60, 1, 0.8, 0.8); --敵サイズ
setMoveKey( spep_6-1, 1, 80, 100, 0); --敵位置
setMoveKey( spep_6+25, 1, 20, 120, 0); --敵位置
setMoveKey( spep_6+60, 1, 10, 150, 0); --敵位置
setDisp( spep_6+61, 1, 0); --敵非表示

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_6, 921, 60, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め2
setEffMoveKey( spep_6, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_6, okuyukiryusennaname2, -90);
setEffScaleKey( spep_6, okuyukiryusennaname2, 1.5, 1);
setEffAlphaKey( spep_6, okuyukiryusennaname2, 255);

-- ** エフェクト等 ** --
hit = entryEffect( spep_6+2, SP_10, 0x100, -1, 0, 0, 0); --如意棒でドーン
setEffMoveKey( spep_6+2, hit, 0, 0, 0);
setEffScaleKey( spep_6+2, hit, 1.0, 1.0);
setEffAlphaKey( spep_6+2, hit, 255);
setEffRotateKey( spep_6+2, hit, 0);

-- ** 書き文字エントリ ** --
baki = entryEffectLife( spep_6+10, 10020, 50, 0x100, -1, 0, 0, 350); -- バキ
setEffScaleKey( spep_6+10, baki, 2, 2);
setEffScaleKey( spep_6+15, baki, 2, 2);
setEffScaleKey( spep_6+16, baki, 3.5, 3.5);
setEffScaleKey( spep_6+19, baki, 3.5, 3.5);
setEffScaleKey( spep_6+20, baki, 2, 2);
setEffRotateKey( spep_6+10, baki, -10);
setEffRotateKey( spep_6+15, baki, -10);
setEffRotateKey( spep_6+16, baki, 10);
setEffRotateKey( spep_6+19, baki, 10);
setEffRotateKey( spep_6+20, baki, 0);
setEffRotateKey( spep_6+24, baki, 0);
setEffRotateKey( spep_6+25, baki, 10);
setEffRotateKey( spep_6+30, baki, 10);
setEffRotateKey( spep_6+31, baki, 0);
setEffRotateKey( spep_6+50, baki, 10);
setEffAlphaKey( spep_6+10, baki, 255);
setEffAlphaKey( spep_6+31, baki, 255);
setEffAlphaKey( spep_6+50, baki, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+5, 0, 5, 15, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_6+53, 5, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_6+11, SE_02);

spep_7 = (spep_6+63);

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);


end