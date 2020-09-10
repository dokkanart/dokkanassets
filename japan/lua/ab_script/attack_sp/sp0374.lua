print ("[lua]sp0374");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
--[[
SP_01 = 150554;--フュージョン
SP_02 = 150555;--登場
SP_03 = 150556;--手前へ突進
SP_04 = 150557;--地球を周回
SP_05 = 150558;--接近～ラッシュ
SP_06 = 150559;--撃ち落とし
SP_07 = 150560;--ヒットエフェクト
SP_08 = 150561;--死ね死ねミサイル
SP_09 = 150562;--着弾
SP_10 = 150563;--大爆発と高笑い
--enemy
SP_11 = 150577;--登場
SP_12 = 150578;--手前へ突進
SP_13 = 150579;--接近～ラッシュ
SP_14 = 150580;--撃ち落とし
SP_15 = 150581;--死ね死ねミサイル
SP_16 = 150582;--大爆発と高笑い

]]
SP_01 = 150649; --球たくさん溜め(85)	ef_001 
SP_01e = 150650;	--ef_001の敵用	ef_001e
SP_02 = 150651;	--球発射	ef_002(50)
SP_02e = 150652;	--ef_002の敵用(50)	ef_002e
SP_03 = 150653;	--球敵に向かう(40)	ef_003
--SP_06 = 150654;	--構え(30)	ef_004
--SP_07 = 150655;	--ef_004の敵用	ef_004e
SP_05 = 150656;	--腕伸ばす(50)	ef_005
SP_05e = 150657;	--ef_005の敵用	ef_005e
SP_06 = 150658;	--敵が球を弾いてる	(100)ef_006
SP_07 = 150659;	--地面に叩きつけ(手前)(60)	ef_007
SP_08 = 150660;	--地面に叩きつけ(奥)(60)	ef_008
--[[
150649
150650
150651
150652
150653
150656
150657
150658
150659
150660
]]
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
-------------------------------------------------------
--事前準備
-------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,   0,   0);
setMoveKey(   0,   1,    0,   0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,1, 1.5, 1.5);
setVisibleUI(0, 0);


------------------------------------------------------
--球たくさん溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
entryFade( 0, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 6, 0, 165, 0, 10, 10, 10, 180);       -- ベース暗め　背景



tame = entryEffect(6, SP_01,  0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( 6, tame, 0, 0, 0);
setEffAlphaKey( 6, tame, 255);
setEffScaleKey( 6, tame, 1.0, 1.0);
setEffRotateKey( 6, tame, 0);

shuchusentame = entryEffectLife( 6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(6, shuchusentame, 0 ,0 ,0);
setEffScaleKey( 6, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 6, shuchusentame, 255);
setEffRotateKey( 6, shuchusentame, 0);

entryFade( 26, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 54, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--カットイン表示

speff1 = entryEffect(  58,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  58,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

playSe( 26, SE_01);
--playSe( 54, SE_02);

playSe( 60, SE_04);


tyouseidesu = 0;
-- 書き文字エントリー
ctgogo = entryEffectLife( 58+tyouseidesu, 190006, 85, 0x100, -1, 0, -200, 480);    -- ゴゴゴゴ 
setEffShake( 58+tyouseidesu, ctgogo, 80, 8);
setEffRotateKey( 58+tyouseidesu, ctgogo, 0);

setEffScaleKey( 58+tyouseidesu, ctgogo, 0.7, 0.7);
setEffAlphaKey( 58+tyouseidesu, ctgogo, 255);

setEffScaleKey( 121+tyouseidesu, ctgogo, 0.7, 0.7);
setEffAlphaKey( 121+tyouseidesu, ctgogo, 255);

setEffScaleKey( 129+tyouseidesu, ctgogo, 3.0, 3.0);
setEffAlphaKey( 129+tyouseidesu, ctgogo, 0);


------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1=160+6;

entryFade( spep_1-10, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_1-10, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, tame, 255);
setEffAlphaKey( spep_1, tame, 0);
setEffAlphaKey( spep_1-1, shuchusentame, 255);
setEffAlphaKey( spep_1, shuchusentame, 0);


--カード絵＋技名
playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



shuchusencut = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, shuchusencut, 0, 0, 0);
setEffScaleKey( spep_1, shuchusencut, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusencut, 255);
setEffRotateKey( spep_1, shuchusencut, 0);

------------------------------------------------------
-- 球発射(f)
------------------------------------------------------

spep_2=spep_1+90;

entryFade( spep_2-5, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusenoku = entryEffectLife( spep_2, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_2, ryusenoku, 0, 10, 0);
setEffRotateKey( spep_2, ryusenoku, 45);
setEffScaleKey( spep_2, ryusenoku, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusenoku, 255);



-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, tamahassya, 0, 0, 0);
setEffScaleKey( spep_2, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_2, tamahassya, 255);
setEffRotateKey( spep_2, tamahassya, 0);

shuchusentuika = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusentuika, 0, 0, 0);
setEffScaleKey( spep_2, shuchusentuika, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusentuika, 255);
setEffRotateKey( spep_2, shuchusentuika, 0);


entryFade( spep_2+30, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--横線
ryusenyoko = entryEffectLife( spep_2+30, 920, 60, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_2+30, ryusenyoko, -160);
setEffScaleKey( spep_2+30, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_2+30, ryusenyoko, 255);

--playSe( spep_2, SE_06);
--playSe( spep_2+20, SE_06);
playSe( spep_2+40, SE_06);
--playSe( spep_2+60, SE_06);
------------------------------------------------------
-- 手前へ突進(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 105, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_3-1, tamahassya, 255);
setEffAlphaKey( spep_3, tamahassya, 0);
setEffAlphaKey( spep_3-1, shuchusentuika, 255);
setEffAlphaKey( spep_3, shuchusentuika, 0);


changeAnime(spep_3-1,1,102);
setMoveKey(spep_3-1, 1, 0, 0, 0);
setScaleKey(spep_3-1, 1, 1.5, 1.5);
setEffRotateKey(spep_3-1, 1, 0);

setMoveKey(spep_3, 1, 300, -400, 0);
setScaleKey(spep_3, 1, 2.0, 2.0);

--横線
ryusenyoko = entryEffectLife( spep_3, 920, 100, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_3, ryusenyoko, -160);
setEffScaleKey( spep_3, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_3, ryusenyoko, 255);

--playSe( spep_3+60, SE_03);
-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, tamahassya, 0, 0, 0);
setEffScaleKey( spep_3, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_3, tamahassya, 255);
setEffRotateKey( spep_3, tamahassya, 0);


tyouseisan = -4;

setMoveKey(spep_3+4+tyouseisan, 1, 300, -400, 0);
setDisp(spep_3+4+tyouseisan,1,1);

setMoveKey(spep_3+10+tyouseisan, 1, 0, 0, 0);
setScaleKey(spep_3+10+tyouseisan, 1, 1.5, 1.5);


--気を貯める後ろ 118
changeAnime(spep_3+26+tyouseisan,1,118);

setMoveKey(spep_3+30+tyouseisan, 1, 50, 0, 0);

setRotateKey( spep_3+33+tyouseisan,  1,   0 );

--キック３ 114

changeAnime(spep_3+34+tyouseisan,1,114);
setRotateKey( spep_3+34+tyouseisan,  1,   -20 );
setMoveKey(spep_3+34+tyouseisan, 1, -200, 0, 0);


setRotateKey( spep_3+44+tyouseisan,  1,   0 );
setMoveKey(spep_3+44+tyouseisan, 1, -100, 0, 0);

--エネルギー弾 119
tyouseisan2 =-6;

changeAnime(spep_3+50+tyouseisan2,1,119);
setMoveKey(spep_3+50+tyouseisan2, 1, -50, 0, 0);

pauseChara(  spep_3+50+tyouseisan2,  10);
--防御 104
changeAnime(spep_3+60+tyouseisan2,1,104);
setMoveKey(spep_3+60+tyouseisan2, 1, -100, 0, 0);

setMoveKey(spep_3+66+tyouseisan2, 1, 0, 0, 0);

changeAnime(spep_3+66+tyouseisan2,1,112);
pauseChara(  spep_3+66+tyouseisan2,  3);

changeAnime(spep_3+70+tyouseisan2,1,104);
changeAnime(spep_3+72+tyouseisan2,1,113);
pauseChara(  spep_3+72+tyouseisan2,  3);

changeAnime(spep_3+76+tyouseisan2,1,104);
changeAnime(spep_3+78+tyouseisan2,1,112);
pauseChara(  spep_3+78+tyouseisan2,  1);

changeAnime(spep_3+80+tyouseisan2,1,104);
changeAnime(spep_3+82+tyouseisan2,1,113);
pauseChara(  spep_3+82+tyouseisan2,  1);

changeAnime(spep_3+84+tyouseisan2,1,100);

setMoveKey(spep_3+86+tyouseisan2, 1, 200, 0, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 364; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(   SP_dodge-12,   1,    0, -54,   0);
setMoveKey(   SP_dodge,   1,    0, -54,   0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------


playSe( spep_3+20, 1018);
playSe( spep_3+34, 1006);
playSe( spep_3+66, 1007);
playSe( spep_3+72, 1006);
playSe( spep_3+78, 1007);


------------------------------------------------------
-- 腕伸ばす
------------------------------------------------------
spep_4=spep_3+90+tyouseisan2;

entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp(spep_4,1,0);
setEffAlphaKey( spep_4-1, tamahassya, 255);
setEffAlphaKey( spep_4, tamahassya, 0);

-- ** エフェクト等 ** --
udenobashi = entryEffect( spep_4, SP_05, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, udenobashi, 0, 0, 0);
setEffScaleKey( spep_4, udenobashi, 1.0, 1.0);
setEffAlphaKey( spep_4, udenobashi, 255);
setEffRotateKey( spep_4, udenobashi, 0);


shuchusenudenobashi = entryEffectLife( spep_4, 906,110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_4, shuchusenudenobashi, 0, 0, 0);
setEffScaleKey( spep_4, shuchusenudenobashi, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusenudenobashi, 255);
setEffRotateKey( spep_4, shuchusenudenobashi, 0);
--横線
ryusenyoko = entryEffectLife( spep_4+28, 920, 82, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_4+28, ryusenyoko, -140);
setEffScaleKey( spep_4+28, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_4+28, ryusenyoko, 255);

playSe( spep_4+10, SE_06);

------------------------------------------------------
-- 敵が手に吹っ飛ばされる
------------------------------------------------------
spep_5=spep_4+110;

entryFade( spep_5-5, 1, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 85, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp(spep_5,1,1);
setMoveKey(spep_5-1, 1, 200, 0, 0);
setScaleKey(spep_5-1, 1, 1.5, 1.5);
setRotateKey( spep_5-1,  1,  0 );

setMoveKey(spep_5, 1, 200, -100, 0);
setScaleKey(spep_5, 1, 1.5, 1.5);

changeAnime( spep_5, 1, 104);                         -- 手前ダメージ

--横線
ryusenyoko = entryEffectLife( spep_5, 920, 70, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_5, ryusenyoko, -140);
setEffScaleKey( spep_5, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_5, ryusenyoko, 255);

--playSe( spep_3+60, SE_03);
-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_5, SP_06, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, tamahassya, 0, 0, 0);
setEffScaleKey( spep_5, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_5, tamahassya, 255);
setEffRotateKey( spep_5, tamahassya, 0);
setRotateKey( spep_5+1,  1,  0 );

--突っ込む
setRotateKey( spep_5+2,  1,  30 );
changeAnime( spep_5+2, 1, 119);                         -- 手前ダメージ
pauseChara(  spep_5+2,  20);
setMoveKey(spep_5+2, 1, 200, -100, 0);

--移動終点
setMoveKey(spep_5+9, 1, 100, 0, 0);
setRotateKey( spep_5+9,  1,  30 );

--やられ
changeAnime( spep_5+10, 1, 108); 
setMoveKey(spep_5+10, 1, 150, -50, 0);
setRotateKey( spep_5+10,  1,  60 );

setMoveKey(spep_5+25, 1, 180, -80, 0);


setMoveKey(  spep_5+40,    1,  400,  -300,   0);
setDisp( spep_5+40, 1, 0);


playSe( spep_5+10, 1009);--1013---------koko!!!!!

playSe( spep_5+40, 1018);
------------------------------------------------------
-- 地面に叩きつけ
------------------------------------------------------
spep_6=spep_5+68;

entryFade( spep_6-10, 3, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_6-1, tamahassya, 255);
setEffAlphaKey( spep_6, tamahassya, 0);
setEffAlphaKey( spep_6-1, ryusenyoko, 255);
setEffAlphaKey( spep_6, ryusenyoko, 0);

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  300,  -400,   0);
setScaleKey( spep_6-1,    1,  1.5, 1.5);
setRotateKey( spep_6-1,  1,  60 );

--playSe( spep_6+10, SE_09);
playSe( spep_6+10, SE_10);

-- ** エフェクト等 ** --
temae = entryEffect( spep_6, SP_07, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, temae, 0, 0, 0);
setEffScaleKey( spep_6, temae, 1.0, 1.0);
setEffAlphaKey( spep_6, temae, 255);
setEffRotateKey( spep_6, temae, 0);
-- ** エフェクト等 ** --
bg = entryEffect( spep_6, SP_08, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, bg, 0, 0, 0);
setEffScaleKey( spep_6, bg, 1.0, 1.0);
setEffAlphaKey( spep_6, bg, 255);
setEffRotateKey( spep_6, bg, 0);

-- ** エフェクト等 ** --
aura = entryEffect( spep_6, 1500, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, aura, 0, 0, 0);
setEffScaleKey( spep_6, aura, 1.0, 1.0);
setEffAlphaKey( spep_6, aura, 255);
setEffRotateKey( spep_6, aura, 0);


shuchusenlast = entryEffectLife( spep_6, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_6, shuchusenlast, 0 ,0 ,0);
setEffScaleKey( spep_6, shuchusenlast, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenlast, 255);
setEffRotateKey( spep_6, shuchusenlast, 0);

setMoveKey(  spep_6,    1,    -350,   -50,   0);
setScaleKey( spep_6,    1,  2.0, 2.0);
changeAnime( spep_6, 1, 108); 

setRotateKey( spep_6,  1,  60 );
setMoveKey(  spep_6+12,    1,    0,   -300,   0);


setShakeChara( spep_6+0, 1, 30,  10);
setShakeChara( spep_6+12, 1, 90, 20);

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+109, 5,  15, 1, 8, 8, 8, 255);    
setEffAlphaKey( spep_6+115, temae, 255);
setEffAlphaKey( spep_6+116, temae, 0);
setEffAlphaKey( spep_6+115, tamahassya, 255);
setEffAlphaKey( spep_6+116, tamahassya, 0);
setScaleKey( spep_6+115,    1,  2.0, 2.0);
setMoveKey(  spep_6+115,    1,    0,   -300,   0);
setRotateKey( spep_6+115,  1,  60 );
        -- black fade
setDisp( spep_6+116, 1, 0);

endPhase(spep_6+120);

else

entryFade( 0, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 6, 0, 165, 0, 10, 10, 10, 180);       -- ベース暗め　背景



tame = entryEffect(6, SP_01e,  0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( 6, tame, 0, 0, 0);
setEffAlphaKey( 6, tame, 255);
setEffScaleKey( 6, tame, 1.0, 1.0);
setEffRotateKey( 6, tame, 0);

shuchusentame = entryEffectLife( 6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(6, shuchusentame, 0 ,0 ,0);
setEffScaleKey( 6, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 6, shuchusentame, 255);
setEffRotateKey( 6, shuchusentame, 0);

entryFade( 26, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 54, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--カットイン表示
--[[
speff1 = entryEffect(  58,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  58,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
]]
playSe( 26, SE_01);
--playSe( 54, SE_02);

playSe( 60, SE_04);


tyouseidesu = 0;
-- 書き文字エントリー
ctgogo = entryEffectLife( 58+tyouseidesu, 190006, 85, 0x100, -1, 0, -200, 480);    -- ゴゴゴゴ 
setEffShake( 58+tyouseidesu, ctgogo, 80, 8);
setEffRotateKey( 58+tyouseidesu, ctgogo, 0);

setEffScaleKey( 58+tyouseidesu, ctgogo, -0.7, 0.7);
setEffAlphaKey( 58+tyouseidesu, ctgogo, 255);

setEffScaleKey( 121+tyouseidesu, ctgogo, -0.7, 0.7);
setEffAlphaKey( 121+tyouseidesu, ctgogo, 255);

setEffScaleKey( 129+tyouseidesu, ctgogo, -3.0, 3.0);
setEffAlphaKey( 129+tyouseidesu, ctgogo, 0);


------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1=160+6;
entryFade( spep_1-10, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFade( spep_1-5, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, tame, 255);
setEffAlphaKey( spep_1, tame, 0);
setEffAlphaKey( spep_1-1, shuchusentame, 255);
setEffAlphaKey( spep_1, shuchusentame, 0);


--カード絵＋技名
playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



shuchusencut = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, shuchusencut, 0, 0, 0);
setEffScaleKey( spep_1, shuchusencut, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusencut, 255);
setEffRotateKey( spep_1, shuchusencut, 0);

------------------------------------------------------
-- 球発射(f)
------------------------------------------------------

spep_2=spep_1+90;

entryFade( spep_2-5, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusenoku = entryEffectLife( spep_2, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_2, ryusenoku, 0, 10, 0);
setEffRotateKey( spep_2, ryusenoku, 45);
setEffScaleKey( spep_2, ryusenoku, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusenoku, 255);



-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_2, SP_02e, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, tamahassya, 0, 0, 0);
setEffScaleKey( spep_2, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_2, tamahassya, 255);
setEffRotateKey( spep_2, tamahassya, 0);

shuchusentuika = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusentuika, 0, 0, 0);
setEffScaleKey( spep_2, shuchusentuika, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusentuika, 255);
setEffRotateKey( spep_2, shuchusentuika, 0);


entryFade( spep_2+30, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--横線
ryusenyoko = entryEffectLife( spep_2+30, 920, 60, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_2+30, ryusenyoko, -160);
setEffScaleKey( spep_2+30, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_2+30, ryusenyoko, 255);

--playSe( spep_2, SE_06);
--playSe( spep_2+20, SE_06);
playSe( spep_2+40, SE_06);
--playSe( spep_2+60, SE_06);
------------------------------------------------------
-- 手前へ突進(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 105, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_3-1, tamahassya, 255);
setEffAlphaKey( spep_3, tamahassya, 0);
setEffAlphaKey( spep_3-1, shuchusentuika, 255);
setEffAlphaKey( spep_3, shuchusentuika, 0);


changeAnime(spep_3-1,1,102);
setMoveKey(spep_3-1, 1, 0, 0, 0);
setScaleKey(spep_3-1, 1, 1.5, 1.5);
setEffRotateKey(spep_3-1, 1, 0);

setMoveKey(spep_3, 1, 300, -400, 0);
setScaleKey(spep_3, 1, 2.0, 2.0);

--横線
ryusenyoko = entryEffectLife( spep_3, 920, 100, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_3, ryusenyoko, -160);
setEffScaleKey( spep_3, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_3, ryusenyoko, 255);

--playSe( spep_3+60, SE_03);
-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, tamahassya, 0, 0, 0);
setEffScaleKey( spep_3, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_3, tamahassya, 255);
setEffRotateKey( spep_3, tamahassya, 0);


tyouseisan = -4;

setMoveKey(spep_3+4+tyouseisan, 1, 300, -400, 0);
setDisp(spep_3+4+tyouseisan,1,1);

setMoveKey(spep_3+10+tyouseisan, 1, 0, 0, 0);
setScaleKey(spep_3+10+tyouseisan, 1, 1.5, 1.5);


--気を貯める後ろ 118
changeAnime(spep_3+26+tyouseisan,1,118);

setMoveKey(spep_3+30+tyouseisan, 1, 50, 0, 0);

setRotateKey( spep_3+33+tyouseisan,  1,   0 );

--キック３ 114

changeAnime(spep_3+34+tyouseisan,1,114);
setRotateKey( spep_3+34+tyouseisan,  1,   -20 );
setMoveKey(spep_3+34+tyouseisan, 1, -200, 0, 0);


setRotateKey( spep_3+44+tyouseisan,  1,   0 );
setMoveKey(spep_3+44+tyouseisan, 1, -100, 0, 0);

--エネルギー弾 119
tyouseisan2 =-6;

changeAnime(spep_3+50+tyouseisan2,1,119);
setMoveKey(spep_3+50+tyouseisan2, 1, -50, 0, 0);

pauseChara(  spep_3+50+tyouseisan2,  10);
--防御 104
changeAnime(spep_3+60+tyouseisan2,1,104);
setMoveKey(spep_3+60+tyouseisan2, 1, -100, 0, 0);

setMoveKey(spep_3+66+tyouseisan2, 1, 0, 0, 0);

changeAnime(spep_3+66+tyouseisan2,1,112);
pauseChara(  spep_3+66+tyouseisan2,  3);

changeAnime(spep_3+70+tyouseisan2,1,104);
changeAnime(spep_3+72+tyouseisan2,1,113);
pauseChara(  spep_3+72+tyouseisan2,  3);

changeAnime(spep_3+76+tyouseisan2,1,104);
changeAnime(spep_3+78+tyouseisan2,1,112);
pauseChara(  spep_3+78+tyouseisan2,  1);

changeAnime(spep_3+80+tyouseisan2,1,104);
changeAnime(spep_3+82+tyouseisan2,1,113);
pauseChara(  spep_3+82+tyouseisan2,  1);

changeAnime(spep_3+84+tyouseisan2,1,100);

setMoveKey(spep_3+86+tyouseisan2, 1, 200, 0, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 364; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(   SP_dodge-12,   1,    0, -54,   0);
setMoveKey(   SP_dodge,   1,    0, -54,   0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------


playSe( spep_3+20, 1018);
playSe( spep_3+34, 1006);
playSe( spep_3+66, 1007);
playSe( spep_3+72, 1006);
playSe( spep_3+78, 1007);


------------------------------------------------------
-- 腕伸ばす
------------------------------------------------------
spep_4=spep_3+90+tyouseisan2;

entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp(spep_4,1,0);
setEffAlphaKey( spep_4-1, tamahassya, 255);
setEffAlphaKey( spep_4, tamahassya, 0);

-- ** エフェクト等 ** --
udenobashi = entryEffect( spep_4, SP_05e, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, udenobashi, 0, 0, 0);
setEffScaleKey( spep_4, udenobashi, 1.0, 1.0);
setEffAlphaKey( spep_4, udenobashi, 255);
setEffRotateKey( spep_4, udenobashi, 0);


shuchusenudenobashi = entryEffectLife( spep_4, 906,100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_4, shuchusenudenobashi, 0, 0, 0);
setEffScaleKey( spep_4, shuchusenudenobashi, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusenudenobashi, 255);
setEffRotateKey( spep_4, shuchusenudenobashi, 0);
--横線
ryusenyoko = entryEffectLife( spep_4+28, 920, 72, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_4+28, ryusenyoko, -140);
setEffScaleKey( spep_4+28, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_4+28, ryusenyoko, 255);

playSe( spep_4+10, SE_06);

------------------------------------------------------
-- 敵が手に吹っ飛ばされる
------------------------------------------------------
spep_5=spep_4+100;

entryFade( spep_5-10, 1, 9, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 85, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp(spep_5,1,1);
setMoveKey(spep_5-1, 1, 200, 0, 0);
setScaleKey(spep_5-1, 1, 1.5, 1.5);
setRotateKey( spep_5-1,  1,  0 );

setMoveKey(spep_5, 1, 200, -100, 0);
setScaleKey(spep_5, 1, 1.5, 1.5);

changeAnime( spep_5, 1, 104);                         -- 手前ダメージ

--横線
ryusenyoko = entryEffectLife( spep_5, 920, 70, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_5, ryusenyoko, -140);
setEffScaleKey( spep_5, ryusenyoko, 1.7, 1.5);
setEffAlphaKey( spep_5, ryusenyoko, 255);

--playSe( spep_3+60, SE_03);
-- ** エフェクト等 ** --
tamahassya = entryEffect( spep_5, SP_06, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, tamahassya, 0, 0, 0);
setEffScaleKey( spep_5, tamahassya, 1.0, 1.0);
setEffAlphaKey( spep_5, tamahassya, 255);
setEffRotateKey( spep_5, tamahassya, 0);
setRotateKey( spep_5+1,  1,  0 );

--突っ込む
setRotateKey( spep_5+2,  1,  30 );
changeAnime( spep_5+2, 1, 119);                         -- 手前ダメージ
pauseChara(  spep_5+2,  20);
setMoveKey(spep_5+2, 1, 200, -100, 0);

--移動終点
setMoveKey(spep_5+9, 1, 100, 0, 0);
setRotateKey( spep_5+9,  1,  30 );

--やられ
changeAnime( spep_5+10, 1, 108); 
setMoveKey(spep_5+10, 1, 150, -50, 0);
setRotateKey( spep_5+10,  1,  60 );

setMoveKey(spep_5+25, 1, 180, -80, 0);


setMoveKey(  spep_5+40,    1,  400,  -300,   0);
setDisp( spep_5+40, 1, 0);


playSe( spep_5+10, 1009);

playSe( spep_5+40, 1018);
------------------------------------------------------
-- 地面に叩きつけ
------------------------------------------------------
spep_6=spep_5+68;

entryFade( spep_6-10, 3, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_6-1, tamahassya, 255);
setEffAlphaKey( spep_6, tamahassya, 0);
setEffAlphaKey( spep_6-1, ryusenyoko, 255);
setEffAlphaKey( spep_6, ryusenyoko, 0);

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  300,  -400,   0);
setScaleKey( spep_6-1,    1,  1.5, 1.5);
setRotateKey( spep_6-1,  1,  60 );

--playSe( spep_6+10, SE_09);
playSe( spep_6+10, SE_10);

-- ** エフェクト等 ** --
temae = entryEffect( spep_6, SP_07, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, temae, 0, 0, 0);
setEffScaleKey( spep_6, temae, 1.0, 1.0);
setEffAlphaKey( spep_6, temae, 255);
setEffRotateKey( spep_6, temae, 0);
-- ** エフェクト等 ** --
bg = entryEffect( spep_6, SP_08, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_6, bg, 0, 0, 0);
setEffScaleKey( spep_6, bg, 1.0, 1.0);
setEffAlphaKey( spep_6, bg, 255);
setEffRotateKey( spep_6, bg, 0);

-- ** エフェクト等 ** --
aura = entryEffect( spep_6, 1500, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_6, aura, 0, 0, 0);
setEffScaleKey( spep_6, aura, 1.0, 1.0);
setEffAlphaKey( spep_6, aura, 255);
setEffRotateKey( spep_6, aura, 0);


shuchusenlast = entryEffectLife( spep_6, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_6, shuchusenlast, 0 ,0 ,0);
setEffScaleKey( spep_6, shuchusenlast, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenlast, 255);
setEffRotateKey( spep_6, shuchusenlast, 0);

setMoveKey(  spep_6,    1,    -350,   -50,   0);
setScaleKey( spep_6,    1,  2.0, 2.0);
changeAnime( spep_6, 1, 108); 

setRotateKey( spep_6,  1,  60 );
setMoveKey(  spep_6+12,    1,    0,   -300,   0);


setShakeChara( spep_6+0, 1, 30,  10);
setShakeChara( spep_6+12, 1, 90, 20);

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+109, 5,  15, 1, 8, 8, 8, 255);    
setEffAlphaKey( spep_6+115, temae, 255);
setEffAlphaKey( spep_6+116, temae, 0);
setEffAlphaKey( spep_6+115, tamahassya, 255);
setEffAlphaKey( spep_6+116, tamahassya, 0);
setScaleKey( spep_6+115,    1,  2.0, 2.0);
setMoveKey(  spep_6+115,    1,    0,   -300,   0);
setRotateKey( spep_6+115,  1,  60 );
        -- black fade

        
setDisp( spep_6+116, 1, 0);

endPhase(spep_6+120);


end
