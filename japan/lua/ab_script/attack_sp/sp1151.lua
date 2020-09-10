--魔人ベジータ_ダークインパクト	

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

SE_03k = 1000; --パンチ
SE_04k = 1001; --蹴り
SE_05k = 1009; --強いパンチ
SE_06k = 1010; --強い蹴り

--味方側
SP_01 = 151195;--溜め
SP_02 = 151197;--連撃
SP_03 = 151199;--追撃
SP_04 = 151201;--必殺構え
SP_05 = 151203;--発射

SP_01e = 151196;--溜め
SP_02e = 151198;--連撃
SP_03e = 151200;--追撃
SP_04e = 151202;--必殺構え
SP_05e = 151204;--発射



multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(70F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 70, 0, 0, 0, 0, 210);  -- 黒　背景　
--entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  spep_0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** キャラクター ** --
-- ** エフェクト等 ** --
kidame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_0, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_0, shuchusenct, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusenct, 255);


-- ** 音 ** --
playSe( spep_0+3, SE_01);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);


endPhase(SP_dodge+10);
do return end
else end



-- ** 次の準備 ** --
spep_1 = spep_0+70;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景
------------------------------------------------------
-- 連撃（80F）
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_1, rush, 0, 0, 0);
setEffScaleKey( spep_1, rush, 1.0, 1.0);
setEffAlphaKey( spep_1, rush, 255);
setEffRotateKey( spep_1, rush, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1, 920, 56, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen1, 0, 0, 0);
setEffRotateKey( spep_1, ryusen1, 0);
setEffRotateKey( spep_1+56, ryusen1, 0);
setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen1, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1, 1, 1); --敵表示
changeAnime( spep_1, 1, 104); --敵モーション
changeAnime( spep_1+3, 1, 106); --敵モーション
changeAnime( spep_1+57, 1, 108); --敵モーション
setScaleKey( spep_1, 1, 1.6, 1.6); --敵サイズ
setScaleKey( spep_1+77, 1, 1.6, 1.6); --敵サイズ
setMoveKey( spep_1, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_1+14, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_1+26, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_1+27, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+40, 1, 140, 0, 0); --敵位置
setMoveKey( spep_1+41, 1, 145, 40, 0); --敵位置
setMoveKey( spep_1+56, 1, 155, 40, 0); --敵位置
setMoveKey( spep_1+57, 1, 175, 30, 0); --敵位置
setMoveKey( spep_1+65, 1, 600, 200, 0); --敵位置(吹っ飛び)
setMoveKey( spep_1+77, 1, 1200, 300, 0); --敵位置(吹っ飛び)

setRotateKey( spep_1, 1, 0); --敵角度
setRotateKey( spep_1+2, 1, 0); --敵角度
setRotateKey( spep_1+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_1+14, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_1+15, 1, -35); --敵角度(2発目)
setRotateKey( spep_1+26, 1, -35); --敵角度
setRotateKey( spep_1+27, 1, -75); --敵角度
setRotateKey( spep_1+40, 1, -75); --敵角度
setRotateKey( spep_1+41, 1, -30); --敵角度
setRotateKey( spep_1+56, 1, -30); --敵角度
setRotateKey( spep_1+57, 1, -20); --敵角度

setShakeChara( spep_1+3, 1, 80, 15);

setDisp( spep_1+76, 1,0); --敵非表示

ryusen1a = entryEffectLife( spep_1+57, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1+57, ryusen1a, 0, 0, 0);
setEffRotateKey( spep_1+57, ryusen1a, 340);
setEffRotateKey( spep_1+80, ryusen1a, 340);
setEffScaleKey( spep_1+57, ryusen1a, 1.6, 1.6);
setEffAlphaKey( spep_1+57, ryusen1a, 255);

-- ** 集中線 ** --
shuchusenct1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_1, shuchusenct1, 2, 2);
setEffAlphaKey( spep_1, shuchusenct1, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+70, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --209F
playSe( spep_1+5, SE_03k);
playSe( spep_1+17, SE_03k);
playSe( spep_1+29, SE_04k);
playSe( spep_1+43, SE_03k);
playSe( spep_1+59, SE_05k);


-- ** 次の準備 ** --
spep_2 = spep_1+80;
entryFade( spep_2-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景
setDisp( spep_2-1, 1, 1); --敵表示
changeAnime( spep_2-1, 1, 107); --敵モーション
setScaleKey( spep_2-1, 1, 0.7,0.7); --敵サイズ
setMoveKey( spep_2-1, 1, 0, 0, 0); --敵位置

------------------------------------------------------
-- 追撃（90F）
------------------------------------------------------

-- ** エフェクト等 ** --
yoru = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0); 
setEffScaleKey( spep_2, yoru, 1, 1);
setEffAlphaKey( spep_2, yoru, 255);
setEffShake(spep_2, yoru, 90, 5);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 107); --敵モーション
setScaleKey( spep_2, 1, 0.7, 0.7); --敵サイズ
setScaleKey( spep_2+27, 1, 1.0, 1.0); --敵サイズ
setScaleKey( spep_2+47, 1, 1.0, 1.0); --敵サイズ
setMoveKey( spep_2, 1, 100, -150, 0); --敵位置
setMoveKey( spep_2+20, 1, 150, -250, 0); --敵位置
setMoveKey( spep_2+47, 1, 150, -250, 0); --敵位置
setRotateKey( spep_2, 1, -40); --敵角度
setRotateKey( spep_2+47, 1, -40); --敵角度
setShakeChara( spep_2+3, 1, 40, 15);

setDisp( spep_2+47, 1,0); --敵非表示


-- ** 集中線 ** --
shuchusenct2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusenct2, 255);

entryFade( spep_2+45, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 敵キャラの動き ** --
setDisp( spep_2+49, 1, 1); --敵表示
changeAnime( spep_2+49, 1, 108); --敵モーション
setScaleKey( spep_2+49, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_2+90, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_2+49, 1, 100, -150, 0); --敵位置
setMoveKey( spep_2+70, 1, 700, -700, 0); --敵位置
setRotateKey( spep_2+49, 1, 20); --敵角度
setRotateKey( spep_2+70, 1, 20); --敵角度
setShakeChara( spep_2+50, 1, 40, 15);

setDisp( spep_2+70, 1,0); --敵非表示


ryusen2 = entryEffectLife( spep_2+51, 920, 39, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2+51, ryusen2, 0, 0, 0);
setEffRotateKey( spep_2+51, ryusen2, 50);
setEffRotateKey( spep_2+51, ryusen2, 50);
setEffScaleKey( spep_2+51, ryusen2, 1.8, 1.8);
setEffAlphaKey( spep_2+51, ryusen2, 255);

-- 書き文字エントリー --
-- ** 音 ** --
playSe( spep_2+1, SE_04);
playSe( spep_2+49, SE_05k);

-- ** 次の準備 ** --
spep_4 = spep_2+90;
entryFade( spep_4-8, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 210); -- ベース暗め　背景
--setDisp( spep_4-1, 1, 1); --敵表示
--changeAnime( spep_4-1, 1, 108); --敵モーション
--setScaleKey( spep_4-1, 1, 2.0,2.0); --敵サイズ
--setMoveKey( spep_4-1, 1, 0, 0, 0); --敵位置
------------------------------------------------------
-- 必殺構え（120F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen4 = entryEffectLife( spep_4, 921, 110, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen4, 1.7, 1.7);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey(spep_4, ryuusen4, 230);

-- ** エフェクト等 ** --
yoru4 = entryEffect(  spep_4,   SP_04,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_4, yoru4, 1, 1);
setEffAlphaKey( spep_4, yoru4, 255);
setEffShake(spep_4, yoru4, 110, 5);

--[[
-- ** 敵キャラの動き ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 108); --敵モーション
setScaleKey( spep_4, 1, 2.0, 2.0); --敵サイズ
setScaleKey( spep_4+118, 1, 2.0, 2.0); --敵サイズ
setMoveKey( spep_4, 1, -700, -800, 0); --敵位置
setMoveKey( spep_4+10, 1, -200, -300, 0); --敵位置
setMoveKey( spep_4+118, 1, -100, -200, 0); --敵位置
setRotateKey( spep_4, 1, -20); --敵角度
setShakeChara( spep_4+3, 1, 120, 15);

setDisp( spep_4+118, 1,0); --敵非表示
]]--
--entryEffect(  spep_4,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_4,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** 集中線 ** --
shuchusenct4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 2, 2);
setEffAlphaKey( spep_4, shuchusenct4, 255);

speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え



-- 書き文字エントリー --
gogogo = entryEffectLife( spep_4+14, 190006, 70, 0x100, -1, 0, 150, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_4+14, gogogo, 0.7, 0.7);
setEffAlphaKey( spep_4+14, gogogo, 255);
setEffRotateKey( spep_4+14, gogogo, 0);

-- ** 音 ** --
playSe( spep_4+1, SE_04);


-- ** 次の準備 ** --
spep_5 = spep_4+110;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_6 = spep_5+90;
--entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 放つ（120F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 59, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.7, 1.7);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, 230);
setEffRotateKey(spep_6+59, ryuusen6, 230);

ryuusen6a = entryEffectLife( spep_6+60, 920, 60, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6+60, ryuusen6a, 1.7, 1.7);
setEffAlphaKey( spep_6+60, ryuusen6a, 255);
setEffRotateKey(spep_6+60, ryuusen6a, 250);
setEffRotateKey(spep_6+120, ryuusen6a, 250);

-- ** エフェクト等 ** --
hassya6 = entryEffectLife(  spep_6,   SP_05, 120,  0x100,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, hassya6, 1, 1);
setEffAlphaKey( spep_6, hassya6, 255);
setEffShake(spep_6, hassya6, 140, 5);

-- ** 敵キャラの動き ** --
setDisp( spep_6+59, 1, 1); --敵表示
changeAnime( spep_6+59, 1, 108); --敵モーション
changeAnime( spep_6+60, 1, 108); --敵モーション
setScaleKey( spep_6+59, 1, 1.5,1.5); --敵サイズ
setScaleKey( spep_6+60, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_6+120, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_6+59, 1, 140, -190, 0); --敵位置
setMoveKey( spep_6+60, 1, 150, -200, 0); --敵位置
setMoveKey( spep_6+120, 1, 160, -220, 0); --敵位置
setRotateKey( spep_6+60, 1, 40); --敵角度
setRotateKey( spep_6+120, 1, 40); --敵角度
--setRotateKey( spep_6+40+51, 1, -80); --敵角度
setShakeChara( spep_6+61, 1, 60, 15);

setDisp( spep_6+120, 1,0); --敵非表示


-- 書き文字エントリー
ctZuo6 = entryEffectLife( spep_6+10, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_6+11, ctZuo6, 64, 25);
setEffRotateKey(spep_6+10, ctZuo6, 40);
setEffShake(spep_6+10, ctZuo6, 71, 30);
setEffAlphaKey(spep_6+10, ctZuo6, 255);
setEffAlphaKey(spep_6+90, ctZuo6, 255);
--setEffAlphaKey(spep_6+90, ctZuo6, 0);
setEffScaleKey(spep_6+10, ctZuo6, 2.9, 2.9);
setEffScaleKey(spep_6+90, ctZuo6, 2.9, 2.9);
--setEffScaleKey(spep_6+60, ctZuo6, 8.0, 8.0);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_6+60, 10014, 60, 0, -1, 0, 200, 350); -- ズドドッ
setEffShake(spep_6+60, ctZudodo, 90, 25);
setEffScaleKey( spep_6+60, ctZudodo, 2.8, 2.8);
setEffScaleKey( spep_6+90, ctZudodo, 2.8, 2.8);
setEffRotateKey(spep_6+60, ctZudodo, 60);
setEffAlphaKey(spep_6+60, ctZudodo, 255);

-- ** 集中線 ** --
shuchusenct6 = entryEffectLife( spep_6, 906, 120, 0x100,  -1, 0,  0,  -0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusenct6, 255);

-- ** 音 ** --
playSe( spep_6+5, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_6+55, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** 次の準備 ** --
spep_7 = spep_6+120;
entryFade( spep_7-7, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 55, 0, 0, 0, 0, 210); -- ベース暗め　背景
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** ギャン ** --
gyan = entryEffectLife( spep_7, 190003 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan,1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffShake( spep_7, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 80);
setEffShake( spep_7, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_7+8, SE_09);



-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
last = entryEffect(  spep_8,   1563,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_8, last, 1, 1);
setEffAlphaKey( spep_8, last, 255);
--setEffShake(spep_7, last, 140, 5);

-- ** 集中線 ** --
shuchusenct8 = entryEffectLife( spep_8+10, 906, 170, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8+10, shuchusenct8, 2, 2);
setEffAlphaKey( spep_8+10, shuchusenct8, 255);

-- ** 音 ** --
playSe( spep_8+5, SE_10);

-- ダメージ表示
dealDamage( spep_8+16);
--entryFade( spep_8+158, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+158);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 70, 0, 0, 0, 0, 210);  -- 黒　背景　
--entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  spep_0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** キャラクター ** --
-- ** エフェクト等 ** --
kidame = entryEffect(  spep_0,   SP_01e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_0, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_0, shuchusenct, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusenct, 255);


-- ** 音 ** --
playSe( spep_0+3, SE_01);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);


endPhase(SP_dodge+10);
do return end
else end



-- ** 次の準備 ** --
spep_1 = spep_0+70;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景
------------------------------------------------------
-- 連撃（80F）
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1, SP_02e, 0x100, -1, 0, 0, 0); --ラッシュ1
setEffMoveKey( spep_1, rush, 0, 0, 0);
setEffScaleKey( spep_1, rush, 1.0, 1.0);
setEffAlphaKey( spep_1, rush, 255);
setEffRotateKey( spep_1, rush, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1, 920, 56, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1, ryusen1, 0, 0, 0);
setEffRotateKey( spep_1, ryusen1, 0);
setEffRotateKey( spep_1+56, ryusen1, 0);
setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen1, 255);

-- ** 敵キャラの動き ** --
setDisp( spep_1, 1, 1); --敵表示
changeAnime( spep_1, 1, 104); --敵モーション
changeAnime( spep_1+3, 1, 106); --敵モーション
changeAnime( spep_1+57, 1, 108); --敵モーション
setScaleKey( spep_1, 1, 1.6, 1.6); --敵サイズ
setScaleKey( spep_1+77, 1, 1.6, 1.6); --敵サイズ
setMoveKey( spep_1, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+2, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+3, 1, 120, 0, 0); --敵位置(1発目)
setMoveKey( spep_1+14, 1, 130, 0, 0); --敵位置(1発目余韻)
setMoveKey( spep_1+26, 1, 140, 0, 0); --敵位置(2発目)
setMoveKey( spep_1+27, 1, 130, 0, 0); --敵位置
setMoveKey( spep_1+40, 1, 140, 0, 0); --敵位置
setMoveKey( spep_1+41, 1, 145, 40, 0); --敵位置
setMoveKey( spep_1+56, 1, 155, 40, 0); --敵位置
setMoveKey( spep_1+57, 1, 175, 30, 0); --敵位置
setMoveKey( spep_1+65, 1, 600, 200, 0); --敵位置(吹っ飛び)
setMoveKey( spep_1+77, 1, 1200, 300, 0); --敵位置(吹っ飛び)

setRotateKey( spep_1, 1, 0); --敵角度
setRotateKey( spep_1+2, 1, 0); --敵角度
setRotateKey( spep_1+3, 1, -65); --敵角度(1発目)
setRotateKey( spep_1+14, 1, -65); --敵角度(1発目余韻)
setRotateKey( spep_1+15, 1, -35); --敵角度(2発目)
setRotateKey( spep_1+26, 1, -35); --敵角度
setRotateKey( spep_1+27, 1, -75); --敵角度
setRotateKey( spep_1+40, 1, -75); --敵角度
setRotateKey( spep_1+41, 1, -30); --敵角度
setRotateKey( spep_1+56, 1, -30); --敵角度
setRotateKey( spep_1+57, 1, -20); --敵角度

setShakeChara( spep_1+3, 1, 80, 15);

setDisp( spep_1+76, 1,0); --敵非表示

ryusen1a = entryEffectLife( spep_1+57, 920, 22, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_1+57, ryusen1a, 0, 0, 0);
setEffRotateKey( spep_1+57, ryusen1a, 340);
setEffRotateKey( spep_1+80, ryusen1a, 340);
setEffScaleKey( spep_1+57, ryusen1a, 1.6, 1.6);
setEffAlphaKey( spep_1+57, ryusen1a, 255);

-- ** 集中線 ** --
shuchusenct1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_1, shuchusenct1, 2, 2);
setEffAlphaKey( spep_1, shuchusenct1, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+70, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --209F
playSe( spep_1+5, SE_03k);
playSe( spep_1+17, SE_03k);
playSe( spep_1+29, SE_04k);
playSe( spep_1+43, SE_03k);
playSe( spep_1+59, SE_05k);


-- ** 次の準備 ** --
spep_2 = spep_1+80;
entryFade( spep_2-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景
setDisp( spep_2-1, 1, 1); --敵表示
changeAnime( spep_2-1, 1, 107); --敵モーション
setScaleKey( spep_2-1, 1, 0.7,0.7); --敵サイズ
setMoveKey( spep_2-1, 1, 0, 0, 0); --敵位置

------------------------------------------------------
-- 追撃（90F）
------------------------------------------------------

-- ** エフェクト等 ** --
yoru = entryEffect(  spep_2,   SP_03e,   0,  -1,  0,  0,  0); 
setEffScaleKey( spep_2, yoru, 1, 1);
setEffAlphaKey( spep_2, yoru, 255);
setEffShake(spep_2, yoru, 90, 5);

-- ** 敵キャラの動き ** --
setDisp( spep_2, 1, 1); --敵表示
changeAnime( spep_2, 1, 107); --敵モーション
setScaleKey( spep_2, 1, 0.7, 0.7); --敵サイズ
setScaleKey( spep_2+27, 1, 1.0, 1.0); --敵サイズ
setScaleKey( spep_2+47, 1, 1.0, 1.0); --敵サイズ
setMoveKey( spep_2, 1, 100, -150, 0); --敵位置
setMoveKey( spep_2+20, 1, 150, -250, 0); --敵位置
setMoveKey( spep_2+47, 1, 150, -250, 0); --敵位置
setRotateKey( spep_2, 1, -40); --敵角度
setRotateKey( spep_2+47, 1, -40); --敵角度
setShakeChara( spep_2+3, 1, 40, 15);

setDisp( spep_2+47, 1,0); --敵非表示


-- ** 集中線 ** --
shuchusenct2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusenct2, 255);

entryFade( spep_2+45, 1, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 敵キャラの動き ** --
setDisp( spep_2+49, 1, 1); --敵表示
changeAnime( spep_2+49, 1, 108); --敵モーション
setScaleKey( spep_2+49, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_2+90, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_2+49, 1, 100, -150, 0); --敵位置
setMoveKey( spep_2+70, 1, 700, -700, 0); --敵位置
setRotateKey( spep_2+49, 1, 20); --敵角度
setRotateKey( spep_2+70, 1, 20); --敵角度
setShakeChara( spep_2+50, 1, 40, 15);

setDisp( spep_2+70, 1,0); --敵非表示


ryusen2 = entryEffectLife( spep_2+51, 920, 39, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2+51, ryusen2, 0, 0, 0);
setEffRotateKey( spep_2+51, ryusen2, 50);
setEffRotateKey( spep_2+51, ryusen2, 50);
setEffScaleKey( spep_2+51, ryusen2, 1.8, 1.8);
setEffAlphaKey( spep_2+51, ryusen2, 255);

-- 書き文字エントリー --
-- ** 音 ** --
playSe( spep_2+1, SE_04);
playSe( spep_2+49, SE_05k);

-- ** 次の準備 ** --
spep_4 = spep_2+90;
entryFade( spep_4-8, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 210); -- ベース暗め　背景
--setDisp( spep_4-1, 1, 1); --敵表示
--changeAnime( spep_4-1, 1, 108); --敵モーション
--setScaleKey( spep_4-1, 1, 2.0,2.0); --敵サイズ
--setMoveKey( spep_4-1, 1, 0, 0, 0); --敵位置
------------------------------------------------------
-- 必殺構え（120F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen4 = entryEffectLife( spep_4, 921, 110, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen4, 1.7, 1.7);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey(spep_4, ryuusen4, 230);

-- ** エフェクト等 ** --
yoru4 = entryEffect(  spep_4,   SP_04e,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_4, yoru4, 1, 1);
setEffAlphaKey( spep_4, yoru4, 255);
setEffShake(spep_4, yoru4, 110, 5);

--[[
-- ** 敵キャラの動き ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 108); --敵モーション
setScaleKey( spep_4, 1, 2.0, 2.0); --敵サイズ
setScaleKey( spep_4+118, 1, 2.0, 2.0); --敵サイズ
setMoveKey( spep_4, 1, -700, -800, 0); --敵位置
setMoveKey( spep_4+10, 1, -200, -300, 0); --敵位置
setMoveKey( spep_4+118, 1, -100, -200, 0); --敵位置
setRotateKey( spep_4, 1, -20); --敵角度
setShakeChara( spep_4+3, 1, 120, 15);

setDisp( spep_4+118, 1,0); --敵非表示
]]--
--entryEffect(  spep_4,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_4,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** 集中線 ** --
shuchusenct4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 2, 2);
setEffAlphaKey( spep_4, shuchusenct4, 255);
--[[
speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--


-- 書き文字エントリー --
gogogo = entryEffectLife( spep_4+14, 190006, 70, 0x100, -1, 0, 150, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_4+14, gogogo, -0.7, 0.7);
setEffAlphaKey( spep_4+14, gogogo, 255);
setEffRotateKey( spep_4+14, gogogo, 0);

-- ** 音 ** --
playSe( spep_4+1, SE_04);


-- ** 次の準備 ** --
spep_5 = spep_4+110;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_6 = spep_5+90;
--entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景
------------------------------------------------------
-- 放つ（120F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 59, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.7, 1.7);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, 230);
setEffRotateKey(spep_6+59, ryuusen6, 230);

ryuusen6a = entryEffectLife( spep_6+60, 920, 60, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6+60, ryuusen6a, 1.7, 1.7);
setEffAlphaKey( spep_6+60, ryuusen6a, 255);
setEffRotateKey(spep_6+60, ryuusen6a, 250);
setEffRotateKey(spep_6+120, ryuusen6a, 250);

-- ** エフェクト等 ** --
hassya6 = entryEffectLife(  spep_6,   SP_05e, 120,  0x100,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, hassya6, 1, 1);
setEffAlphaKey( spep_6, hassya6, 255);
setEffShake(spep_6, hassya6, 140, 5);

-- ** 敵キャラの動き ** --
setDisp( spep_6+59, 1, 1); --敵表示
changeAnime( spep_6+59, 1, 108); --敵モーション
changeAnime( spep_6+60, 1, 108); --敵モーション
setScaleKey( spep_6+59, 1, 1.5,1.5); --敵サイズ
setScaleKey( spep_6+60, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_6+120, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_6+59, 1, 140, -190, 0); --敵位置
setMoveKey( spep_6+60, 1, 150, -200, 0); --敵位置
setMoveKey( spep_6+120, 1, 160, -220, 0); --敵位置
setRotateKey( spep_6+60, 1, 40); --敵角度
setRotateKey( spep_6+120, 1, 40); --敵角度
--setRotateKey( spep_6+40+51, 1, -80); --敵角度
setShakeChara( spep_6+61, 1, 60, 15);

setDisp( spep_6+120, 1,0); --敵非表示


-- 書き文字エントリー
ctZuo6 = entryEffectLife( spep_6+10, 10012, 50, 0x100, -1, 0, 100, 350); -- ズオッ
setEffShake(spep_6+11, ctZuo6, 64, 25);
setEffRotateKey(spep_6+10, ctZuo6, 20);
setEffShake(spep_6+10, ctZuo6, 71, 30);
setEffAlphaKey(spep_6+10, ctZuo6, 255);
setEffAlphaKey(spep_6+90, ctZuo6, 255);
--setEffAlphaKey(spep_6+90, ctZuo6, 0);
setEffScaleKey(spep_6+10, ctZuo6, 2.9, 2.9);
setEffScaleKey(spep_6+90, ctZuo6, 2.9, 2.9);
--setEffScaleKey(spep_6+60, ctZuo6, 8.0, 8.0);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_6+60, 10014, 60, 0, -1, 0, 100, 350); -- ズドドッ
setEffShake(spep_6+60, ctZudodo, 90, 25);
setEffScaleKey( spep_6+60, ctZudodo, 2.8, 2.8);
setEffScaleKey( spep_6+90, ctZudodo, 2.8, 2.8);
setEffRotateKey(spep_6+60, ctZudodo, 0);
setEffAlphaKey(spep_6+60, ctZudodo, 255);

-- ** 集中線 ** --
shuchusenct6 = entryEffectLife( spep_6, 906, 120, 0x100,  -1, 0,  0,  -0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusenct6, 255);

-- ** 音 ** --
playSe( spep_6+5, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_6+55, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** 次の準備 ** --
spep_7 = spep_6+120;
entryFade( spep_7-7, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 55, 0, 0, 0, 0, 210); -- ベース暗め　背景
------------------------------------------------------
-- ギャン
------------------------------------------------------
-- ** ギャン ** --
gyan = entryEffectLife( spep_7, 190003 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan,1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffShake( spep_7, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 80);
setEffShake( spep_7, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_7+8, SE_09);



-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
last = entryEffect(  spep_8,   1563,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_8, last, 1, 1);
setEffAlphaKey( spep_8, last, 255);
--setEffShake(spep_7, last, 140, 5);

-- ** 集中線 ** --
shuchusenct8 = entryEffectLife( spep_8+10, 906, 170, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8+10, shuchusenct8, 2, 2);
setEffAlphaKey( spep_8+10, shuchusenct8, 255);

-- ** 音 ** --
playSe( spep_8+5, SE_10);

-- ダメージ表示
dealDamage( spep_8+16);
--entryFade( spep_8+158, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+158);

end


