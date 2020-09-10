--ゴテンクス_ダイナマイトキック

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100006
SP_02 = 150041;
SP_03 = 150042;
SP_04 = 3;
SP_05 = 2;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

multi_frm = 2;

---------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK_3 = 340;
SP_ATK_4 = SP_ATK_3+48;

--else

--SP_ATK_0 = 6;
--SP_ATK_1 = SP_ATK_0+55;
--SP_ATK_2 = SP_ATK_1+45;
--SP_ATK_3 = SP_ATK_2+70;
--SP_ATK_4 = SP_ATK_3+48;

--end
------------------

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 100);
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

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
-- 気溜め(40F)
------------------------------------------------------
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
aura1b = entryEffect(  40,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffAlphaKey(64, ctzuzun, 0);
setEffAlphaKey(66, ctzuzun, 255);

entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff1 = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 70, aura2, 1.5, 1.5);
entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setShakeChara( 70, 0, 49, 5);

aura2b = entryEffectLife(  70,   1503, 95, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)

-- 書き文字エントリー
ctgo = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -230, 300);    -- ゴゴゴ・・・
setEffShake(90, ctgo, 40, 8);
setEffScaleKey(90, ctgo, 1.4, 1.4);

entryFade( 170 - 10, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 0.7, 0.7);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);

-- ** 次の準備 ** --
entryFade( 170 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- キック始め(110F)
------------------------------------------------------

changeAnime( 260, 0, 31);                                    -- 必殺技ポーズ

--味方キャラ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
setMoveKey(  299,  0,   -100,  0,   0);
setMoveKey(  305,  0,   -250,  0,   0);
setMoveKey(  333,  0, 1700,  0,   0);
setMoveKey(  334,  0, -1700,  0,   0);

setShakeChara( 270, 0, 35, 30);

--流線
entryEffectLife( 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線

--エフェクト
kerieff1 = entryEffectLife( 260, SP_03, 79, 0x80,  -1,  -600,  0,  0);   -- キック後ろのエフェクト
setEffScaleKey(260,kerieff1,1.5,1.5);

setEffMoveKey(  260,    kerieff1,   -600,  0,   0);
setEffMoveKey(  261,    kerieff1,   -600,  0,   0);
setEffMoveKey(  270,    kerieff1,   -250,  0,   0);
setEffMoveKey(  299,  kerieff1,   -250,  0,   0);
setEffMoveKey(  305,  kerieff1,   -400,  0,   0);
setEffMoveKey(  310,  kerieff1,   -250,  0,   0);
--setEffMoveKey(  315,  kerieff1,   -300,  0,   0);
setEffMoveKey(  323,  kerieff1, 1700,  0,   0);

playSe( 260, SE_07);
--playSe( 305, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--集中線
shuchusen = entryEffectLife( 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctzuo, 32, 5);
setEffAlphaKey(268, ctzuo, 255);
setEffAlphaKey(290, ctzuo, 255);
setEffAlphaKey(300, ctzuo, 0);
setEffScaleKey(268, ctzuo, 0.0, 0.0);
setEffScaleKey(272, ctzuo, 1.3, 1.3);
setEffScaleKey(290, ctzuo, 1.3, 1.3);
setEffScaleKey(300, ctzuo, 6.0, 6.0);

--setEffAlphaKey(	308,spname, 1);
playSe( 300, SE_07);
--entryFade( 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 白フェード
entryFade( SP_ATK_3 - 10, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryEffect( SP_ATK_3+20, SP_03,   0x40, 0,  0,  0,  0);   -- キック後ろのエフェクト
kerieff2 = entryEffectLife( SP_ATK_3, SP_03, 46, 0x80, -1, -600, 0, 0);
setEffScaleKey(SP_ATK_3, kerieff2, 1.2, 1.2);
setEffMoveKey(  SP_ATK_3,  kerieff2, -1700,  0,   0);
setEffMoveKey(  SP_ATK_3+24,  kerieff2, -700,  0,   0);
setEffMoveKey(  SP_ATK_3+35,  kerieff2, 80,  0,   0);
--end

--味方キャラ
setDisp( SP_ATK_3, 0, 1);
setShakeChara(SP_ATK_3+40,0,30,14);

setMoveKey(  SP_ATK_3,  0, -1700,  0,   0);
setMoveKey(  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey(  SP_ATK_3+31,  0, 0,  0,   0);

setScaleKey(   SP_ATK_3-1,   0, 0.7, 0.7);
setScaleKey(   SP_ATK_3,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_3+37,   0, 0.5, 0.5);

--敵キャラ
setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104);             -- ガード

setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
setShakeChara(SP_ATK_3+40,1,30,11);

setMoveKey(  SP_ATK_3+15,    1,   700,  0,   0);
setMoveKey(  SP_ATK_3+24, 1,  180,    0,  0);

setScaleKey( SP_ATK_3+15,   1,   0.5,  0.5);
setScaleKey( SP_ATK_3+24, 1,  1.5, 1.5);

setRotateKey( SP_ATK_3 + 0, 1, 0 );
setRotateKey( SP_ATK_3 + 24, 1, 0 );

-- 書き文字エントリー
ctzudo = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ctzudo, 99, 20);
setEffScaleKey( SP_ATK_3, ctzudo, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ctzudo, 70);
setEffAlphaKey(SP_ATK_3, ctzudo, 255);
setEffAlphaKey(SP_ATK_3+20+5, ctzudo, 255);
setEffAlphaKey(SP_ATK_3+25+5, ctzudo, 0);

--entryFade( SP_ATK_3+27, 10,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( SP_ATK_3, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

--音
SE1 = playSeLife( SP_ATK_3 + 12, SE_01 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = SP_ATK_3 + 20; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge + 0, SE1, 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1,  180,    0,  0);
setMoveKey( SP_dodge + 10, 1,  180,    0,  0);

setScaleKey( SP_dodge + 0, 1,  1.5, 1.5);
setScaleKey( SP_dodge + 10, 1,  1.5, 1.5);

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );


entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

--setMoveKey(  SP_dodge+5,  0, 1700,  0,   0);
--setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避していない場合
------------------------------------------------------
--敵キャラ
changeAnime( SP_ATK_3+32, 1, 108);          -- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK_3+26, 1,  180,    0,  0);
setMoveKey(  SP_ATK_3+30, 1,  120,    0,  0);
setMoveKey(  SP_ATK_3+31, 1,  120,    0,  0);
setMoveKey(  SP_ATK_3+32, 1,  150,    0,  0);
setMoveKey(  SP_ATK_3+35, 1,  150,    0,  0);
setMoveKey(  SP_ATK_3+42, 1,  400,    0, 0);

setScaleKey( SP_ATK_3+26, 1,  1.5, 1.5);
setScaleKey( SP_ATK_3+30, 1,  1.5, 1.5);
setScaleKey( SP_ATK_3+42, 1,  0.8, 0.8);

setRotateKey( SP_ATK_3 + 26, 1, 0 );
setRotateKey( SP_ATK_3 + 42, 1, 0 );

-- ヒットエフェクト
hit_eff_1 = entryEffect( SP_ATK_3+32,  4,  0x40,  -1,  0,  550, 570);--HIT
hit_eff_2 = entryEffect( SP_ATK_3+32,  906,  0x40,  -1,  0,  550, 570);
hit_eff_3 = entryEffect( SP_ATK_3+32,  908,  0x40,  -1,  0,  550, 570);

setEffScaleKey( SP_ATK_3+32, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_ATK_3+32, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_ATK_3+32, hit_eff_3, 1.5, 1.5);

--音
playSe( SP_ATK_3 + 32, SE_09);

--changeAnime( SP_ATK_3+36, 0, 31);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+40, 4,  5, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
setDisp( SP_ATK_4, 0, 0);
setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);

-- ** 爆発 ** --
bakuhatsu = entryEffect( SP_ATK_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( SP_ATK_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_ATK_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_ATK_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( SP_ATK_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_ATK_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_ATK_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( SP_ATK_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( SP_ATK_4 + 0, bakuhatsu, 0 );
setEffRotateKey( SP_ATK_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( SP_ATK_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( SP_ATK_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( SP_ATK_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( SP_ATK_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( SP_ATK_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( SP_ATK_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( SP_ATK_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( SP_ATK_4 + 2, hibiware, 0 );
setEffRotateKey( SP_ATK_4 + 100, hibiware, 0 );

setEffAlphaKey( SP_ATK_4 + 2, hibiware, 0 );
setEffAlphaKey( SP_ATK_4 + 13, hibiware, 0 );
setEffAlphaKey( SP_ATK_4 + 14, hibiware, 255 );
setEffAlphaKey( SP_ATK_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( SP_ATK_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( SP_ATK_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( SP_ATK_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( SP_ATK_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( SP_ATK_4 + 14, shuchusen3, 0 );
setEffRotateKey( SP_ATK_4 + 46, shuchusen3, 0 );

setEffAlphaKey( SP_ATK_4 + 14, shuchusen3, 255 );
setEffAlphaKey( SP_ATK_4 + 28, shuchusen3, 255 );
setEffAlphaKey( SP_ATK_4 + 30, shuchusen3, 252 );
setEffAlphaKey( SP_ATK_4 + 32, shuchusen3, 242 );
setEffAlphaKey( SP_ATK_4 + 34, shuchusen3, 227 );
setEffAlphaKey( SP_ATK_4 + 36, shuchusen3, 205 );
setEffAlphaKey( SP_ATK_4 + 38, shuchusen3, 176 );
setEffAlphaKey( SP_ATK_4 + 40, shuchusen3, 142 );
setEffAlphaKey( SP_ATK_4 + 42, shuchusen3, 101 );
setEffAlphaKey( SP_ATK_4 + 44, shuchusen3, 54 );
setEffAlphaKey( SP_ATK_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( SP_ATK_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( SP_ATK_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( SP_ATK_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( SP_ATK_4 + 14, shuchusen4, 0 );
setEffRotateKey( SP_ATK_4 + 100, shuchusen4, 0 );

setEffAlphaKey( SP_ATK_4 + 14, shuchusen4, 255 );
setEffAlphaKey( SP_ATK_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( SP_ATK_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( SP_ATK_4 + 14, ctga, 14, 20 );

setEffMoveKey( SP_ATK_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( SP_ATK_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( SP_ATK_4 + 14, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 15, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 16, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 17, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 18, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 19, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 20, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 21, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 22, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 23, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 24, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 25, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 26, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 27, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 28, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 100, ctga, -14.9 );

setEffAlphaKey( SP_ATK_4 + 14, ctga, 255 );
setEffAlphaKey( SP_ATK_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( SP_ATK_4 + 0, 1, 1 );
changeAnime( SP_ATK_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( SP_ATK_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( SP_ATK_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( SP_ATK_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_ATK_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_ATK_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( SP_ATK_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( SP_ATK_4 + 0, 1, 0.2, 0.2 );
setScaleKey( SP_ATK_4 + 1, 1, 0.2, 0.2 );
setScaleKey( SP_ATK_4 + 2, 1, 0.25, 0.25 );
setScaleKey( SP_ATK_4 + 3, 1, 0.25, 0.25 );
setScaleKey( SP_ATK_4 + 4, 1, 0.46, 0.46 );
setScaleKey( SP_ATK_4 + 5, 1, 0.46, 0.46 );
setScaleKey( SP_ATK_4 + 6, 1, 0.55, 0.55 );
setScaleKey( SP_ATK_4 + 7, 1, 0.55, 0.55 );
setScaleKey( SP_ATK_4 + 8, 1, 0.71, 0.71 );
setScaleKey( SP_ATK_4 + 9, 1, 0.71, 0.71 );
setScaleKey( SP_ATK_4 + 10, 1, 0.97, 0.97 );
setScaleKey( SP_ATK_4 + 11, 1, 0.97, 0.97 );
setScaleKey( SP_ATK_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( SP_ATK_4 + 13, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 14, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 15, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 16, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 17, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 18, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 19, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 20, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 21, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 22, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 23, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 24, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 25, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 26, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 100, 1, 1.2, 1.2 );

setRotateKey( SP_ATK_4 + 0, 1, -40 );
setRotateKey( SP_ATK_4 + 1, 1, -40 );
setRotateKey( SP_ATK_4 + 2, 1, 80 );
setRotateKey( SP_ATK_4 + 3, 1, 80 );
setRotateKey( SP_ATK_4 + 4, 1, 200 );
setRotateKey( SP_ATK_4 + 5, 1, 200 );
setRotateKey( SP_ATK_4 + 6, 1, 360 );
setRotateKey( SP_ATK_4 + 7, 1, 360 );
setRotateKey( SP_ATK_4 + 8, 1, 558 );
setRotateKey( SP_ATK_4 + 9, 1, 558 );
setRotateKey( SP_ATK_4 + 10, 1, 425 );
setRotateKey( SP_ATK_4 + 11, 1, 425 );
setRotateKey( SP_ATK_4 + 12, 1, -40 );
setRotateKey( SP_ATK_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( SP_ATK_4 + 0, SE_10 );  --爆発音
playSe( SP_ATK_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( SP_ATK_4 + 10 );
entryFade( SP_ATK_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( SP_ATK_4 + 100 );

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
aura1b = entryEffect(  40,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffAlphaKey(64, ctzuzun, 0);
setEffAlphaKey(66, ctzuzun, 255);

entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff1 = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 70, aura2, 1.5, 1.5);
entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setShakeChara( 70, 0, 49, 5);

aura2b = entryEffectLife(  70,   1503, 95, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)

-- 書き文字エントリー
ctgo = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -200, 300);    -- ゴゴゴ・・・
setEffShake(90, ctgo, 40, 8);
setEffScaleKey(90, ctgo, 1.4, 1.4);

entryFade( 170 - 10, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 0.7, 0.7);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);

-- ** 次の準備 ** --
entryFade( 170 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- キック始め(110F)
------------------------------------------------------

changeAnime( 260, 0, 31);                                    -- 必殺技ポーズ

--味方キャラ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
setMoveKey(  299,  0,   -100,  0,   0);
setMoveKey(  305,  0,   -250,  0,   0);
setMoveKey(  333,  0, 1700,  0,   0);
setMoveKey(  334,  0, -1700,  0,   0);

setShakeChara( 270, 0, 35, 30);

--流線
entryEffectLife( 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線

--エフェクト
kerieff1 = entryEffectLife( 260, SP_03, 79, 0x80,  -1,  -600,  0,  0);   -- キック後ろのエフェクト
setEffScaleKey(260,kerieff1,1.5,1.5);

setEffMoveKey(  260,    kerieff1,   -600,  0,   0);
setEffMoveKey(  261,    kerieff1,   -600,  0,   0);
setEffMoveKey(  270,    kerieff1,   -250,  0,   0);
setEffMoveKey(  299,  kerieff1,   -250,  0,   0);
setEffMoveKey(  305,  kerieff1,   -400,  0,   0);
setEffMoveKey(  310,  kerieff1,   -250,  0,   0);
--setEffMoveKey(  315,  kerieff1,   -300,  0,   0);
setEffMoveKey(  323,  kerieff1, 1700,  0,   0);

playSe( 260, SE_07);
--playSe( 305, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--集中線
shuchusen = entryEffectLife( 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctzuo, 32, 5);
setEffAlphaKey(268, ctzuo, 255);
setEffAlphaKey(290, ctzuo, 255);
setEffAlphaKey(300, ctzuo, 0);
setEffScaleKey(268, ctzuo, 0.0, 0.0);
setEffScaleKey(272, ctzuo, 1.3, 1.3);
setEffScaleKey(290, ctzuo, 1.3, 1.3);
setEffScaleKey(300, ctzuo, 6.0, 6.0);

--setEffAlphaKey(	308,spname, 1);
playSe( 300, SE_07);
--entryFade( 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 白フェード
entryFade( SP_ATK_3 - 10, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryEffect( SP_ATK_3+20, SP_03,   0x40, 0,  0,  0,  0);   -- キック後ろのエフェクト
kerieff2 = entryEffectLife( SP_ATK_3, SP_03, 46, 0x80, -1, -600, 0, 0);
setEffScaleKey(SP_ATK_3, kerieff2, 1.2, 1.2);
setEffMoveKey(  SP_ATK_3,  kerieff2, -1700,  0,   0);
setEffMoveKey(  SP_ATK_3+24,  kerieff2, -700,  0,   0);
setEffMoveKey(  SP_ATK_3+35,  kerieff2, 80,  0,   0);
--end

--味方キャラ
setDisp( SP_ATK_3, 0, 1);
setShakeChara(SP_ATK_3+40,0,30,14);

setMoveKey(  SP_ATK_3,  0, -1700,  0,   0);
setMoveKey(  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey(  SP_ATK_3+31,  0, 0,  0,   0);

setScaleKey(   SP_ATK_3-1,   0, 0.7, 0.7);
setScaleKey(   SP_ATK_3,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_3+37,   0, 0.5, 0.5);

--敵キャラ
setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104);             -- ガード

setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
setShakeChara(SP_ATK_3+40,1,30,11);

setMoveKey(  SP_ATK_3+15,    1,   700,  0,   0);
setMoveKey(  SP_ATK_3+24, 1,  180,    0,  0);

setScaleKey( SP_ATK_3+15,   1,   0.5,  0.5);
setScaleKey( SP_ATK_3+24, 1,  1.5, 1.5);

setRotateKey( SP_ATK_3 + 0, 1, 0 );
setRotateKey( SP_ATK_3 + 24, 1, 0 );

-- 書き文字エントリー
ctzudo = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ctzudo, 99, 20);
setEffScaleKey( SP_ATK_3, ctzudo, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ctzudo, 0);
setEffAlphaKey(SP_ATK_3, ctzudo, 255);
setEffAlphaKey(SP_ATK_3+20+5, ctzudo, 255);
setEffAlphaKey(SP_ATK_3+25+5, ctzudo, 0);

--entryFade( SP_ATK_3+27, 10,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( SP_ATK_3, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

--音
SE1 = playSeLife( SP_ATK_3 + 12, SE_01 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = SP_ATK_3 + 20; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge + 0, SE1, 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1,  180,    0,  0);
setMoveKey( SP_dodge + 10, 1,  180,    0,  0);

setScaleKey( SP_dodge + 0, 1,  1.5, 1.5);
setScaleKey( SP_dodge + 10, 1,  1.5, 1.5);

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );


entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

--setMoveKey(  SP_dodge+5,  0, 1700,  0,   0);
--setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避していない場合
------------------------------------------------------
--敵キャラ
changeAnime( SP_ATK_3+32, 1, 108);          -- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK_3+26, 1,  180,    0,  0);
setMoveKey(  SP_ATK_3+30, 1,  120,    0,  0);
setMoveKey(  SP_ATK_3+31, 1,  120,    0,  0);
setMoveKey(  SP_ATK_3+32, 1,  150,    0,  0);
setMoveKey(  SP_ATK_3+35, 1,  150,    0,  0);
setMoveKey(  SP_ATK_3+42, 1,  400,    0, 0);

setScaleKey( SP_ATK_3+26, 1,  1.5, 1.5);
setScaleKey( SP_ATK_3+30, 1,  1.5, 1.5);
setScaleKey( SP_ATK_3+42, 1,  0.8, 0.8);

setRotateKey( SP_ATK_3 + 26, 1, 0 );
setRotateKey( SP_ATK_3 + 42, 1, 0 );

-- ヒットエフェクト
hit_eff_1 = entryEffect( SP_ATK_3+32,  4,  0x100,  -1,  0,  150, 0);--HIT
hit_eff_2 = entryEffect( SP_ATK_3+32,  906,  0x100,  -1,  0,  150, 0);
hit_eff_3 = entryEffect( SP_ATK_3+32,  908,  0x100,  -1,  0,  150, 0);

setEffScaleKey( SP_ATK_3+32, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_ATK_3+32, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_ATK_3+32, hit_eff_3, 1.5, 1.5);

--音
playSe( SP_ATK_3 + 32, SE_09);

--changeAnime( SP_ATK_3+36, 0, 31);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+40, 4,  5, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
setDisp( SP_ATK_4, 0, 0);
setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);

-- ** 爆発 ** --
bakuhatsu = entryEffect( SP_ATK_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( SP_ATK_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_ATK_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_ATK_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( SP_ATK_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_ATK_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_ATK_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( SP_ATK_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( SP_ATK_4 + 0, bakuhatsu, 0 );
setEffRotateKey( SP_ATK_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( SP_ATK_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( SP_ATK_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( SP_ATK_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( SP_ATK_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( SP_ATK_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( SP_ATK_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( SP_ATK_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( SP_ATK_4 + 2, hibiware, 0 );
setEffRotateKey( SP_ATK_4 + 100, hibiware, 0 );

setEffAlphaKey( SP_ATK_4 + 2, hibiware, 0 );
setEffAlphaKey( SP_ATK_4 + 13, hibiware, 0 );
setEffAlphaKey( SP_ATK_4 + 14, hibiware, 255 );
setEffAlphaKey( SP_ATK_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( SP_ATK_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( SP_ATK_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( SP_ATK_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( SP_ATK_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( SP_ATK_4 + 14, shuchusen3, 0 );
setEffRotateKey( SP_ATK_4 + 46, shuchusen3, 0 );

setEffAlphaKey( SP_ATK_4 + 14, shuchusen3, 255 );
setEffAlphaKey( SP_ATK_4 + 28, shuchusen3, 255 );
setEffAlphaKey( SP_ATK_4 + 30, shuchusen3, 252 );
setEffAlphaKey( SP_ATK_4 + 32, shuchusen3, 242 );
setEffAlphaKey( SP_ATK_4 + 34, shuchusen3, 227 );
setEffAlphaKey( SP_ATK_4 + 36, shuchusen3, 205 );
setEffAlphaKey( SP_ATK_4 + 38, shuchusen3, 176 );
setEffAlphaKey( SP_ATK_4 + 40, shuchusen3, 142 );
setEffAlphaKey( SP_ATK_4 + 42, shuchusen3, 101 );
setEffAlphaKey( SP_ATK_4 + 44, shuchusen3, 54 );
setEffAlphaKey( SP_ATK_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( SP_ATK_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( SP_ATK_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( SP_ATK_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( SP_ATK_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( SP_ATK_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( SP_ATK_4 + 14, shuchusen4, 0 );
setEffRotateKey( SP_ATK_4 + 100, shuchusen4, 0 );

setEffAlphaKey( SP_ATK_4 + 14, shuchusen4, 255 );
setEffAlphaKey( SP_ATK_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( SP_ATK_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( SP_ATK_4 + 14, ctga, 14, 20 );

setEffMoveKey( SP_ATK_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( SP_ATK_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( SP_ATK_4 + 14, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 15, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 16, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 17, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 18, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 19, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 20, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 21, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 22, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 23, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 24, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 25, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 26, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 27, ctga, -10.9 );
setEffRotateKey( SP_ATK_4 + 28, ctga, -14.9 );
setEffRotateKey( SP_ATK_4 + 100, ctga, -14.9 );

setEffAlphaKey( SP_ATK_4 + 14, ctga, 255 );
setEffAlphaKey( SP_ATK_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( SP_ATK_4 + 0, 1, 1 );
changeAnime( SP_ATK_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( SP_ATK_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( SP_ATK_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( SP_ATK_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_ATK_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_ATK_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( SP_ATK_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( SP_ATK_4 + 0, 1, 0.2, 0.2 );
setScaleKey( SP_ATK_4 + 1, 1, 0.2, 0.2 );
setScaleKey( SP_ATK_4 + 2, 1, 0.25, 0.25 );
setScaleKey( SP_ATK_4 + 3, 1, 0.25, 0.25 );
setScaleKey( SP_ATK_4 + 4, 1, 0.46, 0.46 );
setScaleKey( SP_ATK_4 + 5, 1, 0.46, 0.46 );
setScaleKey( SP_ATK_4 + 6, 1, 0.55, 0.55 );
setScaleKey( SP_ATK_4 + 7, 1, 0.55, 0.55 );
setScaleKey( SP_ATK_4 + 8, 1, 0.71, 0.71 );
setScaleKey( SP_ATK_4 + 9, 1, 0.71, 0.71 );
setScaleKey( SP_ATK_4 + 10, 1, 0.97, 0.97 );
setScaleKey( SP_ATK_4 + 11, 1, 0.97, 0.97 );
setScaleKey( SP_ATK_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( SP_ATK_4 + 13, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 14, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 15, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 16, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 17, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 18, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 19, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 20, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 21, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 22, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 23, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 24, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 25, 1, 1.1, 1.1 );
setScaleKey( SP_ATK_4 + 26, 1, 1.2, 1.2 );
setScaleKey( SP_ATK_4 + 100, 1, 1.2, 1.2 );

setRotateKey( SP_ATK_4 + 0, 1, -40 );
setRotateKey( SP_ATK_4 + 1, 1, -40 );
setRotateKey( SP_ATK_4 + 2, 1, 80 );
setRotateKey( SP_ATK_4 + 3, 1, 80 );
setRotateKey( SP_ATK_4 + 4, 1, 200 );
setRotateKey( SP_ATK_4 + 5, 1, 200 );
setRotateKey( SP_ATK_4 + 6, 1, 360 );
setRotateKey( SP_ATK_4 + 7, 1, 360 );
setRotateKey( SP_ATK_4 + 8, 1, 558 );
setRotateKey( SP_ATK_4 + 9, 1, 558 );
setRotateKey( SP_ATK_4 + 10, 1, 425 );
setRotateKey( SP_ATK_4 + 11, 1, 425 );
setRotateKey( SP_ATK_4 + 12, 1, -40 );
setRotateKey( SP_ATK_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( SP_ATK_4 + 0, SE_10 );  --爆発音
playSe( SP_ATK_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( SP_ATK_4 + 10 );
entryFade( SP_ATK_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( SP_ATK_4 + 100 );

end
