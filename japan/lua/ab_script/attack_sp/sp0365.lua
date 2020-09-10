--sp0365
--1011720 超サイヤ人トランクス(青年期) バーニングアタック

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150460;	 --ためる ef_001	120
SP_02 = 150461;	 --構え	ef_002	160
SP_03 = 150462;	 --放出	ef_003	120
SP_04 = 150463;	 --敵に玉が迫る	ef_004	80
SP_05 = 150464;	 --ef_001の反転	ef_005	120
SP_06 = 150465;	 --ef_002の反転	ef_006	160
SP_07 = 150466;	 --ef_003の反転	ef_007	120
SP_08 = 190003;  --ギャン

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

changeAnime( 0, 0, 0);-- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,   0,   0);
setMoveKey(   0,   1,    0,   0,   0);
setScaleKey(   0,   0, 0.8, 0.8);
setScaleKey(   0,   1, 1.0, 1.0);

------------------------------------------------------
-- SP_01 = 150460;	--ためる	ef_001	120 →105 影響下15F巻き
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

spep_1 = 0;
tame = entryEffectLife( spep_1, SP_01, 105, 0x80 , -1,  0,  0,  0);

speff = entryEffect(  spep_1+15,   1504,   0,     -1,  0,  0,  0);   --(カットイン)
setEffReplaceTexture( speff, 3, 2);                                    -- カットイン差し替え
speff = entryEffect(  spep_1+15,   1505,   0,     -1,  0,  0,  0);   --(セリフ)
setEffReplaceTexture( speff, 4, 5);                                    -- セリフ差し替え

playSe(15,SE_01);

setEffShake(spep_1,tame,105,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+15, 190006, 85, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_1+15, ctgogo, 80, 8);
setEffRotateKey( spep_1+15, ctgogo, 0);

setEffScaleKey( spep_1+15, ctgogo, 0.8, 0.8);
setEffAlphaKey( spep_1+15, ctgogo, 255);

setEffScaleKey( spep_1+80, ctgogo, 0.8, 0.8);
setEffAlphaKey( spep_1+80, ctgogo, 255);

setEffScaleKey( spep_1+100, ctgogo, 3.0, 3.0);
setEffAlphaKey( spep_1+100, ctgogo, 0);

-- 背景　--
entryFadeBg( spep_1, 0, 105, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_1, 906, 105, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( spep_1+97, 3,  6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_02 = 150461;	--構え	ef_002	160
------------------------------------------------------
spep_2 = spep_1+106;

kamae = entryEffectLife( spep_2, SP_02, 160, 0x80, -1,  0,  0,  0);
setEffShake(spep_2,kamae,160,10);

-- 文字 --
ctbaba = entryEffectLife( spep_2, 10023, 77, 0x100, -1, 0, 170, 320);    -- バババッ
setEffShake( spep_2, ctbaba, 77, 8);
setEffScaleKey( spep_2, ctbaba, 7.5, 7.5);
setEffRotateKey( spep_2, ctbaba, 20);
setEffAlphaKey( spep_2, ctbaba, 255);

setEffScaleKey( spep_2+10, ctbaba, 2.5, 2.5);
setEffRotateKey( spep_2+10, ctbaba, 20);
setEffAlphaKey( spep_2+10, ctbaba, 255);

setEffScaleKey( spep_2+77, ctbaba, 2.5, 2.5);
setEffRotateKey( spep_2+77, ctbaba, 20);
setEffAlphaKey( spep_2+77, ctbaba, 255);

playSe(spep_2+18,1003);
playSe(spep_2+36,1003);
playSe(spep_2+54,1003);
playSe(spep_2+72,1003);

ctba = entryEffectLife( spep_2+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( spep_2+78, ctba, 40, 8);
setEffScaleKey( spep_2+78, ctba, 1.0, 1.0);
setEffRotateKey( spep_2+78, ctba, 30);
setEffAlphaKey( spep_2+78, ctba, 255);

setEffScaleKey( spep_2+88, ctba, 1.0, 1.0);
setEffRotateKey( spep_2+88, ctba, 30);
setEffAlphaKey( spep_2+88, ctba, 255);

setEffScaleKey( spep_2+118, ctba, 4.0, 4.0);
setEffRotateKey( spep_2+118, ctba, 30);
setEffAlphaKey( spep_2+118, ctba, 30);

-- 背景　--
entryFadeBg( spep_2, 0, 160, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_2, 906, 160, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( spep_2+75, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+150, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
spep_3 = spep_2+160; --106+160

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);   -- カード差し替え
setEffReplaceTexture( speff, 5, 4);   -- 技名テクスチャ差し替え

entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--放出	ef_003	120
------------------------------------------------------
spep_4 = spep_3+90; --356
hou = entryEffectLife( spep_4, SP_03, 120,0x100, -1,  0,  0,  0);
setEffShake (spep_4,hou,120,10);

-- 文字 --
ctzuo = entryEffectLife( spep_4+44, 10012, 49, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( spep_4+44, ctzuo, 49, 12);
setEffScaleKey( spep_4+44, ctzuo, 0.6, 0.6);
setEffRotateKey( spep_4+44, ctzuo, 30);
setEffAlphaKey( spep_4+44, ctzuo, 255);

setEffMoveKey( spep_4+48, ctzuo, 180, 300);

setEffScaleKey( spep_4+48, ctzuo, 3.0, 3.0);
setEffRotateKey( spep_4+48, ctzuo, 30);
setEffAlphaKey( spep_4+48, ctzuo, 255);

setEffScaleKey( spep_4+75, ctzuo, 3.0, 3.0);
setEffRotateKey( spep_4+75, ctzuo, 30);
setEffAlphaKey( spep_4+75, ctzuo, 255);

setEffScaleKey( spep_4+93, ctzuo, 5.0, 5.0);
setEffRotateKey( spep_4+93, ctzuo, 30);
setEffAlphaKey( spep_4+93, ctzuo, 80);

-- 背景　--
entryFadeBg( spep_4, 0, 120, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_4, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( spep_4, syu, -90);
setEffScaleKey( spep_4, syu, 1.6, 1.6);

entryFade( spep_4+110, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_4+44, SE_06);
playSe(spep_4+93, SE_06);

------------------------------------------------------
--敵に玉が迫る	ef_004	80
-----------------------------------------------------
spep_5 = spep_4+120; --476=356+120

--敵キャラ右下構え（右下から徐々に現れる）
changeAnime(spep_5, 1, 102);
setDisp(spep_5, 1, 1);
setScaleKey(spep_5, 1, 2.0, 2.0);
setMoveKey(spep_5, 1, 600, -600 ,0);
setMoveKey(spep_5+20, 1, 250, -150 ,0);
setMoveKey(spep_5+54, 1, 250, -150 ,0);
setScaleKey(spep_5+54, 1,  2.0,  2.0);
setDisp(spep_5+54, 1, 0);

setShakeChara(spep_5,1,54,10);

-- 背景　--
entryFadeBg( spep_5, 0, 80, 0,  0, 0, 0, 220);          -- ベース暗め　背景

entryEffectLife( spep_5, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( spep_5, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( spep_5, syu, -130);
setEffScaleKey( spep_5, syu, 1.7, 1.7);
setEffAlphaKey( spep_5, syu, 255);

entryEffectLife( spep_5, SP_04, 80 ,0x80, -1,  0,  0,  0);

-- 文字 --
ctzudodo = entryEffectLife( spep_5, 10014, 55, 0x100, -1, 0, 200, 350);    -- ズドド
setEffShake(spep_5, ctzudodo, 55, 12);
setEffScaleKey(spep_5, ctzudodo, 3.0, 3.0);
setEffRotateKey(spep_5, ctzudodo, 70);
setEffAlphaKey( spep_5, ctzudodo, 255);


playSe( spep_5, SE_04);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 523; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- ギャン(100F)　
------------------------------------------------------
setDisp( spep_5+65, 1, 0);
playSe( spep_5+65, 1024);

entryFade( spep_5+65-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5+65, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5+65,   1, 1.6, 1.6);
setMoveKey(   spep_5+65,   1,    100, -100,   0);

gyan = entryEffect( spep_5+65,  SP_08, 0x100,-1,0,0,0);
setEffAlphaKey( spep_5+65,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5+65, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5+65, ct4, 255);
setEffScaleKey( spep_5+65, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+65+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5+65, ct4, 255);
setEffAlphaKey( spep_5+65+60, ct4, 0);
setEffShake( spep_5+65, ct4, 60, 10);
--setEffAlphaKey(spep_5+50, ct, 0);

spep_6 = spep_5+115; --初期476+115
entryFade( spep_6-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110)
------------------------------------------------------
setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);

setDamage( spep_6+17,  1, 0);  -- ダメージ振動等
setShake( spep_6+8,   6,15);
setShake( spep_6+14,  15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ctGa, 30, 10);
setEffRotateKey(spep_6+16, ctGa, -40);
setEffScaleKey(spep_6+16, ctGa, 4.0, 4.0);
setEffScaleKey(spep_6+17, ctGa, 2.0, 2.0);
setEffScaleKey(spep_6+18, ctGa, 2.6, 2.6);
setEffScaleKey(spep_6+19, ctGa, 4.0, 4.0);
setEffScaleKey(spep_6+20, ctGa, 2.6, 2.6);
setEffScaleKey(spep_6+21, ctGa, 3.8, 3.8);
setEffScaleKey(spep_6+101, ctGa, 3.8, 3.8);
setEffAlphaKey(spep_6+16, ctGa, 255);
setEffAlphaKey(spep_6+106, ctGa, 255);
setEffAlphaKey(spep_6+116, ctGa, 0);

playSe(spep_6+4, SE_11);

shuchusen = entryEffectLife( spep_6+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+17);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

else
	
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);

entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade

------------------------------------------------------
-- SP_01 = 150460;	--ためる	ef_001	120 →105 影響下15F巻き
------------------------------------------------------
setVisibleUI(0, 0);

spep_1 = 0;
tame = entryEffectLife( spep_1, SP_05, 105, 0x80 , -1,  0,  0,  0);

--[[
speff = entryEffect(  spep_1+15,   1504,   0,     -1,  0,  0,  0);   --(カットイン)
setEffReplaceTexture( speff, 3, 2);                                    -- カットイン差し替え
speff = entryEffect(  spep_1+15,   1505,   0,     -1,  0,  0,  0);   --(セリフ)
setEffReplaceTexture( speff, 4, 5);                                    -- セリフ差し替え
]]--

playSe(15,SE_01);

setEffShake(spep_1,tame,105,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+15, 190006, 85, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_1+15, ctgogo, 80, 8);
setEffRotateKey( spep_1+15, ctgogo, 0);

setEffScaleKey( spep_1+15, ctgogo, -0.8, 0.8);
setEffAlphaKey( spep_1+15, ctgogo, 255);

setEffScaleKey( spep_1+80, ctgogo, -0.8, 0.8);
setEffAlphaKey( spep_1+80, ctgogo, 255);

setEffScaleKey( spep_1+100, ctgogo, -3.0, 3.0);
setEffAlphaKey( spep_1+100, ctgogo, 0);

-- 背景　--
entryFadeBg( spep_1, 0, 105, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_1, 906, 105, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( spep_1+97, 3,  6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_02 = 150461;	--構え	ef_002	160
------------------------------------------------------
spep_2 = 106;

kamae = entryEffectLife( spep_2, SP_06, 160, 0x80, -1,  0,  0,  0);
setEffShake(spep_2,kamae,160,10);

-- 文字 --
ctbaba = entryEffectLife( spep_2, 10023, 77, 0x100, -1, 0, 170, 320);    -- バババッ
setEffShake( spep_2, ctbaba, 77, 8);
setEffScaleKey( spep_2, ctbaba, 7.5, 7.5);
setEffRotateKey( spep_2, ctbaba, 20);
setEffAlphaKey( spep_2, ctbaba, 255);

setEffScaleKey( spep_2+10, ctbaba, 2.5, 2.5);
setEffRotateKey( spep_2+10, ctbaba, 20);
setEffAlphaKey( spep_2+10, ctbaba, 255);

setEffScaleKey( spep_2+77, ctbaba, 2.5, 2.5);
setEffRotateKey( spep_2+77, ctbaba, 20);
setEffAlphaKey( spep_2+77, ctbaba, 255);

playSe(124,1003);
playSe(142,1003);
playSe(160,1003);
playSe(178,1003);

ctba = entryEffectLife( spep_2+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( spep_2+78, ctba, 40, 8);
setEffScaleKey( spep_2+78, ctba, 1.0, 1.0);
setEffRotateKey( spep_2+78, ctba, 30);
setEffAlphaKey( spep_2+78, ctba, 255);

setEffScaleKey( spep_2+88, ctba, 1.0, 1.0);
setEffRotateKey( spep_2+88, ctba, 30);
setEffAlphaKey( spep_2+88, ctba, 255);

setEffScaleKey( spep_2+118, ctba, 4.0, 4.0);
setEffRotateKey( spep_2+118, ctba, 30);
setEffAlphaKey( spep_2+118, ctba, 30);

-- 背景　--
entryFadeBg( spep_2, 0, 160, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_2, 906, 160, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( spep_2+75, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+150, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
spep_3 = 266; 

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);   -- カード差し替え
setEffReplaceTexture( speff, 5, 4);   -- 技名テクスチャ差し替え

entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--放出	ef_003	120
------------------------------------------------------
spep_4 = 356;
hou = entryEffectLife( spep_4, SP_07, 120,0x100, -1,  0,  0,  0);
setEffShake (spep_4,hou,120,10);

-- 文字 --
ctzuo = entryEffectLife( spep_4+44, 10012, 49, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( spep_4+44, ctzuo, 49, 12);
setEffScaleKey( spep_4+44, ctzuo, 0.6, 0.6);
setEffRotateKey( spep_4+44, ctzuo, 30);
setEffAlphaKey( spep_4+44, ctzuo, 255);

setEffMoveKey( spep_4+48, ctzuo, 180, 300);

setEffScaleKey( spep_4+48, ctzuo, 3.0, 3.0);
setEffRotateKey( spep_4+48, ctzuo, 30);
setEffAlphaKey( spep_4+48, ctzuo, 255);

setEffScaleKey( spep_4+75, ctzuo, 3.0, 3.0);
setEffRotateKey( spep_4+75, ctzuo, 30);
setEffAlphaKey( spep_4+75, ctzuo, 255);

setEffScaleKey( spep_4+93, ctzuo, 5.0, 5.0);
setEffRotateKey( spep_4+93, ctzuo, 30);
setEffAlphaKey( spep_4+93, ctzuo, 80);

-- 背景　--
entryFadeBg( spep_4, 0, 120, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( spep_4, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( spep_4, syu, -90);
setEffScaleKey( spep_4, syu, 1.6, 1.6);

entryFade( spep_4+110, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_4+44, SE_06);
playSe(spep_4+93, SE_06);

------------------------------------------------------
--敵に玉が迫る	ef_004	80
-----------------------------------------------------
spep_5 = 476;

--敵キャラ右下構え（右下から徐々に現れる）
changeAnime(spep_5, 1, 102);
setDisp(spep_5, 1, 1);
setScaleKey(spep_5, 1, 2.0, 2.0);
setMoveKey(spep_5, 1, 600, -600 ,0);
setMoveKey(spep_5+20, 1, 250, -150 ,0);
setMoveKey(spep_5+54, 1, 250, -150 ,0);
setScaleKey(spep_5+54, 1,  2.0,  2.0);
setDisp(spep_5+54, 1, 0);

setShakeChara(spep_5,1,54,10);

-- 背景　--
entryFadeBg( spep_5, 0, 80, 0,  0, 0, 0, 220);          -- ベース暗め　背景

entryEffectLife( spep_5, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( spep_5, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( spep_5, syu, -130);
setEffScaleKey( spep_5, syu, 1.7, 1.7);
setEffAlphaKey( spep_5, syu, 255);

entryEffectLife( spep_5, SP_04, 80 ,0x80, -1,  0,  0,  0);

-- 文字 --
ctzudodo = entryEffectLife( spep_5, 10014, 55, 0x100, -1, 0, 50, 350);    -- ズドド
setEffShake(spep_5, ctzudodo, 55, 12);
setEffScaleKey(spep_5, ctzudodo, 3.0, 3.0);
setEffRotateKey(spep_5, ctzudodo, 0);
setEffAlphaKey( spep_5, ctzudodo, 255);


playSe( spep_5, SE_04);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 523; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- ギャン(100F)　
------------------------------------------------------
setDisp( spep_5+65, 1, 0);
playSe( spep_5+65, 1024);

entryFade( spep_5+65-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5+65, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5+65,   1, 1.6, 1.6);
setMoveKey(   spep_5+65,   1,    100, -100,   0);

gyan = entryEffect( spep_5+65,  SP_08, 0x100,-1,0,0,0);
setEffAlphaKey( spep_5+65,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5+65, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5+65, ct4, 255);
setEffScaleKey( spep_5+65, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+65+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5+65, ct4, 255);
setEffAlphaKey( spep_5+65+60, ct4, 0);
setEffShake( spep_5+65, ct4, 60, 10);
--setEffAlphaKey(spep_5+50, ct, 0);

spep_6 = 591; --初期469
entryFade( spep_6-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110)
------------------------------------------------------
setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);

setDamage( spep_6+17,  1, 0);  -- ダメージ振動等
setShake( spep_6+8,   6,15);
setShake( spep_6+14,  15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ctGa, 30, 10);
setEffRotateKey(spep_6+16, ctGa, -40);
setEffScaleKey(spep_6+16, ctGa, 4.0, 4.0);
setEffScaleKey(spep_6+17, ctGa, 2.0, 2.0);
setEffScaleKey(spep_6+18, ctGa, 2.6, 2.6);
setEffScaleKey(spep_6+19, ctGa, 4.0, 4.0);
setEffScaleKey(spep_6+20, ctGa, 2.6, 2.6);
setEffScaleKey(spep_6+21, ctGa, 3.8, 3.8);
setEffScaleKey(spep_6+101, ctGa, 3.8, 3.8);
setEffAlphaKey(spep_6+16, ctGa, 255);
setEffAlphaKey(spep_6+106, ctGa, 255);
setEffAlphaKey(spep_6+116, ctGa, 0);

playSe(spep_6+4, SE_11);

shuchusen = entryEffectLife( spep_6+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+17);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

end	