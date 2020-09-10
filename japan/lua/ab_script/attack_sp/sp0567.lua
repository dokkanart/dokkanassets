--1017540_超サイヤ人トランクス(幼少期)_フィニッシュバスター


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

SE_12 = 09;

tyo = -40;
tyo2 = -60;

--味方
SP_01 = 152827;
SP_02 = 152828;
SP_03 = 152829;

--敵
SP_01x = 152827;
SP_02x = 152828;
SP_03x = 152829;


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 気溜め(70F)
------------------------------------------------------

spep_0 = 0;

--気を貯める
changeAnime(  spep_0 + 30, 0, 17);                    					-- 溜め
setMoveKey(   spep_0 + 7,   0,    0, -54,   0);
setMoveKey(   spep_0 + 70,   0,    0, -54,   0);
setScaleKey(  spep_0 + 7, 0, 1.5, 1.5);
setScaleKey(  spep_0 + 70, 0, 1.5, 1.5);
setRotateKey( spep_0 + 7,   0,  0 );
setRotateKey( spep_0 + 70,   0,  0 );

setShakeChara( spep_0 + 30, 0, 40, 5);

aura1501 = entryEffect( spep_0 + 30,   1501,   0x80, -1,  0,  0,  0);				-- eff_002
setEffMoveKey( spep_0 + 30, aura1501, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1501, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1501, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1501, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1501, 255);
setEffAlphaKey( spep_0 + 52, aura1501, 255);
setEffRotateKey( spep_0 + 30, aura1501, 0);
setEffRotateKey( spep_0 + 52, aura1501, 0);

aura1500 = entryEffect( spep_0 + 30,   1500,   0x100,    -1,  0,  0,  0);				-- eff_001
setEffMoveKey( spep_0 + 30, aura1500, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1500, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1500, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1500, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1500, 255);
setEffAlphaKey( spep_0 + 52, aura1500, 255);
setEffRotateKey( spep_0 + 30, aura1500, 0);
setEffRotateKey( spep_0 + 52, aura1500, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife( spep_0 + 30,   311, 40, 0x80,  0,  -1,  0,  -90);	-- オーラ
setEffMoveKey(  spep_0 + 30,  aura,  0,  -90);
setEffMoveKey(  spep_0 + 70,  aura,  0,  -90);
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5);
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5);
setEffAlphaKey(  spep_0 + 30, aura, 255 );
setEffAlphaKey(  spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0x100, -1, 0, 0, 200);		-- ズズンッ
setEffShake( spep_0 + 30, ctzuzun, 40, 7);
setEffMoveKey(  spep_0 + 30,  ctzuzun,  0,  200);
setEffMoveKey(  spep_0 + 70,  ctzuzun,  0,  200);
setEffAlphaKey( spep_0 + 30, ctzuzun, 255);
setEffAlphaKey( spep_0 + 50, ctzuzun, 255);
setEffAlphaKey( spep_0 + 70, ctzuzun, 0);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);

-- ** ホワイトフェード ** --
entryFade( spep_0 + 60, 6, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);    -- white fade

-- ** 音 ** --
playSe( spep_0 + 30, SE_01);

--次の準備
spep_1 = spep_0 + 70 + 2;


------------------------------------------------------
-- フィニッシュバスター溜め(100F)
------------------------------------------------------

changeAnime(  spep_1 + 0,   0, 130);										-- 溜め
setShakeChara(spep_1 + 0,   0,   90, 5);
setMoveKey(   spep_1 + 0,   0,    0, -20,   0);
setMoveKey(   spep_1 + 100, 0,    0, -20,   0);
setScaleKey(  spep_1 + 0,   0, -1.5, 1.5);							--味方側のみスケールだけ調整
setScaleKey(  spep_1 + 100, 0, -1.5, 1.5);							--味方側のみスケールだけ調整
setRotateKey( spep_1 + 0,   0,  0 );
setRotateKey( spep_1 + 100, 0,  0 );

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

aura1502 = entryEffect(  spep_1 + 0,   1502,   0,     -1,  0,  0,  0); 				-- eff_003 (気)
setEffMoveKey( spep_1 + 0, aura1502, 0, 0, 0);
setEffMoveKey( spep_1 + 50, aura1502, 0, 0, 0);
setEffScaleKey( spep_1 + 0, aura1502, 1.0, 1.0);
setEffScaleKey( spep_1 + 50, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1 + 0, aura1502, 255);
setEffAlphaKey( spep_1 + 50, aura1502, 255);
setEffRotateKey( spep_1 + 0, aura1502, 0);
setEffRotateKey( spep_1 + 50, aura1502, 0);

kame_hand = entryEffect( spep_1 + 0, SP_01, 0x100,      0,  -10, 190,  0);   			-- 手のカメハメ波部
setEffMoveKey(  spep_1 + 0,  kame_hand,  -10,  190);
setEffMoveKey(  spep_1 +94,  kame_hand,  -10,  190);
setEffScaleKey( spep_1 + 0 , kame_hand, 0.5, 0.5);
setEffScaleKey( spep_1 + 94 , kame_hand, 0.5, 0.5);
setEffAlphaKey( spep_1 + 0, kame_hand, 255);
setEffAlphaKey( spep_1 + 94, kame_hand, 255);
setEffRotateKey( spep_1 + 0, kame_hand, 0);
setEffRotateKey( spep_1 + 94, kame_hand, 0);

aura2 = entryEffectLife(  spep_1 + 0,   311, 100, 0x80,  0,  -1,  0,  -110);	-- オーラ
setEffMoveKey(  spep_1 + 0,  aura2,  0,  -110);
setEffMoveKey(  spep_1 + 100,  aura2,  0,  -110);
setEffScaleKey( spep_1 + 0, aura2, 1.5, 1.5);
setEffScaleKey( spep_1 + 100, aura2, 1.5, 1.5);
setEffAlphaKey( spep_1 + 0, aura2, 255 );
setEffAlphaKey( spep_1 + 100, aura2, 255 );
setEffRotateKey( spep_1 + 0, aura2, 0 );
setEffRotateKey( spep_1 + 100, aura2, 0 );

-- ** 顔カットイン ** --
speff = entryEffect(  spep_1 + 12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1 + 12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1 + 24, 190006, 74, 0x100, -1, 0, 105, 530);    -- ゴゴゴゴ
setEffMoveKey(  spep_1 + 24,  ctgogo,  105,  530);
setEffMoveKey(  spep_1 + 98,  ctgogo,  105,  530);
setEffScaleKey( spep_1 + 24, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_1 + 92, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 94, ctgogo, 1.00, 1.00 );
setEffScaleKey( spep_1 + 96, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 98, ctgogo, 1.69, 1.69 );
setEffAlphaKey(  spep_1 + 24, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 90, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 92, ctgogo, 191 );
setEffAlphaKey(  spep_1 + 94, ctgogo, 128 );
setEffAlphaKey(  spep_1 + 96, ctgogo, 64 );
setEffAlphaKey(  spep_1 + 98, ctgogo, 0 );
setEffRotateKey(  spep_1 + 24,  ctgogo,  0);
setEffRotateKey(  spep_1 + 94,  ctgogo,  0);

-- ** ホワイトフェード ** --
entryFade( spep_1 + 94, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);		-- white fade

-- ** 音 ** --
playSe( spep_1 + 2, SE_03);
playSe( spep_1 + 12, SE_04);

--次の準備
spep_2 = spep_1 + 100 + 2;


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff = entryEffect(  spep_2 + 0,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

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

-- ** エフェクト等 ** --


-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 2, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);

--次の準備
spep_3 = spep_2 + 90 + 2;

------------------------------------------------------
-- フィニッシュバスター発射(110F)
------------------------------------------------------
setDisp( spep_3 + 46, 0, 0);
changeAnime( spep_3 + 0,	0,	131);                                    -- フィニッシュバスター発射ポーズ
setMoveKey(  spep_3 + 0,	0,	0,  100,   0);
setMoveKey(  spep_3 + 10,	0,	0,  100,   0);
setMoveKey(  spep_3 + 30,	0,	-30,  100,   20);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 40,	0,	-150,  100,   50);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 40,	0,	-150,  100,   50);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 44,	0,	-550,  100,   80);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 45,	0,	-550,  100,   80);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 46,	0,	-550,  100,   80);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 47,	0,	-550,  100,   80);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 48,	0,	-550,  100,   80);				--味方側のみ気弾位置調整(敵側はそのまま)
setMoveKey(  spep_3 + 110,	0,	0 + 500,  -54,   0);			--味方側のみ気弾位置調整(敵側はそのまま)
setScaleKey(  spep_3 + 0,	0,	-0.9, 0.9);
setScaleKey(  spep_3 + 46,	0,	-0.9, 0.9);
setRotateKey( spep_3 + 0,	0,	0 );
setRotateKey( spep_3 + 46,	0,	0 );

setShakeChara( spep_3 + 46, 0, 54, 50);

-- ** エフェクト等 ** --
kamehame_beam = entryEffectLife( spep_3 + 0, SP_02, 110, 0x40,  0,  300,  0,  0);   -- フィニッシュバスター気弾
setEffMoveKey(	spep_3 + 0,		kamehame_beam, 0, 0 );
setEffMoveKey(	spep_3 + 46,	kamehame_beam, 0, 0, 0 );
setEffMoveKey(	spep_3 + 47,	kamehame_beam, 0, 0 );			--味方側のみ気弾位置調整(敵側はそのまま)
setEffMoveKey(	spep_3 + 48,	kamehame_beam, 0, 0 );			--味方側のみ気弾位置調整(敵側はそのまま)
setEffMoveKey(	spep_3 + 110,	kamehame_beam, 0 +500, 0 );
setEffScaleKey(	spep_3 + 0,		kamehame_beam, 1.0, 1.0);
setEffScaleKey(	spep_3 + 110,	kamehame_beam, 1.0, 1.0);
setEffAlphaKey(	spep_3 + 0,		kamehame_beam, 255 );
setEffAlphaKey(	spep_3 + 110,	kamehame_beam, 255 );
setEffRotateKey(spep_3 + 0,		kamehame_beam, 0 );
setEffRotateKey(spep_3 + 110,	kamehame_beam, 0 );

entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255);							-- ベース暗め　背景

sen2 = entryEffectLife( spep_3 + 0, 921, 110, 0x80,  -1,  0,  0,  0); 		-- 流線
setEffMoveKey( spep_3 + 0,		sen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110,	sen2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0,		sen2, 1.3, 1.3);
setEffScaleKey( spep_3 + 110,	sen2, 1.3, 1.3);
setEffAlphaKey( spep_3 + 0,		sen2, 255 );
setEffAlphaKey( spep_3 + 110,	sen2, 255 );
setEffRotateKey(spep_3 + 0,		sen2, 190);
setEffRotateKey(spep_3 + 110,	sen2, 190);

shuchusen = entryEffectLife( spep_3 + 0, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_3 + 0, shuchusen, 0, 0);
setEffMoveKey(  spep_3 + 50, shuchusen, 0, 0);
setEffScaleKey( spep_3 + 0, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3 + 40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, shuchusen, 2.0, 2.0);
setEffAlphaKey( spep_3 + 0, shuchusen1, 255);
setEffAlphaKey( spep_3 + 50, shuchusen1, 255);
setEffRotateKey(spep_3 + 0 , shuchusen1, 0);
setEffRotateKey(spep_3 + 50 , shuchusen1, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3 + 8, 10012, 40, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3 + 8, ctzuo, 32, 5);
setEffMoveKey( spep_3 + 0, ctzuo, 200, 300);
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
entryFade( spep_3 + 96, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 104, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);		-- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_07);
SE0=playSe(  spep_3 + 40,  SE_07);  --のびる発射


--次の準備
spep_4 = spep_3 + 110 + 2;

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4 - 20; --エンドフェイズのフレーム数を置き換える

pauseAll( SP_dodge, 67 );

setMoveKey(  SP_dodge+1, 0,   250,  -30,   0);
setMoveKey(  SP_dodge+8, 0,   250,  -30,   0);

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

-- ** ホワイトフェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

------------------------------------------------------
-- フィニッシュバスター迫る(90F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);										-- ガード
changeAnime( spep_4 + 62, 1, 108);									-- 敵吹っ飛ぶモーション
setMoveKey(  spep_4 +  0,	1,	300,	0,		0);
setMoveKey(  spep_4 + 60,	1,	250,	-30,	0);
setMoveKey(  spep_4 + 62, 1,  230,    -30,  0);
setMoveKey(  spep_4 + 64, 1,  250,    -30,  0);
setMoveKey(  spep_4 + 90, 1,  300,    0,  0);
setScaleKey( spep_4 + 0,	1,	1.0,	1.0);
setScaleKey( spep_4 + 60,	1,	2.5,	2.5);
setScaleKey( spep_4 + 62, 1,  2.5,	2.5);
setScaleKey( spep_4 + 90, 1,  0.4,	0.4);
setRotateKey(spep_4 + 0,	0,  0 );
setRotateKey(spep_4 + 60,	0,  0 );
setRotateKey( spep_4 + 0, 1,	0); 
setRotateKey( spep_4 + 90, 1, 0); 

setShakeChara( spep_4, 1, 90, 20);

-- ** エフェクト等 ** --
Semaru = entryEffectLife(spep_4,SP_03, 90,0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_4 + 0, Semaru, 0, 0, 0);
setEffMoveKey( spep_4 + 90, Semaru, 0, 0, 0);
setEffScaleKey( spep_4 + 0, Semaru, 1.0, 1.0);
setEffScaleKey( spep_4 + 90, Semaru, 1.0, 1.0);
setEffAlphaKey( spep_4 + 0, Semaru, 255);
setEffAlphaKey( spep_4 + 90, Semaru, 255);
setEffRotateKey( spep_4 + 0, Semaru, 0);
setEffRotateKey( spep_4 + 90, Semaru, 0);


entryFadeBg( spep_4, 0, 90, 0,0, 0, 0, 255);							-- ベース暗め　背景

sen7 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0);		-- 流線斜め
setEffMoveKey( spep_4 + 0, sen7, 0, 0, 0);
setEffMoveKey( spep_4 + 90, sen7, 0, 0, 0);
setEffScaleKey( spep_4 + 0, sen7, 1.25, 1.0);
setEffScaleKey( spep_4 + 90, sen7, 1.25, 1.0);
setEffAlphaKey( spep_4 + 0, sen7, 255);
setEffAlphaKey( spep_4 + 90, sen7, 255);
setEffRotateKey(spep_4 + 0, sen7, 0);
setEffRotateKey(spep_4 + 90, sen7, 0);


-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 90, 0x100, -1, 0, 0, 310);	-- ズドドッ
setEffShake(spep_4 + 0, ctZudodo, 90, 40);
setEffMoveKey( spep_4 + 0, ctZudodo, 0, 310, 0);
setEffMoveKey( spep_4 + 90, ctZudodo, 0, 310, 0);
setEffScaleKey( spep_4 + 0, ctZudodo, 3.3, 3.3);
setEffScaleKey( spep_4 + 90, ctZudodo, 3.3, 3.3);
setEffAlphaKey(spep_4 + 0, ctZudodo, 255);
setEffAlphaKey(spep_4 +90, ctZudodo, 255);
setEffRotateKey(spep_4 + 0, ctZudodo, 70);
setEffRotateKey(spep_4 + 90, ctZudodo, 70);


-- ** 音 ** --
playSe( spep_4, SE_06); 

-- ** ホワイトフェード ** --
entryFade( spep_4 +78, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4 +62, SE_09);

--次の準備
spep_5 = spep_4 + 90 + 2;


------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------

-- ** 爆発 ** --
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

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前
setShakeChara( spep_5 + 0, 1, 10, 5);

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

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


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );



else
--------------------------------------------------
---敵
--------------------------------------------------
------------------------------------------------------
-- 気溜め(70F)
------------------------------------------------------

spep_0 = 0;

--気を貯める
changeAnime(  spep_0 + 30, 0, 17);                    					-- 溜め
setMoveKey(   spep_0 + 7,   0,    0, -54,   0);
setMoveKey(   spep_0 + 70,   0,    0, -54,   0);
setScaleKey(  spep_0 + 7, 0, 1.5, 1.5);
setScaleKey(  spep_0 + 70, 0, 1.5, 1.5);
setRotateKey( spep_0 + 7,   0,  0 );
setRotateKey( spep_0 + 70,   0,  0 );

setShakeChara( spep_0 + 30, 0, 40, 5);

aura1501 = entryEffect( spep_0 + 30,   1501,   0x80, -1,  0,  0,  0);				-- eff_002
setEffMoveKey( spep_0 + 30, aura1501, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1501, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1501, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1501, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1501, 255);
setEffAlphaKey( spep_0 + 52, aura1501, 255);
setEffRotateKey( spep_0 + 30, aura1501, 0);
setEffRotateKey( spep_0 + 52, aura1501, 0);

aura1500 = entryEffect( spep_0 + 30,   1500,   0x100,    -1,  0,  0,  0);				-- eff_001
setEffMoveKey( spep_0 + 30, aura1500, 0, 0, 0);
setEffMoveKey( spep_0 + 52, aura1500, 0, 0, 0);
setEffScaleKey( spep_0 + 30, aura1500, 1.0, 1.0);
setEffScaleKey( spep_0 + 52, aura1500, 1.0, 1.0);
setEffAlphaKey( spep_0 + 30, aura1500, 255);
setEffAlphaKey( spep_0 + 52, aura1500, 255);
setEffRotateKey( spep_0 + 30, aura1500, 0);
setEffRotateKey( spep_0 + 52, aura1500, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife( spep_0 + 30,   311, 40, 0x80,  0,  -1,  0,  -90);	-- オーラ
setEffMoveKey(  spep_0 + 30,  aura,  0,  -90);
setEffMoveKey(  spep_0 + 70,  aura,  0,  -90);
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5);
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5);
setEffAlphaKey(  spep_0 + 30, aura, 255 );
setEffAlphaKey(  spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0x100, -1, 0, 0, 200);		-- ズズンッ
setEffShake( spep_0 + 30, ctzuzun, 40, 7);
setEffMoveKey(  spep_0 + 30,  ctzuzun,  0,  200);
setEffMoveKey(  spep_0 + 70,  ctzuzun,  0,  200);
setEffAlphaKey( spep_0 + 30, ctzuzun, 255);
setEffAlphaKey( spep_0 + 50, ctzuzun, 255);
setEffAlphaKey( spep_0 + 70, ctzuzun, 0);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);

-- ** ホワイトフェード ** --
entryFade( spep_0 + 60, 6, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);    -- white fade

-- ** 音 ** --
playSe( spep_0 + 30, SE_01);

--次の準備
spep_1 = spep_0 + 70 + 2;


------------------------------------------------------
-- フィニッシュバスター溜め(100F)
------------------------------------------------------

changeAnime( spep_1 + 0, 0, 30);                      					-- 溜め
setShakeChara(spep_1 + 0,   0,   90, 5);
setMoveKey(   spep_1 + 0,   0,    0, -20,   0);
setMoveKey(   spep_1 + 100, 0,    0, -20,   0);
setScaleKey(  spep_1 + 0,   0, 1.5, 1.5);							--味方側のみスケールだけ調整
setScaleKey(  spep_1 + 100, 0, 1.5, 1.5);							--味方側のみスケールだけ調整
setRotateKey( spep_1 + 0,   0,  0 );
setRotateKey( spep_1 + 100, 0,  0 );

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

kame_hand = entryEffect( spep_1 + 0, SP_01x, 0x100,      0,  -10, 190,  0);   			-- 手のカメハメ波部
setEffMoveKey(  spep_1 + 0,  kame_hand,  -10,  190);
setEffMoveKey(  spep_1 +94,  kame_hand,  -10,  190);
setEffScaleKey( spep_1 + 0 , kame_hand, 0.5, 0.5);
setEffScaleKey( spep_1 + 94 , kame_hand, 0.5, 0.5);
setEffAlphaKey( spep_1 + 0, kame_hand, 255);
setEffAlphaKey( spep_1 + 94, kame_hand, 255);
setEffRotateKey( spep_1 + 0, kame_hand, 0);
setEffRotateKey( spep_1 + 94, kame_hand, 0);

aura2 = entryEffectLife(  spep_1 + 0,   311, 100, 0x80,  0,  -1,  0,  -110);	-- オーラ
setEffMoveKey(  spep_1 + 0,  aura2,  0,  -110);
setEffMoveKey(  spep_1 + 100,  aura2,  0,  -110);
setEffScaleKey( spep_1 + 0, aura2, 1.5, 1.5);
setEffScaleKey( spep_1 + 100, aura2, 1.5, 1.5);
setEffAlphaKey( spep_1 + 0, aura2, 255 );
setEffAlphaKey( spep_1 + 100, aura2, 255 );
setEffRotateKey( spep_1 + 0, aura2, 0 );
setEffRotateKey( spep_1 + 100, aura2, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect(  82,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  82,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1 + 24, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ
setEffMoveKey(  spep_1 + 24,  ctgogo,  0,  530);
setEffMoveKey(  spep_1 + 94,  ctgogo,  0,  530);
setEffScaleKey( spep_1 + 24, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_1 + 92, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 94, ctgogo, -1.00, 1.00 );
setEffScaleKey( spep_1 + 96, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 98, ctgogo, -1.69, 1.69 );
setEffAlphaKey(  spep_1 + 24, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 90, ctgogo, 255 );
setEffAlphaKey(  spep_1 + 92, ctgogo, 191 );
setEffAlphaKey(  spep_1 + 94, ctgogo, 128 );
setEffAlphaKey(  spep_1 + 96, ctgogo, 64 );
setEffAlphaKey(  spep_1 + 98, ctgogo, 0 );
setEffRotateKey(  spep_1 + 24,  ctgogo,  0);
setEffRotateKey(  spep_1 + 94,  ctgogo,  0);

-- ** ホワイトフェード ** --
entryFade( spep_1 + 94, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);		-- white fade

-- ** 音 ** --
playSe( spep_1 + 2, SE_03);
playSe( spep_1 + 12, SE_04);

--次の準備
spep_2 = spep_1 + 100 + 2;


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** カードカットイン ** --
speff = entryEffect(  spep_2 + 0,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

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

-- ** エフェクト等 ** --


-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 2, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);

--次の準備
spep_3 = spep_2 + 90 + 2;

------------------------------------------------------
-- フィニッシュバスター発射(110F)
------------------------------------------------------
setDisp( spep_3 + 46, 0, 0);
changeAnime( spep_3 + 0, 0, 31);                                    -- フィニッシュバスター発射ポーズ
setMoveKey(  spep_3 + 0,	0,	0,  100,   0);
setMoveKey(  spep_3 + 10,	0,	0,  100,   0);
setMoveKey(  spep_3 + 30,	0,	-30,  100,   20);
setMoveKey(  spep_3 + 40,	0,	-150,  100,   50);
setMoveKey(  spep_3 + 40,	0,	-150,  100,   50);
setMoveKey(  spep_3 + 44,	0,	-550,  100,   80);
setMoveKey(  spep_3 + 45,	0,	-550,  100,   80);
setMoveKey(  spep_3 + 46,	0,	-650,  100,   80);
setMoveKey(  spep_3 + 110,	0,	0,  -54,   0);
setScaleKey(  spep_3 + 0,	0,	0.9, 0.9);
setScaleKey(  spep_3 + 46,	0,	0.9, 0.9);
setRotateKey( spep_3 + 0,	0,	0 );
setRotateKey( spep_3 + 46,	0,	0 );

setShakeChara( spep_3 + 46, 0, 54, 50);

kamehame_beam = entryEffectLife( spep_3 + 0, SP_02x, 110, 0x40,  0,  300,  0,  0);   -- フィニッシュバスター気弾
setEffMoveKey(	spep_3 + 0,		kamehame_beam, 0, 0 );
setEffMoveKey(	spep_3 + 46,	kamehame_beam, 0, 0 );
setEffMoveKey(	spep_3 + 50,	kamehame_beam, 0, 0 );							--味方側のみ気弾位置調整(敵はそのまま)
setEffMoveKey(	spep_3 + 110,	kamehame_beam, 0 + 500, 0 );							--味方側のみ気弾位置調整(敵はそのまま)
setEffScaleKey(	spep_3 + 0,		kamehame_beam, 1.0, 1.0);
setEffScaleKey(	spep_3 + 110,	kamehame_beam, 1.0, 1.0);
setEffAlphaKey(	spep_3 + 0,		kamehame_beam, 255 );
setEffAlphaKey(	spep_3 + 110,	kamehame_beam, 255 );
setEffRotateKey(spep_3 + 0,		kamehame_beam, 0 );
setEffRotateKey(spep_3 + 110,	kamehame_beam, 0 );

entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255);							-- ベース暗め　背景

sen2 = entryEffectLife( spep_3 + 0, 921, 110, 0x80,  -1,  0,  0,  0); 		-- 流線
setEffMoveKey( spep_3 + 0,		sen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110,	sen2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0,		sen2, 1.3, 1.3);
setEffScaleKey( spep_3 + 110,	sen2, 1.3, 1.3);
setEffAlphaKey( spep_3 + 0,		sen2, 255 );
setEffAlphaKey( spep_3 + 110,	sen2, 255 );
setEffRotateKey(spep_3 + 0,		sen2, 190);
setEffRotateKey(spep_3 + 110,	sen2, 190);

shuchusen = entryEffectLife( spep_3 + 0, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_3 + 0, shuchusen, 0, 0);
setEffMoveKey(  spep_3 + 50, shuchusen, 0, 0);
setEffScaleKey( spep_3 + 0, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3 + 40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3 + 50, shuchusen, 2.0, 2.0);
setEffAlphaKey( spep_3 + 0, shuchusen1, 255);
setEffAlphaKey( spep_3 + 50, shuchusen1, 255);
setEffRotateKey(spep_3 + 0 , shuchusen1, 0);
setEffRotateKey(spep_3 + 50 , shuchusen1, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3 + 8, 10012, 40, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3 + 8, ctzuo, 32, 5);
setEffMoveKey( spep_3 + 0, ctzuo, 200, 300);
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
entryFade( spep_3 + 96, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 104, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);		-- white fade

-- ** 音 ** --
playSe( spep_3 + 0, SE_07);
SE0=playSe(  spep_3 + 40,  SE_07);  --のびる発射


--次の準備
spep_4 = spep_3 + 110 + 2;

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 350; --エンドフェイズのフレーム数を置き換える

pauseAll( SP_dodge, 67 );

setMoveKey(  SP_dodge+1, 0,   250,  -30,   0);
setMoveKey(  SP_dodge+8, 0,   250,  -30,   0);

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

-- ** ホワイトフェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

------------------------------------------------------
-- フィニッシュバスター迫る(90F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);										-- ガード
changeAnime( spep_4 + 62, 1, 108);									-- 敵吹っ飛ぶモーション
setMoveKey(  spep_4 +  0,	1,	300,	0,		0);
setMoveKey(  spep_4 + 60,	1,	250,	-30,	0);
setMoveKey(  spep_4 + 62, 1,  230,    -30,  0);
setMoveKey(  spep_4 + 64, 1,  250,    -30,  0);
setMoveKey(  spep_4 + 90, 1,  300,    0,  0);
setScaleKey( spep_4 + 0,	1,	1.0,	1.0);
setScaleKey( spep_4 + 60,	1,	2.5,	2.5);
setScaleKey( spep_4 + 62, 1,  2.5,	2.5);
setScaleKey( spep_4 + 90, 1,  0.4,	0.4);
setRotateKey(spep_4 + 0,	0,  0 );
setRotateKey(spep_4 + 60,	0,  0 );
setRotateKey( spep_4 + 0, 1,	0); 
setRotateKey( spep_4 + 90, 1, 0); 

setShakeChara( spep_4, 1, 90, 20);

-- ** エフェクト等 ** --
Semaru = entryEffectLife(spep_4,SP_03x, 90,0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_4 + 0, Semaru, 0, 0, 0);
setEffMoveKey( spep_4 + 90, Semaru, 0, 0, 0);
setEffScaleKey( spep_4 + 0, Semaru, 1.0, 1.0);
setEffScaleKey( spep_4 + 90, Semaru, 1.0, 1.0);
setEffAlphaKey( spep_4 + 0, Semaru, 255);
setEffAlphaKey( spep_4 + 90, Semaru, 255);
setEffRotateKey( spep_4 + 0, Semaru, 0);
setEffRotateKey( spep_4 + 90, Semaru, 0);


entryFadeBg( spep_4, 0, 90, 0,0, 0, 0, 255);							-- ベース暗め　背景

sen7 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0);		-- 流線斜め
setEffMoveKey( spep_4 + 0, sen7, 0, 0, 0);
setEffMoveKey( spep_4 + 90, sen7, 0, 0, 0);
setEffScaleKey( spep_4 + 0, sen7, 1.25, 1.0);
setEffScaleKey( spep_4 + 90, sen7, 1.25, 1.0);
setEffAlphaKey( spep_4 + 0, sen7, 255);
setEffAlphaKey( spep_4 + 90, sen7, 255);
setEffRotateKey(spep_4 + 0, sen7, 0);
setEffRotateKey(spep_4 + 90, sen7, 0);


-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 90, 0x100, -1, 0, 0, 310);	-- ズドドッ
setEffShake(spep_4 + 0, ctZudodo, 90, 40);
setEffMoveKey( spep_4 + 0, ctZudodo, 0, 310, 0);
setEffMoveKey( spep_4 + 90, ctZudodo, 0, 310, 0);
setEffScaleKey( spep_4 + 0, ctZudodo, 3.3, 3.3);
setEffScaleKey( spep_4 + 90, ctZudodo, 3.3, 3.3);
setEffAlphaKey(spep_4 + 0, ctZudodo, 255);
setEffAlphaKey(spep_4 +90, ctZudodo, 255);
setEffRotateKey(spep_4 + 0, ctZudodo, 0);
setEffRotateKey(spep_4 + 90, ctZudodo, 0);


-- ** 音 ** --
playSe( spep_4, SE_06); 

-- ** ホワイトフェード ** --
entryFade( spep_4 +78, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4 +62, SE_09);

--次の準備
spep_5 = spep_4 + 90 + 2;


------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------
-- ** 爆発 ** --
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

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_5 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_5 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_5 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_5 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_5 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前
setShakeChara( spep_5 + 0, 1, 10, 5);

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

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


setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );


end
