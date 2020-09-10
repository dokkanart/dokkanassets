print ("[lua]sp0034");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SP_01 = 150052;--溜め
SP_02 = 150053;--発射
SP_03 = 150054;--迫る
SP_04 = 150048;--17号出現
SP_05 = 150050;--17号連続攻撃
SP_06 = 150061;--17号手前突進
SP_07 = 150062;--18号手前突進

SP_04e = 150055;--17号出現
SP_05e = 150057;--17号連続攻撃
SP_06e = 150061;--17号手前突進
SP_07e = 150062;--18号手前突進

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


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0, -30, 0,   0);
setMoveKey(   1,   0, -30, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
changeAnime(  46, 0, 17);                       -- 溜め!

entryEffect(  46,   1503,   0x80,    -1,  0,  0,  0);    -- eff_001
entryEffect(  46,   1502,   0x80, -1,  0,  0,  0);    -- eff_002
syutsugen=entryEffect(  47,   SP_04,   0x80, -1,  0,  30,  10);    --17号出現
setEffScaleKey( 47, syutsugen ,  1.4,  1.4);

playSe( 46, SE_01);
setVisibleUI(0, 0);

--entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  46,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  46,   1505,   0,     -1,  0,  0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 46, SE_04);

entryFade( 122, 5, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 46, 10013, 76, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(46, ct, 40, 7);
setEffAlphaKey(46, ct, 255);
setEffAlphaKey(66, ct, 255);
setEffAlphaKey(125, ct, 0);
setEffScaleKey( 66, ct, 0.1, 0.1);
setEffScaleKey( 125, ct, 2.0, 2.0);
playSe( 46, SE_02);

setMoveKey(   130,   0, -30, 0,   0);

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2=130;
setScaleKey( 130,   0, 1.5, 1.5);
setScaleKey( 131,   0, 1.5, 1.5);
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

ATK_01=228;

-----------------------------------------どっかんいくぜーーーい（ダッシュ）
-- 気合いタメ
--changeAnime( ATK_01, 0, 16);  -- タックル開始
setDisp( ATK_01-2, 0, 0);--味方キャラ消す
sashikae =entryEffectLife( ATK_01-2,  SP_07,  60,  0x100, -1,  0,  0,  0); 

setEffMoveKey( ATK_01-2,   sashikae,  -30, 0, 0);--最初の位置
setEffScaleKey( ATK_01-2,   sashikae,  0, 0);--最初のサイズ

setMoveKey(  ATK_01,   1,  700,  0,  0);--敵
setDisp( ATK_01, 1, 0);--敵非表示

entryEffectLife( ATK_01,  911,  52,  0x100, -1,  0,  0,  0);--黒集中線

dash = entryEffectLife( ATK_01+1,  SP_06,  50,  0x80, -1,  0,  30,  0); 
setEffRotateKey(ATK_01,   dash, 35);

setEffMoveKey( 1+ATK_01,   sashikae,  -30, 0, 0);--表示開始する位置
setEffScaleKey( 1+ATK_01,   sashikae,  0, 0);

setEffMoveKey( 1+ATK_01,   dash,  30, 0, 0);
setEffScaleKey( 1+ATK_01,   dash,  0, 0);

setEffMoveKey( 15+ATK_01,   sashikae,  -30, 0, 0);--表示開始する位置
setEffScaleKey( 15+ATK_01,   sashikae,  0, 0);--最初のサイズ

setEffMoveKey( 15+ATK_01,   dash,  30,0, 0);
setEffScaleKey( 15+ATK_01,   dash,  0, 0);


setEffMoveKey( 25+ATK_01,   sashikae,  -50, 0, 20);
setEffMoveKey( 25+ATK_01,   dash,  50,0, 20);

setEffMoveKey( 30+ATK_01,   sashikae,  -70, 0, -100);
setEffMoveKey( 30+ATK_01,   dash,  70, 0,   -100);

setEffMoveKey( 35+ATK_01,   sashikae,  -80, 0, -100);
setEffScaleKey( 35+ATK_01,   sashikae,  1.3, 1.3);--大きくなるとこ最初

setEffMoveKey( 35+ATK_01,   dash,  80, 0,   -100);
setEffScaleKey( 35+ATK_01,   dash,  1.2, 1.2);

--setScaleKey( 40+ATK_01,   0, 1.3, 1.3);
--setEffScaleKey( 40+ATK_01,   sashikae,  1.3, 1.3);
setEffMoveKey( 40+ATK_01,   sashikae,  -90, 0, -128);
setEffScaleKey( 40+ATK_01,   sashikae,  2, 2);--大きくなるとこ次

setEffMoveKey( 40+ATK_01,   dash,  90, 0,   -100);
setEffScaleKey( 40+ATK_01,   dash,  1.5, 1.5);

--setScaleKey( 45+ATK_01,   0, 2, 2);
--setEffScaleKey( 45+ATK_01,   sashikae,  2, 2);
setEffScaleKey( 45+ATK_01,   sashikae,  4, 4);

--setMoveKey( 45+ATK_01,   0,  -100, 0,  -128);
setEffMoveKey( 45+ATK_01,   sashikae,  -100, 0,   -128);

setEffMoveKey( 45+ATK_01,   dash,  100, 0,   -100);
setEffScaleKey( 45+ATK_01,   dash,  1.8, 1.8);

--setScaleKey( 50+ATK_01,   0, 2.5, 2.5);
--setEffScaleKey( 50+ATK_01,   sashikae,  2.5, 2.5);
setEffScaleKey( 50+ATK_01,   sashikae,  4.9, 4.9);--大きくなるとこ最後

--setMoveKey( 50+ATK_01,   0,  -110, 0,  -128);
setEffMoveKey( 50+ATK_01,   sashikae,  -110, 0,   -128);

setEffMoveKey( 50+ATK_01,   dash,  110, 0,   -100);
setEffScaleKey( 50+ATK_01,   dash,  2.2, 2.2);

setEffRotateKey(50+ATK_01,   dash, 45);

--entryEffectLife( ATK_01+45, 707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002

entryEffect( ATK_01,  11,  0x80,  -1,  0,  0,  -20);--爆破
setShake(ATK_01+1, 13, 17);
entryEffect( 2+ATK_01,  908,  0x80,  -1,  0,  0,  0);--集中線

--playSe( 51+ATK_01,1054);

setShake(30+ATK_01, 11, 20);

removeAllEffect(ATK_01+55);

entryFade( 50+ATK_01, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_1 = ATK_01+60;
setDisp( SP_Start_1-2, 0, 1);
setDisp( SP_Start_1-2, 1, 1);

playSe(228,  9);


-----------------------------------------------------

-- 攻撃

--entryFadeBg( SP_Start_1+37, 5, 10, 5, 0,  0,  0, 100);
--setBgScroll( SP_Start_1, -100);
setDisp( SP_Start_1, 1, 1);
setScaleKey(   SP_Start_1,   0, 1.1, 1.1);
setMoveKey(  SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey(  SP_Start_1, 1, -500,  0,   0);-- 中央位置から

ryusen_1=entryEffectLife( SP_Start_1, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_Start_1,ryusen_1,-10);
setEffScaleKey( SP_Start_1, ryusen_1, 1.3, 1.3);

setShake( SP_Start_1, 98, 30);
playSe( SP_Start_1,1003);--SE
setSeVolume(SP_Start_1,1003,85);
playSe( SP_Start_1,1001);--SE
setSeVolume( SP_Start_1,1001,85);

entryEffect(  SP_Start_1,   22,   0,  1,   0,  -100,  0);
changeAnime( SP_Start_1,  1,   106);-- 敵モーション
setDrawFront( SP_Start_1, 0, 1);


Rbattle=entryEffectLife( SP_Start_1,  SP_05,  152,  0x80, -1,  0,  0,  0); 

--setScaleKey( SP_Start_1-1,   0, 1.5, 1.5);
--setScaleKey( SP_Start_1,   0, 1.5, 1.5);
--setScaleKey( SP_Start_1,   1, 1.5, 1.5);
--setEnvZoomEnable(SP_Start_1,1);

setMoveKey( SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1, 1, -480,  0,   0);-- 中央位置から
changeAnime( SP_Start_1,   0, 13);-- キック2
playSe( SP_Start_1,1009);--SE
setSeVolume( SP_Start_1,1009,85);
entryEffect(  SP_Start_1,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1,   Rbattle,  -550,50, 0);
setEffScaleKey( SP_Start_1,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+8, 0, -500,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+8, 1, -380,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+7,   0, 11);-- パンチ3
playSe( SP_Start_1+8,1009);--SE
setSeVolume( SP_Start_1+8,1009,85);
entryEffect(  SP_Start_1+7,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+8, 1, 0);  -- ダメージ振動等
setBgScroll( SP_Start_1+8, -10);

setEffMoveKey( SP_Start_1+8,   Rbattle,  -450,50, 0);
setEffScaleKey( SP_Start_1+8,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+16, 0, -400,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+16, 1, -280,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+15,   0, 9);--パンチ1
playSe( SP_Start_1+16,1006);--SE
setSeVolume( SP_Start_1+16,1006,85);
entryEffect(  SP_Start_1+15,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+16, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+16, -20);

setEffMoveKey( SP_Start_1+16,   Rbattle,  -350,50, 0);
setEffScaleKey( SP_Start_1+16,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+24, 0, -300,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+24, 1, -180,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+23,   0, 13);--キック2
playSe( SP_Start_1+24,1010);--SE
setSeVolume( SP_Start_1+24,1010,85);
entryEffect(  SP_Start_1+23,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+24, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+24, -30);

changeAnime( SP_Start_1+24, 1, 108);  --敵モーション
setEffMoveKey( SP_Start_1+24,   Rbattle,  -250,50, 0);
setEffScaleKey( SP_Start_1+24,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+32, 0, -200,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+32, 1, -80,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+31,   0, 11);--パンチ3
playSe( SP_Start_1+32,1009);--SE
setSeVolume( SP_Start_1+32,1009,85);
entryEffect(  SP_Start_1+31,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+32, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+32, -40);

changeAnime( SP_Start_1+32,  1,   106);-- 敵モーション
setEffMoveKey( SP_Start_1+32,   Rbattle,  -150,50, 0);
setEffScaleKey( SP_Start_1+32,   Rbattle,  0.9, 0.9);

--
setEnvZoomEnable(SP_Start_1+40,1);

setMoveKey( SP_Start_1+40, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+40, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+39,   0, 12);--キック1
playSe( SP_Start_1+40,1001);--SE
setSeVolume( SP_Start_1+40,1001,85);
entryEffect(  SP_Start_1+39,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+40, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+40, -50);

setEffMoveKey( SP_Start_1+40,   Rbattle,  -50,50, 0);
setEffScaleKey( SP_Start_1+40,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+48, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+48, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+47,   0, 14);--キック3
playSe( SP_Start_1+48,1010);--SE
setSeVolume( SP_Start_1+48,1010,85);
entryEffect(  SP_Start_1+47,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+48, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+48, -60);

changeAnime( SP_Start_1+48, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+56, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+56, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+55,   0, 11);--パンチ3
playSe( SP_Start_1+56,1009);--SE
setSeVolume( SP_Start_1+56,1009,85);
entryEffect(  SP_Start_1+55,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+56, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+56, -70);

setMoveKey( SP_Start_1+64, 0, -50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+64, 1, 70,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+63,   0, 9);--パンチ1  392
playSe( SP_Start_1+64,1012);--SE
setSeVolume( SP_Start_1+64,1012,85);
entryEffect(  SP_Start_1+63,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+64, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+64, -80);
--

setEffMoveKey( SP_Start_1+64,   Rbattle,  0,50, 0);
setEffScaleKey( SP_Start_1+64,   Rbattle,  0.9, 0.9);


setMoveKey( SP_Start_1+72, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+72, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+71,   0, 11);--キック3 
playSe( SP_Start_1+72,1013);--SE
setSeVolume( SP_Start_1+72,1013,85);
entryEffect(  SP_Start_1+71,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+72, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+72, -90);

setEffMoveKey( SP_Start_1+72,   Rbattle,  50,50, 0);
setEffScaleKey( SP_Start_1+72,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+72,  1,   106);-- 敵モーション


setMoveKey( SP_Start_1+80, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+80, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+79,   0, 13);--キック2
playSe( SP_Start_1+80,1001);--SE
setSeVolume( SP_Start_1+80,1001,85);
entryEffect(  SP_Start_1+79,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+80, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+80, -100);

setEffMoveKey( SP_Start_1+80,   Rbattle,  100,50, 0);
setEffScaleKey( SP_Start_1+80,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+80, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+88, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+88, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+87,   0, 9);--パンチ1
playSe( SP_Start_1+88,1000);--SE
setSeVolume( SP_Start_1+88,1000,85);
entryEffect(  SP_Start_1+87,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+88, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+88,   Rbattle,  150,50, 0);
setEffScaleKey( SP_Start_1+88,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+96, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+96, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+95,   0, 11);--パンチ3
playSe( SP_Start_1+96,1009);--SE
setSeVolume( SP_Start_1+96,1009,85);
entryEffect(  SP_Start_1+95,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+96, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+96,   Rbattle,  200,50, 0);
setEffScaleKey( SP_Start_1+96,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+104, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+104, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+103,   0, 10);--パンチ2
playSe( SP_Start_1+104,1006);--SE
setSeVolume( SP_Start_1+104,1006,85);
entryEffect(  SP_Start_1+103,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+104, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+104, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+112, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+112, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+111,   0, 12);--キック1
playSe( SP_Start_1+112,1001);--SE
setSeVolume( SP_Start_1+112,1001,85);
entryEffect(  SP_Start_1+111,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+112, 1, 0);  -- ダメージ振動等
--
setMoveKey( SP_Start_1+120, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+120, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+119,   0, 11);--パンチ3
playSe( SP_Start_1+120,1009);--SE
setSeVolume( SP_Start_1+120,1009,85);
entryEffect(  SP_Start_1+119,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+120, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+120,   Rbattle,  150,50, 0);
setEffScaleKey( SP_Start_1+120,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+120, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+128, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+128, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+127,   0, 14);--キック3
playSe( SP_Start_1+128,1010);--SE
setSeVolume( SP_Start_1+128,1010,85);
entryEffect(  SP_Start_1+127,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+128, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+128,   Rbattle,  100,50, 0);
setEffScaleKey( SP_Start_1+128,   Rbattle,  0.9, 0.9);
--
setMoveKey( SP_Start_1+136, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+136, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+135,   0, 12);--キック1
playSe( SP_Start_1+136,1001);--SE
setSeVolume( SP_Start_1+136,1001,85);
entryEffect(  SP_Start_1+135,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+136, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+136,   Rbattle,  50,50, 0);
setEffScaleKey( SP_Start_1+136,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+136, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+144, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+144, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+143,   0, 9);--パンチ1
playSe( SP_Start_1+144,1000);--SE
setSeVolume( SP_Start_1+144,1000,85);
entryEffect(  SP_Start_1+143,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+144, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+144,   Rbattle,  -50,50, 0);
setEffScaleKey( SP_Start_1+144,   Rbattle,  0.9, 0.9);

setDrawFront( SP_Start_1+149, 0, 0);
changeAnime( SP_Start_1+149,   0, 0);--移動
setRotateKey( SP_Start_1+93, 0,10);
setEnvZoomEnable(SP_Start_1+94,1);

setMoveKey( SP_Start_1+154, 0, 30,  150,   0);-- 中央位置から
setMoveKey( SP_Start_1+154, 1, 150,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+153,   0, 15);--撃ち落とし
playSe( SP_Start_1+154,1009);--SE
setSeVolume( SP_Start_1+154,1009,85);
entryEffect(  SP_Start_1+153,   905,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+153, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+154,   Rbattle,  80,50, 0);
setEffScaleKey( SP_Start_1+154,   Rbattle,  0.9, 0.9);


-- 受け------------------------------------------
-- 味方移動（画面外へ)
--setMoveKey(  SP_Start_1+150, 0, 30,  150,   0);      -- 画面外へ
setMoveKey( SP_Start_1+154, 1, 130,  0,   0);      -- 敵を若干後退

setMoveKey(  SP_Start_1+164, 1, 600,  0,   0);      -- 吹っ飛び中
changeAnime( SP_Start_1+154, 1, 108);    			-- モーション(立ち)

endPhase(SP_Start_1+164);
--setBgScroll( SP_Start_1+154, 0);

setDisp( SP_Start_1+164, 1, 0);

-- ** エフェクト等 ** ------------------------------------
entryFadeBg( SP_Start_1, 0, 155, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_Start_1, 906, 154, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1+154, shuchusen, 2.0, 2.0);

-----------------------------------------------------------

entryFade( SP_Start_1+155, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_2 = SP_Start_1+163; --367


--吹っ飛びからの爆発--------------------------

setDisp( SP_Start_1+160, 0, 0);
setDisp( SP_Start_2, 1, 1);
setRotateKey( SP_Start_1+160, 0,0);
setMoveKey(  SP_Start_1+160, 0, -30,  -10,  0); 
setScaleKey(  SP_Start_1+159,  0, 1.1, 1.1);
setScaleKey( SP_Start_1+160, 0, 1.5, 1.5);

setRotateKey(  SP_Start_2+1,1,20);
setMoveKey(  SP_Start_2+3, 1, -500,  250,   30); 
setMoveKey(  SP_Start_2+6, 1, 50,  -100,   0); 
setMoveKey(  SP_Start_2+10, 1, 350,  -350,   -100); 

setDisp( SP_Start_2+11, 1, 0);
--setRotateKey(SP_Start_2+11,1,0);


--爆破演出1
  Bmeff = entryEffect(SP_Start_2+10,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(SP_Start_2+10,1023);
  setEffMoveKey(SP_Start_2+20, Bmeff,  -1500,-250);
  setEffScaleKey(SP_Start_2,Bmeff,2,2);
--シェイク
  setShake(SP_Start_2+5,10,15);

  entryFadeBg(SP_Start_2,0,5,5,255,255,255,255);
  entryFlashBg(SP_Start_2+5,3,255,255,255);


--爆破演出2
setBgScroll(SP_Start_2+25,60);
  Bmeff2 = entryEffect(SP_Start_2+25,    1509,  0,  -1,  0,  250,  -250);   -- HIT
  playSe(SP_Start_2+25,1023);
  setEffScaleKey(SP_Start_2+25,Bmeff2,1.2,1.2);
  setEffMoveKey(SP_Start_2+59, Bmeff2,  -1400,-280);
  --シェイク
  setShake(SP_Start_2+26,10,15);

  entryFadeBg(SP_Start_2+25,2,5,5,0,0,0,255);
  entryFlashBg(SP_Start_2+32,3,0,0,0);
  
  
--吹っ飛び2--------------------------  

--setDisp( SP_Start_2+58, 1, 1);
--setDisp( SP_Start_2+59, 1, 1);

--changeAnime( SP_Start_2+58,  1, 5);--eダメージ奥

--setRotateKey(SP_Start_2+57,1,0);
--setRotateKey(SP_Start_2+58,1,30);  

--setMoveKey(  SP_Start_2+59, 1, -100,  -200,   -50); 
--setMoveKey(  SP_Start_2+65, 1, 150,  60,   0); 
--setMoveKey(  SP_Start_2+70, 1, 350,  180,   50); 
--setMoveKey(  SP_Start_2+73, 1, 550,  540,   50); 

--------------------------------------

entryFade( SP_Start_2+59, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_Start_2+63, 1, 0);
setRotateKey(SP_Start_2,1,0); 
setEnvZoomEnable(SP_Start_2+63,0);

SP_Start_3 = SP_Start_2+67; --443

removeAllEffect(SP_Start_3-1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setRotateKey( SP_dodge,  0,  0);
setRotateKey( SP_dodge+10,  0,  0);

setDisp( SP_dodge+9, 1, 0);
setMoveKey(  SP_dodge, 1, 9000,  9000,   30);
setMoveKey(  SP_dodge+9, 1, 9000,  9000,   30);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, -30,  -10,  0); 
setMoveKey(  SP_dodge+9, 0, -1100,  -10,  0); 

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setMoveKey(  SP_Start_3, 0, -150,  -10,  0); 
entryEffect( SP_Start_3+2, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
setDisp( SP_Start_3+5, 0, 1);
setVisibleUI(SP_Start_3, 0);
changeAnime( SP_Start_3, 0, 30);                       -- 溜め!
setScaleKey(  SP_Start_3,   0, 1.5, 1.5);
playSe( SP_Start_3, 43);

--changeAnime( SP_Start_3+35, 0, 30);     

kame_hand = entryEffect( SP_Start_3+30, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_Start_3+30, kame_hand, 0.5, 0.5);

setShakeChara( SP_Start_3+30, 0,100,10);

--[[
playSe( SP_Start_3+30, SE_03);
playSe( SP_Start_3+55, SE_03);
playSe( SP_Start_3+80, SE_03);
playSe( SP_Start_3+105, SE_03);
playSe( SP_Start_3+130, SE_03);
]]
--v4.11調整
SE001 = playSe( SP_Start_3+30, SE_03);
stopSe(SP_Start_3+60,SE001,5);
SE002 = playSe( SP_Start_3+55, SE_03);
stopSe(SP_Start_3+85,SE002,5);
SE003 = playSe( SP_Start_3+80, SE_03);
stopSe(SP_Start_3+110,SE003,5);
SE004 = playSe( SP_Start_3+105, SE_03);
stopSe(SP_Start_3+135,SE004,5);
SE005 = playSe( SP_Start_3+130, SE_03);

setMoveKey(  SP_Start_3+130, 0, -120,  -10,  0); 

entryFade( SP_Start_3+130, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  SP_Start_3+70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( SP_Start_3+30, aura, 1.5, 1.5);
--setShakeChara( SP_Start_3+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_3+30, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_Start_3+30, ct, 40, 8);
setEffScaleKey(SP_Start_3+30, ct, 1.4, 1.4);

--setMoveKey(  SP_Start_3+134, 0, -100,  -30,  0); 

setScaleKey(  SP_Start_3+133,   0, 1.5, 1.5);
setMoveKey(  SP_Start_3+133, 0, -10,  -10,  0); 
setScaleKey(  SP_Start_3+134,   0, 1, 1);

SP_Start_4 = SP_Start_3+138;--599


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_Start_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  SP_Start_4-1,    0,      0,  -80,   0);
setMoveKey(  SP_Start_4,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+1,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( SP_Start_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_Start_4, SE_07);

--spname = entryEffect( SP_Start_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  SP_Start_4+39,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+40,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+48,    0,   -1100,  -80,   0);

entryFade( SP_Start_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_Start_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_Start_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_Start_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_Start_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--setShakeChara( SP_Start_4+45, 0, 54, 50);

shuchusen = entryEffectLife( SP_Start_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_4, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+49, shuchusen, 2.0, 2.0);

--entryFlash( (SP_Start_4+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start_4+8, ct, 32, 5);

setEffAlphaKey(SP_Start_4+8, ct, 255);
setEffAlphaKey(SP_Start_4+30, ct, 255);
setEffAlphaKey(SP_Start_4+40, ct, 0);

setEffScaleKey(SP_Start_4+8, ct, 0.0, 0.0);
setEffScaleKey(SP_Start_4+12, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+32, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+40, ct, 6.0, 6.0);
playSe( SP_Start_4+40, SE_07);

--704

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_Start_4+110, 0, 0);
setDisp( SP_Start_4+110, 1, 1);
setRotateKey(SP_Start_4+111,1,0);  

changeAnime( SP_Start_4+110, 1, 104);                        -- ガード
setMoveKey(  SP_Start_4+109,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+110,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+111,    1,  235,  0,   0);
setScaleKey( SP_Start_4+109,    1,  0.7, 0.7);
setScaleKey( SP_Start_4+110,    1,  0.7, 0.7);

setMoveKey(  SP_Start_4+140,    1,   120,  0,   0);
setScaleKey(  SP_Start_4+140,   1,   1.6,  1.6);
setRotateKey(SP_Start_4+140,1,0);  
setRotateKey(SP_Start_4+202,1,0);  

playSe( SP_Start_4+130, SE_06);

kamehame_beam2 = entryEffect( SP_Start_4+110, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_Start_4+110, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+192, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+194, kamehame_beam2, 2.5, 2.5);
setDamage( SP_Start_4+192, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_Start_4+110, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_Start_4+110, SE_08);

playSe( SP_Start_4+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( SP_Start_4+195, 1, 108);
setMoveKey(  SP_Start_4+195, 1,  120,    0,  0);
setMoveKey(  SP_Start_4+209, 1,  400,    0,  0);
setScaleKey( SP_Start_4+195, 1,  1.6, 1.6);
setScaleKey( SP_Start_4+198, 1,  1.5, 1.5);
setScaleKey( SP_Start_4+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_Start_4+110, 1, 99, 20);

entryFadeBg( SP_Start_4+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_Start_4+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_Start_4+110+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_Start_4+110, ct, 99, 20);
setEffScaleKey( SP_Start_4+110, ct, 2.4, 2.4);
setEffRotateKey(SP_Start_4+110, ct, 70);
setEffAlphaKey(SP_Start_4+110, ct, 255);
setEffAlphaKey(SP_Start_4+170, ct, 255);
setEffAlphaKey(SP_Start_4+190, ct, 0);

entryFade( SP_Start_4+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_Start_4+209, 1, 1);
setMoveKey(  SP_Start_4+209,    1,  100,  0,   0);
setScaleKey( SP_Start_4+209,    1,  1.0, 1.0);
setMoveKey(  SP_Start_4+210,    1,    0,   0,   128);
setScaleKey( SP_Start_4+210,    1,  0.1, 0.1);

changeAnime( SP_Start_4+210, 1, 107);                         -- 手前ダメージ
entryEffect( SP_Start_4+218, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_Start_4+218, SE_10);

setMoveKey(  SP_Start_4+218,   1,    0,   0,   128);
setMoveKey(  SP_Start_4+225,   1,  -60,  -200,  -100);
--setMoveKey(  SP_Start_4+226,   1,  -60,  -200,  -100);
setDamage( SP_Start_4+226, 1, 0);  -- ダメージ振動等
setShake(SP_Start_4+217,6,15);
setShake(SP_Start_4+223,15,10);

setRotateKey( SP_Start_4+210,  1,  30 );
setRotateKey( SP_Start_4+212,  1,  80 );
setRotateKey( SP_Start_4+214,  1, 120 );
setRotateKey( SP_Start_4+216,  1, 160 );
setRotateKey( SP_Start_4+218,  1, 200 );
setRotateKey( SP_Start_4+220,  1, 260 );
setRotateKey( SP_Start_4+222,  1, 320 );
setRotateKey( SP_Start_4+224,  1,   0 );

setShakeChara( SP_Start_4+225, 1, 5,  10);
setShakeChara( SP_Start_4+230, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+225, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_Start_4+225, ct, 30, 10);
setEffRotateKey( SP_Start_4+225, ct, -40);
setEffScaleKey( SP_Start_4+225, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+226, ct, 2.0, 2.0);
setEffScaleKey( SP_Start_4+227, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+228, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+229, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+230, ct, 3.8, 3.8);
setEffScaleKey( SP_Start_4+310, ct, 3.8, 3.8);
setEffAlphaKey( SP_Start_4+225, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 0);

playSe( SP_Start_4+213, SE_11);
shuchusen = entryEffectLife( SP_Start_4+213, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_Start_4+213, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_Start_4+226);

--entryFade( SP_Start_4+310, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_Start_4+310);

else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0, -80, 0,   0);
setMoveKey(   1,   0, -80, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

--気を貯める
changeAnime(  46, 0, 17);                       -- 溜め!

entryEffect(  46,   1503,   0x80,    -1,  0,  0,  0);    -- eff_001
entryEffect(  46,   1502,   0x80, -1,  0,  0,  0);    -- eff_002
syutsugen=entryEffect(  47,   SP_04e,   0x80, -1,  0,  30,  10);    --17号出現
setEffScaleKey( 47, syutsugen ,  -1.4,  1.4);

playSe( 46, SE_01);
setVisibleUI(0, 0);

--entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  46,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  46,   1505,   0,     -1,  0,  0, 0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 46, SE_04);

entryFade( 122, 5, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 46, 10013, 76, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(46, ct, 40, 7);
setEffAlphaKey(46, ct, 255);
setEffAlphaKey(66, ct, 255);
setEffAlphaKey(125, ct, 0);
setEffScaleKey( 66, ct, 0.1, 0.1);
setEffScaleKey( 125, ct, 2.0, 2.0);
playSe( 46, SE_02);

setMoveKey(   130,   0, -30, 0,   0);

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2=130;
setScaleKey( 130,   0, 1.5, 1.5);
setScaleKey( 131,   0, 1.5, 1.5);
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

ATK_01=228;



-----------------------------------------どっかんいくぜーーーい（ダッシュ）
-- 気合いタメ
--changeAnime( ATK_01, 0, 16);  -- タックル開始
setDisp( ATK_01-2, 0, 0);--味方キャラ消す
sashikae =entryEffectLife( ATK_01-2,  SP_07,  60,  0x100, -1,  0,  0,  0); 

setEffMoveKey( ATK_01-2,   sashikae,  -30, 0, 0);--最初の位置
setEffScaleKey( ATK_01-2,   sashikae,  0, 0);--最初のサイズ

setMoveKey(  ATK_01,   1,  700,  0,  0);--敵
setDisp( ATK_01, 1, 0);--敵非表示

entryEffectLife( ATK_01,  911,  52,  0x100, -1,  0,  0,  0);--黒集中線

dash = entryEffectLife( ATK_01+1,  SP_06,  50,  0x80, -1,  0,  30,  0); 
setEffRotateKey(ATK_01,   dash, 35);

setEffMoveKey( 1+ATK_01,   sashikae,  -30, 0, 0);--表示開始する位置
setEffScaleKey( 1+ATK_01,   sashikae,  0, 0);

setEffMoveKey( 1+ATK_01,   dash,  30, 0, 0);
setEffScaleKey( 1+ATK_01,   dash,  0, 0);

setEffMoveKey( 15+ATK_01,   sashikae,  -30, 0, 0);--表示開始する位置
setEffScaleKey( 15+ATK_01,   sashikae,  0, 0);--最初のサイズ

setEffMoveKey( 15+ATK_01,   dash,  30,0, 0);
setEffScaleKey( 15+ATK_01,   dash,  0, 0);


setEffMoveKey( 25+ATK_01,   sashikae,  -50, 0, 20);
setEffMoveKey( 25+ATK_01,   dash,  50,0, 20);

setEffMoveKey( 30+ATK_01,   sashikae,  -70, 0, -100);
setEffMoveKey( 30+ATK_01,   dash,  70, 0,   -100);

setEffMoveKey( 35+ATK_01,   sashikae,  -80, 0, -100);
setEffScaleKey( 35+ATK_01,   sashikae,  1.3, 1.3);--大きくなるとこ最初

setEffMoveKey( 35+ATK_01,   dash,  80, 0,   -100);
setEffScaleKey( 35+ATK_01,   dash,  1.2, 1.2);

--setScaleKey( 40+ATK_01,   0, 1.3, 1.3);
--setEffScaleKey( 40+ATK_01,   sashikae,  1.3, 1.3);
setEffMoveKey( 40+ATK_01,   sashikae,  -90, 0, -128);
setEffScaleKey( 40+ATK_01,   sashikae,  2, 2);--大きくなるとこ次

setEffMoveKey( 40+ATK_01,   dash,  90, 0,   -100);
setEffScaleKey( 40+ATK_01,   dash,  1.5, 1.5);

--setScaleKey( 45+ATK_01,   0, 2, 2);
--setEffScaleKey( 45+ATK_01,   sashikae,  2, 2);
setEffScaleKey( 45+ATK_01,   sashikae,  4, 4);

--setMoveKey( 45+ATK_01,   0,  -100, 0,  -128);
setEffMoveKey( 45+ATK_01,   sashikae,  -100, 0,   -128);

setEffMoveKey( 45+ATK_01,   dash,  100, 0,   -100);
setEffScaleKey( 45+ATK_01,   dash,  1.8, 1.8);

--setScaleKey( 50+ATK_01,   0, 2.5, 2.5);
--setEffScaleKey( 50+ATK_01,   sashikae,  2.5, 2.5);
setEffScaleKey( 50+ATK_01,   sashikae,  4.9, 4.9);--大きくなるとこ最後

--setMoveKey( 50+ATK_01,   0,  -110, 0,  -128);
setEffMoveKey( 50+ATK_01,   sashikae,  -110, 0,   -128);

setEffMoveKey( 50+ATK_01,   dash,  110, 0,   -100);
setEffScaleKey( 50+ATK_01,   dash,  2.2, 2.2);

setEffRotateKey(50+ATK_01,   dash, 45);

--entryEffectLife( ATK_01+45, 707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002

entryEffect( ATK_01,  11,  0x80,  -1,  0,  0,  -20);--爆破
setShake(ATK_01+1, 13, 17);
entryEffect( 2+ATK_01,  908,  0x80,  -1,  0,  0,  0);--集中線

--playSe( 51+ATK_01,1054);

setShake(30+ATK_01, 11, 20);

removeAllEffect(ATK_01+55);

entryFade( 50+ATK_01, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_1 = ATK_01+60;
setDisp( SP_Start_1-2, 0, 1);
setDisp( SP_Start_1-2, 1, 1);

playSe(228,  9);

-----------------------------------------------------

-- 攻撃

--entryFadeBg( SP_Start_1+37, 5, 10, 5, 0,  0,  0, 100);
--setBgScroll( SP_Start_1, -100);
setDisp( SP_Start_1, 1, 1);
setScaleKey(   SP_Start_1,   0, 1.1, 1.1);
setMoveKey(  SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey(  SP_Start_1, 1, -500,  0,   0);-- 中央位置から

ryusen_1=entryEffectLife( SP_Start_1, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_Start_1,ryusen_1,-10);
setEffScaleKey( SP_Start_1, ryusen_1, 1.3, 1.3);

setShake( SP_Start_1, 98, 30);
playSe( SP_Start_1,1003);--SE
setSeVolume(SP_Start_1,1003,85);
playSe( SP_Start_1,1001);--SE
setSeVolume( SP_Start_1,1001,85);

entryEffect(  SP_Start_1,   22,   0,  1,   0,  -100,  0);
changeAnime( SP_Start_1,  1,   106);-- 敵モーション
setDrawFront( SP_Start_1, 0, 1);


Rbattle=entryEffectLife( SP_Start_1,  SP_05e,  152,  0x80, -1,  0,  0,  0); 

--setScaleKey( SP_Start_1-1,   0, 1.5, 1.5);
--setScaleKey( SP_Start_1,   0, 1.5, 1.5);
--setScaleKey( SP_Start_1,   1, 1.5, 1.5);
--setEnvZoomEnable(SP_Start_1,1);

setMoveKey( SP_Start_1, 0, -600,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1, 1, -480,  0,   0);-- 中央位置から
changeAnime( SP_Start_1,   0, 13);-- キック2
playSe( SP_Start_1,1009);--SE
setSeVolume( SP_Start_1,1009,85);
entryEffect(  SP_Start_1,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1,   Rbattle,  -550,50, 0);
setEffScaleKey( SP_Start_1,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+8, 0, -500,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+8, 1, -380,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+7,   0, 11);-- パンチ3
playSe( SP_Start_1+8,1009);--SE
setSeVolume( SP_Start_1+8,1009,85);
entryEffect(  SP_Start_1+7,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+8, 1, 0);  -- ダメージ振動等
setBgScroll( SP_Start_1+8, 10);

setEffMoveKey( SP_Start_1+8,   Rbattle,  -450,50, 0);
setEffScaleKey( SP_Start_1+8,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+16, 0, -400,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+16, 1, -280,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+15,   0, 9);--パンチ1
playSe( SP_Start_1+16,1006);--SE
setSeVolume( SP_Start_1+16,1006,85);
entryEffect(  SP_Start_1+15,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+16, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+16, 20);

setEffMoveKey( SP_Start_1+16,   Rbattle,  -350,50, 0);
setEffScaleKey( SP_Start_1+16,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+24, 0, -300,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+24, 1, -180,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+23,   0, 13);--キック2
playSe( SP_Start_1+24,1010);--SE
setSeVolume( SP_Start_1+24,1010,85);
entryEffect(  SP_Start_1+23,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+24, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+24, 30);

changeAnime( SP_Start_1+24, 1, 108);  --敵モーション
setEffMoveKey( SP_Start_1+24,   Rbattle,  -250,50, 0);
setEffScaleKey( SP_Start_1+24,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+32, 0, -200,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+32, 1, -80,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+31,   0, 11);--パンチ3
playSe( SP_Start_1+32,1009);--SE
setSeVolume( SP_Start_1+32,1009,85);
entryEffect(  SP_Start_1+31,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+32, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+32, 40);

changeAnime( SP_Start_1+32,  1,   106);-- 敵モーション
setEffMoveKey( SP_Start_1+32,   Rbattle,  -150,50, 0);
setEffScaleKey( SP_Start_1+32,   Rbattle,  0.9, 0.9);

--
setEnvZoomEnable(SP_Start_1+40,1);

setMoveKey( SP_Start_1+40, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+40, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+39,   0, 12);--キック1
playSe( SP_Start_1+40,1001);--SE
setSeVolume( SP_Start_1+40,1001,85);
entryEffect(  SP_Start_1+39,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+40, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+40, 50);

setEffMoveKey( SP_Start_1+40,   Rbattle,  -50,50, 0);
setEffScaleKey( SP_Start_1+40,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+48, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+48, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+47,   0, 14);--キック3
playSe( SP_Start_1+48,1010);--SE
setSeVolume( SP_Start_1+48,1010,85);
entryEffect(  SP_Start_1+47,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+48, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+48, 60);

changeAnime( SP_Start_1+48, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+56, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+56, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+55,   0, 11);--パンチ3
playSe( SP_Start_1+56,1009);--SE
setSeVolume( SP_Start_1+56,1009,85);
entryEffect(  SP_Start_1+55,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+56, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+56, 70);

setMoveKey( SP_Start_1+64, 0, -50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+64, 1, 70,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+63,   0, 9);--パンチ1  392
playSe( SP_Start_1+64,1012);--SE
setSeVolume( SP_Start_1+64,1012,85);
entryEffect(  SP_Start_1+63,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+64, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+64, 80);
--

setEffMoveKey( SP_Start_1+64,   Rbattle,  0,50, 0);
setEffScaleKey( SP_Start_1+64,   Rbattle,  0.9, 0.9);


setMoveKey( SP_Start_1+72, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+72, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+71,   0, 11);--キック3 
playSe( SP_Start_1+72,1013);--SE
setSeVolume( SP_Start_1+72,1013,85);
entryEffect(  SP_Start_1+71,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+72, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+72, 90);

setEffMoveKey( SP_Start_1+72,   Rbattle,  50,50, 0);
setEffScaleKey( SP_Start_1+72,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+72,  1,   106);-- 敵モーション


setMoveKey( SP_Start_1+80, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+80, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+79,   0, 13);--キック2
playSe( SP_Start_1+80,1001);--SE
setSeVolume( SP_Start_1+80,1001,85);
entryEffect(  SP_Start_1+79,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+80, 1, 0);  -- ダメージ振動等
--setBgScroll( SP_Start_1+80, 100);

setEffMoveKey( SP_Start_1+80,   Rbattle,  100,50, 0);
setEffScaleKey( SP_Start_1+80,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+80, 1, 108);  --敵モーション

--
setMoveKey( SP_Start_1+88, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+88, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+87,   0, 9);--パンチ1
playSe( SP_Start_1+88,1000);--SE
setSeVolume( SP_Start_1+88,1000,85);
entryEffect(  SP_Start_1+87,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+88, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+88,   Rbattle,  150,50, 0);
setEffScaleKey( SP_Start_1+88,   Rbattle,  0.9, 0.9);

setMoveKey( SP_Start_1+96, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+96, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+95,   0, 11);--パンチ3
playSe( SP_Start_1+96,1009);--SE
setSeVolume( SP_Start_1+96,1009,85);
entryEffect(  SP_Start_1+95,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+96, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+96,   Rbattle,  200,50, 0);
setEffScaleKey( SP_Start_1+96,   Rbattle,  0.9, 0.9);

--
setMoveKey( SP_Start_1+104, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+104, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+103,   0, 10);--パンチ2
playSe( SP_Start_1+104,1006);--SE
setSeVolume( SP_Start_1+104,1006,85);
entryEffect(  SP_Start_1+103,   2,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+104, 1, 0);  -- ダメージ振動等

changeAnime( SP_Start_1+104, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+112, 0, 150,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+112, 1, 270,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+111,   0, 12);--キック1
playSe( SP_Start_1+112,1001);--SE
setSeVolume( SP_Start_1+112,1001,85);
entryEffect(  SP_Start_1+111,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+112, 1, 0);  -- ダメージ振動等
--
setMoveKey( SP_Start_1+120, 0, 100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+120, 1, 220,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+119,   0, 11);--パンチ3
playSe( SP_Start_1+120,1009);--SE
setSeVolume( SP_Start_1+120,1009,85);
entryEffect(  SP_Start_1+119,   3,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+120, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+120,   Rbattle,  150,50, 0);
setEffScaleKey( SP_Start_1+120,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+120, 1, 108);  --敵モーション

setMoveKey( SP_Start_1+128, 0, 50,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+128, 1, 170,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+127,   0, 14);--キック3
playSe( SP_Start_1+128,1010);--SE
setSeVolume( SP_Start_1+128,1010,85);
entryEffect(  SP_Start_1+127,   6,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+128, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+128,   Rbattle,  100,50, 0);
setEffScaleKey( SP_Start_1+128,   Rbattle,  0.9, 0.9);
--
setMoveKey( SP_Start_1+136, 0, 0,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+136, 1, 120,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+135,   0, 12);--キック1
playSe( SP_Start_1+136,1001);--SE
setSeVolume( SP_Start_1+136,1001,85);
entryEffect(  SP_Start_1+135,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+136, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+136,   Rbattle,  50,50, 0);
setEffScaleKey( SP_Start_1+136,   Rbattle,  0.9, 0.9);

changeAnime( SP_Start_1+136, 1, 106);  --敵モーション

setMoveKey( SP_Start_1+144, 0, -100,  0,   0);-- 中央位置から
setMoveKey( SP_Start_1+144, 1, 20,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+143,   0, 9);--パンチ1
playSe( SP_Start_1+144,1000);--SE
setSeVolume( SP_Start_1+144,1000,85);
entryEffect(  SP_Start_1+143,   1,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+144, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+144,   Rbattle,  -50,50, 0);
setEffScaleKey( SP_Start_1+144,   Rbattle,  0.9, 0.9);

setDrawFront( SP_Start_1+149, 0, 0);
changeAnime( SP_Start_1+149,   0, 0);--移動
setRotateKey( SP_Start_1+93, 0,10);
setEnvZoomEnable(SP_Start_1+94,1);

setMoveKey( SP_Start_1+154, 0, 30,  150,   0);-- 中央位置から
setMoveKey( SP_Start_1+154, 1, 150,  0,   0);-- 中央位置から
changeAnime( SP_Start_1+153,   0, 15);--撃ち落とし
playSe( SP_Start_1+154,1009);--SE
setSeVolume( SP_Start_1+154,1009,85);
entryEffect(  SP_Start_1+153,   905,   0,  1,   0,  0,  0);
setDamage( SP_Start_1+153, 1, 0);  -- ダメージ振動等

setEffMoveKey( SP_Start_1+154,   Rbattle,  80,50, 0);
setEffScaleKey( SP_Start_1+154,   Rbattle,  0.9, 0.9);

-- 受け------------------------------------------
-- 味方移動（画面外へ)
--setMoveKey(  SP_Start_1+150, 0, 30,  150,   0);      -- 画面外へ
setMoveKey( SP_Start_1+154, 1, 130,  0,   0);      -- 敵を若干後退

setMoveKey(  SP_Start_1+164, 1, 600,  0,   0);      -- 吹っ飛び中
changeAnime( SP_Start_1+154, 1, 108);    			-- モーション(立ち)

endPhase(SP_Start_1+164);
--setBgScroll( SP_Start_1+154, 0);

setDisp( SP_Start_1+164, 1, 0);

-- ** エフェクト等 ** ------------------------------------
entryFadeBg( SP_Start_1, 0, 155, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_Start_1, 906, 154, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_1+154, shuchusen, 2.0, 2.0);

-----------------------------------------------------------

entryFade( SP_Start_1+155, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_Start_2 = SP_Start_1+163; --367


--吹っ飛びからの爆発--------------------------

setDisp( SP_Start_1+160, 0, 0);
setDisp( SP_Start_2, 1, 1);
setRotateKey( SP_Start_1+160, 0,0);
setMoveKey(  SP_Start_1+160, 0, -30,  -10,  0); 
setScaleKey(  SP_Start_1+159,  0, 1.1, 1.1);
setScaleKey( SP_Start_1+160, 0, 1.5, 1.5);

setRotateKey(  SP_Start_2+1,1,20);
setMoveKey(  SP_Start_2+3, 1, -500,  250,   30); 
setMoveKey(  SP_Start_2+6, 1, 50,  -100,   0); 
setMoveKey(  SP_Start_2+10, 1, 350,  -350,   -100); 

setDisp( SP_Start_2+11, 1, 0);
--setRotateKey(SP_Start_2+11,1,0);


--爆破演出1
  Bmeff = entryEffect(SP_Start_2+10,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(SP_Start_2+10,1023);
  setEffMoveKey(SP_Start_2+20, Bmeff,  -1500,-250);
  setEffScaleKey(SP_Start_2,Bmeff,2,2);
--シェイク
  setShake(SP_Start_2+5,10,15);

  entryFadeBg(SP_Start_2,0,5,5,255,255,255,255);
  entryFlashBg(SP_Start_2+5,3,255,255,255);


--爆破演出2
setBgScroll(SP_Start_2+25,60);
  Bmeff2 = entryEffect(SP_Start_2+25,    1509,  0,  -1,  0,  250,  -250);   -- HIT
  playSe(SP_Start_2+25,1023);
  setEffScaleKey(SP_Start_2+25,Bmeff2,1.2,1.2);
  setEffMoveKey(SP_Start_2+59, Bmeff2,  -1400,-280);
  --シェイク
  setShake(SP_Start_2+26,10,15);

  entryFadeBg(SP_Start_2+25,2,5,5,0,0,0,255);
  entryFlashBg(SP_Start_2+32,3,0,0,0);
  
  
--吹っ飛び2--------------------------  

--setDisp( SP_Start_2+58, 1, 1);
--setDisp( SP_Start_2+59, 1, 1);

--changeAnime( SP_Start_2+58,  1, 5);--eダメージ奥

--setRotateKey(SP_Start_2+57,1,0);
--setRotateKey(SP_Start_2+58,1,30);  

--setMoveKey(  SP_Start_2+59, 1, -100,  -200,   -50); 
--setMoveKey(  SP_Start_2+65, 1, 150,  60,   0); 
--setMoveKey(  SP_Start_2+70, 1, 350,  180,   50); 
--setMoveKey(  SP_Start_2+73, 1, 550,  540,   50); 

--------------------------------------

entryFade( SP_Start_2+59, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_Start_2+63, 1, 0);
setRotateKey(SP_Start_2,1,0); 
setEnvZoomEnable(SP_Start_2+63,0);

SP_Start_3 = SP_Start_2+67; --443

removeAllEffect(SP_Start_3-1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setRotateKey( SP_dodge,  0,  0);
setRotateKey( SP_dodge+10,  0,  0);

setDisp( SP_dodge+9, 1, 0);
setMoveKey(  SP_dodge, 1, 9000,  9000,   30);
setMoveKey(  SP_dodge+9, 1, 9000,  9000,   30);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, -30,  -10,  0); 
setMoveKey(  SP_dodge+9, 0, -1100,  -10,  0); 

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setMoveKey(  SP_Start_3, 0, -150,  -10,  0); 
entryEffect( SP_Start_3+2, 700, 0x00,  0, 0,  0,  -20); --瞬間移動
setDisp( SP_Start_3+5, 0, 1);
setVisibleUI(SP_Start_3, 0);
changeAnime( SP_Start_3, 0, 30);                       -- 溜め!
setScaleKey(  SP_Start_3,   0, 1.5, 1.5);
playSe( SP_Start_3, 43);

--changeAnime( SP_Start_3+35, 0, 30);     

kame_hand = entryEffect( SP_Start_3+30, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_Start_3+30, kame_hand, 0.5, 0.5);

setShakeChara( SP_Start_3+30, 0,100,10);

--[[
playSe( SP_Start_3+30, SE_03);
playSe( SP_Start_3+55, SE_03);
playSe( SP_Start_3+80, SE_03);
playSe( SP_Start_3+105, SE_03);
playSe( SP_Start_3+130, SE_03);
]]
--v4.11調整
SE001 = playSe( SP_Start_3+30, SE_03);
stopSe(SP_Start_3+60,SE001,5);
SE002 = playSe( SP_Start_3+55, SE_03);
stopSe(SP_Start_3+85,SE002,5);
SE003 = playSe( SP_Start_3+80, SE_03);
stopSe(SP_Start_3+110,SE003,5);
SE004 = playSe( SP_Start_3+105, SE_03);
stopSe(SP_Start_3+135,SE004,5);
SE005 = playSe( SP_Start_3+130, SE_03);

setMoveKey(  SP_Start_3+130, 0, -120,  -10,  0); 

entryFade( SP_Start_3+130, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  SP_Start_3+70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( SP_Start_3+30, aura, 1.5, 1.5);
--setShakeChara( SP_Start_3+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_3+30, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_Start_3+30, ct, 40, 8);
setEffScaleKey(SP_Start_3+30, ct, 1.4, 1.4);

--setMoveKey(  SP_Start_3+134, 0, -100,  -30,  0); 

setScaleKey(  SP_Start_3+133,   0, 1.5, 1.5);
setMoveKey(  SP_Start_3+133, 0, -10,  -10,  0); 
setScaleKey(  SP_Start_3+134,   0, 1, 1);

SP_Start_4 = SP_Start_3+138;--599



------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_Start_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  SP_Start_4-1,    0,      0,  -80,   0);
setMoveKey(  SP_Start_4,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+1,    0,   -600,  -80,   0);
setMoveKey(  SP_Start_4+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( SP_Start_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_Start_4, SE_07);

--spname = entryEffect( SP_Start_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  SP_Start_4+39,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+40,    0,   -100,  -80,   0);
setMoveKey(  SP_Start_4+48,    0,   -1100,  -80,   0);

entryFade( SP_Start_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_Start_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_Start_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_Start_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_Start_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--setShakeChara( SP_Start_4+45, 0, 54, 50);

shuchusen = entryEffectLife( SP_Start_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start_4, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start_4+49, shuchusen, 2.0, 2.0);

--entryFlash( (SP_Start_4+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start_4+8, ct, 32, 5);

setEffAlphaKey(SP_Start_4+8, ct, 255);
setEffAlphaKey(SP_Start_4+30, ct, 255);
setEffAlphaKey(SP_Start_4+40, ct, 0);

setEffScaleKey(SP_Start_4+8, ct, 0.0, 0.0);
setEffScaleKey(SP_Start_4+12, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+32, ct, 1.3, 1.3);
setEffScaleKey(SP_Start_4+40, ct, 6.0, 6.0);
playSe( SP_Start_4+40, SE_07);

--704

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_Start_4+110, 0, 0);
setDisp( SP_Start_4+110, 1, 1);
setRotateKey(SP_Start_4+111,1,0);  

changeAnime( SP_Start_4+110, 1, 104);                        -- ガード
setMoveKey(  SP_Start_4+109,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+110,    1,  235,  0,   0);
setMoveKey(  SP_Start_4+111,    1,  235,  0,   0);
setScaleKey( SP_Start_4+109,    1,  0.7, 0.7);
setScaleKey( SP_Start_4+110,    1,  0.7, 0.7);

setMoveKey(  SP_Start_4+140,    1,   120,  0,   0);
setScaleKey(  SP_Start_4+140,   1,   1.6,  1.6);
setRotateKey(SP_Start_4+140,1,0);  
setRotateKey(SP_Start_4+202,1,0);  

playSe( SP_Start_4+130, SE_06);

kamehame_beam2 = entryEffect( SP_Start_4+110, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_Start_4+110, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+192, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start_4+194, kamehame_beam2, 2.5, 2.5);
setDamage( SP_Start_4+192, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_Start_4+110, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_Start_4+110, SE_08);

playSe( SP_Start_4+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( SP_Start_4+195, 1, 108);
setMoveKey(  SP_Start_4+195, 1,  120,    0,  0);
setMoveKey(  SP_Start_4+209, 1,  400,    0,  0);
setScaleKey( SP_Start_4+195, 1,  1.6, 1.6);
setScaleKey( SP_Start_4+198, 1,  1.5, 1.5);
setScaleKey( SP_Start_4+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_Start_4+110, 1, 99, 20);

entryFadeBg( SP_Start_4+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_Start_4+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_Start_4+110+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_Start_4+110+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_Start_4+110, ct, 99, 20);
setEffScaleKey( SP_Start_4+110, ct, 2.4, 2.4);
setEffRotateKey(SP_Start_4+110, ct, -70);
setEffAlphaKey(SP_Start_4+110, ct, 255);
setEffAlphaKey(SP_Start_4+170, ct, 255);
setEffAlphaKey(SP_Start_4+190, ct, 0);

entryFade( SP_Start_4+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_Start_4+209, 1, 1);
setMoveKey(  SP_Start_4+209,    1,  100,  0,   0);
setScaleKey( SP_Start_4+209,    1,  1.0, 1.0);
setMoveKey(  SP_Start_4+210,    1,    0,   0,   128);
setScaleKey( SP_Start_4+210,    1,  0.1, 0.1);

changeAnime( SP_Start_4+210, 1, 107);                         -- 手前ダメージ
entryEffect( SP_Start_4+218, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_Start_4+218, SE_10);

setMoveKey(  SP_Start_4+218,   1,    0,   0,   128);
setMoveKey(  SP_Start_4+225,   1,  -60,  -200,  -100);
--setMoveKey(  SP_Start_4+226,   1,  -60,  -200,  -100);
setDamage( SP_Start_4+226, 1, 0);  -- ダメージ振動等
setShake(SP_Start_4+217,6,15);
setShake(SP_Start_4+223,15,10);

setRotateKey( SP_Start_4+210,  1,  30 );
setRotateKey( SP_Start_4+212,  1,  80 );
setRotateKey( SP_Start_4+214,  1, 120 );
setRotateKey( SP_Start_4+216,  1, 160 );
setRotateKey( SP_Start_4+218,  1, 200 );
setRotateKey( SP_Start_4+220,  1, 260 );
setRotateKey( SP_Start_4+222,  1, 320 );
setRotateKey( SP_Start_4+224,  1,   0 );

setShakeChara( SP_Start_4+225, 1, 5,  10);
setShakeChara( SP_Start_4+230, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start_4+225, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_Start_4+225, ct, 30, 10);
setEffRotateKey( SP_Start_4+225, ct, -40);
setEffScaleKey( SP_Start_4+225, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+226, ct, 2.0, 2.0);
setEffScaleKey( SP_Start_4+227, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+228, ct, 4.0, 4.0);
setEffScaleKey( SP_Start_4+229, ct, 2.6, 2.6);
setEffScaleKey( SP_Start_4+230, ct, 3.8, 3.8);
setEffScaleKey( SP_Start_4+310, ct, 3.8, 3.8);
setEffAlphaKey( SP_Start_4+225, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 255);
setEffAlphaKey( SP_Start_4+310, ct, 0);

playSe( SP_Start_4+213, SE_11);
shuchusen = entryEffectLife( SP_Start_4+213, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_Start_4+213, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_Start_4+226);

--entryFade( SP_Start_4+310, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_Start_4+310);

end
