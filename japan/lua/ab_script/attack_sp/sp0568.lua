--1017520_孫悟天(少年期)_かめはめ波

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

SP_01 = 100000
SP_02 = 100001
SP_03 = 100002

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0, -54,   0);
setMoveKey(   6,   0,    0, -54,   0);
setScaleKey(  0,   0,  1.5, 1.5 );
setScaleKey(  1,   0,  1.5, 1.5 );
setScaleKey(  2,   0,  1.5, 1.5 );
setScaleKey(  3,   0,  1.5, 1.5 );
setScaleKey(  4,   0,  1.5, 1.5 );
setScaleKey(  5,   0,  1.5, 1.5 );
setScaleKey(  6,   0,  1.5, 1.5 );
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
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

changeAnime( spep_0 + 30, 0, 17);						-- 溜め!
setShakeChara( spep_0 + 30, 0, 40, 5);
setMoveKey(   7,   0,    0, -54,   0);
setMoveKey(   68,   0,    0, -54,   0);
setScaleKey( spep_0 + 7,  0, 1.5, 1.5);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 29, 0, 1.5, 1.5);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 30, 0, 1.4, 1.4);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 68, 0, 1.4, 1.4);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setRotateKey( 7,   0,  0 );
setRotateKey( 68,   0,  0 );

-- ** エフェクト等 ** --
--気を貯める
aura1501 = entryEffect( spep_0 + 30, 1501, 0x80, -1, 0, 0, 0);    				-- 溜めエフェクト1キャラ後用
setEffMoveKey( spep_0 + 30, aura1501, 0, 0);
setEffMoveKey( spep_0 + 52, aura1501, 0, 0);
setEffScaleKey( spep_0 + 30, aura1501, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1501, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1501, 255);
setEffAlphaKey( spep_0 + 52, aura1501, 255);
setEffRotateKey( spep_0 + 30, aura1501, 0);
setEffRotateKey( spep_0 + 52, aura1501, 0);

aura1500 = entryEffect( spep_0 + 30, 1500, 0x100, -1, 0, 0, 0);    				-- 溜めエフェクト1キャラ前用(黒い集中線)
setEffMoveKey( spep_0 + 30, aura1500, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1500, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1500, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1500, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1500, 255);
setEffAlphaKey( spep_0 + 52, aura1500, 255);
setEffRotateKey( spep_0 + 30, aura1500, 0);
setEffRotateKey( spep_0 + 52, aura1500, 0);


aura = entryEffectLife( spep_0 + 30, 311, 40, 0x80, 0, -1, 0, -110); -- オーラ
setEffMoveKey(  spep_0 + 30,  aura,  0,  -110);
setEffMoveKey(  spep_0 + 70,  aura,  0,  -110);
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5);
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5);
setEffAlphaKey(  spep_0 + 30, aura, 255 );
setEffAlphaKey(  spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );


-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0x100, -1, 0, 0, 200);		-- ズズンッ
setEffShake( spep_0 + 30, ctzuzun, 40, 7);
setEffMoveKey( spep_0 + 30,  ctzuzun,  0,  200);
setEffMoveKey( spep_0 + 70,  ctzuzun,  0,  200);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);
setEffAlphaKey( spep_0 + 30, ctzuzun, 255);
setEffAlphaKey( spep_0 + 50, ctzuzun, 255);
setEffAlphaKey( spep_0 + 70, ctzuzun, 0);
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 60, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_0 + 30, SE_01);												-- SE:気を貯める


--次の準備
spep_1 = spep_0 + 70;


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_1 + 0, 0, 30);							-- 溜め
setMoveKey(  spep_1 + 0,    0,    0, -54,   0);
setMoveKey(  spep_1 + 98,   0,    0, -54,   0);
setScaleKey( spep_1 + 0,	0,  1.7, 1.7);
setScaleKey( spep_1 + 98,   0,  1.7, 1.7);
setRotateKey(spep_1 + 0,    0,  0 );
setRotateKey(spep_1 + 98,   0,  0 );

-- ** エフェクト等 ** --
aura1503 = entryEffect(  spep_1 + 0,   1503,   0x80,  -1,  0,  0,  0); 				-- eff_004 (気)
setEffMoveKey( spep_1 + 0, aura1503, 0, 0, 0);
setEffMoveKey( spep_1 + 50, aura1503, 0, 0, 0);
setEffScaleKey( spep_1 + 0, aura1503, 1.0, 1.0);
setEffScaleKey( spep_1 + 50, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1 + 0, aura1503, 255);
setEffAlphaKey( spep_1 + 50, aura1503, 255);
setEffRotateKey( spep_1 + 0, aura1503, 0);
setEffRotateKey( spep_1 + 50, aura1503, 0);

aura1502 = entryEffect(  spep_1 + 0,   1502,   0x100,     -1,  0,  0,  0); 				-- eff_003 (気)
setEffMoveKey( spep_1 + 0, aura1502, 0, 0, 0);
setEffMoveKey( spep_1 + 50, aura1502, 0, 0, 0);
setEffScaleKey( spep_1 + 0, aura1502, 1.0, 1.0);
setEffScaleKey( spep_1 + 50, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1 + 0, aura1502, 255);
setEffAlphaKey( spep_1 + 50, aura1502, 255);
setEffRotateKey( spep_1 + 0, aura1502, 0);
setEffRotateKey( spep_1 + 50, aura1502, 0);


kame_hand = entryEffect( spep_1 + 0, SP_01, 0x40,      0,  300, 0,  0);   			-- 手のカメハメ波部
setEffMoveKey( spep_1 + 0, kame_hand, 0, 0, 0);
setEffMoveKey( spep_1 + 60, kame_hand, 0, 0, 0);
setEffScaleKey( spep_1 + 0 , kame_hand, 0.5, 0.5);
setEffScaleKey( spep_1 + 60 , kame_hand, 0.5, 0.5);
setEffAlphaKey( spep_1 + 0, kame_hand, 255);
setEffAlphaKey( spep_1 + 60, kame_hand, 255);
setEffRotateKey( spep_1 + 0, kame_hand, 0);
setEffRotateKey( spep_1 + 60, kame_hand, 0);

aura2 = entryEffectLife(  spep_1 + 0,   311, 100, 0x80, 0, -1,  0,  -110); -- オーラ
setShakeChara(   spep_1 + 0,	0,	100, 5);
setEffMoveKey(   spep_1 + 0,	aura2, 0,  -110);
setEffMoveKey(   spep_1 + 100,	aura2, 0,  -110);
setEffScaleKey(  spep_1 + 0,	aura2, 1.5, 1.5);
setEffScaleKey(	 spep_1 + 100,	aura2, 1.5, 1.5);
setEffAlphaKey(  spep_1 + 0,	aura2, 255 );
setEffAlphaKey(  spep_1 + 100,	aura2, 255 );
setEffRotateKey( spep_1 + 0,	aura2, 0 );
setEffRotateKey( spep_1 + 100,	aura2, 0 );

-- ** 顔カットイン ** --
speff = entryEffect(  spep_1 + 0,   1504,   0x100,     -1,  0,  0,  0);	-- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);										-- カットイン差し替え
speff = entryEffect(  spep_1 + 0,   1505,   0x100,     -1,  0,  0,  0);	-- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);										-- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1 + 12, 190006, 74, 0x100, -1, 0, -9.9, 521.8);    -- ゴゴゴ・・・
setEffShake( spep_1 + 12, ctgogo, 68, 10);
setEffMoveKey(  spep_1 + 12,  ctgogo,  -9.9,  521.8);
setEffMoveKey(  spep_1 + 84,  ctgogo,  -9.9,  515.5);
setEffMoveKey(  spep_1 + 86,  ctgogo,  -9.9,  515.5);
setEffScaleKey( spep_1 + 12, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_1 + 78, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 80, ctgogo, 1.00, 1.00 );
setEffScaleKey( spep_1 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 84, ctgogo, 1.69, 1.69 );
setEffScaleKey( spep_1 + 86, ctgogo, 1.69, 1.69 );
setEffAlphaKey(  spep_1 + 12, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 76, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 78, ctgogo, 191 );
setEffAlphaKey(  spep_1 + 80, ctgogo, 128 );
setEffAlphaKey(  spep_1 + 82, ctgogo, 64 );
setEffAlphaKey(  spep_1 + 86, ctgogo, 0 );
setEffRotateKey(  spep_1 + 12,  ctgogo,  0);
setEffRotateKey(  spep_1 + 86,  ctgogo,  0);

-- ** ホワイトフェード ** --
entryFade( spep_1 + 90 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); 		-- white fade

-- ** 音 ** --
playSe( spep_1 + 0, SE_03);												-- SE:かめはめ波　溜め(20F間隔)
playSe( spep_1 + 10, SE_04);											-- SE:カットイン

--次の準備
spep_2 = spep_1 + 100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);		-- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         	-- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         	-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); 	-- white fade

-- ** 音 ** --
playSe( spep_2 + 0, SE_05);											-- SE:カットイン攻撃

--次の準備
spep_3 = spep_2 + 90;


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3 + 0, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara( spep_3 + 0, 0, 60, 10);
setMoveKey(  spep_3 + 0,	0,	-600,  0,   0);
setMoveKey(  spep_3 + 1,	0,	-600,  0,   0);
setMoveKey(  spep_3 + 10,	0,	-100,  0,   0);
setMoveKey(  spep_3 + 40,	0,	-100,  0,   0);-- 途中からカメハメハが伸びる
setMoveKey(  spep_3 + 48,	0,	-1100,  0,   0);
setScaleKey( spep_3 + 0,	0,	1.0, 1.0 );
setScaleKey( spep_3 + 110,	0,	1.0, 1.0 );
setRotateKey( spep_3 + 0,	0,	0 );
setRotateKey( spep_3 + 110,	0,	0 );


-- ** エフェクト等 ** --
kamehame_beam = entryEffectLife( spep_3 + 0, SP_02, 110, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep_3 + 0, kamehame_beam, 0, 0);
setEffMoveKey( spep_3 + 110, kamehame_beam, 0, 0, 0);
setEffScaleKey( spep_3 + 0, kamehame_beam,  1.0, 1.0);
setEffScaleKey( spep_3 +110, kamehame_beam, 1.0, 1.0);
setEffAlphaKey( spep_3 + 0, kamehame_beam, 255);
setEffAlphaKey( spep_3 + 110, kamehame_beam, 255);
setEffRotateKey(spep_3 + 0 , kamehame_beam, 0);
setEffRotateKey(spep_3 + 110 , kamehame_beam, 0);

entryFadeBg( spep_3 + 0, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3 + 0, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3 + 40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


sen2 = entryEffectLife( spep_3 + 0, 920, 110, 0x80,  -1,  0,  0,  0);	-- 流線
setEffMoveKey(  spep_3 + 0, sen2, 0, 0);
setEffMoveKey(  spep_3 + 110, sen2, 0, 0);
setEffScaleKey( spep_3 + 0 , sen2, 1.0, 1.0);
setEffScaleKey( spep_3 + 110 , sen2, 1.0, 1.0);
setEffAlphaKey( spep_3 + 0, sen2, 255);
setEffAlphaKey( spep_3 + 110, sen2, 255);
setEffRotateKey(spep_3 + 0 , sen2, 0);
setEffRotateKey(spep_3 + 110 , sen2, 0);


shuchusen1 = entryEffectLife( spep_3 + 0 , 906, 50, 0x100,  -1, 0,  0,  0);	-- 集中線
setEffMoveKey(  spep_3 + 0, shuchusen1, 0, 0);
setEffMoveKey(  spep_3 + 50, shuchusen1, 0, 0);
setEffScaleKey( spep_3 + 0 , shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 , shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, shuchusen1, 2.0, 2.0);
setEffAlphaKey( spep_3 + 0, shuchusen1, 255);
setEffAlphaKey( spep_3 + 50, shuchusen1, 255);
setEffRotateKey(spep_3 + 0 , shuchusen1, 0);
setEffRotateKey(spep_3 + 50 , shuchusen1, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3 + 8, 10012, 32, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3 + 8, ctzuo, 32, 5);
setEffMoveKey( spep_3 + 8, ctzuo, 200, 300);
setEffMoveKey( spep_3 + 40, ctzuo, 200, 300);
setEffScaleKey(spep_3 + 8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3 + 12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3 + 32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3 + 40, ctzuo, 6.0, 6.0);
setEffAlphaKey(spep_3 + 8, ctzuo, 255);
setEffAlphaKey(spep_3 + 30, ctzuo, 255);
setEffAlphaKey(spep_3 + 40, ctzuo, 0);
setEffRotateKey(spep_3 + 0 , ctzuo, 0);
setEffRotateKey(spep_3 + 40 , ctzuo, 0);


-- ** ホワイトフェード ** --
entryFade( spep_3 + 104, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);	-- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_06);			-- SE:発射
SE0=playSe(  spep_3 + 40,  SE_07);	-- SE:のびる発射

--次の準備
spep_4 = spep_3 + 110;


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4 - 20; --エンドフェイズのフレーム数を置き換える

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

endPhase(SP_dodge+10);

-- ** ホワイトフェード ** --
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE0, 0 );

do return end
else end


------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 0, 0);

setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 98, 1, 0);
changeAnime( spep_4 + 0, 1, 104);											-- ガード
changeAnime( spep_4 + 66, 1, 108 );											--くの字
setShakeChara( spep_4 + 0, 1, 100, 20);
setMoveKey(  spep_4 + 0,    1,  235,  0,   0);
setMoveKey(  spep_4 + 1,    1,  235,  0,   0);
setMoveKey(  spep_4 + 30,    1,  120,  0,   0);
setMoveKey(  spep_4 + 66,    1,  120,  0,   0);
setMoveKey(  spep_4 + 80,    1,  170,  0,   0);
setMoveKey(  spep_4 + 98,    1,  170,  0,   0);
setScaleKey( spep_4 + 0,	1,  0.7, 0.7);
setScaleKey( spep_4 + 30,   1,  1.6, 1.6);
setScaleKey( spep_4 + 66,   1,  1.6, 1.6);
setScaleKey( spep_4 + 68, 	1,  1.5, 1.5);
setScaleKey( spep_4 + 98,	1,  1.4, 1.4);
setRotateKey( spep_4 + 0,  1,  0 );
setRotateKey( spep_4 + 98,  1,  0 );

setDamage( spep_4 + 82, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
kamehame_beam2 = entryEffect( spep_4 + 0, SP_03,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_4 + 0, kamehame_beam2, 84, 30 );
setEffMoveKey( spep_4 + 0, kamehame_beam2, 0, 0 , 0 );
setEffMoveKey( spep_4 +84, kamehame_beam2, 0, 0 , 0 );
setEffScaleKey(spep_4 + 0, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4 + 82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4 + 84, kamehame_beam2, 2.5, 2.5);
setEffAlphaKey( spep_4 + 0, kamehame_beam2, 255 );
setEffAlphaKey( spep_4 + 84, kamehame_beam2, 255 );
setEffRotateKey( spep_4 + 0, kamehame_beam2, 0 );
setEffRotateKey( spep_4 + 84, kamehame_beam2, 0 );

entryFadeBg( spep_4 + 0, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryuusen = entryEffectLife( spep_4 + 0, 921, 94, 0x80,  -1,  0,  0,  0);				-- 流線斜め
setEffShake( spep_4 + 0, ryuusen, 94, 20 );
setEffMoveKey( spep_4 + 0, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, ryuusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryuusen, 1.0, 1.0 );
setEffScaleKey( spep_4 + 94, ryuusen, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, ryuusen, 255 );
setEffAlphaKey( spep_4 + 94, ryuusen, 255 );
setEffRotateKey( spep_4 + 0, ryuusen, 0 );
setEffRotateKey( spep_4 + 94, ryuusen, 0 );

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4 + 0, 10014, 80, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4 + 0, ctzudo, 80, 20);
setEffMoveKey( spep_4 + 0, ctzudo, -100 , 255 );
setEffMoveKey( spep_4 + 80, ctzudo, -100 , 255 );
setEffScaleKey( spep_4 + 0, ctzudo, 2.4, 2.4);
setEffScaleKey( spep_4 + 80, ctzudo, 2.4, 2.4);
setEffAlphaKey(spep_4 + 0, ctzudo, 255);
setEffAlphaKey(spep_4 + 60, ctzudo, 255);
setEffAlphaKey(spep_4 + 80, ctzudo, 0);
setEffRotateKey(spep_4 + 0, ctzudo, 70);
setEffRotateKey(spep_4 + 80, ctzudo, 70);


-- ** ホワイトフェード ** --
entryFade( spep_4 + 84, 6,  10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4 + 20, SE_06);											-- SE:発射
playSe( spep_4 + 86, SE_09); 											-- SE:HIT

--次の準備
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5 + 0, 1, 1);

--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setShakeChara( spep_5 + 0, 1, 10, 5);

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 110, 1, 1080 );

--爆発エフェクト
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);
setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 96, ctGa, 3.9, 316.1 , 0 );
setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5 + 16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5 + 17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5 + 19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5 + 96, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5 + 14, ctGa, 255 );
setEffAlphaKey( spep_5 + 96, ctGa, 255 );
setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );
setEffRotateKey( spep_5 + 96, ctGa, -40 );

--集中線（白）
shuchusen_g = entryEffectLife( spep_5 + 2,  906, 108, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 2, shuchusen_g, 32, 25 );
setEffMoveKey( spep_5 + 2, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen_g, 0, 0 , 0 );
setEffScaleKey( spep_5 + 2, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 108, shuchusen_g, 1, 1 );
setEffAlphaKey( spep_5 + 90, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 92, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 94, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 96, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 98, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 100, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 102, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 104, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 106, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 108, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 2, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 108, shuchusen_g, 0 );

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5 + 14,  1657, 108, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusenkuro, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusenkuro, 0, 0 , 0 );
setEffScaleKey( spep_5 + 14, shuchusenkuro, 1, 1 );
setEffScaleKey( spep_5 + 108, shuchusenkuro, 1, 1 );
setEffAlphaKey( spep_5 + 14, shuchusenkuro, 255 );
setEffAlphaKey( spep_5 + 108, shuchusenkuro, 255 );
setEffRotateKey( spep_5 + 14, shuchusenkuro, 0 );
setEffRotateKey( spep_5 + 108, shuchusenkuro, 0 );

--ひび割れ
hibi = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 30, -130 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibi, 30, -130, 0 ); 
setEffMoveKey( spep_5 + 98, hibi, 30, -130, 0 ); 
setEffScaleKey( spep_5 + 2, hibi, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hibi, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 2, hibi, 0 );
setEffAlphaKey( spep_5 + 13, hibi, 0 );
setEffAlphaKey( spep_5 + 14, hibi, 255 );
setEffAlphaKey( spep_5 + 98, hibi, 255 );
setEffRotateKey( spep_5 + 2, hibi, 0 );
setEffRotateKey( spep_5 + 98, hibi, 0 );

-- ** 音 ** --
playSe( spep_5, SE_10);
playSe(  spep_5+2,  SE_11);  --ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

spep_0 = 0;

changeAnime( spep_0 + 30, 0, 17);						-- 溜め!
setShakeChara( spep_0 + 30, 0, 40, 5);
setMoveKey(   7,   0,    0, -54,   0);
setMoveKey(   68,   0,    0, -54,   0);
setScaleKey( spep_0 + 7,  0, 1.5, 1.5);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 29, 0, 1.5, 1.5);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 30, 0, 1.4, 1.4);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setScaleKey( spep_0 + 68, 0, 1.4, 1.4);					-- 超サイヤ人悟天のキャラサイズに合わせて調整
setRotateKey( 7,   0,  0 );
setRotateKey( 68,   0,  0 );


-- ** エフェクト等 ** --
--気を貯める
aura1501 = entryEffect( spep_0 + 30, 1501, 0x80, -1, 0, 0, 0);    				-- 溜めエフェクト1キャラ後用
setEffMoveKey( spep_0 + 30, aura1501, 0, 0);
setEffMoveKey( spep_0 + 52, aura1501, 0, 0);
setEffScaleKey( spep_0 + 30, aura1501, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1501, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1501, 255);
setEffAlphaKey( spep_0 + 52, aura1501, 255);
setEffRotateKey( spep_0 + 30, aura1501, 0);
setEffRotateKey( spep_0 + 52, aura1501, 0);

aura1500 = entryEffect( spep_0 + 30, 1500, 0x100, -1, 0, 0, 0);    				-- 溜めエフェクト1キャラ前用(黒い集中線)
setEffMoveKey( spep_0 + 30, aura1500, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1500, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1500, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1500, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1500, 255);
setEffAlphaKey( spep_0 + 52, aura1500, 255);
setEffRotateKey( spep_0 + 30, aura1500, 0);
setEffRotateKey( spep_0 + 52, aura1500, 0);


aura = entryEffectLife( spep_0 + 30, 311, 40, 0x80, 0, -1, 0, -110); -- オーラ
setEffMoveKey(  spep_0 + 30,  aura,  0,  -110);
setEffMoveKey(  spep_0 + 70,  aura,  0,  -110);
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5);
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5);
setEffAlphaKey(  spep_0 + 30, aura, 255 );
setEffAlphaKey(  spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );


-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0x100, -1, 0, 0, 200);		-- ズズンッ
setEffShake( spep_0 + 30, ctzuzun, 40, 7);
setEffMoveKey( spep_0 + 30,  ctzuzun,  0,  200);
setEffMoveKey( spep_0 + 70,  ctzuzun,  0,  200);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);
setEffAlphaKey( spep_0 + 30, ctzuzun, 255);
setEffAlphaKey( spep_0 + 50, ctzuzun, 255);
setEffAlphaKey( spep_0 + 70, ctzuzun, 0);
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 60, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_0 + 30, SE_01);												-- SE:気を貯める


--次の準備
spep_1 = spep_0 + 70;


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_1 + 0, 0, 30);							-- 溜め
setMoveKey(  spep_1 + 0,    0,    0, -54,   0);
setMoveKey(  spep_1 + 98,   0,    0, -54,   0);
setScaleKey( spep_1 + 0,	0,  1.7, 1.7);
setScaleKey( spep_1 + 98,   0,  1.7, 1.7);
setRotateKey(spep_1 + 0,    0,  0 );
setRotateKey(spep_1 + 98,   0,  0 );


-- ** エフェクト等 ** --
aura1503 = entryEffect(  spep_1 + 0,   1503,   0x80,  -1,  0,  0,  0); 				-- eff_004 (気)
setEffMoveKey( spep_1 + 0, aura1503, 0, 0, 0);
setEffMoveKey( spep_1 + 50, aura1503, 0, 0, 0);
setEffScaleKey( spep_1 + 0, aura1503, 1.0, 1.0);
setEffScaleKey( spep_1 + 50, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1 + 0, aura1503, 255);
setEffAlphaKey( spep_1 + 50, aura1503, 255);
setEffRotateKey( spep_1 + 0, aura1503, 0);
setEffRotateKey( spep_1 + 50, aura1503, 0);

aura1502 = entryEffect(  spep_1 + 0,   1502,   0x100,     -1,  0,  0,  0); 				-- eff_003 (気)
setEffMoveKey( spep_1 + 0, aura1502, 0, 0, 0);
setEffMoveKey( spep_1 + 50, aura1502, 0, 0, 0);
setEffScaleKey( spep_1 + 0, aura1502, 1.0, 1.0);
setEffScaleKey( spep_1 + 50, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1 + 0, aura1502, 255);
setEffAlphaKey( spep_1 + 50, aura1502, 255);
setEffRotateKey( spep_1 + 0, aura1502, 0);
setEffRotateKey( spep_1 + 50, aura1502, 0);

kame_hand = entryEffect( spep_1 + 0, SP_01, 0x40+0x80,      0,  300, 0,  0);   			-- 手のカメハメ波部
setEffMoveKey( spep_1 + 0, kame_hand, 0, 0, 0);
setEffMoveKey( spep_1 + 60, kame_hand, 0, 0, 0);
setEffScaleKey( spep_1 + 0 , kame_hand, 0.5, 0.5);
setEffScaleKey( spep_1 + 60 , kame_hand, 0.5, 0.5);
setEffAlphaKey( spep_1 + 0, kame_hand, 255);
setEffAlphaKey( spep_1 + 60, kame_hand, 255);
setEffRotateKey( spep_1 + 0, kame_hand, 0);
setEffRotateKey( spep_1 + 60, kame_hand, 0);

aura2 = entryEffectLife(  spep_1 + 0,   311, 100, 0x80, 0, -1,  0,  -110); -- オーラ
setShakeChara(   spep_1 + 0,	0,	100, 5);
setEffMoveKey(   spep_1 + 0,	aura2, 0,  -110);
setEffMoveKey(   spep_1 + 100,	aura2, 0,  -110);
setEffScaleKey(  spep_1 + 0,	aura2, 1.5, 1.5);
setEffScaleKey(	 spep_1 + 100,	aura2, 1.5, 1.5);
setEffAlphaKey(  spep_1 + 0,	aura2, 255 );
setEffAlphaKey(  spep_1 + 100,	aura2, 255 );
setEffRotateKey( spep_1 + 0,	aura2, 0 );
setEffRotateKey( spep_1 + 100,	aura2, 0 );


-- ** 顔カットイン ** --
--speff = entryEffect(  80,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え



-- 書き文字エントリー

ctgogo = entryEffectLife( spep_1 + 12, 190006, 74, 0x100, -1, 0, -9.9, 521.8);    -- ゴゴゴ・・・
setEffShake( spep_1 + 12, ctgogo, 68, 10);
setEffMoveKey(  spep_1 + 12,  ctgogo,  -9.9,  521.8);
setEffMoveKey(  spep_1 + 84,  ctgogo,  -9.9,  515.5);
setEffMoveKey(  spep_1 + 86,  ctgogo,  -9.9,  515.5);
setEffScaleKey( spep_1 + 12, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_1 + 78, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 80, ctgogo, -1.00, 1.00 );
setEffScaleKey( spep_1 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 84, ctgogo, -1.69, 1.69 );
setEffScaleKey( spep_1 + 86, ctgogo, -1.69, 1.69 );
setEffAlphaKey(  spep_1 + 12, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 76, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 78, ctgogo, 191 );
setEffAlphaKey(  spep_1 + 80, ctgogo, 128 );
setEffAlphaKey(  spep_1 + 82, ctgogo, 64 );
setEffAlphaKey(  spep_1 + 86, ctgogo, 0 );
setEffRotateKey(  spep_1 + 12,  ctgogo,  0);
setEffRotateKey(  spep_1 + 86,  ctgogo,  0);

-- ** ホワイトフェード ** --
entryFade( spep_1 + 90 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); 		-- white fade

-- ** 音 ** --
playSe( spep_1 + 0, SE_03);												-- SE:かめはめ波　溜め(20F間隔)
playSe( spep_1 + 10, SE_04);											-- SE:カットイン

--次の準備
spep_2 = spep_1 + 100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);		-- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         	-- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         	-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); 	-- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);	

--次の準備
spep_3 = spep_2 + 90;


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3 + 0, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara( spep_3 + 0, 0, 60, 10);
setMoveKey(  spep_3 + 0,	0,	-600,  0,   0);
setMoveKey(  spep_3 + 1,	0,	-600,  0,   0);
setMoveKey(  spep_3 + 10,	0,	-100,  0,   0);
setMoveKey(  spep_3 + 40,	0,	-100,  0,   0);-- 途中からカメハメハが伸びる
setMoveKey(  spep_3 + 48,	0,	-1100,  0,   0);
setScaleKey( spep_3 + 0,	0,	1.0, 1.0 );
setScaleKey( spep_3 + 110,	0,	1.0, 1.0 );
setRotateKey( spep_3 + 0,	0,	0 );
setRotateKey( spep_3 + 110,	0,	0 );


-- ** エフェクト等 ** --
kamehame_beam = entryEffectLife( spep_3 + 0, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep_3 + 0, kamehame_beam, 0, 0);
setEffMoveKey( spep_3 + 110, kamehame_beam, 0, 0, 0);
setEffScaleKey( spep_3 + 0, kamehame_beam,  1.0, 1.0);
setEffScaleKey( spep_3 +110, kamehame_beam, 1.0, 1.0);
setEffAlphaKey( spep_3 + 0, kamehame_beam, 255);
setEffAlphaKey( spep_3 + 110, kamehame_beam, 255);
setEffRotateKey(spep_3 + 0 , kamehame_beam, 0);
setEffRotateKey(spep_3 + 110 , kamehame_beam, 0);

entryFadeBg( spep_3 + 0, 0, 109, 0, 10, 10, 10, 180);		-- ベース暗め　背景
entryFadeBg( spep_3 + 0, 0, 40, 0, 230, 230, 230, 255);		-- 最初だけ明るい　背景
entryFadeBg( spep_3 + 40, 0, 2, 8, 100, 140, 250, 250);		-- 青い　背景

sen2 = entryEffectLife( spep_3 + 0, 920, 110, 0x80,  -1,  0,  0,  0);	-- 流線
setEffMoveKey(  spep_3 + 0, sen2, 0, 0);
setEffMoveKey(  spep_3 + 110, sen2, 0, 0);
setEffScaleKey( spep_3 + 0 , sen2, 1.0, 1.0);
setEffScaleKey( spep_3 + 110 , sen2, 1.0, 1.0);
setEffAlphaKey( spep_3 + 0, sen2, 255);
setEffAlphaKey( spep_3 + 110, sen2, 255);
setEffRotateKey(spep_3 + 0 , sen2, 0);
setEffRotateKey(spep_3 + 110 , sen2, 0);

shuchusen1 = entryEffectLife( spep_3 + 0 , 906, 50, 0x100,  -1, 0,  0,  0);	-- 集中線
setEffMoveKey(  spep_3 + 0, shuchusen1, 0, 0);
setEffMoveKey(  spep_3 + 50, shuchusen1, 0, 0);
setEffScaleKey( spep_3 + 0 , shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 , shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, shuchusen1, 2.0, 2.0);
setEffAlphaKey( spep_3 + 0, shuchusen1, 255);
setEffAlphaKey( spep_3 + 50, shuchusen1, 255);
setEffRotateKey(spep_3 + 0 , shuchusen1, 0);
setEffRotateKey(spep_3 + 50 , shuchusen1, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3 + 8, 10012, 32, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3 + 8, ctzuo, 32, 5);
setEffMoveKey( spep_3 + 8, ctzuo, 200, 300);
setEffMoveKey( spep_3 + 40, ctzuo, 200, 300);
setEffScaleKey(spep_3 + 8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3 + 12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3 + 32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3 + 40, ctzuo, 6.0, 6.0);
setEffAlphaKey(spep_3 + 8, ctzuo, 255);
setEffAlphaKey(spep_3 + 30, ctzuo, 255);
setEffAlphaKey(spep_3 + 40, ctzuo, 0);
setEffRotateKey(spep_3 + 0 , ctzuo, 0);
setEffRotateKey(spep_3 + 40 , ctzuo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 104, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);	-- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_06);			-- SE:発射
SE0=playSe(  spep_3 + 40,  SE_07);	-- SE:のびる発射

--次の準備
spep_4 = spep_3 + 110;

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4 - 20; --エンドフェイズのフレーム数を置き換える

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

endPhase(SP_dodge+10);

-- ** ホワイトフェード ** --
entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** 音 ** --
playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE0, 0 );

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 0, 0);

setDisp( spep_4 + 0, 1, 1);
setDisp( spep_4 + 98, 1, 0);
changeAnime( spep_4 + 0, 1, 104);											-- ガード
changeAnime( spep_4 + 66, 1, 108 );											--くの字
setShakeChara( spep_4 + 0, 1, 100, 20);
setMoveKey(  spep_4 + 0,    1,  235,  0,   0);
setMoveKey(  spep_4 + 1,    1,  235,  0,   0);
setMoveKey(  spep_4 + 30,    1,  120,  0,   0);
setMoveKey(  spep_4 + 66,    1,  120,  0,   0);
setMoveKey(  spep_4 + 80,    1,  170,  0,   0);
setMoveKey(  spep_4 + 98,    1,  170,  0,   0);
setScaleKey( spep_4 + 0,	1,  0.7, 0.7);
setScaleKey( spep_4 + 30,   1,  1.6, 1.6);
setScaleKey( spep_4 + 66,   1,  1.6, 1.6);
setScaleKey( spep_4 + 68, 	1,  1.5, 1.5);
setScaleKey( spep_4 + 98,	1,  1.4, 1.4);
setRotateKey( spep_4 + 0,  1,  0 );
setRotateKey( spep_4 + 98,  1,  0 );

setDamage( spep_4 + 82, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
kamehame_beam2 = entryEffect( spep_4 + 0, SP_03,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_4 + 0, kamehame_beam2, 84, 30 );
setEffMoveKey( spep_4 + 0, kamehame_beam2, 0, 0 , 0 );
setEffMoveKey( spep_4 +84, kamehame_beam2, 0, 0 , 0 );
setEffScaleKey(spep_4 + 0, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4 + 82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4 + 84, kamehame_beam2, 2.5, 2.5);
setEffAlphaKey( spep_4 + 0, kamehame_beam2, 255 );
setEffAlphaKey( spep_4 + 84, kamehame_beam2, 255 );
setEffRotateKey( spep_4 + 0, kamehame_beam2, 0 );
setEffRotateKey( spep_4 + 84, kamehame_beam2, 0 );

entryFadeBg( spep_4 + 0, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryuusen = entryEffectLife( spep_4 + 0, 921, 94, 0x80,  -1,  0,  0,  0);				-- 流線斜め
setEffShake( spep_4 + 0, ryuusen, 94, 20 );
setEffMoveKey( spep_4 + 0, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, ryuusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryuusen, 1.0, 1.0 );
setEffScaleKey( spep_4 + 94, ryuusen, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, ryuusen, 255 );
setEffAlphaKey( spep_4 + 94, ryuusen, 255 );
setEffRotateKey( spep_4 + 0, ryuusen, 0 );
setEffRotateKey( spep_4 + 94, ryuusen, 0 );

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4 + 0, 10014, 80, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4 + 0, ctzudo, 80, 20);
setEffMoveKey( spep_4 + 0, ctzudo, -100 , 255 );
setEffMoveKey( spep_4 + 80, ctzudo, -100 , 255 );
setEffScaleKey( spep_4 + 0, ctzudo, 2.4, 2.4);
setEffScaleKey( spep_4 + 80, ctzudo, 2.4, 2.4);
setEffAlphaKey(spep_4 + 0, ctzudo, 255);
setEffAlphaKey(spep_4 + 60, ctzudo, 255);
setEffAlphaKey(spep_4 + 80, ctzudo, 0);
setEffRotateKey(spep_4 + 0, ctzudo, 0);
setEffRotateKey(spep_4 + 80, ctzudo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4 + 84, 6,  10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4 + 20, SE_06);											-- SE:発射
playSe( spep_4 + 86, SE_09); 											-- SE:HIT

--次の準備
spep_5 = spep_4 + 100;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5, 1, 1);

--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );
setShakeChara( spep_5 + 0, 1, 10, 5);

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 110, 1, 1080 );

--爆発エフェクト
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);
setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 96, ctGa, 3.9, 316.1 , 0 );
setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5 + 16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5 + 17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5 + 19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5 + 96, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5 + 14, ctGa, 255 );
setEffAlphaKey( spep_5 + 96, ctGa, 255 );
setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );
setEffRotateKey( spep_5 + 96, ctGa, -40 );

--集中線（白）
shuchusen_g = entryEffectLife( spep_5 + 2,  906, 108, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 2, shuchusen_g, 32, 25 );
setEffMoveKey( spep_5 + 2, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusen_g, 0, 0 , 0 );
setEffScaleKey( spep_5 + 2, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 108, shuchusen_g, 1, 1 );
setEffAlphaKey( spep_5 + 90, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 92, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 94, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 96, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 98, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 100, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 102, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 104, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 106, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 108, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 2, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 108, shuchusen_g, 0 );

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5 + 14,  1657, 108, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusenkuro, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, shuchusenkuro, 0, 0 , 0 );
setEffScaleKey( spep_5 + 14, shuchusenkuro, 1, 1 );
setEffScaleKey( spep_5 + 108, shuchusenkuro, 1, 1 );
setEffAlphaKey( spep_5 + 14, shuchusenkuro, 255 );
setEffAlphaKey( spep_5 + 108, shuchusenkuro, 255 );
setEffRotateKey( spep_5 + 14, shuchusenkuro, 0 );
setEffRotateKey( spep_5 + 108, shuchusenkuro, 0 );

--ひび割れ
hibi = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 30, -130 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibi, 30, -130, 0 ); 
setEffMoveKey( spep_5 + 98, hibi, 30, -130, 0 ); 
setEffScaleKey( spep_5 + 2, hibi, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hibi, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 2, hibi, 0 );
setEffAlphaKey( spep_5 + 13, hibi, 0 );
setEffAlphaKey( spep_5 + 14, hibi, 255 );
setEffAlphaKey( spep_5 + 98, hibi, 255 );
setEffRotateKey( spep_5 + 2, hibi, 0 );
setEffRotateKey( spep_5 + 98, hibi, 0 );

-- ** 音 ** --
playSe( spep_5, SE_10);
playSe(  spep_5+2,  SE_11);  --ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);


end