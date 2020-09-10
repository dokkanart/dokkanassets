print ("[lua]sp0377");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150606;--溜め
SP_02 = 150607;--左右ビーム放出
SP_03 = 150608;--しなるビーム
SP_04 = 150609;--刺さるビーム（前）
SP_05 = 150610;--刺さるビーム（後）
SP_06 = 150611;--溜め2回目
SP_07 = 150612;--溜め2回目用背景
SP_08 = 150613;--ビームを放つ
SP_09 = 150614;--迫るビーム～爆発


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

multi_frm = 2;


------------------------------------------------------
--溜め(19f)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);
setRotateKey( 0,  1,  0 );

tame = 30;
setDisp( 0+tame, 0, 0); --味方表示

-- ** エフェクト等 ** --
huseikai = entryEffect( 0+tame, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0+tame, huseikai, 0, 0, 0);
setEffScaleKey( 0+tame, huseikai, 1.0, 1.0);
setEffAlphaKey( 0+tame, huseikai, 255);
setEffRotateKey( 0+tame, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0+tame, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
--entryFade( 92, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
--entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(  0+tame, 911, 34, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey(  0+tame, shuchusen2, 0, 0, 0);
setEffScaleKey(  0+tame, shuchusen2, 1.1, 1.1);
setEffAlphaKey(  0+tame, shuchusen2, 255);
setEffRotateKey(  0+tame, shuchusen2, 0);

-- 書き文字エントリー
ct = entryEffectLife( 0+tame, 10013, 38, 0x100, -1, 0, 0, 300); -- ズズンッ
setEffAlphaKey(0+tame, ct, 255);
setEffAlphaKey(20+tame, ct, 255);
setEffAlphaKey(40+tame, ct, 0);
setEffShake(1+tame, ct, 40, 7);
setEffScaleKey( 0+tame, ct, 0.1, 0.1);
setEffScaleKey( 10+tame, ct, 2.0, 2.0);
--[[]]
playSe( 0+tame, SE_02);

playSe( 0+tame, SE_01);



------------------------------------------------------
-- 左右ビーム放出(40f)
------------------------------------------------------

spep_1=38+tame;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setScaleKey( spep_1,    0,  1.5, 1.5);

setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);


-- ** エフェクト等 ** --
sayuu = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, sayuu, 0, 0, 0);
setEffScaleKey( spep_1, sayuu, 1.0, 1.0);
setEffAlphaKey( spep_1, sayuu, 255);
setEffRotateKey( spep_1, sayuu, 0);

sayuushuchu = entryEffectLife( spep_1+1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+1, sayuushuchu, 0, 0, 0);
setEffScaleKey( spep_1+1, sayuushuchu, 1.0, 1.0);
setEffAlphaKey( spep_1+1, sayuushuchu, 255);
setEffRotateKey( spep_1+1, sayuushuchu, 0);


playSe( spep_1+16, SE_06);
playSe( spep_1+36, SE_06);
--playSe( spep_3+55, 1022);

------------------------------------------------------
--ニョロニョロ	(f)
------------------------------------------------------

spep_2=spep_1+80;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusenuneri = entryEffectLife( spep_2+0, 921, 55, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_2+0, ryusenuneri, 0, 10, 0);
setEffRotateKey( spep_2+0, ryusenuneri, -160);
setEffScaleKey( spep_2+0, ryusenuneri, 1.6, 1.7);
setEffAlphaKey( spep_2+0, ryusenuneri, 255);

-- ** エフェクト等 ** --
uneri = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, uneri, 0, 0, 0);
setEffScaleKey( spep_2, uneri, 1.0, 1.0);
setEffAlphaKey( spep_2, uneri, 255);
setEffRotateKey( spep_2, uneri, 0);

playSe( spep_2+6, 1018);
playSe( spep_2+26, 1018);
playSe( spep_2+46, 1018);

------------------------------------------------------
-- 刺さるビーム(100F)
------------------------------------------------------
spep_3=spep_2+55;

--[[]]

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 108, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setRotateKey( spep_3-1,  1,  0 );
changeAnime( spep_3-1, 1, 0); --敵立ちポーズ
setMoveKey( spep_3-1, 1, 0, -54, 0); --敵位置
setScaleKey( spep_3-1,    1,  1.5, 1.5);
setDisp( spep_3, 1, 1); --敵非表示
changeAnime( spep_3, 1, 100); --敵立ちポーズ
setMoveKey( spep_3, 1, -200, 0, 0); --敵位置
setScaleKey( spep_3,    1,  2.5, 2.5);

setShakeChara( spep_3, 1, 30, 10);


ryusensasaru = entryEffectLife( spep_3, 921, 108, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_3, ryusensasaru, 0, 10, 0);
setEffRotateKey( spep_3, ryusensasaru, 0);
setEffScaleKey( spep_3, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_3, ryusensasaru, 255);




-- ** エフェクト等 ** --
sasarumae = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, sasarumae, 0, 0, 0);
setEffScaleKey( spep_3, sasarumae, 1.0, 1.0);
setEffAlphaKey( spep_3, sasarumae, 255);
setEffRotateKey( spep_3, sasarumae, 0);
-- ** エフェクト等 ** --
sasaruushiro = entryEffect( spep_3, SP_05, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_3, sasaruushiro, 0, 0, 0);
setEffScaleKey( spep_3, sasaruushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, sasaruushiro, 255);
setEffRotateKey( spep_3, sasaruushiro, 0);



setScaleKey( spep_3+30-6,    1,  1.5, 1.5);
setMoveKey( spep_3+30-6, 1, 150, 0, 0); --敵位置
changeAnime( spep_3+35-6, 1, 106); --敵立ちポーズ
setRotateKey( spep_3+34-6,  1,  0 );
setRotateKey( spep_3+35-6,  1,  -60 );

setShakeChara( spep_3+36-6, 1, 60, 20);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 215; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------



playSe( spep_3, SE_06);
playSe( spep_3+30, SE_06);
playSe( spep_3+55, SE_06);


------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_4=spep_3+108;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 130, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_4-1, 1, 150, 0, 0); --敵位置
setDisp( spep_4-1, 1, 0); --敵非表示
setRotateKey( spep_4-1,  1,  -60 );

shuchusen4 = entryEffectLife( spep_4, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);



-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4, SP_07, 120,0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, bg, 0, 0, 0);
setEffScaleKey( spep_4, bg, 1.0, 1.0);
setEffAlphaKey( spep_4, bg, 255);
setEffRotateKey( spep_4, bg, 0);


ryusensasaru = entryEffectLife( spep_4+0, 920, 108, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_4+0, ryusensasaru, 0, 0, 0);
setEffRotateKey( spep_4+0, ryusensasaru, -90);
setEffScaleKey( spep_4+0, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_4+0, ryusensasaru, 0);


tame = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, tame, 0, 0, 0);
setEffScaleKey( spep_4, tame, 1.0, 1.0);
setEffAlphaKey( spep_4, tame, 255);
setEffRotateKey( spep_4, tame, 0);

setEffAlphaKey( spep_4+29, ryusensasaru, 0);
setEffAlphaKey( spep_4+35, ryusensasaru, 255);
--カットイン表示

speff1 = entryEffect(  spep_4+30,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_4+30,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_4+30, 190006, 83, 0x100, -1, 0, -100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_4+30, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_4+30, ctgogo, 10);
setEffAlphaKey( spep_4+30, ctgogo, 255);

playSe( spep_4+14, 1018);
playSe( spep_4+38, 1018);
playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
playSe( spep_4+122, 1018);


------------------------------------------------------
-- かっといん(96F)
------------------------------------------------------
spep_5=spep_4+118;

entryFade( spep_5-5, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 96, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_5-1, ryusensasaru, 255);
setEffAlphaKey( spep_5, ryusensasaru, 0);
--カード絵＋技名
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffRotateKey( spep_5, shuchusen3, 0);



------------------------------------------------------
-- 発射(74)
------------------------------------------------------
spep_6=spep_5+90;

entryFade( spep_6-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 74, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setScaleKey(   spep_6,   1, 2.0, 2.0);

-- ** エフェクト等 ** --
bg2 = entryEffectLife( spep_6, SP_07, 94,0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, bg2, 0, 0, 0);
setEffScaleKey( spep_6, bg2, 1.0, 1.0);
setEffAlphaKey( spep_6, bg2, 255);
setEffRotateKey( spep_6, bg2, 0);




hassya = entryEffect( spep_6, SP_08, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, hassya, 0, 0, 0);
setEffScaleKey( spep_6, hassya, 1.0, 1.0);
setEffAlphaKey( spep_6, hassya, 255);
setEffRotateKey( spep_6, hassya, 0);


hassasyuutyuu = entryEffectLife( spep_6, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_6, hassasyuutyuu, 0, 0, 0);
setEffScaleKey( spep_6, hassasyuutyuu, 1.0, 1.0);
setEffAlphaKey( spep_6, hassasyuutyuu, 255);
setEffRotateKey( spep_6, hassasyuutyuu, 0);


playSe( spep_6+6, SE_06);
playSe( spep_6+26, SE_06);


------------------------------------------------------
-- あまり (94F)
------------------------------------------------------
spep_7=spep_6+94;
entryFade( spep_7-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 116, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_7-1, hassasyuutyuu, 255);
setEffAlphaKey( spep_7-1, bg2, 255);
setEffAlphaKey( spep_7-1, hassya, 255);
setEffAlphaKey( spep_7, hassasyuutyuu, 0);
setEffAlphaKey( spep_7, bg2, 0);
setEffAlphaKey( spep_7, hassya, 0);

setDisp( spep_7-1, 1, 1); --敵非表示
setRotateKey( spep_7-1,  1,  -60 );
setScaleKey( spep_7-1,    1,  2.0, 2.0);
setMoveKey( spep_7-1, 1, 100, 0, 0); --敵位置
ryusensasaru = entryEffectLife( spep_7+0, 921, 106, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_7+0, ryusensasaru, 0, 10, 0);
setEffRotateKey( spep_7+0, ryusensasaru, 0);
setEffScaleKey( spep_7+0, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_7+0, ryusensasaru, 255);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+10; --410 469

setScaleKey( spep_8+3,    1,  2.0, 2.0);

setRotateKey( spep_8+1,  1,  -50 );

changeAnime( spep_8+2, 1, 108); --敵立ちポーズ
setRotateKey( spep_8+2,  1,  0 );
setShakeChara( spep_8+4, 1, 60, 20);
setMoveKey( spep_8+4, 1, 150, 0, 0); --敵位置

setMoveKey( spep_8+24, 1, 1000, 0, 0); --敵位置
setDisp( spep_8+24, 1, 0);

tyakudan = entryEffect(  spep_8,   SP_09,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, tyakudan, 0, 0, 0);
setEffScaleKey( spep_8, tyakudan, 1.0, 1.0);
setEffAlphaKey( spep_8, tyakudan, 255);
setEffRotateKey( spep_8, tyakudan, 0);

shuchusen7 = entryEffectLife( spep_8, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_8, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen7, 255);
setEffRotateKey( spep_8, shuchusen7, 0);

playSe( spep_8-10, 1018);

playSe( spep_8+10, SE_09);
--ßplaySe( spep_8+30, SE_09);
--playSe( spep_8+50, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_9=spep_8+74; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey( spep_9-1,    1,  2.0, 2.0);
setEffAlphaKey( spep_9-1, shuchusen7, 255);
setEffAlphaKey( spep_9, shuchusen7, 0);
setEffAlphaKey( spep_9-1, ryusensasaru, 255);
setEffAlphaKey( spep_9, ryusensasaru, 0);

setRotateKey( spep_9-1,  1,  -60 );

--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   1586,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


------------------------------------------------------
-- 敵側
------------------------------------------------------
else



setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  1,  0 );

tame = 30;
setDisp( 0+tame, 0, 0); --味方表示

-- ** エフェクト等 ** --
huseikai = entryEffect( 0+tame, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0+tame, huseikai, 0, 0, 0);
setEffScaleKey( 0+tame, huseikai, 1.0, 1.0);
setEffAlphaKey( 0+tame, huseikai, 255);
setEffRotateKey( 0+tame, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0+tame, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
--entryFade( 92, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
--entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(  0+tame, 911, 34, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey(  0+tame, shuchusen2, 0, 0, 0);
setEffScaleKey(  0+tame, shuchusen2, 1.1, 1.1);
setEffAlphaKey(  0+tame, shuchusen2, 255);
setEffRotateKey(  0+tame, shuchusen2, 0);

-- 書き文字エントリー
ct = entryEffectLife( 0+tame, 10013, 38, 0x100, -1, 0, 0, 300); -- ズズンッ
setEffAlphaKey(0+tame, ct, 255);
setEffAlphaKey(20+tame, ct, 255);
setEffAlphaKey(40+tame, ct, 0);
setEffShake(1+tame, ct, 40, 7);
setEffScaleKey( 0+tame, ct, 0.1, 0.1);
setEffScaleKey( 10+tame, ct, 2.0, 2.0);
--[[]]
playSe( 0+tame, SE_02);

playSe( 0+tame, SE_01);



------------------------------------------------------
-- 左右ビーム放出(40f)
------------------------------------------------------

spep_1=38+tame;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setScaleKey( spep_1,    0,  1.5, 1.5);

setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);


-- ** エフェクト等 ** --
sayuu = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, sayuu, 0, 0, 0);
setEffScaleKey( spep_1, sayuu, -1.0, 1.0);
setEffAlphaKey( spep_1, sayuu, 255);
setEffRotateKey( spep_1, sayuu, 0);

sayuushuchu = entryEffectLife( spep_1+1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+1, sayuushuchu, 0, 0, 0);
setEffScaleKey( spep_1+1, sayuushuchu, 1.0, 1.0);
setEffAlphaKey( spep_1+1, sayuushuchu, 255);
setEffRotateKey( spep_1+1, sayuushuchu, 0);


playSe( spep_1+16, SE_06);
playSe( spep_1+36, SE_06);
--playSe( spep_3+55, 1022);

------------------------------------------------------
--ニョロニョロ	(f)
------------------------------------------------------

spep_2=spep_1+80;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusenuneri = entryEffectLife( spep_2+0, 921, 55, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_2+0, ryusenuneri, 0, 10, 0);
setEffRotateKey( spep_2+0, ryusenuneri, -160);
setEffScaleKey( spep_2+0, ryusenuneri, 1.6, 1.7);
setEffAlphaKey( spep_2+0, ryusenuneri, 255);

-- ** エフェクト等 ** --
uneri = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, uneri, 0, 0, 0);
setEffScaleKey( spep_2, uneri, 1.0, 1.0);
setEffAlphaKey( spep_2, uneri, 255);
setEffRotateKey( spep_2, uneri, 0);

playSe( spep_2+6, 1018);
playSe( spep_2+26, 1018);
playSe( spep_2+46, 1018);

------------------------------------------------------
-- 刺さるビーム(100F)
------------------------------------------------------
spep_3=spep_2+55;

--[[]]

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 108, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setRotateKey( spep_3-1,  1,  0 );
changeAnime( spep_3-1, 1, 0); --敵立ちポーズ
setMoveKey( spep_3-1, 1, 0, -54, 0); --敵位置
setScaleKey( spep_3-1,    1,  1.5, 1.5);
setDisp( spep_3, 1, 1); --敵非表示
changeAnime( spep_3, 1, 100); --敵立ちポーズ
setMoveKey( spep_3, 1, -200, 0, 0); --敵位置
setScaleKey( spep_3,    1,  2.5, 2.5);

setShakeChara( spep_3, 1, 30, 10);


ryusensasaru = entryEffectLife( spep_3, 921, 108, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_3, ryusensasaru, 0, 10, 0);
setEffRotateKey( spep_3, ryusensasaru, 0);
setEffScaleKey( spep_3, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_3, ryusensasaru, 255);




-- ** エフェクト等 ** --
sasarumae = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, sasarumae, 0, 0, 0);
setEffScaleKey( spep_3, sasarumae, 1.0, 1.0);
setEffAlphaKey( spep_3, sasarumae, 255);
setEffRotateKey( spep_3, sasarumae, 0);
-- ** エフェクト等 ** --
sasaruushiro = entryEffect( spep_3, SP_05, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_3, sasaruushiro, 0, 0, 0);
setEffScaleKey( spep_3, sasaruushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, sasaruushiro, 255);
setEffRotateKey( spep_3, sasaruushiro, 0);



setScaleKey( spep_3+30-6,    1,  1.5, 1.5);
setMoveKey( spep_3+30-6, 1, 150, 0, 0); --敵位置
changeAnime( spep_3+35-6, 1, 106); --敵立ちポーズ
setRotateKey( spep_3+34-6,  1,  0 );
setRotateKey( spep_3+35-6,  1,  -60 );

setShakeChara( spep_3+36-6, 1, 60, 20);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 215; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------



playSe( spep_3, SE_06);
playSe( spep_3+30, SE_06);
playSe( spep_3+55, SE_06);


------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_4=spep_3+108;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 130, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_4-1, 1, 150, 0, 0); --敵位置
setDisp( spep_4-1, 1, 0); --敵非表示
setRotateKey( spep_4-1,  1,  -60 );

shuchusen4 = entryEffectLife( spep_4, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);



-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4, SP_07, 120,0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, bg, 0, 0, 0);
setEffScaleKey( spep_4, bg, -1.0, 1.0);
setEffAlphaKey( spep_4, bg, 255);
setEffRotateKey( spep_4, bg, 0);


ryusensasaru = entryEffectLife( spep_4+0, 920, 108, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_4+0, ryusensasaru, 0, 0, 0);
setEffRotateKey( spep_4+0, ryusensasaru, -90);
setEffScaleKey( spep_4+0, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_4+0, ryusensasaru, 0);


tame = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, tame, 0, 0, 0);
setEffScaleKey( spep_4, tame, -1.0, 1.0);
setEffAlphaKey( spep_4, tame, 255);
setEffRotateKey( spep_4, tame, 0);

setEffAlphaKey( spep_4+29, ryusensasaru, 0);
setEffAlphaKey( spep_4+35, ryusensasaru, 255);
--カットイン表示
--[[
speff1 = entryEffect(  spep_4+30,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_4+30,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
]]
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_4+30, 190006, 83, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_4+30, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_4+30, ctgogo, 10);
setEffAlphaKey( spep_4+30, ctgogo, 255);

playSe( spep_4+14, 1018);
playSe( spep_4+38, 1018);
playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
playSe( spep_4+122, 1018);


------------------------------------------------------
-- かっといん(96F)
------------------------------------------------------
spep_5=spep_4+118;

entryFade( spep_5-5, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 96, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_5-1, ryusensasaru, 255);
setEffAlphaKey( spep_5, ryusensasaru, 0);
--カード絵＋技名
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen3, 255);
setEffRotateKey( spep_5, shuchusen3, 0);



------------------------------------------------------
-- 発射(74)
------------------------------------------------------
spep_6=spep_5+90;

entryFade( spep_6-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 74, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setScaleKey(   spep_6,   1, 2.0, 2.0);

-- ** エフェクト等 ** --
bg2 = entryEffectLife( spep_6, SP_07, 94,0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, bg2, 0, 0, 0);
setEffScaleKey( spep_6, bg2, 1.0, 1.0);
setEffAlphaKey( spep_6, bg2, 255);
setEffRotateKey( spep_6, bg2, 0);




hassya = entryEffect( spep_6, SP_08, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, hassya, 0, 0, 0);
setEffScaleKey( spep_6, hassya, -1.0, 1.0);
setEffAlphaKey( spep_6, hassya, 255);
setEffRotateKey( spep_6, hassya, 0);


hassasyuutyuu = entryEffectLife( spep_6, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_6, hassasyuutyuu, 0, 0, 0);
setEffScaleKey( spep_6, hassasyuutyuu, 1.0, 1.0);
setEffAlphaKey( spep_6, hassasyuutyuu, 255);
setEffRotateKey( spep_6, hassasyuutyuu, 0);


playSe( spep_6+6, SE_06);
playSe( spep_6+26, SE_06);


------------------------------------------------------
-- あまり (94F)
------------------------------------------------------
spep_7=spep_6+94;
entryFade( spep_7-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 116, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_7-1, hassasyuutyuu, 255);
setEffAlphaKey( spep_7-1, bg2, 255);
setEffAlphaKey( spep_7-1, hassya, 255);
setEffAlphaKey( spep_7, hassasyuutyuu, 0);
setEffAlphaKey( spep_7, bg2, 0);
setEffAlphaKey( spep_7, hassya, 0);

setDisp( spep_7-1, 1, 1); --敵非表示
setRotateKey( spep_7-1,  1,  -60 );
setScaleKey( spep_7-1,    1,  2.0, 2.0);
setMoveKey( spep_7-1, 1, 100, 0, 0); --敵位置
ryusensasaru = entryEffectLife( spep_7+0, 921, 106, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_7+0, ryusensasaru, 0, 10, 0);
setEffRotateKey( spep_7+0, ryusensasaru, 0);
setEffScaleKey( spep_7+0, ryusensasaru, 1.6, 1.7);
setEffAlphaKey( spep_7+0, ryusensasaru, 255);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+10; --410 469

setScaleKey( spep_8+3,    1,  2.0, 2.0);

setRotateKey( spep_8+1,  1,  -50 );

changeAnime( spep_8+2, 1, 108); --敵立ちポーズ
setRotateKey( spep_8+2,  1,  0 );
setShakeChara( spep_8+4, 1, 60, 20);
setMoveKey( spep_8+4, 1, 150, 0, 0); --敵位置

setMoveKey( spep_8+24, 1, 1000, 0, 0); --敵位置
setDisp( spep_8+24, 1, 0);

tyakudan = entryEffect(  spep_8,   SP_09,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, tyakudan, 0, 0, 0);
setEffScaleKey( spep_8, tyakudan, 1.0, 1.0);
setEffAlphaKey( spep_8, tyakudan, 255);
setEffRotateKey( spep_8, tyakudan, 0);

shuchusen7 = entryEffectLife( spep_8, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_8, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen7, 255);
setEffRotateKey( spep_8, shuchusen7, 0);

playSe( spep_8-10, 1018);

playSe( spep_8+10, SE_09);
--ßplaySe( spep_8+30, SE_09);
--playSe( spep_8+50, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_9=spep_8+74; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey( spep_9-1,    1,  2.0, 2.0);
setEffAlphaKey( spep_9-1, shuchusen7, 255);
setEffAlphaKey( spep_9, shuchusen7, 0);
setEffAlphaKey( spep_9-1, ryusensasaru, 255);
setEffAlphaKey( spep_9, ryusensasaru, 0);

setRotateKey( spep_9-1,  1,  -60 );

--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   1586,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);

end
