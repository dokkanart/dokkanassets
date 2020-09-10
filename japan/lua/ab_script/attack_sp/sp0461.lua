--sp0461 超トランクス(未来)　バーニングアタックver2
--sp0365　衣装違い

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
--[[
SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;
]]--
SP_01 = 151716;	 --ためる ef_001	120
SP_02 = 151717;	 --構え	ef_002	160
SP_03 = 151718;	 --放出	ef_003	120
SP_04 = 151719;	 --敵に玉が迫る	ef_004	80
SP_05 = 151720;	 --ef_001の反転	ef_005	120
SP_06 = 151721;	 --ef_002の反転	ef_006	160
SP_07 = 151722;	 --ef_003の反転	ef_007	120
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
ctgogo = entryEffectLife( tamestart+25, 190006, 80, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
setEffShake( tamestart+25, ctgogo, 80, 8);
setEffRotateKey( tamestart+25, ctgogo, 0);

setEffScaleKey( tamestart+25, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamestart+25, ctgogo, 255);

setEffScaleKey( tamestart+92, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamestart+92, ctgogo, 255);

setEffScaleKey( tamestart+105, ctgogo, 3.0, 3.0);
setEffAlphaKey( tamestart+105, ctgogo, 0);

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
setEffShake( kamaestart, ctbaba, 77, 20);
setEffScaleKey( kamaestart, ctbaba, 7.5, 7.5);
setEffRotateKey( kamaestart, ctbaba, 20);
setEffAlphaKey( kamaestart, ctbaba, 255);

setEffScaleKey( kamaestart+10, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+10, ctbaba, 25);
setEffAlphaKey( kamaestart+10, ctbaba, 255);

setEffScaleKey( kamaestart+14, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+14, ctbaba, 20);
setEffAlphaKey( kamaestart+14, ctbaba, 255);

setEffScaleKey( kamaestart+17, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+17, ctbaba, 25);
setEffAlphaKey( kamaestart+17, ctbaba, 255);

setEffScaleKey( kamaestart+20, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+20, ctbaba, 20);
setEffAlphaKey( kamaestart+20, ctbaba, 255);

setEffScaleKey( kamaestart+24, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+24, ctbaba, 25);
setEffAlphaKey( kamaestart+24, ctbaba, 255);

setEffScaleKey( kamaestart+27, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+27, ctbaba, 20);
setEffAlphaKey( kamaestart+27, ctbaba, 255);

setEffScaleKey( kamaestart+30, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+30, ctbaba, 25);
setEffAlphaKey( kamaestart+30, ctbaba, 255);

setEffScaleKey( kamaestart+34, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+34, ctbaba, 20);
setEffAlphaKey( kamaestart+34, ctbaba, 255);

setEffScaleKey( kamaestart+38, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+38, ctbaba, 25);
setEffAlphaKey( kamaestart+38, ctbaba, 255);

setEffScaleKey( kamaestart+42, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+42, ctbaba, 20);
setEffAlphaKey( kamaestart+42, ctbaba, 255);

setEffScaleKey( kamaestart+45, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+45, ctbaba, 25);
setEffAlphaKey( kamaestart+45, ctbaba, 255);

setEffScaleKey( kamaestart+49, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+49, ctbaba, 20);
setEffAlphaKey( kamaestart+49, ctbaba, 255);

setEffScaleKey( kamaestart+53, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+53, ctbaba, 25);
setEffAlphaKey( kamaestart+53, ctbaba, 255);

setEffScaleKey( kamaestart+57, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+57, ctbaba, 20);
setEffAlphaKey( kamaestart+57, ctbaba, 255);

setEffScaleKey( kamaestart+61, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+61, ctbaba, 25);
setEffAlphaKey( kamaestart+61, ctbaba, 255);

setEffScaleKey( kamaestart+65, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+65, ctbaba, 20);
setEffAlphaKey( kamaestart+65, ctbaba, 255);

setEffScaleKey( kamaestart+69, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+69, ctbaba, 25);
setEffAlphaKey( kamaestart+69, ctbaba, 255);

setEffScaleKey( kamaestart+73, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+73, ctbaba, 20);
setEffAlphaKey( kamaestart+73, ctbaba, 255);

setEffScaleKey( kamaestart+77, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+77, ctbaba, 25);
setEffAlphaKey( kamaestart+77, ctbaba, 255);

playSe(124,1003);
playSe(142,1003);
playSe(160,1003);
playSe(178,1003);

ctba = entryEffectLife( kamaestart+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( kamaestart+78, ctba, 40, 25);
setEffScaleKey( kamaestart+78, ctba, 1.3, 1.3);
setEffRotateKey( kamaestart+78, ctba, 30);
setEffAlphaKey( kamaestart+78, ctba, 255);

setEffScaleKey( kamaestart+88, ctba, 1.3, 1.3);
setEffRotateKey( kamaestart+88, ctba, 30);
setEffAlphaKey( kamaestart+88, ctba, 255);

setEffScaleKey( kamaestart+118, ctba, 4.2, 4.2);
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
ctzuo = entryEffectLife( houstart+44, 10012, 55, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( houstart+44, ctzuo, 55, 20);
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

setEffScaleKey( houstart+93, ctzuo, 5.2, 5.2);
setEffRotateKey( houstart+93, ctzuo, 30);
setEffAlphaKey( houstart+93, ctzuo, 65);

setEffScaleKey( houstart+99, ctzuo, 7.0, 7.0);
setEffRotateKey( houstart+99, ctzuo, 30);
setEffAlphaKey( houstart+99, ctzuo, 0);

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
setEffShake(semarustart, ctzudodo, 55, 20);
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

spep8 = 591; --初期469
entryFade( spep8-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep8-1, 1, 1);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1.0, 1.0);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ct, 30, 10);
setEffRotateKey( spep8+15, ct, -40);
setEffScaleKey( spep8+15, ct, 4.0, 4.0);
setEffScaleKey( spep8+16, ct, 2.0, 2.0);
setEffScaleKey( spep8+17, ct, 2.6, 2.6);
setEffScaleKey( spep8+18, ct, 4.0, 4.0);
setEffScaleKey( spep8+19, ct, 2.6, 2.6);
setEffScaleKey( spep8+20, ct, 3.8, 3.8);
setEffScaleKey( spep8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep8+15, ct, 255);
setEffAlphaKey( spep8+105, ct, 255);
setEffAlphaKey( spep8+115, ct, 0);

playSe( spep8+3, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep8+16);
entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep8+110);

else
	
-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI(0, 0);

tamestart = 0;
tame = entryEffectLife( tamestart, SP_05, 105, 0x80 , -1,  0,  0,  0);

--speff = entryEffect(  tamestart+15,   1504,   0,     -1,  0,  0,  0);   --(カットイン)
--setEffReplaceTexture( speff, 3, 2);                                    -- カットイン差し替え
--speff = entryEffect(  tamestart+15,   1505,   0,     -1,  0,  0,  0);   --(セリフ)
--setEffReplaceTexture( speff, 4, 5);                                    -- セリフ差し替え

playSe(15,SE_01);

setEffShake(tamestart,tame,105,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( tamestart+25, 190006, 80, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
setEffShake( tamestart+25, ctgogo, 80, 8);
setEffRotateKey( tamestart+25, ctgogo, 0);

setEffScaleKey( tamestart+25, ctgogo, -0.8, 0.8);
setEffAlphaKey( tamestart+25, ctgogo, 255);

setEffScaleKey( tamestart+92, ctgogo, -0.8, 0.8);
setEffAlphaKey( tamestart+92, ctgogo, 255);

setEffScaleKey( tamestart+105, ctgogo, -3.0, 3.0);
setEffAlphaKey( tamestart+105, ctgogo, 0);

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
setEffShake( kamaestart, ctbaba, 77, 20);
setEffScaleKey( kamaestart, ctbaba, 7.5, 7.5);
setEffRotateKey( kamaestart, ctbaba, 20);
setEffAlphaKey( kamaestart, ctbaba, 255);

setEffScaleKey( kamaestart+10, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+10, ctbaba, 25);
setEffAlphaKey( kamaestart+10, ctbaba, 255);

setEffScaleKey( kamaestart+14, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+14, ctbaba, 20);
setEffAlphaKey( kamaestart+14, ctbaba, 255);

setEffScaleKey( kamaestart+17, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+17, ctbaba, 25);
setEffAlphaKey( kamaestart+17, ctbaba, 255);

setEffScaleKey( kamaestart+20, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+20, ctbaba, 20);
setEffAlphaKey( kamaestart+20, ctbaba, 255);

setEffScaleKey( kamaestart+24, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+24, ctbaba, 25);
setEffAlphaKey( kamaestart+24, ctbaba, 255);

setEffScaleKey( kamaestart+27, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+27, ctbaba, 20);
setEffAlphaKey( kamaestart+27, ctbaba, 255);

setEffScaleKey( kamaestart+30, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+30, ctbaba, 25);
setEffAlphaKey( kamaestart+30, ctbaba, 255);

setEffScaleKey( kamaestart+34, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+34, ctbaba, 20);
setEffAlphaKey( kamaestart+34, ctbaba, 255);

setEffScaleKey( kamaestart+38, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+38, ctbaba, 25);
setEffAlphaKey( kamaestart+38, ctbaba, 255);

setEffScaleKey( kamaestart+42, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+42, ctbaba, 20);
setEffAlphaKey( kamaestart+42, ctbaba, 255);

setEffScaleKey( kamaestart+45, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+45, ctbaba, 25);
setEffAlphaKey( kamaestart+45, ctbaba, 255);

setEffScaleKey( kamaestart+49, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+49, ctbaba, 20);
setEffAlphaKey( kamaestart+49, ctbaba, 255);

setEffScaleKey( kamaestart+53, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+53, ctbaba, 25);
setEffAlphaKey( kamaestart+53, ctbaba, 255);

setEffScaleKey( kamaestart+57, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+57, ctbaba, 20);
setEffAlphaKey( kamaestart+57, ctbaba, 255);

setEffScaleKey( kamaestart+61, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+61, ctbaba, 25);
setEffAlphaKey( kamaestart+61, ctbaba, 255);

setEffScaleKey( kamaestart+65, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+65, ctbaba, 20);
setEffAlphaKey( kamaestart+65, ctbaba, 255);

setEffScaleKey( kamaestart+69, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+69, ctbaba, 25);
setEffAlphaKey( kamaestart+69, ctbaba, 255);

setEffScaleKey( kamaestart+73, ctbaba, 2.4, 2.4);
setEffRotateKey( kamaestart+73, ctbaba, 20);
setEffAlphaKey( kamaestart+73, ctbaba, 255);

setEffScaleKey( kamaestart+77, ctbaba, 2.6, 2.6);
setEffRotateKey( kamaestart+77, ctbaba, 25);
setEffAlphaKey( kamaestart+77, ctbaba, 255);

playSe(124,1003);
playSe(142,1003);
playSe(160,1003);
playSe(178,1003);

ctba = entryEffectLife( kamaestart+78, 10022, 40, 0x100, -1, 0, 200, 300);    -- バッ

playSe(184,1062);

setEffShake( kamaestart+78, ctba, 40, 25);
setEffScaleKey( kamaestart+78, ctba, 1.3, 1.3);
setEffRotateKey( kamaestart+78, ctba, 30);
setEffAlphaKey( kamaestart+78, ctba, 255);

setEffScaleKey( kamaestart+88, ctba, 1.3, 1.3);
setEffRotateKey( kamaestart+88, ctba, 30);
setEffAlphaKey( kamaestart+88, ctba, 255);

setEffScaleKey( kamaestart+118, ctba, 4.2, 4.2);
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
ctzuo = entryEffectLife( houstart+44, 10012, 55, 0x100, -1, 0, 80, 200);    -- ズオッ
setEffShake( houstart+44, ctzuo, 55, 20);
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

setEffScaleKey( houstart+93, ctzuo, 5.2, 5.2);
setEffRotateKey( houstart+93, ctzuo, 30);
setEffAlphaKey( houstart+93, ctzuo, 65);

setEffScaleKey( houstart+99, ctzuo, 7.0, 7.0);
setEffRotateKey( houstart+99, ctzuo, 30);
setEffAlphaKey( houstart+99, ctzuo, 0);

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
ctzudodo = entryEffectLife( semarustart, 10014, 55, 0x100, -1, 0, 50, 350);    -- ズドド
setEffShake(semarustart, ctzudodo, 55, 20);
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

spep8 = 591; --初期469
entryFade( spep8-1, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep8-1, 1, 1);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1.0, 1.0);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ct, 30, 10);
setEffRotateKey( spep8+15, ct, -40);
setEffScaleKey( spep8+15, ct, 4.0, 4.0);
setEffScaleKey( spep8+16, ct, 2.0, 2.0);
setEffScaleKey( spep8+17, ct, 2.6, 2.6);
setEffScaleKey( spep8+18, ct, 4.0, 4.0);
setEffScaleKey( spep8+19, ct, 2.6, 2.6);
setEffScaleKey( spep8+20, ct, 3.8, 3.8);
setEffScaleKey( spep8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep8+15, ct, 255);
setEffAlphaKey( spep8+105, ct, 255);
setEffAlphaKey( spep8+115, ct, 0);

playSe( spep8+3, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep8+16);
entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep8+110);

end	