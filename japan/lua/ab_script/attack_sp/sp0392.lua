

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

SP_01 = 150757;	 --ためる 
SP_02 = 150759;	 --構え	
SP_03 = 150761;	 --放出	
SP_04 = 150763;	 --敵に玉が迫る
SP_05 = 150758;	 --ef_001の反転
SP_06 = 150760;	 --ef_002の反転	
SP_07 = 150762;	 --ef_003の反転
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

tamestart = 0;
tame = entryEffectLife( tamestart, SP_01, 105, 0x80 , -1,  0,  0,  0);

speff = entryEffect(  tamestart+15,   1504,   0,     -1,  0,  0,  0);   --(カットイン)
setEffReplaceTexture( speff, 3, 2);                                    -- カットイン差し替え
speff = entryEffect(  tamestart+15,   1505,   0,     -1,  0,  0,  0);   --(セリフ)
setEffReplaceTexture( speff, 4, 5);                                    -- セリフ差し替え

playSe(15,SE_01);

setEffShake(tamestart,tame,105,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( tamestart+15, 190006, 85, 0x100, -1, -170, 50, 530);    -- ゴゴゴゴ
setEffShake( tamestart+15, ctgogo, 80, 8);
setEffRotateKey( tamestart+15, ctgogo, 0);

setEffScaleKey( tamestart+15, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamestart+15, ctgogo, 255);

setEffScaleKey( tamestart+80, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamestart+80, ctgogo, 255);

setEffScaleKey( tamestart+100, ctgogo, 3.0, 3.0);
setEffAlphaKey( tamestart+100, ctgogo, 0);

-- 背景　--
entryFadeBg( tamestart, 0, 105, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( tamestart, 906, 105, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( tamestart+97, 3,  6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_02 = 150461;	--構え	ef_002	160
------------------------------------------------------
kamaestart = 106;

kamae = entryEffectLife( kamaestart, SP_02, 160, 0x80, -1,  0,  0,  0);
setEffShake(kamaestart,kamae,160,10);

-- 文字 --
ctbaba = entryEffectLife( kamaestart, 10023, 77, 0x100, -1, 0, 170, 320);    -- バババッ
setEffShake( kamaestart, ctbaba, 77, 8);
setEffScaleKey( kamaestart, ctbaba, 7.5, 7.5);
setEffRotateKey( kamaestart, ctbaba, 20);
setEffAlphaKey( kamaestart, ctbaba, 255);

setEffScaleKey( kamaestart+10, ctbaba, 2.5, 2.5);
setEffRotateKey( kamaestart+10, ctbaba, 20);
setEffAlphaKey( kamaestart+10, ctbaba, 255);

setEffScaleKey( kamaestart+77, ctbaba, 2.5, 2.5);
setEffRotateKey( kamaestart+77, ctbaba, 20);
setEffAlphaKey( kamaestart+77, ctbaba, 255);

playSeLife(124,1003);
playSeLife(142,1003);
playSeLife(160,1003);
playSeLife(178,1003);

ctba = entryEffectLife( kamaestart+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( kamaestart+78, ctba, 40, 8);
setEffScaleKey( kamaestart+78, ctba, 1.0, 1.0);
setEffRotateKey( kamaestart+78, ctba, 30);
setEffAlphaKey( kamaestart+78, ctba, 255);

setEffScaleKey( kamaestart+88, ctba, 1.0, 1.0);
setEffRotateKey( kamaestart+88, ctba, 30);
setEffAlphaKey( kamaestart+88, ctba, 255);

setEffScaleKey( kamaestart+118, ctba, 4.0, 4.0);
setEffRotateKey( kamaestart+118, ctba, 30);
setEffAlphaKey( kamaestart+118, ctba, 30);

-- 背景　--
entryFadeBg( kamaestart, 0, 160, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( kamaestart, 906, 160, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( kamaestart+75, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( kamaestart+150, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
cardstart = 266; 

playSe( cardstart, SE_05);
speff = entryEffect(  cardstart,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);   -- カード差し替え
setEffReplaceTexture( speff, 5, 4);   -- 技名テクスチャ差し替え

entryFade( cardstart+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--放出	ef_003	120
------------------------------------------------------
houstart = 356;
hou = entryEffectLife( houstart, SP_03, 120,0x100, -1,  0,  0,  0);
setEffShake (houstart,hou,120,10);

-- 文字 --
ctzuo = entryEffectLife( houstart+44, 10012, 49, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( houstart+44, ctzuo, 49, 12);
setEffScaleKey( houstart+44, ctzuo, 0.6, 0.6);
setEffRotateKey( houstart+44, ctzuo, 30);
setEffAlphaKey( houstart+44, ctzuo, 255);

setEffMoveKey( houstart+48, ctzuo, 180, 300);

setEffScaleKey( houstart+48, ctzuo, 3.0, 3.0);
setEffRotateKey( houstart+48, ctzuo, 30);
setEffAlphaKey( houstart+48, ctzuo, 255);

setEffScaleKey( houstart+75, ctzuo, 3.0, 3.0);
setEffRotateKey( houstart+75, ctzuo, 30);
setEffAlphaKey( houstart+75, ctzuo, 255);

setEffScaleKey( houstart+93, ctzuo, 5.0, 5.0);
setEffRotateKey( houstart+93, ctzuo, 30);
setEffAlphaKey( houstart+93, ctzuo, 80);

-- 背景　--
entryFadeBg( houstart, 0, 120, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( houstart, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( houstart, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( houstart, syu, -90);
setEffScaleKey( houstart, syu, 1.6, 1.6);

entryFade( houstart+110, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(houstart+44, SE_06);
playSe(houstart+93, SE_06);

------------------------------------------------------
--敵に玉が迫る	ef_004	80
-----------------------------------------------------
semarustart = 476;

--敵キャラ右下構え（右下から徐々に現れる）
changeAnime(semarustart, 1, 102);
setDisp(semarustart, 1, 1);
setScaleKey(semarustart, 1, 2.0, 2.0);
setMoveKey(semarustart, 1, 600, -600 ,0);
setMoveKey(semarustart+20, 1, 250, -150 ,0);
setMoveKey(semarustart+54, 1, 250, -150 ,0);
setScaleKey(semarustart+54, 1,  2.0,  2.0);
setDisp(semarustart+54, 1, 0);

setShakeChara(semarustart,1,54,10);

-- 背景　--
entryFadeBg( semarustart, 0, 80, 0,  0, 0, 0, 220);          -- ベース暗め　背景

entryEffectLife( semarustart, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( semarustart, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( semarustart, syu, -130);
setEffScaleKey( semarustart, syu, 1.7, 1.7);
setEffAlphaKey( semarustart, syu, 255);

entryEffectLife( semarustart, SP_04, 80 ,0x80, -1,  0,  0,  0);

-- 文字 --
ctzudodo = entryEffectLife( semarustart, 10014, 55, 0x100, -1, 0, 200, 350);    -- ズドド
setEffShake(semarustart, ctzudodo, 55, 12);
setEffScaleKey(semarustart15, ctzudodo, 3.0, 3.0);
setEffRotateKey(semarustart, ctzudodo, 70);
setEffAlphaKey( semarustart, ctzudodo, 255);


playSe( semarustart, SE_04);


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
setDisp( semarustart+65, 1, 0);
playSe( semarustart+65, 1024);

entryFade( semarustart+65-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( semarustart+65, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   semarustart+65,   1, 1.6, 1.6);
setMoveKey(   semarustart+65,   1,    100, -100,   0);

gyan = entryEffect( semarustart+65,  SP_08, 0x100,-1,0,0,0);
setEffAlphaKey( semarustart+65,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( semarustart+65, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( semarustart+65, ct4, 255);
setEffScaleKey( semarustart+65, ct4, 3.0, 3.0);
setEffScaleKey( semarustart+65+60, ct4, 4.0, 4.0);
setEffAlphaKey( semarustart+65, ct4, 255);
setEffAlphaKey( semarustart+65+60, ct4, 0);
setEffShake( semarustart+65, ct4, 60, 10);
--setEffAlphaKey(spep_5+50, ct, 0);

expl = 591; --初期469
entryFade( expl-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110)
------------------------------------------------------


setDisp( expl, 1, 1);
setMoveKey(  expl,    1,  100,  0,   0);
setScaleKey( expl,    1,  1.0, 1.0);
setMoveKey(  expl+1,    1,    0,   0,   128);
setScaleKey( expl+1,    1,  0.1, 0.1);

changeAnime( expl+1, 1, 107);                         -- 手前ダメージ
entryEffect( expl+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( expl+9, SE_10);

setMoveKey(  expl+9,   1,    0,   0,   128);
setMoveKey(  expl+16,   1,  -60,  -200,  -100);

setDamage( expl+17,  1, 0);  -- ダメージ振動等
setShake( expl+8,   6,15);
setShake( expl+14,  15,10);

setRotateKey( expl+1,  1,  30 );
setRotateKey( expl+3,  1,  80 );
setRotateKey( expl+5,  1, 120 );
setRotateKey( expl+7,  1, 160 );
setRotateKey( expl+9,  1, 200 );
setRotateKey( expl+11,  1, 260 );
setRotateKey( expl+13,  1, 320 );
setRotateKey( expl+15,  1,   0 );

setShakeChara( expl+16, 1, 5,  10);
setShakeChara( expl+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( expl+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(expl+16, ct, 30, 10);
setEffRotateKey(expl+16, ct, -40);
setEffScaleKey(expl+16, ct, 4.0, 4.0);
setEffScaleKey(expl+17, ct, 2.0, 2.0);
setEffScaleKey(expl+18, ct, 2.6, 2.6);
setEffScaleKey(expl+19, ct, 4.0, 4.0);
setEffScaleKey(expl+20, ct, 2.6, 2.6);
setEffScaleKey(expl+21, ct, 3.8, 3.8);
setEffScaleKey(expl+101, ct, 3.8, 3.8);
setEffAlphaKey(expl+16, ct, 255);
setEffAlphaKey(expl+106, ct, 255);
setEffAlphaKey(expl+116, ct, 0);

playSe(expl+4, SE_11);

shuchusen = entryEffectLife( expl+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( expl+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(expl+17);

entryFade( expl+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(expl+111);

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

tamestart = 0;
tame = entryEffectLife( tamestart, SP_05, 105, 0x80 , -1,  0,  0,  0);

--[[
speff = entryEffect(  tamestart+15,   1504,   0,     -1,  0,  0,  0);   --(カットイン)
setEffReplaceTexture( speff, 3, 2);                                    -- カットイン差し替え
speff = entryEffect(  tamestart+15,   1505,   0,     -1,  0,  0,  0);   --(セリフ)
setEffReplaceTexture( speff, 4, 5);                                    -- セリフ差し替え
]]--

playSe(15,SE_01);

setEffShake(tamestart,tame,105,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( tamestart+15, 190006, 85, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
setEffShake( tamestart+15, ctgogo, 80, 8);
setEffRotateKey( tamestart+15, ctgogo, 0);

setEffScaleKey( tamestart+15, ctgogo, -0.8, 0.8);
setEffAlphaKey( tamestart+15, ctgogo, 255);

setEffScaleKey( tamestart+80, ctgogo, -0.8, 0.8);
setEffAlphaKey( tamestart+80, ctgogo, 255);

setEffScaleKey( tamestart+100, ctgogo, -3.0, 3.0);
setEffAlphaKey( tamestart+100, ctgogo, 0);

-- 背景　--
entryFadeBg( tamestart, 0, 105, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( tamestart, 906, 105, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( tamestart+97, 3,  6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_02 = 150461;	--構え	ef_002	160
------------------------------------------------------
kamaestart = 106;

kamae = entryEffectLife( kamaestart, SP_06, 160, 0x80, -1,  0,  0,  0);
setEffShake(kamaestart,kamae,160,10);

-- 文字 --
ctbaba = entryEffectLife( kamaestart, 10023, 77, 0x100, -1, 0, 170, 320);    -- バババッ
setEffShake( kamaestart, ctbaba, 77, 8);
setEffScaleKey( kamaestart, ctbaba, 7.5, 7.5);
setEffRotateKey( kamaestart, ctbaba, 20);
setEffAlphaKey( kamaestart, ctbaba, 255);

setEffScaleKey( kamaestart+10, ctbaba, 2.5, 2.5);
setEffRotateKey( kamaestart+10, ctbaba, 20);
setEffAlphaKey( kamaestart+10, ctbaba, 255);

setEffScaleKey( kamaestart+77, ctbaba, 2.5, 2.5);
setEffRotateKey( kamaestart+77, ctbaba, 20);
setEffAlphaKey( kamaestart+77, ctbaba, 255);

playSeLife(124,1003);
playSeLife(142,1003);
playSeLife(160,1003);
playSeLife(178,1003);

ctba = entryEffectLife( kamaestart+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( kamaestart+78, ctba, 40, 8);
setEffScaleKey( kamaestart+78, ctba, 1.0, 1.0);
setEffRotateKey( kamaestart+78, ctba, 30);
setEffAlphaKey( kamaestart+78, ctba, 255);

setEffScaleKey( kamaestart+88, ctba, 1.0, 1.0);
setEffRotateKey( kamaestart+88, ctba, 30);
setEffAlphaKey( kamaestart+88, ctba, 255);

setEffScaleKey( kamaestart+118, ctba, 4.0, 4.0);
setEffRotateKey( kamaestart+118, ctba, 30);
setEffAlphaKey( kamaestart+118, ctba, 30);

-- 背景　--
entryFadeBg( kamaestart, 0, 160, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( kamaestart, 906, 160, 0x80,  -1, 0,  0,  0);   -- 集中線

-- white
entryFade( kamaestart+75, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( kamaestart+150, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
cardstart = 266; 

playSe( cardstart, SE_05);
speff = entryEffect(  cardstart,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);   -- カード差し替え
setEffReplaceTexture( speff, 5, 4);   -- 技名テクスチャ差し替え

entryFade( cardstart+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--放出	ef_003	120
------------------------------------------------------
houstart = 356;
hou = entryEffectLife( houstart, SP_07, 120,0x100, -1,  0,  0,  0);
setEffShake (houstart,hou,120,10);

-- 文字 --
ctzuo = entryEffectLife( houstart+44, 10012, 49, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( houstart+44, ctzuo, 49, 12);
setEffScaleKey( houstart+44, ctzuo, 0.6, 0.6);
setEffRotateKey( houstart+44, ctzuo, 30);
setEffAlphaKey( houstart+44, ctzuo, 255);

setEffMoveKey( houstart+48, ctzuo, 180, 300);

setEffScaleKey( houstart+48, ctzuo, 3.0, 3.0);
setEffRotateKey( houstart+48, ctzuo, 30);
setEffAlphaKey( houstart+48, ctzuo, 255);

setEffScaleKey( houstart+75, ctzuo, 3.0, 3.0);
setEffRotateKey( houstart+75, ctzuo, 30);
setEffAlphaKey( houstart+75, ctzuo, 255);

setEffScaleKey( houstart+93, ctzuo, 5.0, 5.0);
setEffRotateKey( houstart+93, ctzuo, 30);
setEffAlphaKey( houstart+93, ctzuo, 80);

-- 背景　--
entryFadeBg( houstart, 0, 120, 0,  0, 0, 0, 220);          -- ベース暗め　背景
entryEffectLife( houstart, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( houstart, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( houstart, syu, -90);
setEffScaleKey( houstart, syu, 1.6, 1.6);

entryFade( houstart+110, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(houstart+44, SE_06);
playSe(houstart+93, SE_06);

------------------------------------------------------
--敵に玉が迫る	ef_004	80
-----------------------------------------------------
semarustart = 476;

--敵キャラ右下構え（右下から徐々に現れる）
changeAnime(semarustart, 1, 102);
setDisp(semarustart, 1, 1);
setScaleKey(semarustart, 1, 2.0, 2.0);
setMoveKey(semarustart, 1, 600, -600 ,0);
setMoveKey(semarustart+20, 1, 250, -150 ,0);
setMoveKey(semarustart+54, 1, 250, -150 ,0);
setScaleKey(semarustart+54, 1,  2.0,  2.0);
setDisp(semarustart+54, 1, 0);

setShakeChara(semarustart,1,54,10);

-- 背景　--
entryFadeBg( semarustart, 0, 80, 0,  0, 0, 0, 220);          -- ベース暗め　背景

entryEffectLife( semarustart, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
syu = entryEffectLife( semarustart, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( semarustart, syu, -130);
setEffScaleKey( semarustart, syu, 1.7, 1.7);
setEffAlphaKey( semarustart, syu, 255);

entryEffectLife( semarustart, SP_04, 80 ,0x80, -1,  0,  0,  0);

-- 文字 --
ctzudodo = entryEffectLife( semarustart, 10014, 55, 0x100, -1, 0, 200, 350);    -- ズドド
setEffShake(semarustart, ctzudodo, 55, 12);
setEffScaleKey(semarustart15, ctzudodo, 3.0, 3.0);
setEffRotateKey(semarustart, ctzudodo, 0);
setEffAlphaKey( semarustart, ctzudodo, 255);


playSe( semarustart, SE_04);


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
setDisp( semarustart+65, 1, 0);
playSe( semarustart+65, 1024);

entryFade( semarustart+65-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( semarustart+65, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   semarustart+65,   1, 1.6, 1.6);
setMoveKey(   semarustart+65,   1,    100, -100,   0);

gyan = entryEffect( semarustart+65,  SP_08, 0x100,-1,0,0,0);
setEffAlphaKey( semarustart+65,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( semarustart+65, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( semarustart+65, ct4, 255);
setEffScaleKey( semarustart+65, ct4, 3.0, 3.0);
setEffScaleKey( semarustart+65+60, ct4, 4.0, 4.0);
setEffAlphaKey( semarustart+65, ct4, 255);
setEffAlphaKey( semarustart+65+60, ct4, 0);
setEffShake( semarustart+65, ct4, 60, 10);
--setEffAlphaKey(spep_5+50, ct, 0);


expl = 591; --初期469
entryFade( expl-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110)
------------------------------------------------------


setDisp( expl, 1, 1);
setMoveKey(  expl,    1,  100,  0,   0);
setScaleKey( expl,    1,  1.0, 1.0);
setMoveKey(  expl+1,    1,    0,   0,   128);
setScaleKey( expl+1,    1,  0.1, 0.1);

changeAnime( expl+1, 1, 107);                         -- 手前ダメージ
entryEffect( expl+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( expl+9, SE_10);

setMoveKey(  expl+9,   1,    0,   0,   128);
setMoveKey(  expl+16,   1,  -60,  -200,  -100);

setDamage( expl+17,  1, 0);  -- ダメージ振動等
setShake( expl+8,   6,15);
setShake( expl+14,  15,10);

setRotateKey( expl+1,  1,  30 );
setRotateKey( expl+3,  1,  80 );
setRotateKey( expl+5,  1, 120 );
setRotateKey( expl+7,  1, 160 );
setRotateKey( expl+9,  1, 200 );
setRotateKey( expl+11,  1, 260 );
setRotateKey( expl+13,  1, 320 );
setRotateKey( expl+15,  1,   0 );

setShakeChara( expl+16, 1, 5,  10);
setShakeChara( expl+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( expl+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(expl+16, ct, 30, 10);
setEffRotateKey(expl+16, ct, -40);
setEffScaleKey(expl+16, ct, 4.0, 4.0);
setEffScaleKey(expl+17, ct, 2.0, 2.0);
setEffScaleKey(expl+18, ct, 2.6, 2.6);
setEffScaleKey(expl+19, ct, 4.0, 4.0);
setEffScaleKey(expl+20, ct, 2.6, 2.6);
setEffScaleKey(expl+21, ct, 3.8, 3.8);
setEffScaleKey(expl+101, ct, 3.8, 3.8);
setEffAlphaKey(expl+16, ct, 255);
setEffAlphaKey(expl+106, ct, 255);
setEffAlphaKey(expl+116, ct, 0);

playSe(expl+4, SE_11);

shuchusen = entryEffectLife( expl+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( expl+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(expl+17);

entryFade( expl+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(expl+111);

end	