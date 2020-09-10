print ("[lua]sp0127");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 102196;
SP_02 = 102197;
--SP_02 = 102061;
SP_03 = 102198;
SP_04 = 102199;
SP_05 = 102200;
SP_06 = 102201;

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

--if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

setVisibleUI(0, 0);

SP_ATK_0 = 0;		--気ダメ

--Card = 60;
--Card = SP_ATK_1+122;
--rn_02 = SP_ATK_1+100;		--タックル



--SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
--SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
--SP_ATK_7 = SP_ATK_6+110;		--直撃

SP_start = 8;



------------------------------------------------------
-- 最初の突進
------------------------------------------------------

if (_IS_PLAYER_SIDE_ == 1) then


entryFadeBg( 0, 10, 159, 2, 10, 10, 10, 200);       --ベース暗め　背景

kamehame_beam = entryEffect(15, SP_01, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);
entryEffect(  5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   0,   0,    0, -54,   -70);
setMoveKey(   1,   0,    0, -54,   -70);
setMoveKey(   15,   0,    0, -54,   0);
setMoveKey(   159,   0,    0,  -54,   0);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   0,   0, 2.0, 2.0);
setScaleKey(   15,   0, 2.0, 2.0);
--setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   159,   0, 1.5, 1.5);
--setScaleKey(   SP_ATK_0+109,   0, 6.0, 6.0);

--setMoveKey(  0,    1,  700,  0,   0);

setShakeChara( 0, 0, 139, 12);

--playSe( 37, 1033);
playSe( 10, 1018);

setShake(35, 13, 17);
--entryEffect( 35+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

--entryEffectLife( SP_ATK_0+39, 908, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( 1, 906, 159, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryFade( SP_ATK_0+29, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFade( 155, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

syunkan2=entryEffect( 130, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( 135, 0, 0);
playSe( 130, 37);

speff = entryEffect(  50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


SP_ATK_1 = SP_ATK_0+160;	--突進

--Card = SP_ATK_1+120;			--カード表示

--160

------------------------------------------------------------------------------------
-- 攻撃開始から光弾、そして分裂回避後に振り下ろし
------------------------------------------------------------------------------------
setDisp(160, 1, 1);

setDisp(160, 0, 1);
setDisp(327, 0, 0);

changeAnime( 160, 0, 1);


changeAnime( 160, 1, 101);
changeAnime( 203, 1, 108);
changeAnime( 293, 1, 117);
changeAnime( 305, 1, 103);
changeAnime( 325, 1, 111);
changeAnime( 381, 1, 108);
changeAnime( 455, 1, 107);

setAnimeLoop( 161, 1, 1);
setAnimeLoop( 204, 1, 1);
setAnimeLoop( 294, 1, 1);
setAnimeLoop( 306, 1, 1);
--setAnimeLoop( 326, 1, 1);
setAnimeLoop( 382, 1, 1);
setAnimeLoop( 456, 1, 1);

setScaleKey(   160,   0, 1.5, 1.5);
setScaleKey(   454,   0, 1.5, 1.5);
setScaleKey(   455,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   454,   1, 1.5, 1.5);
setScaleKey(   455,   1, 0.8, 0.8);
setScaleKey(   500,   1, 1.5, 1.5);

setMoveKey(   160,   0,    -700, -54,   0);
setMoveKey(   304,   0,    -700, -54,   0);
setMoveKey(   327,   0,    -150, -54,   0);
setMoveKey(   424,   0,    -150, -54,   0);


setMoveKey(   160,   1,    50, -54,   0);
setMoveKey(   203,   1,    50, -54,   0);
setMoveKey(   220,   1,    100, -54,   0);
setMoveKey(   220,   1,    100, -54,   0);
setMoveKey(   245,   1,    0, -54,   0);
setMoveKey(   248,   1,    0, -54,   0);
setMoveKey(   280,   1,    300, -54,   0);
setMoveKey(   305,   1,    300, -54,   0);
setMoveKey(   324,   1,    -50, -54,   0);
--setMoveKey(   347,   1,    -80, -54,   0);
setMoveKey(   380,   1,    -80, -54,   0);
setMoveKey(   381,   1,    0, 0,   0);
--setMoveKey(   382,   1,    0, 0,   0);
setMoveKey(   383,   1,    0, -50,   0);
setMoveKey(   395,   1,    0, -50,   0);
setMoveKey(   410,   1,    0, 50,   0);
setMoveKey(   454,   1,    0, -50,   0);
setMoveKey(  455,   1,  250,  -100,  0);
setMoveKey(  460,   1,  250,  -100,  0);
setMoveKey(  472,   1,  280,  -100,  0);
setMoveKey(  500,   1,  330,  -150,  0);
--setMoveKey(   501,   1,    0, -50,   0);


setRotateKey( 160,  1,  0 );
setRotateKey( 380,  1,  0 );
setRotateKey( 381,  1,  90 );
setRotateKey( 500,  1,  90 );

setShakeChara( 160, 1, 339, 5);


entryFadeBg( 160, 10, 459, 2, 10, 10, 10, 200);       --ベース暗め　背景

kamehame_beam1 = entryEffect(180, SP_02,  0x100,  -1,  300,  0,  -54);   -- 伸びるかめはめ波

ryu1 = entryEffectLife(160, 920, 220, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(160, ryu1, 1.0, 1.0);

ryu2 = entryEffectLife(381, 920, 73, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(382, ryu2, 2.0, 2.0);
setEffRotateKey(382, ryu2, 90);

sen2 = entryEffectLife( 455, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 455, sen2, -110);
setEffScaleKey( 455, sen2, 1.6, 1.6);

kamehame_beam2 = entryEffect(440, SP_03,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波

entryFade( 495, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 179; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( 188, 37);
playSe( 203,1009);
--playSe( 234, 1018);
playSe(248,1021);
playSe( 305, 1018);
playSe( 327, 37);
playSe( 373, 37);
playSe( 381,1009);
playSe( 455,1010);



------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp(500, 1, 0);

kame_hand = entryEffect( 500, SP_04, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(500, kame_hand, 100, 10);
--setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);
--setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
--setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife(  500, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( 500, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

--playSe( 791+15, SE_04);
playSe( 500, 1018);

SE000 = playSe( 510, SE_03);
setSeVolume( 510, SE_03, 70 );
stopSe( 524, SE000, 10 );

SE001 = playSe( 520, SE_03);
setSeVolume( 520, SE_03, 70 );
stopSe( 534, SE001, 10 );

SE002 = playSe( 530, SE_03);
setSeVolume( 530, SE_03, 70 );
stopSe( 544, SE002, 10 );

SE003 = playSe( 540, SE_03);
setSeVolume( 540, SE_03, 70 );
stopSe( 554, SE003, 10 );

SE004 = playSe( 550, SE_03);
setSeVolume( 550, SE_03, 70 );
stopSe( 564, SE004, 10 );

SE005 = playSe( 560, SE_03);
setSeVolume( 560, SE_03, 70 );
stopSe( 574, SE005, 10 );

SE006 = playSe( 570, SE_03);
setSeVolume( 570, SE_03, 70 );
stopSe( 584, SE006, 10 );

SE007 = playSe( 580, SE_03);
setSeVolume( 580, SE_03, 70 );
stopSe( 594, SE007, 10 );

SE008 = playSe( 590, SE_03);
setSeVolume( 590, SE_03, 70 );
stopSe( 600, SE008, 10 );

-- 書き文字エントリー
ct = entryEffectLife( 500, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(500, ct, 40, 8);
setEffScaleKey(500, ct, 1.4, 1.4);

entryFade( 595, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 600,   0, 1.5, 1.5);
setScaleKey( 600 ,   0, 1.0, 1.0);

playSe( 600 , SE_05);
speff = entryEffect(  600 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 600+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 694, SE_06);

--SP_ATK_4 = SP_ATK_3+90;



------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp(690, 1, 0);

kame_hand1 = entryEffect( 690, SP_05, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(690, kame_hand1, 100, 10);
--setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);
--setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
--setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife(  690, 906, 115, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( 690, 0, 115, 0, 0, 0, 0, 255);       --ベース暗い　背景

sen2 = entryEffectLife( 690, 921, 115, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 690, sen2, -150);
setEffScaleKey( 690, sen2, 1.6, 1.6);

playSe( 770, SE_06);

entryFade( 800, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------
setRotateKey( 805,  1,  0 );
setRotateKey( 905,  1,  0 );

setDisp( 790+15, 1, 0);
setDisp( 790+15, 1, 1);
setDisp( 880, 1, 0);
--setDisp( 612, 1, 0);
changeAnime( 791+15, 1, 118);                        -- 構え
setAnimeLoop( 791+16, 1, 1);

setMoveKey(  805,    1,  500,  -500,   -80);
setMoveKey(  825,    1,  200,  -150,   0);
 --setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  790+154+15,    1,  200, -150,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( 790+15,    1,  2.5, 2.5);
--setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 800+15,    1,  1.5, 1.5);
setScaleKey( 790+154+15,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 790+15, 1, 199, 10);

entryFadeBg( 790+15, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(526, sen5, 130);
--setEffScaleKey(526, sen5, 2.0, 2.0);

sen9 = entryEffectLife( 790+15, 921, 170, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(790+15, sen9, -120);
setEffScaleKey( 790+15, sen9, 2.0, 2.0);

shuchusen11 = entryEffectLife( 790+15, 906, 175, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 790+15, shuchusen11, 1.0, 1.0);
setEffScaleKey( 790+15, shuchusen11, 1.0, 1.0);

kamehame_beam5 = entryEffect(  790+15, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
--ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(612, ct, 32, 5);
--setEffAlphaKey(612, ct, 255);
--setEffAlphaKey(624, ct, 255);
--setEffAlphaKey(634, ct, 0);
--setEffScaleKey(612, ct, 0.0, 0.0);
--setEffScaleKey(616, ct, 1.3, 1.3);
--setEffScaleKey(626, ct, 1.3, 1.3);
--setEffScaleKey(634, ct, 6.0, 6.0);


entryFade( 875, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( 820, SE_07);
--playSe( 825, SE_06);
playSe( 882, SE_06);


kamehame_beamEX = entryEffect( 882, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( 889, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(889, ct, 99, 20);
setEffScaleKey( 889, ct, 0.1, 0.1);
setEffScaleKey( 886, ct, 2.4, 2.4);
setEffScaleKey( 893, ct, 2.8, 2.8);
setEffAlphaKey(889, ct, 255);
setEffAlphaKey(926, ct, 255);
setEffAlphaKey(941, ct, 0);

entryFade( 936, 6,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 941, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 941, sen2, 310);
setEffScaleKey( 941, sen2, 2.0, 2.0);

entryFadeBg( 941, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 941, 1553,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake(941, kamehame_beam5, 180, 8);
setEffScaleKey( 941, kamehame_beam5, 1.1, 1.1);

shuchusen = entryEffectLife( 941, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 941, shuchusen, 1.0, 1.0);
setEffScaleKey(  981, shuchusen, 1.0, 1.0);

--playSe( 733, 1018);
playSe( 951, SE_10);

-- ダメージ表示
dealDamage(961);


entryFade( 1037, 9,  10, 1, 8, 8, 8, 255);             -- black fade



endPhase(1047);


	
else

------------------------------------------------------
-- 敵だよ 
------------------------------------------------------

entryFadeBg( 0, 10, 159, 2, 10, 10, 10, 200);       --ベース暗め　背景

kamehame_beam = entryEffect(15, SP_01, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);
entryEffect(  5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   0,   0,    0, -54,   -70);
setMoveKey(   1,   0,    0, -54,   -70);
setMoveKey(   15,   0,    0, -54,   0);
setMoveKey(   159,   0,    0,  -54,   0);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   0,   0, 2.0, 2.0);
setScaleKey(   15,   0, 2.0, 2.0);
--setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   159,   0, 1.5, 1.5);
--setScaleKey(   SP_ATK_0+109,   0, 6.0, 6.0);

--setMoveKey(  0,    1,  700,  0,   0);

setShakeChara( 0, 0, 139, 12);

--playSe( 37, 1033);
playSe( 10, 1018);

setShake(35, 13, 17);
--entryEffect( 35+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

--entryEffectLife( SP_ATK_0+39, 908, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( 1, 906, 159, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryFade( SP_ATK_0+29, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFade( 155, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

syunkan2=entryEffect( 130, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( 135, 0, 0);
playSe( 130, 37);

--speff = entryEffect(  50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


SP_ATK_1 = SP_ATK_0+160;	--突進

--Card = SP_ATK_1+120;			--カード表示

--160

------------------------------------------------------------------------------------
-- 攻撃開始から光弾、そして分裂回避後に振り下ろし
------------------------------------------------------------------------------------
setDisp(160, 1, 1);

setDisp(160, 0, 1);
setDisp(327, 0, 0);

changeAnime( 160, 0, 1);


changeAnime( 160, 1, 101);
changeAnime( 203, 1, 108);
changeAnime( 293, 1, 117);
changeAnime( 305, 1, 103);
changeAnime( 325, 1, 111);
changeAnime( 381, 1, 108);
changeAnime( 455, 1, 107);

setAnimeLoop( 161, 1, 1);
setAnimeLoop( 204, 1, 1);
setAnimeLoop( 294, 1, 1);
setAnimeLoop( 306, 1, 1);
--setAnimeLoop( 326, 1, 1);
setAnimeLoop( 382, 1, 1);
setAnimeLoop( 456, 1, 1);

setScaleKey(   160,   0, 1.5, 1.5);
setScaleKey(   440,   0, 1.5, 1.5);

setScaleKey(   160,   1, 1.5, 1.5);
setScaleKey(   500,   1, 1.5, 1.5);

setMoveKey(   160,   0,    -700, -54,   0);
setMoveKey(   304,   0,    -700, -54,   0);
setMoveKey(   327,   0,    -150, -54,   0);
setMoveKey(   424,   0,    -150, -54,   0);


setMoveKey(   160,   1,    50, -54,   0);
setMoveKey(   203,   1,    50, -54,   0);
setMoveKey(   220,   1,    100, -54,   0);
setMoveKey(   220,   1,    100, -54,   0);
setMoveKey(   245,   1,    0, -54,   0);
setMoveKey(   248,   1,    0, -54,   0);
setMoveKey(   280,   1,    300, -54,   0);
setMoveKey(   305,   1,    300, -54,   0);
setMoveKey(   324,   1,    -50, -54,   0);
--setMoveKey(   347,   1,    -80, -54,   0);
setMoveKey(   380,   1,    -80, -54,   0);
setMoveKey(   381,   1,    0, 0,   0);
--setMoveKey(   382,   1,    0, 0,   0);
setMoveKey(   383,   1,    0, -50,   0);
setMoveKey(   395,   1,    0, -50,   0);
setMoveKey(   410,   1,    0, 50,   0);
setMoveKey(   454,   1,    0, -50,   0);
setMoveKey(  455,   1,  250,  -100,  -10);
setMoveKey(  460,   1,  250,  -100,  -10);
setMoveKey(  472,   1,  280,  -100,  -20);
setMoveKey(  500,   1,  280,  -150,  -50);
--setMoveKey(   501,   1,    0, -50,   0);


setRotateKey( 160,  1,  0 );
setRotateKey( 380,  1,  0 );
setRotateKey( 381,  1,  90 );
setRotateKey( 500,  1,  90 );

setShakeChara( 160, 1, 339, 5);


entryFadeBg( 160, 10, 459, 2, 10, 10, 10, 200);       --ベース暗め　背景

kamehame_beam1 = entryEffect(180, SP_02,  0x100,  -1,  300,  0,  -54);   -- 伸びるかめはめ波

ryu1 = entryEffectLife(160, 920, 220, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(160, ryu1, 1.0, 1.0);

ryu2 = entryEffectLife(381, 920, 73, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(382, ryu2, 2.0, 2.0);
setEffRotateKey(382, ryu2, 90);

sen2 = entryEffectLife( 455, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 455, sen2, -110);
setEffScaleKey( 455, sen2, 1.6, 1.6);

kamehame_beam2 = entryEffect(440, SP_03,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波

entryFade( 495, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 179; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( 188, 37);
playSe( 203,1009);
--playSe( 234, 1018);
playSe(248,1021);
playSe( 305, 1018);
playSe( 327, 37);
playSe( 373, 37);
playSe( 381,1009);
playSe( 455,1010);



------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp(500, 1, 0);

kame_hand = entryEffect( 500, SP_04, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(500, kame_hand, 100, 10);
--setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);
--setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
--setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife(  500, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( 500, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

--playSe( 791+15, SE_04);
playSe( 500, 1018);

SE000 = playSe( 510, SE_03);
setSeVolume( 510, SE_03, 70 );
stopSe( 524, SE000, 10 );

SE001 = playSe( 520, SE_03);
setSeVolume( 520, SE_03, 70 );
stopSe( 534, SE001, 10 );

SE002 = playSe( 530, SE_03);
setSeVolume( 530, SE_03, 70 );
stopSe( 544, SE002, 10 );

SE003 = playSe( 540, SE_03);
setSeVolume( 540, SE_03, 70 );
stopSe( 554, SE003, 10 );

SE004 = playSe( 550, SE_03);
setSeVolume( 550, SE_03, 70 );
stopSe( 564, SE004, 10 );

SE005 = playSe( 560, SE_03);
setSeVolume( 560, SE_03, 70 );
stopSe( 574, SE005, 10 );

SE006 = playSe( 570, SE_03);
setSeVolume( 570, SE_03, 70 );
stopSe( 584, SE006, 10 );

SE007 = playSe( 580, SE_03);
setSeVolume( 580, SE_03, 70 );
stopSe( 594, SE007, 10 );

SE008 = playSe( 590, SE_03);
setSeVolume( 590, SE_03, 70 );
stopSe( 600, SE008, 10 );

-- 書き文字エントリー
ct = entryEffectLife( 500, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(500, ct, 40, 8);
setEffScaleKey(500, ct, 1.4, 1.4);

entryFade( 595, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 600,   0, 1.5, 1.5);
setScaleKey( 600 ,   0, 1.0, 1.0);

playSe( 600 , SE_05);
speff = entryEffect(  600 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 600+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 694, SE_06);

--SP_ATK_4 = SP_ATK_3+90;



------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp(690, 1, 0);

kame_hand1 = entryEffect( 690, SP_05, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(690, kame_hand1, 100, 10);
--setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);
--setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
--setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife(  690, 906, 115, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( 690, 0, 115, 0, 0, 0, 0, 255);       --ベース暗い　背景

sen2 = entryEffectLife( 690, 921, 115, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 690, sen2, -150);
setEffScaleKey( 690, sen2, 1.6, 1.6);

playSe( 770, SE_06);

entryFade( 800, 4,  6, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------
setRotateKey( 805,  1,  0 );
setRotateKey( 905,  1,  0 );

setDisp( 790+15, 1, 0);
setDisp( 790+15, 1, 1);
setDisp( 880, 1, 0);
--setDisp( 612, 1, 0);
changeAnime( 791+15, 1, 118);                        -- 構え
setAnimeLoop( 791+16, 1, 1);

setMoveKey(  805,    1,  500,  -500,   -80);
setMoveKey(  825,    1,  200,  -150,   0);
 --setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  790+154+15,    1,  200, -150,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( 790+15,    1,  2.5, 2.5);
--setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 800+15,    1,  1.5, 1.5);
setScaleKey( 790+154+15,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 790+15, 1, 199, 10);

entryFadeBg( 790+15, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(526, sen5, 130);
--setEffScaleKey(526, sen5, 2.0, 2.0);

sen9 = entryEffectLife( 790+15, 921, 170, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(790+15, sen9, -120);
setEffScaleKey( 790+15, sen9, 2.0, 2.0);

shuchusen11 = entryEffectLife( 790+15, 906, 175, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 790+15, shuchusen11, 1.0, 1.0);
setEffScaleKey( 790+15, shuchusen11, 1.0, 1.0);

kamehame_beam5 = entryEffect(  790+15, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
--ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(612, ct, 32, 5);
--setEffAlphaKey(612, ct, 255);
--setEffAlphaKey(624, ct, 255);
--setEffAlphaKey(634, ct, 0);
--setEffScaleKey(612, ct, 0.0, 0.0);
--setEffScaleKey(616, ct, 1.3, 1.3);
--setEffScaleKey(626, ct, 1.3, 1.3);
--setEffScaleKey(634, ct, 6.0, 6.0);


entryFade( 875, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( 820, SE_07);
--playSe( 825, SE_06);
playSe( 882, SE_06);


kamehame_beamEX = entryEffect( 882, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( 889, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(889, ct, 99, 20);
setEffScaleKey( 889, ct, 0.1, 0.1);
setEffScaleKey( 886, ct, 2.4, 2.4);
setEffScaleKey( 893, ct, 2.8, 2.8);
setEffAlphaKey(889, ct, 255);
setEffAlphaKey(926, ct, 255);
setEffAlphaKey(941, ct, 0);

entryFade( 936, 6,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 941, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 941, sen2, 310);
setEffScaleKey( 941, sen2, 2.0, 2.0);

entryFadeBg( 941, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 941, 1553,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake(941, kamehame_beam5, 180, 8);
setEffScaleKey( 941, kamehame_beam5, 1.1, 1.1);

shuchusen = entryEffectLife( 941, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 941, shuchusen, 1.0, 1.0);
setEffScaleKey(  981, shuchusen, 1.0, 1.0);

--playSe( 733, 1018);
playSe( 951, SE_10);

-- ダメージ表示
dealDamage(961);


entryFade( 1037, 9,  10, 1, 8, 8, 8, 255);             -- black fade



endPhase(1055);


end
print ("[lua]sp0127 end");
