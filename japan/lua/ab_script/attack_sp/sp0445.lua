--sp0445 ターレス キルドライバーVer2

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 151427;--味方溜め
SP_02 = 151428;--放ち
SP_03 = 151429;--被弾
SP_01e = 151430;--敵溜め
SP_04 = 1676;--大爆発

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち


setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   4,   0,    0, 0,   0);
setMoveKey(   19,   0,    0, 0,   0);
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

------------------------------------------------------
-- アイドリング(20F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep0 = 0;

entryFade( spep0+17, 2, 3, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setScaleKey(   spep0+19,   0, 1.5, 1.5);
setDisp( spep0+19, 0, 0);


------------------------------------------------------
-- きため(90F)
------------------------------------------------------
spep1 = spep0 + 20;


entryFadeBg( spep1, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryEffect( spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe(spep1+5, SE_04);
--playSe(spep1+40, 62);
playSe(spep1+40, 9);


kitame = entryEffect( spep1, SP_01, 0x100, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep1, kitame,  0,  0,  0);
setEffMoveKey( spep1+90, kitame,  0,  0,  0);
setEffScaleKey( spep1, kitame, 1.0, 1.0);
setEffScaleKey( spep1+90, kitame, 1.0, 1.0);
setEffAlphaKey( spep1, kitame, 255);
setEffAlphaKey( spep1+90, kitame, 255);
setEffAlphaKey( spep1+92, kitame, 0);
setEffRotateKey( spep1, kitame, 0);
setEffRotateKey( spep1+90, kitame, 0);

speff = entryEffect( spep1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade(spep1+84, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+10, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep1+10,ctgogo,100,500,0);
setEffScaleKey( spep1+10, ctgogo, 0.7, 0.7);
setEffRotateKey( spep1+10, ctgogo, 10);
setEffAlphaKey( spep1+10, ctgogo, 255);
setEffShake(spep1+10, ctgogo, 69, 10);



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep2 = spep1+90;



playSe( spep2, SE_05);

speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep2, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep2, shuchusenct, 0, 0, 0);
setEffScaleKey( spep2, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep2, shuchusenct, 255);
setEffRotateKey( spep2, shuchusenct, 0);

entryFade( spep2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


------------------------------------------------------
-- カメハメハ発射(100F)
------------------------------------------------------
spep3 = spep2+90;


entryFadeBg( spep3, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景

kamehame_beam = entryEffect( spep3, SP_02, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep3,kamehame_beam, 0,  0,   0);
setEffMoveKey(  spep3+100,kamehame_beam, 0,  0,   0);
setEffScaleKey( spep3,kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep3+100,kamehame_beam, 1.0, 1.0);
setEffRotateKey( spep3,kamehame_beam, 0);
setEffRotateKey( spep3+100,kamehame_beam, 0);
setEffAlphaKey( spep3,kamehame_beam, 255);
setEffAlphaKey( spep3+100,kamehame_beam, 255);
setEffAlphaKey( spep3+101,kamehame_beam, 0);

playSe( spep3+2, SE_06);
playSe( spep3+40, SE_07);

entryFade( spep3+36, 2, 3, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


sen2 = entryEffectLife( spep3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep3, sen2, 270);
setEffScaleKey(  spep3, sen2, 1.5, 1.5);

shuchusen = entryEffectLife(spep3, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep3, shuchusen, 1.2, 1.2);


entryFade(spep3+95, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep4 = spep3+100;


entryFadeBg( spep4, 0, 100, 0,0, 0, 0, 210);          -- ベース暗め　背景


setDisp( spep4, 0, 0);
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 104);                        -- ガード
setMoveKey(  spep4-1,    1,  235,  0,   0);
setMoveKey(  spep4,    1,  235,  0,   0);
setMoveKey(  spep4+1,    1,  235,  0,   0);
setScaleKey( spep4-1,    1,  0.9, 0.9);
setScaleKey( spep4,    1,  0.9, 0.9);

kamehame_beam2 = entryEffect( spep4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep4, 1, 99, 10);
entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudon = entryEffectLife( spep4, 10014, 100, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep4,ctZudon,100,370,0);
setEffMoveKey(spep4+70,ctZudon,100,370,0);
setEffShake(spep4, ctZudon, 99, 10);
setEffScaleKey( spep4, ctZudon, 3.0, 3.0);
setEffRotateKey(spep4, ctZudon, 70);
setEffAlphaKey(spep4, ctZudon, 255);
------------------------------------------------------
-- 回避(340)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  235,  0,   0);
setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,100,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 70);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+0,    0,  1120,  0, 0);
setMoveKey(   SP_dodge+1,    0,  1120,  0, 0);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.8, 1.8);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);


entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);


do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setScaleKey(  spep4+58,   1,   1.9,  1.9);

playSe( spep4+20, SE_07);

--setEffScaleKey(spep4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep4+82, 1, 0);  -- ダメージ振動等

playSe( spep4+58, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep4+58, 1, 108);
setMoveKey(  spep4+58, 1,  150,    0,  0);
--setMoveKey(  spep4+58, 1,  50,    0,  0);
setMoveKey(  spep4+99, 1,  310,    0,  0);
setScaleKey( spep4+99, 1,  1.8, 1.8);

setEffAlphaKey(spep4+99, ctZudon, 255);
setEffAlphaKey(spep4+100, ctZudon, 0);


--370〜469F

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep5 = spep4+100;



entryFade( spep5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep5 , 1 ,0);

-- ** ギャン ** --
gyan = entryEffectLife( spep5, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep5, gyan, 0, 0, 0);
setEffScaleKey( spep5, gyan,1.0, 1.0);
setEffAlphaKey( spep5, gyan, 255);
setEffShake( spep5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep5, ctgyan, 255);
setEffScaleKey( spep5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep5, ctgyan, 255);
setEffAlphaKey( spep5+60, ctgyan, 80);
setEffShake( spep5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep5+8, SE_09);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep6 = spep5+60;


exp = entryEffect( spep6, SP_04, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep6, exp, 0, 0, 0);
setEffScaleKey( spep6, exp, 1.2, 1.2);
setEffAlphaKey( spep6, exp, 255);
setEffRotateKey( spep6, exp, 0);

playSe( spep6, SE_10);
playSe( spep6+110, SE_10);


-- ダメージ表示
dealDamage(spep6+16);
entryFade( spep6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep6+180);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(20F)
------------------------------------------------------

spep0 = 0;

entryFade( spep0+17, 2, 3, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setScaleKey(   spep0+19,   0, 1.5, 1.5);
setDisp( spep0+19, 0, 0);


------------------------------------------------------
-- きため(90F)
------------------------------------------------------
spep1 = spep0 + 20;


entryFadeBg( spep1, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryEffect( spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe(spep1+5, SE_04);
--playSe(spep1+40, 62);
playSe(spep1+40, 9);


kitame = entryEffect( spep1, SP_01e, 0x100, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep1, kitame,  0,  0,  0);
setEffMoveKey( spep1+90, kitame,  0,  0,  0);
setEffScaleKey( spep1, kitame, 1.0, 1.0);
setEffScaleKey( spep1+90, kitame, 1.0, 1.0);
setEffAlphaKey( spep1, kitame, 255);
setEffAlphaKey( spep1+90, kitame, 255);
setEffAlphaKey( spep1+92, kitame, 0);
setEffRotateKey( spep1, kitame, 0);
setEffRotateKey( spep1+90, kitame, 0);

--speff = entryEffect( spep1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade(spep1+84, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+10, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep1+10,ctgogo,100,500,0);
setEffScaleKey( spep1+10, ctgogo, -0.7, 0.7);
setEffRotateKey( spep1+10, ctgogo, 10);
setEffAlphaKey( spep1+10, ctgogo, 255);
setEffShake(spep1+10, ctgogo, 69, 10);



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep2 = spep1+90;



playSe( spep2, SE_05);

speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep2, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep2, shuchusenct, 0, 0, 0);
setEffScaleKey( spep2, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep2, shuchusenct, 255);
setEffRotateKey( spep2, shuchusenct, 0);

entryFade( spep2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


------------------------------------------------------
-- カメハメハ発射(100F)
------------------------------------------------------
spep3 = spep2+90;


entryFadeBg( spep3, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景

kamehame_beam = entryEffect( spep3, SP_02, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep3,kamehame_beam, 0,  0,   0);
setEffMoveKey(  spep3+100,kamehame_beam, 0,  0,   0);
setEffScaleKey( spep3,kamehame_beam, -1.0, 1.0);
setEffScaleKey( spep3+100,kamehame_beam, -1.0, 1.0);
setEffRotateKey( spep3,kamehame_beam, 0);
setEffRotateKey( spep3+100,kamehame_beam, 0);
setEffAlphaKey( spep3,kamehame_beam, 255);
setEffAlphaKey( spep3+100,kamehame_beam, 255);
setEffAlphaKey( spep3+101,kamehame_beam, 0);

playSe( spep3+2, SE_06);
playSe( spep3+40, SE_07);

entryFade( spep3+36, 2, 3, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


sen2 = entryEffectLife( spep3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep3, sen2, 270);
setEffScaleKey(  spep3, sen2, 1.5, 1.5);

shuchusen = entryEffectLife(spep3, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep3, shuchusen, 1.2, 1.2);


entryFade(spep3+95, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep4 = spep3+100;


entryFadeBg( spep4, 0, 100, 0,0, 0, 0, 210);          -- ベース暗め　背景


setDisp( spep4, 0, 0);
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 104);                        -- ガード
setMoveKey(  spep4-1,    1,  235,  0,   0);
setMoveKey(  spep4,    1,  235,  0,   0);
setMoveKey(  spep4+1,    1,  235,  0,   0);
setScaleKey( spep4-1,    1,  0.9, 0.9);
setScaleKey( spep4,    1,  0.9, 0.9);

kamehame_beam2 = entryEffect( spep4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep4, 1, 99, 10);
entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudon = entryEffectLife( spep4, 10014, 100, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep4,ctZudon,100,370,0);
setEffMoveKey(spep4+70,ctZudon,100,370,0);
setEffShake(spep4, ctZudon, 99, 10);
setEffScaleKey( spep4, ctZudon, 3.0, 3.0);
setEffRotateKey(spep4, ctZudon, 0);
setEffAlphaKey(spep4, ctZudon, 255);
------------------------------------------------------
-- 回避(340)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  235,  0,   0);
setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,100,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 0);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+0,    0,  1120,  0, 0);
setMoveKey(   SP_dodge+1,    0,  1120,  0, 0);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.8, 1.8);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);



entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);


do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setScaleKey(  spep4+58,   1,   1.9,  1.9);

playSe( spep4+20, SE_07);

--setEffScaleKey(spep4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep4+82, 1, 0);  -- ダメージ振動等

playSe( spep4+58, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep4+58, 1, 108);
setMoveKey(  spep4+58, 1,  150,    0,  0);
--setMoveKey(  spep4+58, 1,  50,    0,  0);
setMoveKey(  spep4+99, 1,  310,    0,  0);
setScaleKey( spep4+99, 1,  1.8, 1.8);

setEffAlphaKey(spep4+99, ctZudon, 255);
setEffAlphaKey(spep4+100, ctZudon, 0);


--370〜469F

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep5 = spep4+100;



entryFade( spep5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep5 , 1 ,0);

-- ** ギャン ** --
gyan = entryEffectLife( spep5, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep5, gyan, 0, 0, 0);
setEffScaleKey( spep5, gyan,1.0, 1.0);
setEffAlphaKey( spep5, gyan, 255);
setEffShake( spep5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep5, ctgyan, 255);
setEffScaleKey( spep5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep5, ctgyan, 255);
setEffAlphaKey( spep5+60, ctgyan, 80);
setEffShake( spep5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep5+8, SE_09);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep6 = spep5+60;


exp = entryEffect( spep6, SP_04, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep6, exp, 0, 0, 0);
setEffScaleKey( spep6, exp, 1.2, 1.2);
setEffAlphaKey( spep6, exp, 255);
setEffRotateKey( spep6, exp, 0);

playSe( spep6, SE_10);
playSe( spep6+110, SE_10);


-- ダメージ表示
dealDamage(spep6+16);
entryFade( spep6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep6+180);
end
