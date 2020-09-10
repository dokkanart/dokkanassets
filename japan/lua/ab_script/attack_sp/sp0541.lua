print ("[lua]sp0022");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 100063
SP_02 = 100064
SP_03 = 100065

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



multi_frm = 2;

setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
spep_0=0;

--味方キャラの動き
setDisp( spep_0, 0, 1);
setDisp( spep_0+68, 0, 0);

changeAnime( spep_0, 0, 0);-- 立ち
changeAnime(  spep_0+30, 0, 17);

setMoveKey(   spep_0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+70,   0,    0, -54,   0);

setScaleKey(   spep_0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+70,   0, 1.5, 1.5);

setRotateKey( spep_0  , 0, 0 );
setRotateKey( spep_0  + 1, 0, 0 );
setRotateKey( spep_0  + 2, 0, 0 );
setRotateKey( spep_0  + 3, 0, 0 );
setRotateKey( spep_0  + 4, 0, 0 );
setRotateKey( spep_0  + 5, 0, 0 );
setRotateKey( spep_0  + 70, 0, 0 );

setShakeChara( spep_0+30, 0, 19, 5);

--気のエフェクト
ki_b = entryEffect(  spep_0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_b, 255 );
setEffAlphaKey( spep_0 + 70, ki_b, 255 );
setEffRotateKey( spep_0 + 30, ki_b, 0 );
setEffRotateKey( spep_0 + 70, ki_b, 0 );

--気のエフェクト
ki_f = entryEffect(  spep_0+30,   1500,   0x100, -1,  0,  -4,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_f, 0, -4 , 0 );
setEffMoveKey( spep_0 + 70, ki_f, 0, -4 , 0 );
setEffScaleKey( spep_0 + 30, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_f, 255 );
setEffAlphaKey( spep_0 + 70, ki_f, 255 );
setEffRotateKey( spep_0 + 30, ki_f, 0 );
setEffRotateKey( spep_0 + 70, ki_f, 0 );

--オーラのエフェクト
aura = entryEffectLife(  spep_0 +30,   311, 40, 0x80,  -1,  0,  -174,  0); -- オーラ

setEffMoveKey( spep_0 + 30, aura,  0, -174,   0 );
setEffMoveKey( spep_0 + 70, aura,  0, -174,   0 );
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5 );
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 30, aura, 255 );
setEffAlphaKey( spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );


-- 書き文字エントリー
ctzuzun = entryEffectLife(  spep_0 +30,   10013, 40, 0x100,  -1,  0, 200, 200); -- ズズン

setEffMoveKey( spep_0 + 30, ctzuzun, 0, 200, 200 );
setEffMoveKey( spep_0 + 70, ctzuzun,  0, 200, 200 );
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1 );
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0 );
setEffScaleKey( spep_0 + 50, ctzuzun, 2.0, 2.0 );
setEffScaleKey( spep_0 + 70, ctzuzun, 2.5, 2.5 );
setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 70, ctzuzun, 0 );
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );
setEffShake(spep_0 +30, ctzuzun, 40, 7);

--SE
playSe( spep_0 +30, SE_02);
playSe( spep_0 +30, SE_01);

--白フェード
entryFade( spep_0+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+70;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--味方キャラの動き
setDisp( spep_1, 0, 1);
setDisp( spep_1+98, 0, 0);

changeAnime( spep_1, 0, 30);   

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1+96,   0,    0, -54,   0);

setScaleKey(   spep_1,   0, 1.5, 1.5);
setScaleKey(   spep_1+96,   0, 1.5, 1.5);

setRotateKey( spep_1  , 0, 0 );
setRotateKey( spep_1+96 , 0, 0 );


--気のエフェクト
ki_b2 = entryEffect(  spep_1,   1503,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_1 , ki_b2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ki_b2, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki_b2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ki_b2, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki_b2, 255 );
setEffAlphaKey( spep_1 + 96, ki_b2, 255 );
setEffRotateKey( spep_1 , ki_b2, 0 );
setEffRotateKey( spep_1 + 96, ki_b2, 0 );

--気のエフェクト
ki_f2 = entryEffect(  spep_1,   1502,   0x100, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_1 , ki_f2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ki_f2, 0, 0, 0 );
setEffScaleKey( spep_1 , ki_f2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ki_f2, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki_f2, 255 );
setEffAlphaKey( spep_1 + 96, ki_f2, 255 );
setEffRotateKey( spep_1 , ki_f2, 0 );
setEffRotateKey( spep_1 + 96, ki_f2, 0 );

--オーラのエフェクト
aura2 = entryEffectLife(  spep_1 ,   311, 96, 0x80,  -1,  0,  -174,  0); -- オーラ

setEffMoveKey( spep_1 , aura2,  0, -174,   0 );
setEffMoveKey( spep_1 + 96, aura2,  0, -174,   0 );
setEffScaleKey( spep_1 , aura2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 96, aura2, 1.5, 1.5 );
setEffAlphaKey( spep_1 , aura2, 255 );
setEffAlphaKey( spep_1 + 96, aura2, 255 );
setEffRotateKey( spep_1 , aura2, 0 );
setEffRotateKey( spep_1 + 96, aura2, 0 );



--手のやつ
kame_hand = entryEffectLife( spep_1, SP_01, 96,0x100,     -1,  -92,  115,  0);   -- 手のカメハメ波部

setEffMoveKey( spep_1 , kame_hand,  -92,  115, 0 );
setEffMoveKey( spep_1 + 96, kame_hand, -92,  115,  0  );
setEffScaleKey( spep_1 , kame_hand, 0.5, 0.5 );
setEffScaleKey( spep_1 + 96, kame_hand, 0.5, 0.5 );
setEffAlphaKey( spep_1 , kame_hand, 255 );
setEffAlphaKey( spep_1 + 96, kame_hand, 255 );
setEffRotateKey( spep_1 , kame_hand, 0 );
setEffRotateKey( spep_1 + 96, kame_hand, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_1 +20,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_1 +20, ctgogo, 72, 10 );

setEffMoveKey( spep_1 +20, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 +92, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 +20, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 +84, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 +86, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 +88, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 +90, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 +92, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 +20, ctgogo, 0 );
setEffRotateKey( spep_1 +92, ctgogo, 0 );

setEffAlphaKey( spep_1 +20, ctgogo, 0 );
setEffAlphaKey( spep_1 +21, ctgogo, 255 );
setEffAlphaKey( spep_1 +90, ctgogo, 255 );
setEffAlphaKey( spep_1 +92, ctgogo, 255 );

--SE
playSe(spep_1+4 , SE_03);
playSe( spep_1+20, SE_04); --ゴゴゴ

--白フェード
entryFade( spep_1+88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+96;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 1);
setDisp( spep_3+108, 0, 0);

changeAnime( spep_3, 0, 31);

setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+6,    0,   -600,  0,   0);
setMoveKey(  spep_3+14,    0,   -100,  0,   0);
setMoveKey(  spep_3+42,    0,   -100,  0,   0);
setMoveKey(  spep_3+44,    0,   -1100,  0,   0);
setMoveKey(  spep_3+108,    0,   -1100,  0,   0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

entryEffectLife( spep_3, 920, 106, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--[[
-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);
]]--

--SE
playSe( spep_3, SE_07);
playSe( spep_3+44, SE_07);

--黒背景
entryFadeBg( spep_3, 0, 110, 0,0, 0, 0, 180);          -- ベース暗め　背景

--白フェード
entryFade( spep_3+98, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+108;
------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------


--setMoveKey(spep_4-1,0, 0, -54,0);
--setMoveKey(spep_4,0, 0, -800,0);
setDisp( spep_4, 0, 0);

Semaru = entryEffectLife(spep_4,151636, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_4, Semaru, 1.0, 0.5);
setEffScaleKey( spep_4+90, Semaru, 1.0, 0.5);
setEffMoveKey( spep_4, Semaru, 0, 0, 0);
setEffMoveKey( spep_4+90, Semaru, 0, 0, 0);
setEffRotateKey( spep_4, Semaru, 0);
setEffRotateKey( spep_4+90, Semaru, 0);
setEffAlphaKey( spep_4, Semaru, 255);
setEffAlphaKey( spep_4+90, Semaru, 255);

setDisp( spep_4, 1, 1);

changeAnime( spep_4, 1, 104);                        -- ガード

setMoveKey(  spep_4-2,    1, 9000, 0,   0);
setMoveKey(  spep_4-1,    1,  300,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
setMoveKey(  spep_4+60,    1,   250,  -30,   0);

setScaleKey( spep_4-1,    1,  1.0, 1.0);
setScaleKey(  spep_4+60,   1,   2.5,  2.5);

playSe( spep_4, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ

setEffShake(spep_4, ctZudodo, 90, 40);

setEffScaleKey( spep_4, ctZudodo, 3.3, 3.3);
setEffScaleKey( spep_4+90, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep_4, ctZudodo, 70);
setEffRotateKey(spep_4+90, ctZudodo, 70);
setEffAlphaKey(spep_4, ctZudodo, 255);
setEffAlphaKey(spep_4+60, ctZudodo, 255);
setEffAlphaKey(spep_4+90, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 90, 20);

entryFadeBg( spep_4, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, sen7, 0);
setEffRotateKey(spep_4+90, sen7, 0);
setEffScaleKey( spep_4, sen7, 1.25, 1.0);
setEffScaleKey( spep_4+90, sen7, 1.25, 1.0);
setEffAlphaKey(spep_4, sen7, 255);
setEffAlphaKey(spep_4+90, sen7, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    

    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 250,  -30, 0);
    setScaleKey(SP_dodge , 1 ,2.5,  2.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 250,  -30, 0);
    setScaleKey(SP_dodge+10 , 1 ,2.5,  2.5 );
    setRotateKey(SP_dodge+10,   1, 0);

    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
-- 敵吹っ飛ぶモーション
setDisp(spep_4+89,1,0);

changeAnime( spep_4+62, 1, 108);

setMoveKey(  spep_4+61, 1,  250,    -30,  0);
setMoveKey(  spep_4+62, 1,  230,    -30,  0);
setMoveKey(  spep_4+63, 1,  250,    -30,  0);
setMoveKey(  spep_4+89, 1,  300,    0,  0);
setScaleKey( spep_4+62, 1,  2.5, 2.5);
setScaleKey( spep_4+89, 1,  0.7, 0.7);

setRotateKey( spep_4, 1, 0); 
setRotateKey( spep_4+61, 1, 0); 
setRotateKey( spep_4+62, 1, 30); 
setRotateKey( spep_4+63, 1, 345); 
setRotateKey( spep_4+64, 1, 0); 
setRotateKey( spep_4+89, 1, 0); 

--SE
playSe( spep_4+62, SE_09);

-- しろフェード
entryFade( spep_4+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+90;
------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

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
setScaleKey( spep_5 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
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

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
spep_0=0;

--味方キャラの動き
setDisp( spep_0, 0, 1);
setDisp( spep_0+68, 0, 0);

changeAnime( spep_0, 0, 0);-- 立ち
changeAnime(  spep_0+30, 0, 17);

setMoveKey(   spep_0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+70,   0,    0, -54,   0);

setScaleKey(   spep_0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+70,   0, 1.5, 1.5);

setRotateKey( spep_0  , 0, 0 );
setRotateKey( spep_0  + 1, 0, 0 );
setRotateKey( spep_0  + 2, 0, 0 );
setRotateKey( spep_0  + 3, 0, 0 );
setRotateKey( spep_0  + 4, 0, 0 );
setRotateKey( spep_0  + 5, 0, 0 );
setRotateKey( spep_0  + 70, 0, 0 );

setShakeChara( spep_0+30, 0, 19, 5);

--気のエフェクト
ki_b = entryEffect(  spep_0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_b, 255 );
setEffAlphaKey( spep_0 + 70, ki_b, 255 );
setEffRotateKey( spep_0 + 30, ki_b, 0 );
setEffRotateKey( spep_0 + 70, ki_b, 0 );

--気のエフェクト
ki_f = entryEffect(  spep_0+30,   1500,   0x100, -1,  0,  -4,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_f, 0, -4 , 0 );
setEffMoveKey( spep_0 + 70, ki_f, 0, -4 , 0 );
setEffScaleKey( spep_0 + 30, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_f, 255 );
setEffAlphaKey( spep_0 + 70, ki_f, 255 );
setEffRotateKey( spep_0 + 30, ki_f, 0 );
setEffRotateKey( spep_0 + 70, ki_f, 0 );

--オーラのエフェクト
aura = entryEffectLife(  spep_0 +30,   311, 40, 0x80,  -1,  0,  -174,  0); -- オーラ

setEffMoveKey( spep_0 + 30, aura,  0, -174,   0 );
setEffMoveKey( spep_0 + 70, aura,  0, -174,   0 );
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5 );
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 30, aura, 255 );
setEffAlphaKey( spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );


-- 書き文字エントリー
ctzuzun = entryEffectLife(  spep_0 +30,   10013, 40, 0x100,  -1,  0, 200, 200); -- ズズン

setEffMoveKey( spep_0 + 30, ctzuzun, 0, 200, 200 );
setEffMoveKey( spep_0 + 70, ctzuzun,  0, 200, 200 );
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1 );
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0 );
setEffScaleKey( spep_0 + 50, ctzuzun, 2.0, 2.0 );
setEffScaleKey( spep_0 + 70, ctzuzun, 2.5, 2.5 );
setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 70, ctzuzun, 0 );
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );
setEffShake(spep_0 +30, ctzuzun, 40, 7);

--SE
playSe( spep_0 +30, SE_02);
playSe( spep_0 +30, SE_01);

--白フェード
entryFade( spep_0+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+70;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--味方キャラの動き
setDisp( spep_1, 0, 1);
setDisp( spep_1+98, 0, 0);

changeAnime( spep_1, 0, 30);   

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1+96,   0,    0, -54,   0);

setScaleKey(   spep_1,   0, 1.5, 1.5);
setScaleKey(   spep_1+96,   0, 1.5, 1.5);

setRotateKey( spep_1  , 0, 0 );
setRotateKey( spep_1+96 , 0, 0 );


--気のエフェクト
ki_b2 = entryEffect(  spep_1,   1503,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_1 , ki_b2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ki_b2, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki_b2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ki_b2, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki_b2, 255 );
setEffAlphaKey( spep_1 + 96, ki_b2, 255 );
setEffRotateKey( spep_1 , ki_b2, 0 );
setEffRotateKey( spep_1 + 96, ki_b2, 0 );

--気のエフェクト
ki_f2 = entryEffect(  spep_1,   1502,   0x100, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_1 , ki_f2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, ki_f2, 0, 0, 0 );
setEffScaleKey( spep_1 , ki_f2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, ki_f2, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki_f2, 255 );
setEffAlphaKey( spep_1 + 96, ki_f2, 255 );
setEffRotateKey( spep_1 , ki_f2, 0 );
setEffRotateKey( spep_1 + 96, ki_f2, 0 );

--オーラのエフェクト
aura2 = entryEffectLife(  spep_1 ,   311, 96, 0x80,  -1,  0,  -174,  0); -- オーラ

setEffMoveKey( spep_1 , aura2,  0, -174,   0 );
setEffMoveKey( spep_1 + 96, aura2,  0, -174,   0 );
setEffScaleKey( spep_1 , aura2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 96, aura2, 1.5, 1.5 );
setEffAlphaKey( spep_1 , aura2, 255 );
setEffAlphaKey( spep_1 + 96, aura2, 255 );
setEffRotateKey( spep_1 , aura2, 0 );
setEffRotateKey( spep_1 + 96, aura2, 0 );



--手のやつ
kame_hand = entryEffectLife( spep_1, SP_01, 96,0x100,     -1,  -104,  125,  0);   -- 手のカメハメ波部

setEffMoveKey( spep_1 , kame_hand,  -104,  125, 0 );
setEffMoveKey( spep_1 + 96, kame_hand, -104,  125,  0  );
setEffScaleKey( spep_1 , kame_hand, 0.5, 0.5 );
setEffScaleKey( spep_1 + 96, kame_hand, 0.5, 0.5 );
setEffAlphaKey( spep_1 , kame_hand, 255 );
setEffAlphaKey( spep_1 + 96, kame_hand, 255 );
setEffRotateKey( spep_1 , kame_hand, 0 );
setEffRotateKey( spep_1 + 96, kame_hand, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 +8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 +8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_1 +20,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_1 +20, ctgogo, 72, 10 );

setEffMoveKey( spep_1 +20, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 +92, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 +20, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 +84, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 +86, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 +88, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 +90, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 +92, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 +20, ctgogo, 0 );
setEffRotateKey( spep_1 +92, ctgogo, 0 );

setEffAlphaKey( spep_1 +20, ctgogo, 0 );
setEffAlphaKey( spep_1 +21, ctgogo, 255 );
setEffAlphaKey( spep_1 +90, ctgogo, 255 );
setEffAlphaKey( spep_1 +92, ctgogo, 255 );

--SE
playSe(spep_1+4 , SE_03);
playSe( spep_1+20, SE_04); --ゴゴゴ

--白フェード
entryFade( spep_1+88, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+96;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 1);
setDisp( spep_3+108, 0, 0);

changeAnime( spep_3, 0, 31);

setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+6,    0,   -600,  0,   0);
setMoveKey(  spep_3+14,    0,   -100,  0,   0);
setMoveKey(  spep_3+42,    0,   -100,  0,   0);
setMoveKey(  spep_3+44,    0,   -1100,  0,   0);
setMoveKey(  spep_3+108,    0,   -1100,  0,   0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

entryEffectLife( spep_3, 920, 106, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--[[
-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);
]]--

--SE
playSe( spep_3, SE_07);
playSe( spep_3+44, SE_07);

--黒背景
entryFadeBg( spep_3, 0, 110, 0,0, 0, 0, 180);          -- ベース暗め　背景

--白フェード
entryFade( spep_3+98, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+108;
------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------


--setMoveKey(spep_4-1,0, 0, -54,0);
--setMoveKey(spep_4,0, 0, -800,0);
setDisp( spep_4, 0, 0);

Semaru = entryEffectLife(spep_4,151636, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_4, Semaru, 1.0, 0.5);
setEffScaleKey( spep_4+90, Semaru, 1.0, 0.5);
setEffMoveKey( spep_4, Semaru, 0, 0, 0);
setEffMoveKey( spep_4+90, Semaru, 0, 0, 0);
setEffRotateKey( spep_4, Semaru, 0);
setEffRotateKey( spep_4+90, Semaru, 0);
setEffAlphaKey( spep_4, Semaru, 255);
setEffAlphaKey( spep_4+90, Semaru, 255);

setDisp( spep_4, 1, 1);

changeAnime( spep_4, 1, 104);                        -- ガード

setMoveKey(  spep_4-2,    1, 9000, 0,   0);
setMoveKey(  spep_4-1,    1,  300,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
setMoveKey(  spep_4+60,    1,   250,  -30,   0);

setScaleKey( spep_4-1,    1,  1.0, 1.0);
setScaleKey(  spep_4+60,   1,   2.5,  2.5);

playSe( spep_4, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ

setEffShake(spep_4, ctZudodo, 90, 40);

setEffScaleKey( spep_4, ctZudodo, 3.3, 3.3);
setEffScaleKey( spep_4+90, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep_4, ctZudodo, 0);
setEffRotateKey(spep_4+90, ctZudodo, 0);
setEffAlphaKey(spep_4, ctZudodo, 255);
setEffAlphaKey(spep_4+60, ctZudodo, 255);
setEffAlphaKey(spep_4+90, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 90, 20);

entryFadeBg( spep_4, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, sen7, 0);
setEffRotateKey(spep_4+90, sen7, 0);
setEffScaleKey( spep_4, sen7, 1.25, 1.0);
setEffScaleKey( spep_4+90, sen7, 1.25, 1.0);
setEffAlphaKey(spep_4, sen7, 255);
setEffAlphaKey(spep_4+90, sen7, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+40 ; --エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-14,SE0,0);--音を止める

pauseAll( SP_dodge, 67);


--キャラクターの固定

setMoveKey(SP_dodge, 1, 250,  -30, 0);
setScaleKey(SP_dodge , 1 ,2.5,  2.5 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+10, 1, 250,  -30, 0);
setScaleKey(SP_dodge+10 , 1 ,2.5,  2.5 );
setRotateKey(SP_dodge+10,   1, 0);


speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);
    
do return end
else end
------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
-- 敵吹っ飛ぶモーション
setDisp(spep_4+89,1,0);

changeAnime( spep_4+62, 1, 108);

setMoveKey(  spep_4+61, 1,  250,    -30,  0);
setMoveKey(  spep_4+62, 1,  230,    -30,  0);
setMoveKey(  spep_4+63, 1,  250,    -30,  0);
setMoveKey(  spep_4+89, 1,  300,    0,  0);
setScaleKey( spep_4+62, 1,  2.5, 2.5);
setScaleKey( spep_4+89, 1,  0.7, 0.7);

setRotateKey( spep_4, 1, 0); 
setRotateKey( spep_4+61, 1, 0); 
setRotateKey( spep_4+62, 1, 30); 
setRotateKey( spep_4+63, 1, 345); 
setRotateKey( spep_4+64, 1, 0); 
setRotateKey( spep_4+89, 1, 0); 

--SE
playSe( spep_4+62, SE_09);

-- しろフェード
entryFade( spep_4+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+90;
------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

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
setScaleKey( spep_5 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
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

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);

end