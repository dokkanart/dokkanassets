--sp0451 超サイヤ人ゴッドSSベジータ(SSR) ガンマバーストフラッシュ

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

SP_01 = 151562; --気溜め
SP_02 = 151563; --光弾溜め
SP_03 = 151564; --発射
SP_04 = 151565; --迫る
SP_05 = 1680; --爆発




changeAnime( 0, 0, 1);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

-- 必要構文 --
multi_frm = 2;
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(44F)
------------------------------------------------------

spep_1 = 0;
setVisibleUI(0, 0);

aura = entryEffectLife(  spep_1+30,   1501,   44,  0x80, -1,  0,  0,  0);    -- eff_002 レイヤー前後にある黄色
setEffAlphaKey(  spep_1+30,  aura,  160);
setEffAlphaKey(  spep_1+74,  aura,  160);
entryEffectLife(  spep_1+30,   1500,   44,  0,    -1,  0,  0,  0);    -- eff_001 レイヤー前後にある黄色

playSe( spep_1+30, SE_01); --30

playSe( 50, SE_03);
playSe( 70, SE_03);


-- エフェクト --
tame= entryEffectLife(spep_1+30,SP_01,44,0x100,-1,0,0,0);

setEffScaleKey(spep_1+30,tame,1.0,1.0);
setEffScaleKey(spep_1+74,tame,1.0,1.0);
setEffAlphaKey(spep_1+30,tame,255);
setEffAlphaKey(spep_1+74,tame,255);
setEffMoveKey(  spep_1+30,  tame,  0,  0);
setEffMoveKey(  spep_1+74,  tame,  0,  0);
setEffRotateKey(  spep_1+30,  tame,  0);
setEffRotateKey(  spep_1+74,  tame,  0);

setDisp(  spep_1+30,  0,  0);  --キャラ消す


-- 書き文字エントリー
ctZuzu = entryEffectLife(spep_1+30, 10013, 44, 0x100, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep_1+30,ctZuzu,0,200,0);
setEffMoveKey(spep_1+32,ctZuzu,0,300,0);
setEffMoveKey(spep_1+34,ctZuzu,0,350,0);
setEffMoveKey(spep_1+36,ctZuzu,0,350,0);
setEffMoveKey(spep_1+37,ctZuzu,0,320,0);
setEffMoveKey(spep_1+74,ctZuzu,0,320,0);

setEffRotateKey(spep_1+30,ctZuzu,350);
setEffRotateKey(spep_1+74,ctZuzu,350);

setEffShake(spep_1+30, ctZuzu, 44, 15);

setEffAlphaKey(spep_1+30, ctZuzu, 255);
setEffAlphaKey(spep_1+74, ctZuzu, 255);

setEffScaleKey( spep_1+30, ctZuzu, 1.1, 1.1);
setEffScaleKey( spep_1+32,  ctZuzu,  2.1,  2.1);
setEffScaleKey( spep_1+33,  ctZuzu,  3.2,  3.2);
setEffScaleKey( spep_1+36, ctZuzu, 3.3, 3.3);
setEffScaleKey( spep_1+74, ctZuzu, 3.3, 3.3);

playSe( spep_1+45, SE_02);

entryFade( spep_1+30, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 光弾溜め(110F)  --184
------------------------------------------------------
spep_2 = spep_1+74;


-- カットイン --
changeAnime(spep_2 , 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);
setSeVolume( spep_2+3, SE_03, 70 );

speff = entryEffect(spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

SE004 = playSe(spep_2+10, SE_04);
setSeVolume( spep_2+10, SE_04, 70 );
stopSe( spep_2+34, SE004, 10 );

SE000 = playSe( spep_2+30, SE_03);
setSeVolume( spep_2+30, SE_03, 70 );
stopSe( spep_2+54, SE000, 10 );

SE001 = playSe( spep_2+50, SE_03);
setSeVolume( spep_2+50, SE_03, 70 );
stopSe( spep_2+74, SE001, 10 );

SE002 = playSe( spep_2+70, SE_03);
setSeVolume( spep_2+70, SE_03, 70 );
stopSe( spep_2+94, SE002, 10 );

SE003 = playSe( spep_2+90, SE_03);
setSeVolume( spep_2+90, SE_03, 70 );
stopSe( spep_2+114, SE003, 10 );

-- エフェクト --
kitame = entryEffectLife(  spep_2,  SP_02,  100,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_2+110,  kitame,  1.0,  1.0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+110,  kitame,  255);

entryFade(spep_2+92, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+23, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_2+23,ctgogo,0,500,0);
setEffScaleKey( spep_2+23, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+23, ctgogo, 0);
setEffRotateKey(  spep_2+92,  ctgogo,  0);
setEffAlphaKey( spep_2+23, ctgogo, 255);

setEffScaleKey( spep_2+85, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+85, ctgogo, 10);
setEffAlphaKey( spep_2+85, ctgogo, 255);

setEffScaleKey( spep_2+92, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_2+92, ctgogo, 10);
setEffAlphaKey( spep_2+92, ctgogo, 255);

setEffShake(spep_2+23, ctgogo, 69, 10);

entryFadeBg( spep_2, 0, 110, 0,0, 0, 0, 255);          -- ベース黒　背景


-- 集中線 --
shuchusen1 = entryEffectLife(spep_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  shuchusen1,  1.0,  1.0);
setEffAlphaKey(  spep_2,  shuchusen1,  255);
setEffAlphaKey(  spep_2+100,  shuchusen1,  255);

entryFade( spep_2+95, 5, 10, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+110;

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3-4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


-- 集中線 --
shuchusen4 = entryEffectLife(spep_3, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2,  shuchusen4,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  shuchusen4,  1.0,  1.0);
setEffAlphaKey(  spep_2,  shuchusen4,  255);
setEffAlphaKey(  spep_2+100,  shuchusen4,  255);



entryFade( spep_3+75, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+88,    0,      0,  0,   0);
-- ** エフェクト等 ** --
--playSe( 170+64, SE_06);

--170〜259F
------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4 = spep_3+90;

beam = entryEffectLife( spep_4, SP_03, 70, 0x100,  0,  0,  0,  0);   -- 伸びるビーム

setEffScaleKey( spep_4,  beam, 1.0, 1.0);
setEffScaleKey( spep_4+70,  beam, 1.0, 1.0);

setEffRotateKey( spep_4,beam, 0);
setEffRotateKey( spep_4+70,beam, 0);

setEffAlphaKey( spep_4,beam, 255);
setEffAlphaKey( spep_4+70,beam, 255);


entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen2 = entryEffectLife(spep_4, 906, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen2, 1.5, 1.5);
setEffScaleKey(spep_4+5, shuchusen2, 1.5, 1.5);

sen2 = entryEffectLife( spep_4+6, 921, 64, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4+6, sen2, 190);
setEffRotateKey(spep_4+70, sen2, 190);
setEffScaleKey(  spep_4+6, sen2, 1.3, 1.3);
setEffScaleKey(  spep_4+70, sen2, 1.3, 1.3);


-- 書き文字エントリー
ctZuo = entryEffectLife(spep_4+6, 10012, 60, 0, -1, 0,0, 0); -- ズオッ
setEffMoveKey(spep_4+6,ctZuo,130,250,0);
setEffMoveKey(spep_4+7,  ctZuo,  180, 300,  0);
setEffMoveKey(spep_4+10,  ctZuo,  150, 350,  0);
setEffMoveKey(spep_4+45,  ctZuo,  150, 350,  0);
setEffMoveKey(spep_4+46,  ctZuo,  180, 350,  0);
setEffMoveKey(spep_4+48,  ctZuo,  180, 350,  0);

setEffMoveKey(  spep_4+60,  ctZuo,  130,  380,  0);
setEffShake(spep_4+6, ctZuo, 60, 10);
setEffRotateKey(spep_4+6, ctZuo, 20);

setEffAlphaKey(spep_4+6, ctZuo, 255);
setEffAlphaKey(spep_4+43, ctZuo, 255);
setEffAlphaKey(spep_4+46,  ctZuo,  180);
setEffAlphaKey(spep_4+48, ctZuo, 0);

setEffScaleKey(spep_4+6, ctZuo, 0.4, 0.4);
setEffScaleKey(spep_4+7, ctZuo, 1.5, 1.5);
setEffScaleKey(spep_4+8, ctZuo, 2.8, 2.8);
setEffScaleKey(spep_4+43, ctZuo, 2.8, 2.8);
setEffScaleKey(spep_4+44, ctZuo, 3.5, 3.5);
setEffScaleKey(spep_4+45, ctZuo, 4.0, 4.0);
setEffScaleKey(spep_4+46, ctZuo, 4.2, 4.2);
setEffScaleKey(spep_4+47, ctZuo, 4.4, 4.4);
setEffScaleKey(spep_4+53, ctZuo, 8.0, 8.0);

playSe(spep_4+10, SE_07);

entryFade(spep_4+50, 15,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 迫る(82F)
------------------------------------------------------
spep_5 = spep_4+70;

-- 敵 --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード

setMoveKey(  spep_5-1,    1,  240,  -50,   0);
setMoveKey(  spep_5,    1,  230,  -10,   0);
setMoveKey(  spep_5+1,    1,  220,  -10,   0);

setScaleKey( spep_5-1,    1,  0.9, 0.9);
setScaleKey( spep_5,    1,  0.9, 0.9);

--エフェクト--
beam2 = entryEffect( spep_5, SP_04,   0, -1,  0,  0,  0);   -- 迫る

setEffScaleKey(spep_5, beam2, 1.0, 1.0);
setEffScaleKey(  spep_5+82,  beam2,  1.0,  1.0);
setEffAlphaKey(  spep_5,  beam2,  255);
setEffAlphaKey(  spep_5+82,  beam2,  255);


-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 10);

entryFadeBg( spep_5, 0, 82, 0,0, 0, 0, 200);          -- ベース黒　背景

entryEffectLife( spep_5, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudon = entryEffectLife( spep_5, 10014, 70, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep_5,ctZudon,50,350,0);
setEffShake(spep_5, ctZudon, 82, 10);
setEffScaleKey( spep_5, ctZudon, 2.5, 2.5);
setEffRotateKey(spep_5, ctZudon, 70);
setEffRotateKey(  spep_5+70,  ctZudon,  70);
setEffAlphaKey(spep_5, ctZudon, 255);

setMoveKey(  spep_5,  0,  900,  900,  0);
setMoveKey(  spep_5,  0,  900,  900,  0);


------------------------------------------------------
-- 回避(426F )
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,  1,  235,  0,  0);
setMoveKey(  SP_dodge+8,    1,  235,  0,   0);
setScaleKey( SP_dodge,      1,  1.5, 1.5);
setScaleKey( SP_dodge+8,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 70);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+9,1,0);
setMoveKey(  SP_dodge+9,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge+10,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge+10, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge+10, ctZudon, 70);
setEffAlphaKey(SP_dodge+10, ctZudon, 255);

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setMoveKey(  spep_5+58,    1,   200,  0,   0);
setScaleKey(  spep_5+58,   1,   1.9,  1.9);

playSe( spep_5+56, SE_09);

setEffScaleKey(spep_5+82, beam2, 1, 1);
setEffScaleKey(spep_5+84, beam2, 2.5, 2.5);
setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+56, 1, 108);
setMoveKey(  spep_5+56, 1,  220,    -10,  0);
setMoveKey(  spep_5+82, 1,  350,    -10,  0);
setScaleKey( spep_5+58, 1,  1.6, 1.6);
setScaleKey( spep_5+59, 1,  1.5, 1.5);
setScaleKey( spep_5+82, 1,  0.2, 0.2);

setEffAlphaKey(spep_5+65, ctZudon, 255);
setEffAlphaKey(spep_5+70, ctZudon, 0);

entryFade( spep_5+70, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  spep_5+80,  1,  0);  --敵キャラ消す


------------------------------------------------------
-- ここにギャン（黄色） (60F)  **************************
------------------------------------------------------

spep_6 = spep_5+82;  

gyan = entryEffectLife(  spep_6,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);

-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 350);    -- ギャン

setEffScaleKey( spep_6, ctgayn, 3.2, 3.2);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(  spep_6+10,  SE_09);

entryFade( spep_6+50, 6,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (200F)  **************************
------------------------------------------------------

spep_7 = spep_6+30;

bakuhatsu = entryEffect(  spep_7,  SP_05,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  bakuhatsu,  1.1,  1.1);
setEffScaleKey(  spep_7+180,  bakuhatsu,  1.1,  1.1);
setEffAlphaKey(  spep_7,  bakuhatsu,  255);
setEffAlphaKey(  spep_7+180,  bakuhatsu,  255);

-- 集中線 --
shuchusen3 = entryEffectLife(spep_7, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen3,  1.0,  1.0);
setEffScaleKey(  spep_7+180,  shuchusen3,  1.0,  1.0);
setEffAlphaKey(  spep_7,  shuchusen3,  255);
setEffAlphaKey(  spep_7+180,  shuchusen3,  255);

playSe(  spep_7+10,  SE_10);

-- ダメージ表示
dealDamage(spep_7+86);

entryFade( spep_7+168, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+180);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
changeAnime( 0, 0, 1);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(44F)
------------------------------------------------------

spep_1 = 0;
setVisibleUI(0, 0);

aura = entryEffectLife( spep_1+30, 1501, 44, 0x80, -1, 0, 0, 0); -- eff_002 レイヤー前後にある黄色
setEffAlphaKey( spep_1+30, aura, 160);
setEffAlphaKey( spep_1+74, aura, 160);
entryEffectLife(  spep_1+30,   1500,   44,  0,    -1,  0,  0,  0);    -- eff_001 レイヤー前後にある黄色

playSe( spep_1+30, SE_01); --30

playSe( 50, SE_03);	
playSe( 70, SE_03);	


-- エフェクト --
tame= entryEffectLife(spep_1+30,SP_01,44,0x100,-1,0,0,0);

setEffScaleKey(spep_1+30,tame,1.0,1.0);
setEffScaleKey(spep_1+74,tame,1.0,1.0);
setEffAlphaKey(spep_1+30,tame,255);
setEffAlphaKey(spep_1+74,tame,255);
setEffMoveKey(  spep_1+30,  tame,  0,  0);
setEffMoveKey(  spep_1+74,  tame,  0,  0);
setEffRotateKey(  spep_1+30,  tame,  0);
setEffRotateKey(  spep_1+74,  tame,  0);

setDisp(  spep_1+29,  0,  0);  --キャラ消す


-- 書き文字エントリー
ctZuzu = entryEffectLife(spep_1+30, 10013, 44, 0x100, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep_1+30,ctZuzu,0,200,0);
setEffMoveKey(spep_1+32,ctZuzu,0,300,0);
setEffMoveKey(spep_1+34,ctZuzu,0,350,0);
setEffMoveKey(spep_1+36,ctZuzu,0,350,0);
setEffMoveKey(spep_1+37,ctZuzu,0,320,0);
setEffMoveKey(spep_1+74,ctZuzu,0,320,0);

setEffRotateKey(spep_1+30,ctZuzu,350);
setEffRotateKey(spep_1+74,ctZuzu,350);

setEffShake(spep_1+30, ctZuzu, 44, 15);

setEffAlphaKey(spep_1+30, ctZuzu, 255);
setEffAlphaKey(spep_1+74, ctZuzu, 255);

setEffScaleKey( spep_1+30, ctZuzu, 1.1, 1.1);
setEffScaleKey( spep_1+32, ctZuzu, 2.1, 2.1);
setEffScaleKey( spep_1+33, ctZuzu, 3.2, 3.2);
setEffScaleKey( spep_1+36, ctZuzu, 3.3, 3.3);
setEffScaleKey( spep_1+74, ctZuzu, 3.3, 3.3);

playSe( spep_1+45, SE_02);


entryFade( spep_1+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 光弾溜め(110F)
------------------------------------------------------
spep_2 = spep_1+74;


-- カットイン --
changeAnime(spep_2 , 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);
setSeVolume( spep_2+3, SE_03, 70 );

--speff = entryEffect(spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

SE004 = playSe(spep_2+10, SE_04);
setSeVolume( spep_2+10, SE_04, 70 );
stopSe( spep_2+34, SE004, 10 );

SE000 = playSe( spep_2+30, SE_03);
setSeVolume( spep_2+30, SE_03, 70 );
stopSe( spep_2+54, SE000, 10 );

SE001 = playSe( spep_2+50, SE_03);
setSeVolume( spep_2+50, SE_03, 70 );
stopSe( spep_2+74, SE001, 10 );

SE002 = playSe( spep_2+70, SE_03);
setSeVolume( spep_2+70, SE_03, 70 );
stopSe( spep_2+94, SE002, 10 );

SE003 = playSe( spep_2+90, SE_03);
setSeVolume( spep_2+90, SE_03, 70 );
stopSe( spep_2+114, SE003, 10 );

-- エフェクト --
kitame = entryEffectLife(  spep_2,  SP_02,  100,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  kitame,  1.0,  1.0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+100,  kitame,  255);

entryFade(spep_2+92, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+23, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_2+23,ctgogo,0,500,0);
setEffScaleKey( spep_2+23, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+23, ctgogo, 10);
setEffRotateKey( spep_2+92, ctgogo, 10);
setEffAlphaKey( spep_2+23, ctgogo, 255);

setEffScaleKey( spep_2+85, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+85, ctgogo, 10);
setEffAlphaKey( spep_2+85, ctgogo, 255);

setEffScaleKey( spep_2+92, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_2+92, ctgogo, 10);
setEffAlphaKey( spep_2+92, ctgogo, 255);

setEffShake(spep_2+23, ctgogo, 69, 10);

entryFadeBg( spep_2, 0, 110, 0,0, 0, 0, 255);          -- ベース黒　背景


-- 集中線 --
shuchusen1 = entryEffectLife(spep_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  shuchusen1,  1.0,  1.0);
setEffAlphaKey(  spep_2,  shuchusen1,  255);
setEffAlphaKey(  spep_2+100,  shuchusen1,  255);

entryFade( spep_2+95, 5, 10, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+110;

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3-4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- 集中線 --	
shuchusen4 = entryEffectLife(spep_3, 906, 100, 0x00, -1, 0, 0, 0); -- 集中線	
setEffScaleKey( spep_2, shuchusen4, 1.0, 1.0);	
setEffScaleKey( spep_2+100, shuchusen4, 1.0, 1.0);	
setEffAlphaKey( spep_2, shuchusen4, 255);	
setEffAlphaKey( spep_2+100, shuchusen4, 255);

entryFade( spep_3+75, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+88,    0,      0,  0,   0);
-- ** エフェクト等 ** --
--playSe( 170+64, SE_06);

--170〜259F
------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4 = spep_3+90;

beam = entryEffectLife( spep_4, SP_03, 70, 0x100,  0,  0,  0,  0);   -- 伸びるビーム

setEffScaleKey( spep_4,  beam, 1.0, 1.0);
setEffScaleKey( spep_4+70,  beam, 1.0, 1.0);

setEffRotateKey( spep_4,beam, 0);
setEffRotateKey( spep_4+70,beam, 0);

setEffAlphaKey( spep_4,beam, 255);
setEffAlphaKey( spep_4+70,beam, 255);


entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen2 = entryEffectLife(spep_4, 906, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen2, 1.5, 1.5);
setEffScaleKey(spep_4+5, shuchusen2, 1.5, 1.5);

sen2 = entryEffectLife( spep_4+6, 921, 64, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4+6, sen2, 190);
setEffRotateKey(spep_4+70, sen2, 190);
setEffScaleKey(  spep_4+6, sen2, 1.3, 1.3);
setEffScaleKey(  spep_4+70, sen2, 1.3, 1.3);


-- 書き文字エントリー
ctZuo = entryEffectLife(spep_4+6, 10012, 54, 0, -1, 0,0, 0); -- ズオッ
setEffMoveKey(spep_4+6,ctZuo,130,250,0);
setEffMoveKey(spep_4+7,ctZuo, 180, 300, 0);
setEffMoveKey(spep_4+10,ctZuo,150,350,0);
setEffMoveKey(spep_4+45,ctZuo,150,350,0);
setEffMoveKey(spep_4+46,ctZuo,180,350,0);
setEffMoveKey(spep_4+48,ctZuo,180,350,0);
setEffMoveKey(spep_4+60,ctZuo,130,380,0);

setEffShake(spep_4+6, ctZuo, 54, 10);
setEffRotateKey(spep_4+6, ctZuo, 20);
setEffAlphaKey(spep_4+6, ctZuo, 255);
setEffAlphaKey(spep_4+43, ctZuo, 255);
setEffAlphaKey(spep_4+46, ctZuo, 180);
setEffAlphaKey(spep_4+48, ctZuo, 0);
setEffScaleKey(spep_4+6, ctZuo, 0.4, 0.4);
setEffScaleKey(spep_4+7, ctZuo, 1.5, 1.5);
setEffScaleKey(spep_4+8, ctZuo, 2.8, 2.8);
setEffScaleKey(spep_4+43, ctZuo, 2.8, 2.8);
setEffScaleKey(spep_4+44, ctZuo, 3.5, 3.5);
setEffScaleKey(spep_4+45, ctZuo, 4.0, 4.0);
setEffScaleKey(spep_4+46, ctZuo, 4.2, 4.2);
setEffScaleKey(spep_4+47, ctZuo, 4.4, 4.4);
setEffScaleKey(spep_4+53, ctZuo, 8.0, 8.0);

playSe(spep_4+10, SE_07);

entryFade(spep_4+50, 15,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 迫る(82F)
------------------------------------------------------
spep_5 = spep_4+70;

-- 敵 --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-1,    1,  240,  -50,   0);
setMoveKey(  spep_5,    1,  230,  -10,   0);
setMoveKey(  spep_5+1,    1,  220,  -10,   0);
setScaleKey( spep_5-1,    1,  0.9, 0.9);
setScaleKey( spep_5,    1,  0.9, 0.9);

--エフェクト--
beam2 = entryEffect( spep_5, SP_04,   0, -1,  0,  0,  0);   -- 迫る

setEffScaleKey(spep_5, beam2, 1.0, 1.0);
setEffScaleKey(  spep_5+82,  beam2,  1.0,  1.0);
setEffAlphaKey(  spep_5,  beam2,  255);
setEffAlphaKey(  spep_5+82,  beam2,  255);


-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 10);

entryFadeBg( spep_5, 0, 82, 0,0, 0, 0, 200);          -- ベース黒　背景

entryEffectLife( spep_5, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ctZudon = entryEffectLife( spep_5, 10014, 70, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep_5,ctZudon,50,350,0);
setEffShake(spep_5, ctZudon, 70, 10);
setEffScaleKey( spep_5, ctZudon, 2.5, 2.5);
setEffRotateKey(spep_5, ctZudon, 0);
setEffRotateKey(spep_5+70, ctZudon, 0);
setEffAlphaKey(spep_5, ctZudon, 255);

setMoveKey(  spep_5,  0,  900,  900,  0);
setMoveKey(  spep_5,  0,  900,  900,  0);

------------------------------------------------------
-- 回避(426F )
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  235,  0,   0);
setMoveKey(  SP_dodge+8,  1,  235,  0,   0);
setScaleKey( SP_dodge,    1,  1.5, 1.5);
setScaleKey( SP_dodge+8,  1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 0);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+9,1,0);
setMoveKey(  SP_dodge+9,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge+10,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge+10, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge+10, ctZudon, 0);
setEffAlphaKey(SP_dodge+10, ctZudon, 255);

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setMoveKey(  spep_5+58,    1,   200,  0,   0);
setScaleKey(  spep_5+58,   1,   1.9,  1.9);

playSe( spep_5+56, SE_09);

setEffScaleKey(spep_5+82, beam2, 1, 1);
setEffScaleKey(spep_5+84, beam2, 2.5, 2.5);
setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+56, 1, 108);
setMoveKey(  spep_5+56, 1,  220,    -10,  0);
setMoveKey(  spep_5+82, 1,  350,    -10,  0);
setScaleKey( spep_5+58, 1,  1.6, 1.6);
setScaleKey( spep_5+59, 1,  1.5, 1.5);
setScaleKey( spep_5+82, 1,  0.2, 0.2);

setEffAlphaKey(spep_5+65, ctZudon, 255);
setEffAlphaKey(spep_5+70, ctZudon, 0);

entryFade( spep_5+70, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  spep_5+80,  1,  0);  --敵キャラ消す


------------------------------------------------------
-- ここにギャン（黄色） (60F)  **************************
------------------------------------------------------

spep_6 = spep_5+82;  

gyan = entryEffectLife(  spep_6,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);

-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 350);    -- ギャン

setEffScaleKey( spep_6, ctgayn, 3.2, 3.2);
setEffScaleKey( spep_6+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);
setEffShake( spep_6, ctgayn, 60, 10);

playSe(  spep_6+10,  SE_09);

entryFade( spep_6+50, 6,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (200F)  **************************
------------------------------------------------------

spep_7 = spep_6+30;

bakuhatsu = entryEffect(  spep_7,  SP_05,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  bakuhatsu,  1.1,  1.1);
setEffScaleKey(  spep_7+180,  bakuhatsu,  1.1,  1.1);
setEffAlphaKey(  spep_7,  bakuhatsu,  255);
setEffAlphaKey(  spep_7+180,  bakuhatsu,  255);

-- 集中線 --
shuchusen3 = entryEffectLife(spep_7, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen3,  1.0,  1.0);
setEffScaleKey(  spep_7+180,  shuchusen3,  1.0,  1.0);
setEffAlphaKey(  spep_7,  shuchusen3,  255);
setEffAlphaKey(  spep_7+180,  shuchusen3,  255);

playSe(  spep_7+10,  SE_10);

-- ダメージ表示
dealDamage(spep_7+86);

entryFade( spep_7+168, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+180);

end
