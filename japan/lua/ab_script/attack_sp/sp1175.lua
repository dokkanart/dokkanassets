--sp1175 バーダック　スピリット・オブ・サイヤン

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

--味方側
SP_01 = 151651;--溜め160
SP_02 = 151652;--腕アップ270
SP_03 = 151653;--構え60
SP_04 = 151654;--手前ツッコミ80
SP_05 = 151655;--連撃140
SP_06 = 151656;--球投げ90
SP_07 = 151657;--手前ツッコミ2 70
SP_08 = 151658;--下パンチ手前240
SP_09 = 151659;--下パンチ後ろ240

--敵側は味方側に1xをつけてます
SP_01x = 151660;--溜め160
SP_03x = 151661;--構え60
SP_04x = 151662;--手前ツッコミ80
SP_05x = 151663;--連撃140
SP_06x = 151664;--球投げ90
SP_07x = 151665;--手前ツッコミ2 70
SP_08x = 151666;--下パンチ手前240
SP_09x = 151667;--下パンチ後ろ240


multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め(160f)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 30, 0, 0, 0, 0, 230); -- ベース暗め　背景
entryFadeBg( spep_0+30, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tame = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 0);  
setEffScaleKey( spep_0, tame, 1.0, 1.0);
setEffScaleKey( spep_0+160, tame, 1.0, 1.0);
setEffAlphaKey( spep_0, tame, 255);
setEffAlphaKey( spep_0+156, tame, 255);


-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0+30, 906, 128, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen0, 0, 0, 0);
setEffMoveKey( spep_0+158, shuchusen0, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen0, 1.6, 1.6);
setEffAlphaKey( spep_0, shuchusen0, 255);
setEffAlphaKey( spep_0+157, shuchusen0, 255);
setEffAlphaKey( spep_0+158, shuchusen0, 0);
setEffRotateKey( spep_0, shuchusen0, 0);


speff = entryEffect(  spep_0+68,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+68,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0+30, 10013, 40, 0x100, -1, 0, 0, 300); -- ズズンッ
setEffShake(spep_0+30, ctzuzun, 40, 15);
setEffAlphaKey(spep_0+30, ctzuzun, 255);
setEffAlphaKey(spep_0+50, ctzuzun, 255);
setEffAlphaKey(spep_0+68, ctzuzun, 0);
setEffScaleKey( spep_0+30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+40, ctzuzun, 3.0, 3.0);
setEffScaleKey( spep_0+68, ctzuzun, 3.0, 3.0);
setEffRotateKey(spep_0+68, ctzuzun, 0);


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+74, 190006, 70, 0x100, -1, 0, -50, 530, 0);    -- ゴゴゴゴ
setEffShake(spep_0+74, ctgogo, 70, 10);
setEffScaleKey(spep_0+74, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_0+74, ctgogo, 0);
setEffAlphaKey( spep_0+74, ctgogo, 255);


-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+26, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_0+30, SE_01);
playSe( spep_0+68, SE_04);


-- ** 次の準備 ** --
spep_1 = spep_0+158;
entryFade( spep_1-8, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 腕アップ(260F) 270から260へへらす
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 260, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
ude_1 = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0);   
setEffScaleKey( spep_1, ude_1, 1, 1);
setEffAlphaKey( spep_1, ude_1, 255);
setEffAlphaKey( spep_1+260, ude_1, 255);
setEffAlphaKey( spep_1+261, ude_1, 0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+200, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1+200, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+200, shuchusen1, 1.3, 1.3);
setEffAlphaKey( spep_1+200, shuchusen1, 255);
setEffRotateKey( spep_1+200, shuchusen1, 0);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_1+200, 10012, 56, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep_1+200, ctzuo, 50, 250,0);
setEffMoveKey(spep_1+206, ctzuo, 150, 350,0);
setEffMoveKey(spep_1+260, ctzuo, 150, 350,0);
setEffShake(spep_1+200, ctzuo, 60, 20);
setEffAlphaKey(spep_1+200, ctzuo, 255);
setEffAlphaKey(spep_1+248, ctzuo, 255);
setEffAlphaKey(spep_1+254, ctzuo, 0);
setEffScaleKey(spep_1+200, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_1+206, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_1+248, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_1+256, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_1+200, ctzuo, 30);
setEffRotateKey(spep_1+254, ctzuo, 30);

-- ** 音 ** --
playSe( spep_1+18, 32);
playSe( spep_1+58, 32);
playSe( spep_1+98, 32);
playSe( spep_1+138, 32);
playSe( spep_1+200, 3);

-- ** ホワイトフェード ** --
entryFade( spep_1+196, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+260;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え(60F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_2, 0, 60, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
kamae_2 = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);   
setEffScaleKey( spep_2, kamae_2, 1, 1);
setEffAlphaKey( spep_2, kamae_2, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.6, 1.6);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2+4, 1018);


-- ** 次の準備 ** --
spep_3 = spep_2+60;
entryFade( spep_3-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 手前ツッコミ(80F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
temaetukkomi = entryEffect( spep_4, SP_04, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, temaetukkomi, 1, 1);
setEffAlphaKey( spep_4, temaetukkomi, 255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen4, 255);

-- ** 音 ** --
playSe( spep_4+4, 9);

-- ** 次の準備 ** --
spep_5 = spep_4+80+1;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃(140F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_5, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); 
setEffScaleKey( spep_5, rengeki, 1, 1);
setEffMoveKey( spep_5, rengeki, 0, 0, 0);
setEffAlphaKey( spep_5, rengeki, 255);



-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 140, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 0);
setEffAlphaKey( spep_5+28, shuchusen5, 0);
setEffAlphaKey( spep_5+29, shuchusen5, 255);
setEffAlphaKey( spep_5+118, shuchusen5, 255);
setEffAlphaKey( spep_5+119, shuchusen5, 0);
setEffRotateKey( spep_5, shuchusen5, 0);


-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 140, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_5, ryusen5, 1.8, 1.4);
setEffRotateKey( spep_5, ryusen5, 0);
setEffRotateKey( spep_5+82, ryusen5, 0);
setEffRotateKey( spep_5+83, ryusen5, -70);
setEffRotateKey( spep_5+140, ryusen5, -70);

-- 書き文字エントリー 最初のバキ
ctBaki1 = entryEffectLife(spep_5+25, 10020, 25, 0x100, -1, 0, 50, 300); -- バキ 
setEffShake( spep_5+25, ctBaki1, 30, 15); 
setEffAlphaKey( spep_5+25, ctBaki1, 255); --小さいななめ
setEffScaleKey( spep_5+25, ctBaki1, 1.4, 1.4);
setEffRotateKey( spep_5+25, ctBaki1, -10);
setEffScaleKey( spep_5+29, ctBaki1, 1.4, 1.4);
setEffRotateKey( spep_5+29, ctBaki1, -10);

setEffScaleKey( spep_5+30, ctBaki1, 2, 2);--大きいよこ
setEffRotateKey( spep_5+30, ctBaki1, 10);

setEffScaleKey( spep_5+31, ctBaki1, 2, 2);
setEffRotateKey( spep_5+31, ctBaki1, 10);

setEffScaleKey( spep_5+35, ctBaki1, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+35, ctBaki1, -10);

setEffScaleKey( spep_5+36, ctBaki1, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+36, ctBaki1, -10);

setEffScaleKey( spep_5+40, ctBaki1, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+40, ctBaki1, 10);

setEffScaleKey( spep_5+41, ctBaki1, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+41, ctBaki1, 10);

setEffScaleKey( spep_5+45, ctBaki1, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+45, ctBaki1, 0);
setEffScaleKey( spep_5+46, ctBaki1, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+46, ctBaki1, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+46, ctBaki1, 255);

setEffScaleKey( spep_5+50, ctBaki1, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+50, ctBaki1, 0);
setEffAlphaKey( spep_5+50, ctBaki1, 0);

-- 書き文字エントリー 次のガ
ctGa = entryEffectLife( spep_5+57, 10005, 25, 0, -1, 0, -150, 270); -- ガッ

setEffShake( spep_5+57, ctGa, 30, 15); 
setEffAlphaKey( spep_5+57, ctGa, 255); --小さいななめ
setEffScaleKey( spep_5+57, ctGa, 1.4, 1.4);
setEffRotateKey( spep_5+57, ctGa, -10);
setEffScaleKey( spep_5+61, ctGa, 1.4, 1.4);
setEffRotateKey( spep_5+61, ctGa, -10);

setEffScaleKey( spep_5+62, ctGa, 2, 2);--大きいよこ
setEffRotateKey( spep_5+62, ctGa, 10);

setEffScaleKey( spep_5+63, ctGa, 2, 2);
setEffRotateKey( spep_5+63, ctGa, 10);

setEffScaleKey( spep_5+64, ctGa, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+64, ctGa, -10);

setEffScaleKey( spep_5+70, ctGa, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+70, ctGa, -10);

setEffScaleKey( spep_5+71, ctGa, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+71, ctGa, 10);

setEffScaleKey( spep_5+75, ctGa, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+75, ctGa, 10);

setEffScaleKey( spep_5+76, ctGa, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+76, ctGa, 0);
setEffScaleKey( spep_5+80, ctGa, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+80, ctGa, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+80, ctGa, 255);

setEffScaleKey( spep_5+83, ctGa, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+83, ctGa, 0);
setEffAlphaKey( spep_5+83, ctGa, 0);

-- 書き文字エントリー 最後のバキ
ctBaki2 = entryEffectLife(spep_5+87, 10020, 27, 0x100, -1, 50, 100, 0); -- バキ 
setEffShake( spep_5+87, ctBaki2, 30, 15); 
setEffAlphaKey( spep_5+87, ctBaki2, 255); --小さいななめ
setEffScaleKey( spep_5+87, ctBaki2, 1.4, 1.4);
setEffRotateKey( spep_5+87, ctBaki2, -10);
setEffScaleKey( spep_5+91, ctBaki2, 1.4, 1.4);
setEffRotateKey( spep_5+91, ctBaki2, -10);

setEffScaleKey( spep_5+92, ctBaki2, 2, 2);--大きいよこ
setEffRotateKey( spep_5+92, ctBaki2, 10);

setEffScaleKey( spep_5+93, ctBaki2, 2, 2);
setEffRotateKey( spep_5+93, ctBaki2, 10);

setEffScaleKey( spep_5+94, ctBaki2, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+94, ctBaki2, -10);

setEffScaleKey( spep_5+98, ctBaki2, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+98, ctBaki2, -10);

setEffScaleKey( spep_5+99, ctBaki2, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+99, ctBaki2, 10);

setEffScaleKey( spep_5+103, ctBaki2, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+103, ctBaki2, 10);

setEffScaleKey( spep_5+107, ctBaki2, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+107, ctBaki2, 0);
setEffScaleKey( spep_5+111, ctBaki2, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+111, ctBaki2, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+111, ctBaki2, 255);

setEffScaleKey( spep_5+114, ctBaki2, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+114, ctBaki2, 0);
setEffAlphaKey( spep_5+114, ctBaki2, 0);



-- ** ホワイトフェード ** --



-- ** 敵の動き　** --
setDisp(spep_5, 1, 1);
changeAnime(spep_5, 1, 100); --待機正面向き
setShakeChara(spep_5, 1, 25, 10);
setScaleKey(spep_5,1,1.3,1.3);

setMoveKey(spep_5, 1, -600, -40, 0);
setMoveKey( spep_5+6,  1,  -100,  -40, 0);
setMoveKey(  spep_5+16,  1,  50,  -40, 0);

setScaleKey(spep_5+24,1,1.3,1.3);
setMoveKey(  spep_5+24,  1,  60,  -40, 0);

setMoveKey(  spep_5+25,  1,  80,  50, 0);--初アップ
changeAnime( spep_5+25, 1, 108);   --くの字
setShakeChara(spep_5+25, 1, 33, 10);
setRotateKey(  spep_5+25,  1,  -5);
setShakeChara(spep_5+25, 1, 62, 15);
setScaleKey(spep_5+25,1,1.7,1.7);

setScaleKey(spep_5+35,1,1.2,1.2);
setMoveKey(  spep_5+35,  1,  80,  -15, 0);--もどる

setMoveKey(  spep_5+56,  1,  80,  -15, 0);--もどる
setRotateKey(  spep_5+56,  1,  -5);

setScaleKey(spep_5+57,1,1.2,1.2);--あっぱー
setMoveKey(  spep_5+57,  1,  35,  110, 0);--あっぱー
setRotateKey(  spep_5+57,  1,  -50);

setScaleKey(spep_5+85,1,1.2,1.2);--けるまえ
setMoveKey(  spep_5+85,  1,  70,  250, 0);--けるまえ
setScaleKey(spep_5+86,1,1.2,1.2);--けるまえ
setMoveKey(  spep_5+86,  1,  70,  250, 0);--けるまえ


changeAnime( spep_5+87, 1, 106);  --あおむけ
setShakeChara(spep_5+87, 1, 34, 15);

setRotateKey(  spep_5+87,  1,  -50);--あおむけかくど
setScaleKey(spep_5+87,1,1.7,1.7);--けるアップ
setMoveKey(  spep_5+87,  1,  110,  260, 0);--けるアップ
setScaleKey(spep_5+87,1,1.3,1.3);--けるアップおわり

setMoveKey(  spep_5+94,  1,  50,  280, 0);--けるアップおわり

setScaleKey(spep_5+100,1,1.3,1.3);--けるアップおわり
setMoveKey(  spep_5+100,  1,  100,  300, 0);--けるアップおわり
setRotateKey(  spep_5+100,  1,  -40);--あおむけかくど


--setMoveKey(  spep_5+114,  1,  200,  400, 0);--けるアップおわり
setMoveKey(  spep_5+110,  1,  250,  800, 0);--けるアップおわり
setMoveKey(  spep_5+116,  1,  300,  2000, 0);--けるアップおわり
setDisp(spep_5+121, 1, 0);


-- ** 音 ** --
playSe( spep_5+25, 1010);
playSe( spep_5+57, 1009);
playSe( spep_5+87, 1011);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+14; --エンドフェイズのフレーム数を置き換える


setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 1,    40, -40,   0);
setMoveKey( SP_dodge+9, 1,  50,  -40,   0);
setMoveKey(   SP_dodge+10,   1,    60, -40,   0);


endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5+140;
entryFade( spep_6-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 球投げ(80F)　90からへらす
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
tamanage = entryEffect( spep_6, SP_06, 0x00, -1, 0, 0, 0); 
setEffMoveKey( spep_6, tamanage, 0, 0, 0);
setEffScaleKey( spep_6, tamanage, 1, 1);
setEffAlphaKey( spep_6, tamanage, 255);
setEffAlphaKey( spep_6+80, tamanage, 255);
setEffAlphaKey( spep_6+81, tamanage, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 80, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_6, ryusen6, 1.8, 1.4);
setEffRotateKey( spep_6, ryusen6, -70);
setEffRotateKey( spep_6+40, ryusen6, -70);
setEffRotateKey( spep_6+41, ryusen6, 80);
setEffRotateKey( spep_6+80, ryusen6, 80);

-- ** 音 ** --

playSe( spep_6+14, SE_06);
playSe( spep_6+42, SE_07);

-- ** 敵の動き　** --
setDisp(spep_6, 1, 1);
changeAnime( spep_6, 1, 106);  --あおむけ
setShakeChara(spep_6, 1, 20, 10);
setShakeChara(spep_6+20, 1, 20, 5);
setScaleKey(spep_6,1,1.3,1.3);--最初
setMoveKey(  spep_6,  1,  -100,  -400, 0);--最初
setRotateKey(  spep_6,  1,  -40);--あおむけかくど

setMoveKey(  spep_6+10,  1,  0,  -100, 0);--最初
setRotateKey(  spep_6+10,  1,  -40);--あおむけかくど
setRotateKey(  spep_6+14,  1,  -30);--あおむけかくど

setMoveKey(  spep_6+40,  1,  30,  -30, 0);--最初
setRotateKey(  spep_6+40,  1,  -20);--あおむけかくど
setScaleKey(spep_6+41,1,1.3,1.3);--最初
setDisp(spep_6+41, 1, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+37, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



-- ** 次の準備 ** --
spep_7 = spep_6+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 手前ツッコミ2 (70F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 70, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
tossin = entryEffect( spep_7, SP_07, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, tossin, 1, 1);
setEffAlphaKey( spep_7, tossin, 255);


-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 70, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey( spep_7, shuchusen7, 0);



-- ** 音 ** --
playSe( spep_7+2, 19);

-- ** 次の準備 ** --
spep_8 = spep_7+70;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 下パンチ手前(240F)　
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 240, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
pantimae = entryEffect( spep_8, SP_08, 0x100, -1, 0, 0, 0);   
setEffScaleKey( spep_8, pantimae, 1, 1);
setEffAlphaKey( spep_8, pantimae, 255);

-- ** 流線(横) ** --
ryusen8 = entryEffectLife( spep_8, 920, 240, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_8, ryusen8, 1.8, 1.4);
setEffRotateKey( spep_8, ryusen8, 90);
--setEffAlphaKey( spep_8, ryusen8, 160);
setEffAlphaKey( spep_8, ryusen8, 255);

-- ** エフェクト等 ** --
pantiusiro = entryEffect( spep_8, SP_09, 0x80, -1, 0, 0, 0);   
setEffScaleKey( spep_8, pantiusiro, 1, 1);
setEffAlphaKey( spep_8, pantiusiro, 255);



-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+90, 906, 150, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_8+90, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8+90, shuchusen8, 2.0, 2.0);
setEffAlphaKey( spep_8+90, shuchusen8, 255);
setEffRotateKey( spep_8+90, shuchusen8, 0);

-- ** 音 ** --
playSe( spep_8+16, 9);
playSe( spep_8+52, SE_09);
playSe( spep_8+92, SE_10);


-- ** 敵の動き　** --
setDisp(spep_8, 1, 1);
changeAnime( spep_8, 1, 108);   --くの字
setRotateKey(  spep_8,  1,  90);--かくど
setScaleKey(spep_8,1,1.7,1.7);--最初

setMoveKey(  spep_8,  1,  0,  600, 0);--最初

setMoveKey(  spep_8+10,  1,  0,  -600, 0);--最初
setMoveKey(  spep_8+10,  1,  0,  -2000, 0);--最初
setDisp(spep_8+11, 1, 0);

setDisp(spep_8+43, 1, 1);
changeAnime( spep_8+43, 1, 108);   --くの字
setRotateKey(  spep_8+43,  1,  90);--かくど
setScaleKey(spep_8+43,1,1.7,1.7);--最初
setMoveKey(  spep_8+43,  1,  0,  400, 0);--最初


setMoveKey(  spep_8+49,  1,  0,  -50, 0);--最後

setScaleKey(spep_8+50,1,1.7,1.7);--最後
setMoveKey(  spep_8+50,  1,  0,  -250, 0);--最後
setScaleKey(spep_8+51,1,1.4,1.4);--最後

setScaleKey(spep_8+86,1,1.2,1.2);--最後
setMoveKey(  spep_8+80,  1,  0,  -230, 0);--最後
setMoveKey(  spep_8+86,  1,  0,  -230, 0);--最後
setRotateKey(  spep_8+86,  1,  90);--かくど
setDisp(spep_8+87, 1, 0);

setShakeChara(spep_8+50, 1,36,20); 

-- ** ホワイトフェード ** --
entryFade( spep_8+47, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_8+84, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctDogown = entryEffectLife( spep_8+50, 10018, 34, 0x100, -1, 0, 0, 300); -- ドゴォン

setEffShake( spep_8+50, ctDogown, 32, 20);
setEffAlphaKey( spep_8+50, ctDogown, 255);
setEffAlphaKey( spep_8+76, ctDogown, 255);
setEffAlphaKey( spep_8+84, ctDogown, 0);
setEffScaleKey( spep_8+50, ctDogown, 2.0, 2.0);
setEffScaleKey( spep_8+74, ctDogown, 3.8, 3.8);
setEffScaleKey( spep_8+84, ctDogown, 3.8, 3.8);
setEffRotateKey( spep_8+50, ctDogown, 0);
setEffRotateKey( spep_8+84, ctDogown, 0);


-- ダメージ表示
dealDamage( spep_8+90);
entryFade( spep_8+210, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+220);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 溜め(160f)
------------------------------------------------------

spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 30, 0, 0, 0, 0, 230); -- ベース暗め　背景
entryFadeBg( spep_0+30, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tame = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 0);  
setEffScaleKey( spep_0, tame, -1.0, 1.0);
setEffScaleKey( spep_0+160, tame, -1.0, 1.0);
setEffAlphaKey( spep_0, tame, 255);
setEffAlphaKey( spep_0+156, tame, 255);


-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0+30, 906, 128, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen0, 0, 0, 0);
setEffMoveKey( spep_0+158, shuchusen0, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen0, 1.6, 1.6);
setEffAlphaKey( spep_0, shuchusen0, 255);
setEffAlphaKey( spep_0+157, shuchusen0, 255);
setEffAlphaKey( spep_0+158, shuchusen0, 0);
setEffRotateKey( spep_0, shuchusen0, 0);


--speff = entryEffect(  spep_0+68,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+68,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0+30, 10013, 40, 0x100, -1, 0, 0, 300); -- ズズンッ
setEffShake(spep_0+30, ctzuzun, 40, 15);
setEffAlphaKey(spep_0+30, ctzuzun, 255);
setEffAlphaKey(spep_0+50, ctzuzun, 255);
setEffAlphaKey(spep_0+68, ctzuzun, 0);
setEffScaleKey( spep_0+30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+40, ctzuzun, 3.0, 3.0);
setEffScaleKey( spep_0+68, ctzuzun, 3.0, 3.0);
setEffRotateKey(spep_0+68, ctzuzun, 0);


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+74, 190006, 70, 0x100, -1, 0, -50, 530, 0);    -- ゴゴゴゴ
setEffShake(spep_0+74, ctgogo, 70, 10);
setEffScaleKey(spep_0+74, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_0+74, ctgogo, 0);
setEffAlphaKey( spep_0+74, ctgogo, 255);


-- ** ホワイトフェード ** --
entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+26, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_0+30, SE_01);
playSe( spep_0+68, SE_04);


-- ** 次の準備 ** --
spep_1 = spep_0+158;
entryFade( spep_1-8, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 腕アップ(260F) 270から260へへらす
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 260, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
ude_1 = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0);   
setEffScaleKey( spep_1, ude_1, -1, 1);
setEffAlphaKey( spep_1, ude_1, 255);
setEffAlphaKey( spep_1+260, ude_1, 255);
setEffAlphaKey( spep_1+261, ude_1, 0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+200, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1+200, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+200, shuchusen1, 1.3, 1.3);
setEffAlphaKey( spep_1+200, shuchusen1, 255);
setEffRotateKey( spep_1+200, shuchusen1, 0);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_1+200, 10012, 56, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep_1+200, ctzuo, 50, 250,0);
setEffMoveKey(spep_1+206, ctzuo, 150, 350,0);
setEffMoveKey(spep_1+260, ctzuo, 150, 350,0);
setEffShake(spep_1+200, ctzuo, 60, 20);
setEffAlphaKey(spep_1+200, ctzuo, 255);
setEffAlphaKey(spep_1+248, ctzuo, 255);
setEffAlphaKey(spep_1+254, ctzuo, 0);
setEffScaleKey(spep_1+200, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_1+206, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_1+248, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_1+256, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_1+200, ctzuo, 30);
setEffRotateKey(spep_1+254, ctzuo, 30);

-- ** 音 ** --
playSe( spep_1+18, 32);
playSe( spep_1+58, 32);
playSe( spep_1+98, 32);
playSe( spep_1+138, 32);
playSe( spep_1+200, 3);

-- ** ホワイトフェード ** --
entryFade( spep_1+196, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+260;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え(60F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_2, 0, 60, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
kamae_2 = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);   
setEffScaleKey( spep_2, kamae_2, -1, 1);
setEffAlphaKey( spep_2, kamae_2, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.6, 1.6);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2+4, 1018);


-- ** 次の準備 ** --
spep_3 = spep_2+60;
entryFade( spep_3-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 手前ツッコミ(80F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
temaetukkomi = entryEffect( spep_4, SP_04x, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, temaetukkomi, 1, 1);
setEffAlphaKey( spep_4, temaetukkomi, 255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, shuchusen4, 255);

-- ** 音 ** --
playSe( spep_4+4, 9);

-- ** 次の準備 ** --
spep_5 = spep_4+80+1;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃(140F)
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_5, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_5, SP_05x, 0x100, -1, 0, 0, 0); 
setEffScaleKey( spep_5, rengeki, 1, 1);
setEffMoveKey( spep_5, rengeki, 0, 0, 0);
setEffAlphaKey( spep_5, rengeki, 255);



-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 140, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 0);
setEffAlphaKey( spep_5+28, shuchusen5, 0);
setEffAlphaKey( spep_5+29, shuchusen5, 255);
setEffAlphaKey( spep_5+118, shuchusen5, 255);
setEffAlphaKey( spep_5+119, shuchusen5, 0);
setEffRotateKey( spep_5, shuchusen5, 0);


-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 140, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_5, ryusen5, 1.8, 1.4);
setEffRotateKey( spep_5, ryusen5, 0);
setEffRotateKey( spep_5+82, ryusen5, 0);
setEffRotateKey( spep_5+83, ryusen5, -70);
setEffRotateKey( spep_5+140, ryusen5, -70);

-- 書き文字エントリー 最初のバキ
ctBaki1 = entryEffectLife(spep_5+25, 10020, 25, 0x100, -1, 0, 50, 300); -- バキ 
setEffShake( spep_5+25, ctBaki1, 30, 15); 
setEffAlphaKey( spep_5+25, ctBaki1, 255); --小さいななめ
setEffScaleKey( spep_5+25, ctBaki1, 1.4, 1.4);
setEffRotateKey( spep_5+25, ctBaki1, -10);
setEffScaleKey( spep_5+29, ctBaki1, 1.4, 1.4);
setEffRotateKey( spep_5+29, ctBaki1, -10);

setEffScaleKey( spep_5+30, ctBaki1, 2, 2);--大きいよこ
setEffRotateKey( spep_5+30, ctBaki1, 10);

setEffScaleKey( spep_5+31, ctBaki1, 2, 2);
setEffRotateKey( spep_5+31, ctBaki1, 10);

setEffScaleKey( spep_5+35, ctBaki1, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+35, ctBaki1, -10);

setEffScaleKey( spep_5+36, ctBaki1, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+36, ctBaki1, -10);

setEffScaleKey( spep_5+40, ctBaki1, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+40, ctBaki1, 10);

setEffScaleKey( spep_5+41, ctBaki1, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+41, ctBaki1, 10);

setEffScaleKey( spep_5+45, ctBaki1, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+45, ctBaki1, 0);
setEffScaleKey( spep_5+46, ctBaki1, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+46, ctBaki1, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+46, ctBaki1, 255);

setEffScaleKey( spep_5+50, ctBaki1, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+50, ctBaki1, 0);
setEffAlphaKey( spep_5+50, ctBaki1, 0);

-- 書き文字エントリー 次のガ
ctGa = entryEffectLife( spep_5+57, 10005, 25, 0, -1, 0, -150, 270); -- ガッ

setEffShake( spep_5+57, ctGa, 30, 15); 
setEffAlphaKey( spep_5+57, ctGa, 255); --小さいななめ
setEffScaleKey( spep_5+57, ctGa, 1.4, 1.4);
setEffRotateKey( spep_5+57, ctGa, -10);
setEffScaleKey( spep_5+61, ctGa, 1.4, 1.4);
setEffRotateKey( spep_5+61, ctGa, -10);

setEffScaleKey( spep_5+62, ctGa, 2, 2);--大きいよこ
setEffRotateKey( spep_5+62, ctGa, 10);

setEffScaleKey( spep_5+63, ctGa, 2, 2);
setEffRotateKey( spep_5+63, ctGa, 10);

setEffScaleKey( spep_5+64, ctGa, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+64, ctGa, -10);

setEffScaleKey( spep_5+70, ctGa, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+70, ctGa, -10);

setEffScaleKey( spep_5+71, ctGa, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+71, ctGa, 10);

setEffScaleKey( spep_5+75, ctGa, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+75, ctGa, 10);

setEffScaleKey( spep_5+76, ctGa, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+76, ctGa, 0);
setEffScaleKey( spep_5+80, ctGa, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+80, ctGa, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+80, ctGa, 255);

setEffScaleKey( spep_5+83, ctGa, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+83, ctGa, 0);
setEffAlphaKey( spep_5+83, ctGa, 0);

-- 書き文字エントリー 最後のバキ
ctBaki2 = entryEffectLife(spep_5+87, 10020, 27, 0x100, -1, 50, 100, 0); -- バキ 
setEffShake( spep_5+87, ctBaki2, 30, 15); 
setEffAlphaKey( spep_5+87, ctBaki2, 255); --小さいななめ
setEffScaleKey( spep_5+87, ctBaki2, 1.4, 1.4);
setEffRotateKey( spep_5+87, ctBaki2, -10);
setEffScaleKey( spep_5+91, ctBaki2, 1.4, 1.4);
setEffRotateKey( spep_5+91, ctBaki2, -10);

setEffScaleKey( spep_5+92, ctBaki2, 2, 2);--大きいよこ
setEffRotateKey( spep_5+92, ctBaki2, 10);

setEffScaleKey( spep_5+93, ctBaki2, 2, 2);
setEffRotateKey( spep_5+93, ctBaki2, 10);

setEffScaleKey( spep_5+94, ctBaki2, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+94, ctBaki2, -10);

setEffScaleKey( spep_5+98, ctBaki2, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+98, ctBaki2, -10);

setEffScaleKey( spep_5+99, ctBaki2, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+99, ctBaki2, 10);

setEffScaleKey( spep_5+103, ctBaki2, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+103, ctBaki2, 10);

setEffScaleKey( spep_5+107, ctBaki2, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+107, ctBaki2, 0);
setEffScaleKey( spep_5+111, ctBaki2, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+111, ctBaki2, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+111, ctBaki2, 255);

setEffScaleKey( spep_5+114, ctBaki2, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+114, ctBaki2, 0);
setEffAlphaKey( spep_5+114, ctBaki2, 0);



-- ** ホワイトフェード ** --



-- ** 敵の動き　** --
setDisp(spep_5, 1, 1);
changeAnime(spep_5, 1, 100); --待機正面向き
setShakeChara(spep_5, 1, 25, 10);
setScaleKey(spep_5,1,1.3,1.3);

setMoveKey(spep_5, 1, -600, -40, 0);
setMoveKey( spep_5+6,  1,  -100,  -40, 0);
setMoveKey(  spep_5+16,  1,  50,  -40, 0);

setScaleKey(spep_5+24,1,1.3,1.3);
setMoveKey(  spep_5+24,  1,  60,  -40, 0);

setMoveKey(  spep_5+25,  1,  80,  50, 0);--初アップ
changeAnime( spep_5+25, 1, 108);   --くの字
setShakeChara(spep_5+25, 1, 33, 10);
setRotateKey(  spep_5+25,  1,  -5);
setShakeChara(spep_5+25, 1, 62, 15);
setScaleKey(spep_5+25,1,1.7,1.7);

setScaleKey(spep_5+35,1,1.2,1.2);
setMoveKey(  spep_5+35,  1,  80,  -15, 0);--もどる

setMoveKey(  spep_5+56,  1,  80,  -15, 0);--もどる
setRotateKey(  spep_5+56,  1,  -5);

setScaleKey(spep_5+57,1,1.2,1.2);--あっぱー
setMoveKey(  spep_5+57,  1,  35,  110, 0);--あっぱー
setRotateKey(  spep_5+57,  1,  -50);

setScaleKey(spep_5+85,1,1.2,1.2);--けるまえ
setMoveKey(  spep_5+85,  1,  70,  250, 0);--けるまえ
setScaleKey(spep_5+86,1,1.2,1.2);--けるまえ
setMoveKey(  spep_5+86,  1,  70,  250, 0);--けるまえ


changeAnime( spep_5+87, 1, 106);  --あおむけ
setShakeChara(spep_5+87, 1, 34, 15);

setRotateKey(  spep_5+87,  1,  -50);--あおむけかくど
setScaleKey(spep_5+87,1,1.7,1.7);--けるアップ
setMoveKey(  spep_5+87,  1,  110,  260, 0);--けるアップ
setScaleKey(spep_5+87,1,1.3,1.3);--けるアップおわり

setMoveKey(  spep_5+94,  1,  50,  280, 0);--けるアップおわり

setScaleKey(spep_5+100,1,1.3,1.3);--けるアップおわり
setMoveKey(  spep_5+100,  1,  100,  300, 0);--けるアップおわり
setRotateKey(  spep_5+100,  1,  -40);--あおむけかくど


--setMoveKey(  spep_5+114,  1,  200,  400, 0);--けるアップおわり
setMoveKey(  spep_5+110,  1,  250,  800, 0);--けるアップおわり
setMoveKey(  spep_5+116,  1,  300,  2000, 0);--けるアップおわり
setDisp(spep_5+121, 1, 0);


-- ** 音 ** --
playSe( spep_5+25, 1010);
playSe( spep_5+57, 1009);
playSe( spep_5+87, 1011);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+14; --エンドフェイズのフレーム数を置き換える


setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 1,    40, -40,   0);
setMoveKey( SP_dodge+9, 1,  50,  -40,   0);
setMoveKey(   SP_dodge+10,   1,    60, -40,   0);


endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5+140;
entryFade( spep_6-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 球投げ(80F)　90からへらす
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
tamanage = entryEffect( spep_6, SP_06x, 0x00, -1, 0, 0, 0); 
setEffMoveKey( spep_6, tamanage, 0, 0, 0);
setEffScaleKey( spep_6, tamanage, 1, 1);
setEffAlphaKey( spep_6, tamanage, 255);
setEffAlphaKey( spep_6+80, tamanage, 255);
setEffAlphaKey( spep_6+81, tamanage, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 80, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_6, ryusen6, 1.8, 1.4);
setEffRotateKey( spep_6, ryusen6, -70);
setEffRotateKey( spep_6+40, ryusen6, -70);
setEffRotateKey( spep_6+41, ryusen6, 80);
setEffRotateKey( spep_6+80, ryusen6, 80);

-- ** 音 ** --

playSe( spep_6+14, SE_06);
playSe( spep_6+42, SE_07);

-- ** 敵の動き　** --
setDisp(spep_6, 1, 1);
changeAnime( spep_6, 1, 106);  --あおむけ
setShakeChara(spep_6, 1, 20, 10);
setShakeChara(spep_6+20, 1, 20, 5);
setScaleKey(spep_6,1,1.3,1.3);--最初
setMoveKey(  spep_6,  1,  -100,  -400, 0);--最初
setRotateKey(  spep_6,  1,  -40);--あおむけかくど

setMoveKey(  spep_6+10,  1,  0,  -100, 0);--最初
setRotateKey(  spep_6+10,  1,  -40);--あおむけかくど
setRotateKey(  spep_6+14,  1,  -30);--あおむけかくど

setMoveKey(  spep_6+40,  1,  30,  -30, 0);--最初
setRotateKey(  spep_6+40,  1,  -20);--あおむけかくど
setScaleKey(spep_6+41,1,1.3,1.3);--最初
setDisp(spep_6+41, 1, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+37, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



-- ** 次の準備 ** --
spep_7 = spep_6+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 手前ツッコミ2 (70F)　
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 70, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
tossin = entryEffect( spep_7, SP_07, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, tossin, -1, 1);
setEffAlphaKey( spep_7, tossin, 255);


-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 70, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey( spep_7, shuchusen7, 0);



-- ** 音 ** --
playSe( spep_7+2, 19);

-- ** 次の準備 ** --
spep_8 = spep_7+70;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 下パンチ手前(240F)　
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 240, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
pantimae = entryEffect( spep_8, SP_08x, 0x100, -1, 0, 0, 0);   
setEffScaleKey( spep_8, pantimae, -1, 1);
setEffAlphaKey( spep_8, pantimae, 255);

-- ** 流線(横) ** --
ryusen8 = entryEffectLife( spep_8, 920, 240, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_8, ryusen8, 1.8, 1.4);
setEffRotateKey( spep_8, ryusen8, 90);
--setEffAlphaKey( spep_8, ryusen8, 160);
setEffAlphaKey( spep_8, ryusen8, 255);

-- ** エフェクト等 ** --
pantiusiro = entryEffect( spep_8, SP_09x, 0x80, -1, 0, 0, 0);   
setEffScaleKey( spep_8, pantiusiro, -1, 1);
setEffAlphaKey( spep_8, pantiusiro, 255);



-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+90, 906, 150, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_8+90, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8+90, shuchusen8, 2.0, 2.0);
setEffAlphaKey( spep_8+90, shuchusen8, 255);
setEffRotateKey( spep_8+90, shuchusen8, 0);

-- ** 音 ** --
playSe( spep_8+16, 9);
playSe( spep_8+52, SE_09);
playSe( spep_8+92, SE_10);


-- ** 敵の動き　** --
setDisp(spep_8, 1, 1);
changeAnime( spep_8, 1, 108);   --くの字
setRotateKey(  spep_8,  1,  90);--かくど
setScaleKey(spep_8,1,1.7,1.7);--最初

setMoveKey(  spep_8,  1,  0,  600, 0);--最初

setMoveKey(  spep_8+10,  1,  0,  -600, 0);--最初
setMoveKey(  spep_8+10,  1,  0,  -2000, 0);--最初
setDisp(spep_8+11, 1, 0);

setDisp(spep_8+43, 1, 1);
changeAnime( spep_8+43, 1, 108);   --くの字
setRotateKey(  spep_8+43,  1,  90);--かくど
setScaleKey(spep_8+43,1,1.7,1.7);--最初
setMoveKey(  spep_8+43,  1,  0,  400, 0);--最初


setMoveKey(  spep_8+49,  1,  0,  -50, 0);--最後

setScaleKey(spep_8+50,1,1.7,1.7);--最後
setMoveKey(  spep_8+50,  1,  0,  -250, 0);--最後
setScaleKey(spep_8+51,1,1.4,1.4);--最後

setScaleKey(spep_8+86,1,1.2,1.2);--最後
setMoveKey(  spep_8+80,  1,  0,  -230, 0);--最後
setMoveKey(  spep_8+86,  1,  0,  -230, 0);--最後
setRotateKey(  spep_8+86,  1,  90);--かくど

setShakeChara(spep_8+50, 1,36,20); 

setDisp(spep_8+87, 1, 0);

-- ** ホワイトフェード ** --
entryFade( spep_8+47, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_8+84, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctDogown = entryEffectLife( spep_8+50, 10018, 34, 0x100, -1, 0, 0, 300); -- ドゴォン

setEffShake( spep_8+50, ctDogown, 32, 20);
setEffAlphaKey( spep_8+50, ctDogown, 255);
setEffAlphaKey( spep_8+76, ctDogown, 255);
setEffAlphaKey( spep_8+84, ctDogown, 0);
setEffScaleKey( spep_8+50, ctDogown, 2.0, 2.0);
setEffScaleKey( spep_8+74, ctDogown, 3.8, 3.8);
setEffScaleKey( spep_8+84, ctDogown, 3.8, 3.8);
setEffRotateKey( spep_8+50, ctDogown, 0);
setEffRotateKey( spep_8+84, ctDogown, 0);


-- ダメージ表示
dealDamage( spep_8+90);
entryFade( spep_8+210, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+220);
end


