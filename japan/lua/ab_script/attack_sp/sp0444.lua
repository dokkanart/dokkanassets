--sp0444 1013470 スーパーリブリアン_リブリアンエターナルラブ

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

SP_01=151314; --100f
SP_02=151315; --120f
SP_03=151316; --60f
SP_04=1670;

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
setScaleKey( 5, 0, 1.5, 1.5);

setMoveKey( 0, 1, 0, -500, 0); --味方位置
setMoveKey( 1, 1, 0, -500, 0); --味方位置
setMoveKey( 2, 1, 0, -500, 0); --味方位置
setMoveKey( 3, 1, 0, -500, 0); --味方位置
setMoveKey( 4, 1, 0, -500, 0); --味方位置
setMoveKey( 5, 1, 0, -500, 0); --味方位置

setScaleKey( 0, 1, 1.5, 1.5);
setScaleKey( 1, 1, 1.5, 1.5);
setScaleKey( 2, 1, 1.5, 1.5);
setScaleKey( 3, 1, 1.5, 1.5);
setScaleKey( 4, 1, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);

setRotateKey( 0,  0,  0 );
setRotateKey( 0,  1,  0 );

------------------------------------------------------
--ため(0-169F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep1+30, 40, 129, 0, 10, 10, 10, 230);       -- ベース暗め　背景
--setVisibleUI(spep1+5, 0);

changeAnime(  spep1+30, 0, 17); -- 溜め!
setShakeChara(spep1+31,1,40,20);

ki1=entryEffectLife(spep1+30,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+30,ki1,0,0,0);
setEffScaleKey(spep1+30,ki1,1.0,1.0);
setEffRotateKey(spep1+30,ki1,0);
setEffAlphaKey(spep1+30,ki1,255);

setEffMoveKey(spep1+70,ki1,0,0,0);
setEffScaleKey(spep1+70,ki1,1.0,1.0);
setEffRotateKey(spep1+70,ki1,0);
setEffAlphaKey(spep1+70,ki1,255);

ki2=entryEffectLife(spep1+30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+30,ki2,0,0,0);
setEffScaleKey(spep1+30,ki2,1.0,1.0);
setEffRotateKey(spep1+30,ki2,0);
setEffAlphaKey(spep1+30,ki2,255);

setEffMoveKey(spep1+70,ki2,0,0,0);
setEffScaleKey(spep1+70,ki2,1.0,1.0);
setEffRotateKey(spep1+70,ki2,0);
setEffAlphaKey(spep1+70,ki2,255);

entryFade( spep1+62, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+30,  311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+30, aura, 2.3, 2.3);

setShakeChara( spep1+30, 0, 19, 10);

-- 書き文字エントリー
ct1 = entryEffectLife( spep1+30, 10013, 39, 0, -1, 50, 0, 320); -- ズズンッ
setEffRotateKey(spep1+30,ct1,355);
setEffShake(spep1+30, ct1, 40, 7);
setEffAlphaKey(spep1+30, ct1, 255);
setEffAlphaKey(spep1+50, ct1, 255);
setEffAlphaKey(spep1+70, ct1, 0);
setEffScaleKey( spep1+30, ct1, 0.1, 0.1);
setEffScaleKey( spep1+40, ct1, 2.5, 2.5);

ki3=entryEffectLife(spep1+71,1503, 98, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)-- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+71,ki3,0,0,0);
setEffScaleKey(spep1+71,ki3,1.0,1.0);
setEffRotateKey(spep1+71,ki3,0);
setEffAlphaKey(spep1+71,ki3,255);

setEffMoveKey(spep1+169,ki3,0,0,0);
setEffScaleKey(spep1+169,ki3,1.0,1.0);
setEffRotateKey(spep1+169,ki3,0);
setEffAlphaKey(spep1+169,ki3,255);

ki4= entryEffectLife(spep1+71,1502, 98, 0, -1,  0,  0,  0);   -- eff_003 (気)-- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+71,ki4,0,0,0);
setEffScaleKey(spep1+71,ki4,1.0,1.0);
setEffRotateKey(spep1+71,ki4,0);
setEffAlphaKey(spep1+71,ki4,255);

setEffMoveKey(169,ki4,0,0,0);
setEffScaleKey(169,ki4,1.0,1.0);
setEffRotateKey(169,ki4,0);
setEffAlphaKey(169,ki4,255);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+71,  311, 98, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+71, aura, 2.3, 2.3);

setShakeChara( spep1+71, 0, 98, 10);

speff = entryEffect(  spep1+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep1+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+90, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep1+90, ctgogo, 70, 10);
setEffScaleKey(spep1+90, ctgogo, 0.8, 0.8);
setEffRotateKey(spep1+90, ctgogo, 0);
setEffAlphaKey( spep1+90, ctgogo, 255);

setScaleKey( spep1+168,   0, 1.5, 1.5);
setMoveKey(   spep1+169,   0,    0, -58,   0);
setDisp(spep1+169,0,0);

setMoveKey(   spep1+170,   0,    0, -800,   0);

playSe( spep1+30, SE_01);
playSe( spep1+60, SE_02);
--playSe( spep1+73, SE_03);
playSe( spep1+80, SE_04);
------------------------------------------------------
-- Rolling1(100F)
------------------------------------------------------
spep2=spep1+170;

entryFadeBg(spep2, 0,100,0,10,10,10,200);

-- ** エフェクト等 ** --
Rolling1=entryEffectLife(spep2, SP_01, 100, 0x100, -1 ,0 ,0 ,0);

setEffMoveKey(spep2,Rolling1,0,0,0);
setEffScaleKey(spep2,Rolling1,1.0,1.0);
setEffRotateKey(spep2,Rolling1,0);
setEffAlphaKey(spep2,Rolling1,255);

setEffMoveKey(spep2+100,Rolling1,0,0,0);
setEffScaleKey(spep2+100,Rolling1,1.0,1.0);
setEffRotateKey(spep2+100,Rolling1,0); 
setEffAlphaKey(spep2+100,Rolling1,255);

entryFade( spep2+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep2, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);

--SE--
playSe( spep2, SE_01);
playSe( spep2+65, 31);

------------------------------------------------------
-- カードカットイン(90F)(230-320F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

--[[playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Rolling2(120F)
------------------------------------------------------
spep4=spep3+90;

entryFadeBg(spep4, 0,39,0,255,255,255,255);
entryFadeBg(spep4+39, 0,12,0,245,60,210,255);
entryFadeBg(spep4+51, 0,69,0,10,10,10,255);


entryFade(spep4+56, 0,20,0,245,60,210,100);

-- ** エフェクト等 ** --
Rolling2=entryEffectLife(spep4,SP_02,120,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rolling2,0,0,0);
setEffScaleKey(spep4,Rolling2,1.0,1.0);
setEffRotateKey(spep4,Rolling2,0);
setEffAlphaKey(spep4,Rolling2,255);

setEffMoveKey(spep4+120,Rolling2,0,0,0);
setEffScaleKey(spep4+120,Rolling2,1.0,1.0);
setEffRotateKey(spep4+120,Rolling2,0);
setEffAlphaKey(spep4+120,Rolling2,255);

-- ** エフェクト等 ** --
shuchusen4 = entryEffectLife( spep4, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);

ryusen4 = entryEffectLife( spep4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4, ryusen4, 200);
setEffAlphaKey(spep4,ryusen4,255);

setEffScaleKey( spep4+120, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4+120, ryusen4, 200);
setEffAlphaKey(spep4+120,ryusen4,255);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep4+8,10012, 48, 0x100, -1, 0, 0, 0);
setEffShake( spep4+8, ctZuo, 48, 5);

setEffMoveKey( spep4+8, ctZuo, 80, 290, 0);
setEffMoveKey( spep4+15, ctZuo, 120, 340,0);
setEffMoveKey( spep4+56, ctZuo, 120, 340,0);

setEffRotateKey( spep4+8, ctZuo, 30);

setEffScaleKey( spep4+8, ctZuo, 0.1, 0.1);
setEffScaleKey( spep4+15, ctZuo, 2.5, 2.5);
setEffScaleKey( spep4+47, ctZuo, 2.5, 2.5);
setEffScaleKey( spep4+56, ctZuo, 6.0, 6.0);

setEffAlphaKey( spep4+8,   ctZuo, 255);
setEffAlphaKey( spep4+47, ctZuo, 255);
setEffAlphaKey( spep4+56, ctZuo, 0);

setEffShake( spep4+8,ctZuo,48,20);

--spname = entryEffectLife( spep4, 1508,120,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
--setEffAlphaKey( spep4,spname,255);
--setEffAlphaKey( spep4+120,spname,255); 

entryFade( spep4+112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--SE--
playSe( spep4, SE_06);

------------------------------------------------------
-- Rolling3(60F)
------------------------------------------------------
spep5=spep4+120;

setDisp( spep5, 0, 0);
setDisp( spep5, 1, 1);
changeAnime( spep5-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep5-2,    1,   120,  0,   0);
setMoveKey(  spep5-1,    1,  400,  -400,   0);
setMoveKey(  spep5,    1,  400,  -400,   0);
setMoveKey(  spep5+30,    1,   120,  -270,   0);

setScaleKey(  spep5-1,   1,   1.2,  1.2);
setScaleKey(  spep5+60,   1,   1.2,  1.2);

entryFade( spep5+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep5+75, 1, 0);

ryusen = entryEffectLife( spep5-1, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep5-1, ryusen, 230);
setEffScaleKey( spep5-1, ryusen, 1.7, 1.7);

kamehame_beam2 = entryEffect( spep5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep5, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep5+80, kamehame_beam2, 1, 1);
setDamage( spep5+82, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
setShakeChara( spep5, 1, 60, 20);

entryFadeBg( spep5, 0, 60, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep5, 10014, 55, 0, -1, 0, 50, 355); -- ズドドッ
setEffShake(spep5, ct, 55, 20);
setEffScaleKey( spep5, ct, 3, 3);
setEffRotateKey(spep5, ct, 70);
setEffAlphaKey(spep5, ct, 255);
setEffAlphaKey(spep5+45, ct, 255);
setEffAlphaKey(spep5+55, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep5+22; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1, 210 ,-357 ,0);
setScaleKey(SP_dodge,1,1.2,1.2);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(   SP_dodge+8,   1,    282,  -389,  0);
setScaleKey(   SP_dodge+8,   1, 1.2, 1.2);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end


entryFade( spep5+52, 6,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--SE--
playSe( spep5, SE_07);
playSe( spep5+20, SE_06);
------------------------------------------------------
-- ギャン ( 60F)
------------------------------------------------------
spep6=spep5+60;

-- ** ギャン ** --
gyan = entryEffectLife( spep6, 190004 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep6, gyan, 0, 0, 0);
setEffScaleKey( spep6, gyan,1.0, 1.0);
setEffAlphaKey( spep6, gyan, 255);
setEffShake( spep6, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep6, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep6, ctgyan, 255);
setEffScaleKey( spep6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep6, ctgyan, 255);
setEffAlphaKey( spep6+60, ctgyan, 80);
setEffShake( spep6, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep6+8, SE_09);
------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
spep7=spep6+60;

expl = entryEffect(  spep7, SP_04,   0,  -1,  0,  0,  0);
setEffScaleKey( spep7, expl, 1.1, 1.1);
setEffAlphaKey( spep7, expl, 255);

-- ダメージ表示
dealDamage( spep7+26 -10);
--entryFade( spep7+110, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep7+120 -10);

-- ** 音 ** --
playSe( spep7+6, SE_10);

else

------------------------------------------------------
--ため(0-169F)
------------------------------------------------------
kame_flag = 0x00;

spep1=0;

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep1+30, 40, 129, 0, 10, 10, 10, 230);       -- ベース暗め　背景
--setVisibleUI(spep1+5, 0);

changeAnime(  spep1+30, 0, 17); -- 溜め!
setShakeChara(spep1+31,1,40,20);

ki1=entryEffectLife(spep1+30,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+30,ki1,0,0,0);
setEffScaleKey(spep1+30,ki1,1.0,1.0);
setEffRotateKey(spep1+30,ki1,0);
setEffAlphaKey(spep1+30,ki1,255);

setEffMoveKey(spep1+70,ki1,0,0,0);
setEffScaleKey(spep1+70,ki1,1.0,1.0);
setEffRotateKey(spep1+70,ki1,0);
setEffAlphaKey(spep1+70,ki1,255);

ki2=entryEffectLife(spep1+30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+30,ki2,0,0,0);
setEffScaleKey(spep1+30,ki2,1.0,1.0);
setEffRotateKey(spep1+30,ki2,0);
setEffAlphaKey(spep1+30,ki2,255);

setEffMoveKey(spep1+70,ki2,0,0,0);
setEffScaleKey(spep1+70,ki2,1.0,1.0);
setEffRotateKey(spep1+70,ki2,0);
setEffAlphaKey(spep1+70,ki2,255);

entryFade( spep1+62, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+30,  311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+30, aura, 2.3, 2.3);

setShakeChara( spep1+30, 0, 19, 10);

-- 書き文字エントリー
ct1 = entryEffectLife( spep1+30, 10013, 39, 0, -1, 50, 0, 320); -- ズズンッ
setEffRotateKey(spep1+30,ct1,355);
setEffShake(spep1+30, ct1, 40, 7);
setEffAlphaKey(spep1+30, ct1, 255);
setEffAlphaKey(spep1+50, ct1, 255);
setEffAlphaKey(spep1+70, ct1, 0);
setEffScaleKey( spep1+30, ct1, 0.1, 0.1);
setEffScaleKey( spep1+40, ct1, 2.5, 2.5);

ki3=entryEffectLife(spep1+71,1503, 98, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)-- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+71,ki3,0,0,0);
setEffScaleKey(spep1+71,ki3,1.0,1.0);
setEffRotateKey(spep1+71,ki3,0);
setEffAlphaKey(spep1+71,ki3,255);

setEffMoveKey(spep1+169,ki3,0,0,0);
setEffScaleKey(spep1+169,ki3,1.0,1.0);
setEffRotateKey(spep1+169,ki3,0);
setEffAlphaKey(spep1+169,ki3,255);

ki4= entryEffectLife(spep1+71,1502, 98, 0, -1,  0,  0,  0);   -- eff_003 (気)-- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+71,ki4,0,0,0);
setEffScaleKey(spep1+71,ki4,1.0,1.0);
setEffRotateKey(spep1+71,ki4,0);
setEffAlphaKey(spep1+71,ki4,255);

setEffMoveKey(169,ki4,0,0,0);
setEffScaleKey(169,ki4,1.0,1.0);
setEffRotateKey(169,ki4,0);
setEffAlphaKey(169,ki4,255);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+71,  311, 98, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+71, aura, 2.3, 2.3);

setShakeChara( spep1+71, 0, 98, 10);

--speff = entryEffect(  spep1+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep1+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+90, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep1+90, ctgogo, 70, 10);
setEffScaleKey(spep1+90, ctgogo, -0.8, 0.8);
setEffRotateKey(spep1+90, ctgogo, 0);
setEffAlphaKey( spep1+90, ctgogo, 255);

setScaleKey( spep1+168,   0, 1.5, 1.5);
setMoveKey(   spep1+169,   0,    0, -58,   0);
setDisp(spep1+169,0,0);

setMoveKey(   spep1+170,   0,    0, -800,   0);

playSe( spep1+30, SE_01);
playSe( spep1+60, SE_02);
--playSe( spep1+73, SE_03);
playSe( spep1+80, SE_04);
------------------------------------------------------
-- Rolling1(100F)
------------------------------------------------------
spep2=spep1+170;

entryFadeBg(spep2, 0,100,0,10,10,10,200);

-- ** エフェクト等 ** --
Rolling1=entryEffectLife(spep2, SP_01, 100, 0x100, -1 ,0 ,0 ,0);

setEffMoveKey(spep2,Rolling1,0,0,0);
setEffScaleKey(spep2,Rolling1,1.0,1.0);
setEffRotateKey(spep2,Rolling1,0);
setEffAlphaKey(spep2,Rolling1,255);

setEffMoveKey(spep2+100,Rolling1,0,0,0);
setEffScaleKey(spep2+100,Rolling1,1.0,1.0);
setEffRotateKey(spep2+100,Rolling1,0); 
setEffAlphaKey(spep2+100,Rolling1,255);

entryFade( spep2+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep2, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);

--SE--
playSe( spep2, SE_01);
playSe( spep2+65, 31);

------------------------------------------------------
-- カードカットイン(90F)(230-320F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

--[[playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep3, SE_05);
speff = entryEffect( spep3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Rolling2(120F)
------------------------------------------------------
spep4=spep3+90;

entryFadeBg(spep4, 0,39,0,255,255,255,255);
entryFadeBg(spep4+39, 0,12,0,245,60,210,255);
entryFadeBg(spep4+51, 0,69,0,10,10,10,255);


entryFade(spep4+56, 0,20,0,245,60,210,100);

-- ** エフェクト等 ** --
Rolling2=entryEffectLife(spep4,SP_02,120,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rolling2,0,0,0);
setEffScaleKey(spep4,Rolling2,1.0,1.0);
setEffRotateKey(spep4,Rolling2,0);
setEffAlphaKey(spep4,Rolling2,255);

setEffMoveKey(spep4+120,Rolling2,0,0,0);
setEffScaleKey(spep4+120,Rolling2,1.0,1.0);
setEffRotateKey(spep4+120,Rolling2,0);
setEffAlphaKey(spep4+120,Rolling2,255);

-- ** エフェクト等 ** --
shuchusen4 = entryEffectLife( spep4, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);

ryusen4 = entryEffectLife( spep4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4, ryusen4, 200);
setEffAlphaKey(spep4,ryusen4,255);

setEffScaleKey( spep4+120, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4+120, ryusen4, 200);
setEffAlphaKey(spep4+120,ryusen4,255);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep4+8,10012, 48, 0x100, -1, 0, 0, 0);
setEffShake( spep4+8, ctZuo, 48, 5);

setEffMoveKey( spep4+8, ctZuo, 80, 290, 0);
setEffMoveKey( spep4+15, ctZuo, 120, 340,0);
setEffMoveKey( spep4+56, ctZuo, 120, 340,0);

setEffRotateKey( spep4+8, ctZuo, 30);

setEffScaleKey( spep4+8, ctZuo, 0.1, 0.1);
setEffScaleKey( spep4+15, ctZuo, 2.5, 2.5);
setEffScaleKey( spep4+47, ctZuo, 2.5, 2.5);
setEffScaleKey( spep4+56, ctZuo, 6.0, 6.0);

setEffAlphaKey( spep4+8,   ctZuo, 255);
setEffAlphaKey( spep4+47, ctZuo, 255);
setEffAlphaKey( spep4+56, ctZuo, 0);

setEffShake( spep4+8,ctZuo,48,20);

spname = entryEffectLife( spep4, 1508,120,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+120,spname,255); 

entryFade( spep4+112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

--SE--
playSe( spep4, SE_06);

------------------------------------------------------
-- Rolling3(60F)
------------------------------------------------------
spep5=spep4+120;

setDisp( spep5, 0, 0);
setDisp( spep5, 1, 1);
changeAnime( spep5-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep5-2,    1,   120,  0,   0);
setMoveKey(  spep5-1,    1,  400,  -400,   0);
setMoveKey(  spep5,    1,  400,  -400,   0);
setMoveKey(  spep5+30,    1,   120,  -270,   0);

setScaleKey(  spep5-1,   1,   1.2,  1.2);
setScaleKey(  spep5+60,   1,   1.2,  1.2);

entryFade( spep5+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep5+75, 1, 0);

ryusen = entryEffectLife( spep5-1, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep5-1, ryusen, 230);
setEffScaleKey( spep5-1, ryusen, 1.7, 1.7);

kamehame_beam2 = entryEffect( spep5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep5, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep5+80, kamehame_beam2, 1, 1);
setDamage( spep5+82, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
setShakeChara( spep5, 1, 60, 20);

entryFadeBg( spep5, 0, 60, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep5, 10014, 55, 0, -1, 0, 50, 355); -- ズドドッ
setEffShake(spep5, ct, 55, 20);
setEffScaleKey( spep5, ct, 3, 3);
setEffRotateKey(spep5, ct, 0);
setEffAlphaKey(spep5, ct, 255);
setEffAlphaKey(spep5+45, ct, 255);
setEffAlphaKey(spep5+55, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep5+22; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1, 210 ,-357 ,0);
setScaleKey(SP_dodge,1,1.2,1.2);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(   SP_dodge+8,   1,    282,  -389,  0);
setScaleKey(   SP_dodge+8,   1, 1.2, 1.2);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end


entryFade( spep5+52, 6,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--SE--
playSe( spep5, SE_07);
playSe( spep5+20, SE_06);
------------------------------------------------------
-- ギャン ( 60F)
------------------------------------------------------
spep6=spep5+60;

-- ** ギャン ** --
gyan = entryEffectLife( spep6, 190004 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep6, gyan, 0, 0, 0);
setEffScaleKey( spep6, gyan,1.0, 1.0);
setEffAlphaKey( spep6, gyan, 255);
setEffShake( spep6, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep6, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep6, ctgyan, 255);
setEffScaleKey( spep6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep6, ctgyan, 255);
setEffAlphaKey( spep6+60, ctgyan, 80);
setEffShake( spep6, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep6+8, SE_09);
------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
spep7=spep6+60;

expl = entryEffect(  spep7, SP_04,   0,  -1,  0,  0,  0);
setEffScaleKey( spep7, expl, 1.1, 1.1);
setEffAlphaKey( spep7, expl, 255);

-- ダメージ表示
dealDamage( spep7+26 -10);
--entryFade( spep7+110, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep7+120 -10);

-- ** 音 ** --
playSe( spep7+6, SE_10);

end
