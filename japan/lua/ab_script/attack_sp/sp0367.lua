fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150494; --溜め(100F)
SP_02 = 150495; --玉を上に(180F)
SP_03 = 150496; --投げる(120F)
SP_04 = 150497; --玉が敵に向かう(50F)？
SP_05 = 190002; --ギャン(70F) --LR
SP_06 = 1552; --宇宙からの俯瞰視点で地球が破壊されマグマ的な物が噴射
SP_07 = 150498; --ビルスイスのみ(90F)
SP_08 = 1568; --宇宙からの俯瞰視点で地球が光弾で爆発する演出（赤）：紫なら1553
SP_09 = 150499; --SP_01反転
SP_10 = 150500; --SP_02反転
SP_11 = 150501; --SP_03反転
SP_12 = 150502; --SP_07反転

tyo = -30;
tyo2 = -40;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+58;
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

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

------------------------------------------------------
-- SP_01 = 150494; --溜め(100F) →65に詰める
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

kitamestart = 0;
kitame = entryEffectLife(kitamestart, SP_01 ,65,0x100,-1,0,0,0);

setEffMoveKey(kitamestart,kitame,0,0,0);
setEffScaleKey(kitamestart,kitame,1.0,1.0);
setEffAlphaKey(kitamestart, kitame, 255);
setEffShake(kitamestart, kitame, 65, 10);

setVisibleUI(kitamestart, 0); --69

aura = entryEffectLife( kitamestart+30, 1500, 65, 0x80,  -1,  1,  0, 0); 
setEffMoveKey( kitamestart,aura,0,0,0);
setEffScaleKey( kitamestart+30, aura, 1.5, 1.5);
setEffAlphaKey( kitamestart, aura, 255);

playSe( kitamestart, SE_01);

-- 背景
entryFadeBg( kitamestart, 0, 100, 0,  0, 0, 0, 220);          -- ベース暗め　背景
syuA = entryEffectLife( kitamestart, 906, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuA,0,0,0);
setEffScaleKey(kitamestart,syuA,1.0,1.0);
setEffAlphaKey(kitamestart,syuA,255);

syuB = entryEffectLife( kitamestart, 1503, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuB,0,0,0);
setEffScaleKey(kitamestart,syuB,1.0,1.0);
setEffAlphaKey(kitamestart,syuB,255);

syuC = entryEffectLife( kitamestart, 1502, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuC,0,0,0);
setEffScaleKey(kitamestart,syuC,1.0,1.0);
setEffAlphaKey(kitamestart,syuC,255);

-- white
entryFade( kitamestart+62, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_02 = 150495; --玉を上に(180F)
------------------------------------------------------
tamauestart = 66;

tamaue = entryEffectLife( tamauestart, SP_02, 180, 0, -1, 0, 0, 0);
setEffMoveKey(tamauestart,tamaue,0,0,0);
setEffScaleKey(tamauestart,tamaue,1.0,1.0);
setEffAlphaKey(tamauestart, tamaue, 255);
setEffShake(tamauestart, tamaue, 180, 10);

-- 書き文字エントリー
-- 書き文字エントリー
ctgogo = entryEffectLife( tamauestart+87, 190006, 85, 0x100, -1, 0, 100, 480);    -- ゴゴゴゴ --95
setEffShake( tamauestart+87, ctgogo, 80, 8);
setEffRotateKey( tamauestart+87, ctgogo, 0);

setEffScaleKey( tamauestart+87, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamauestart+87, ctgogo, 255);

setEffScaleKey( tamauestart+150, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamauestart+150, ctgogo, 255);

setEffScaleKey( tamauestart+158, ctgogo, 3.0, 3.0);
setEffAlphaKey( tamauestart+158, ctgogo, 0);

speff = entryEffect(  tamauestart+72,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) --10
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え 
speff = entryEffect(  tamauestart+72,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ) --10
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( tamauestart+72, SE_04);

-- 背景
entryFadeBg( tamauestart, 0, 180, 0,  0, 0, 0, 220);          -- ベース暗め　背景
syu = entryEffectLife( tamauestart, 921, 180, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( tamauestart, syu, -90);
setEffScaleKey( tamauestart, syu, 1.6, 1.6);

entryFade( tamauestart+64, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( tamauestart+175, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

cardcutin = 246;

setScaleKey( cardcutin-1,   0, 1.5, 1.5);
setScaleKey( cardcutin,   0, 1.0, 1.0);

playSe( cardcutin, SE_05);
speff = entryEffectLife(  cardcutin,   1507, 90,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( cardcutin+85, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( cardcutin+64, SE_06);

------------------------------------------------------
-- SP_03 = 150496; --投げる(120F)
------------------------------------------------------

nagerustart = 336;
nageru = entryEffectLife( nagerustart , SP_03, 116, 0x100, -1, 0, 0 ,0);
setEffMoveKey(nagerustart,nageru,0,0,0);
setEffScaleKey(nagerustart,nageru,1.0,1.0);
setEffAlphaKey(nagerustart, nageru, 255);
setEffShake(nagerustart, nageru, 120, 10);

-- 背景 --
entryFadeBg( nagerustart, 0, 34, 0,  255, 255, 255, 220);          -- ベース白　背景
syuyoko1 = entryEffectLife( nagerustart, 907, 34, 0x80,  -1, 0,  0,  0);   -- 集中線（白線）
setEffAlphaKey( nagerustart, syuyoko1, 255);

syu = entryEffectLife( nagerustart, 906, 63, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( nagerustart, syu, 255);

entryFadeBg( nagerustart+32, 2, 5, 6, 0, 230, 255, 200);     -- 背景青

syuyoko2 = entryEffectLife( nagerustart+35, 920, 81, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( nagerustart+35, syuyoko2, 255);

entryFadeBg( nagerustart+39, 0, 82, 0,  0, 0, 0, 255);          -- ベース黒　背景

entryFade( nagerustart+28, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade 白ぼかし
entryFade( nagerustart+63, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( nagerustart+98, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( nagerustart+108, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( nagerustart+114, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spname = entryEffect(nagerustart, 1508,  0,  -1,  0,  0,  0);               -- 技名
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 文字 --
ctzuo = entryEffectLife( nagerustart, 10012, 49, 0x100, -1, 0, 30, 200);    -- ズオッ
setEffShake( nagerustart, ctzuo, 49, 12);
setEffScaleKey( nagerustart, ctzuo, 0.6, 0.6);
setEffRotateKey( nagerustart, ctzuo, 30);
setEffAlphaKey( nagerustart, ctzuo, 255);

setEffMoveKey( nagerustart, ctzuo, 180, 300);

setEffScaleKey( nagerustart+4, ctzuo, 3.0, 3.0);
setEffRotateKey( nagerustart+4, ctzuo, 30);
setEffAlphaKey( nagerustart+4, ctzuo, 255);

setEffScaleKey( nagerustart+28, ctzuo, 3.0, 3.0);
setEffRotateKey( nagerustart+28, ctzuo, 30);
setEffAlphaKey( nagerustart+28, ctzuo, 255);

setEffScaleKey( nagerustart+49, ctzuo, 5.0, 5.0);
setEffRotateKey( nagerustart+49, ctzuo, 30);
setEffAlphaKey( nagerustart+49, ctzuo, 80);

playSe( nagerustart, SE_07);--playSe( nagerustart+28, SE_07);

------------------------------------------------------
-- SP_04 = 150497; --玉が敵に向かう(50F)
------------------------------------------------------
semarustart = 453;

-- 敵キャラ配置 --
changeAnime(semarustart,1,102);
setDisp(semarustart,1,1);

setScaleKey(semarustart,1,1.3,1.3);
setMoveKey(semarustart,1,400,-600, 0);

setScaleKey(semarustart+30,1,0.5,0.5);
setMoveKey(semarustart+30,1,150,-250,0);

setMoveKey(semarustart+49,1,150,-250, 0);
setScaleKey(semarustart+49,1,0.5,0.5);

setDisp(semarustart+49,1,0);

playSe(semarustart, SE_04);

-- エフェクト --
entryFadeBg( semarustart, 0, 50, 0,  0, 0, 0, 255);          -- ベース暗め　背景

syu2 = entryEffectLife( semarustart, 921, 50, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( semarustart, syu2, -130);
setEffScaleKey( semarustart, syu2, 1.7, 1.7);--setEffScaleKey( semarustart, syu2, 1.6, 1.6);
setEffAlphaKey( semarustart, syu2, 255);
setEffAlphaKey( semarustart+43, syu2, 255);

semaru = entryEffectLife( semarustart,SP_04, 50, 0x80, -1, 0, 0, 0);
setEffMoveKey(semarustart, semaru,0,0,0);
setEffScaleKey(semarustart, semaru,1.0,1.0);
setEffAlphaKey( semarustart, semaru, 255);
setEffAlphaKey( semarustart+43, semaru, 255);

-- 文字 --
ctzudodo = entryEffectLife( semarustart, 10014, 40, 0x100, -1, 0, 100, 350);    -- ズドド
setEffShake(semarustart, ctzudodo, 40, 12);
setEffScaleKey(semarustart, ctzudodo, 3.0, 3.0);
setEffAlphaKey( semarustart, ctzudodo, 255);
setEffRotateKey(semarustart, ctzudodo, 70);
setEffAlphaKey(semarustart+40, ctzudodo, 255);

----------------------------------------------------
-- 回避 
----------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

setEffAlphaKey( SP_dodge+9, syu2, 255);
setEffAlphaKey( SP_dodge+9, semaru, 255);
setEffAlphaKey( SP_dodge+10, syu2, 0);
setEffAlphaKey( SP_dodge+10, semaru, 0);

do return end
else end

setEffAlphaKey( semarustart+50, syu2, 255);
setEffAlphaKey( semarustart+50, semaru, 255);

-----------------------------------------------------
--SP_05 = 190011; --ギャン(70F)
------------------------------------------------------
gyan = 497;

playSe( gyan, 1024);

entryFade( gyan-7, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( gyan, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( gyan, SP_05 ,60, 0x100,-1,0,0,0);
setEffMoveKey( gyan, gya ,0,0,0);
setEffScaleKey( gyan, gya ,1.0,1.0);
setEffAlphaKey( gyan, gya ,255);
setEffShake( gyam, gya, 10);

-- 書き文字エントリー
ct4 = entryEffectLife( gyan, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( gyan, ct4, 255);
setEffScaleKey( gyan, ct4, 3.0, 3.0);
setEffScaleKey( gyan+60, ct4, 4.0, 4.0);
setEffAlphaKey( gyan, ct4, 255);
setEffAlphaKey( gyan+60, ct4, 80);
setEffShake( gyan, ct4, 60, 10);

------------------------------------------------------
--SP_06 = 1552; --宇宙からの俯瞰視点で地球が破壊されマグマ的な物が噴射
--SP_07 = 150498; --ビルスイスのみ(90F)
------------------------------------------------------
expl = 557; --540

utyu = entryEffectLife( expl, SP_06, 150, 0x80,  -1,  0,  0,  0);
setEffMoveKey( expl, utyu,0,0,0);
setEffScaleKey( expl, utyu,1.1,1.1);
setEffAlphaKey( expl, utyu, 255);

nagame = entryEffectLife( expl, SP_07,  150, 0x100,  -1,  0,  0,  0);
setEffMoveKey( expl, nagame,0,0,0);
setEffScaleKey( expl, nagame,1.0,1.0);
setEffAlphaKey( expl, nagame, 255);

playSe( expl+10, 1034);
playSe( expl+40, SE_09);

playSe( expl+31, 1033);
playSe( expl+141, SE_06);
entryFade( expl+141, 6, 5, 15, fcolor_r, fcolor_g, fcolor_b,255);--whitefade (約150)

-----------------------------------------------------
--SP_08 = 1553; --宇宙からの俯瞰視点で地球が光弾で爆発する演出（紫）
------------------------------------------------------
expl2 = 707; --690 

bakuha = entryEffectLife( expl2 ,SP_08, 100, 0, -1, 0, 0, 0);
setEffMoveKey( expl2, bakuha,0,0,0);
setEffScaleKey( expl2, bakuha,1.0,1.0);
setEffAlphaKey( expl2, bakuha, 255);
setEffAlphaKey( expl2+94, bakuha, 255);
setEffAlphaKey( expl2+95, bakuha, 0);

--setDisp( SP_ATK+469+abc,1,1);
syu3 = entryEffectLife( expl2, 906, 100, 0x00, -1, 0, 0, 0);--集中線
setEffMoveKey( expl2, syu3,0,0,0);
setEffScaleKey( expl2, syu3,1.0,1.0);
setEffAlphaKey( expl2, syu3, 255);
setEffAlphaKey( expl2+94, syu3, 255);
setEffAlphaKey( expl2+95, syu3, 0);

--ダメージ表示
dealDamage( expl2+16);
entryFade( expl2+85,9,10,1,8,8,8,255);--blackfade
endPhase( expl2+90+10);

else

------------------------------------------------------
-- SP_09 = 150499; --SP_01反転
------------------------------------------------------
kitamestart = 0;
kitame = entryEffectLife(kitamestart, SP_09 ,65,0x100,-1,0,0,0);

setEffMoveKey(kitamestart,kitame,0,0,0);
setEffScaleKey(kitamestart,kitame,1.0,1.0);
setEffAlphaKey(kitamestart, kitame, 255);
setEffShake(kitamestart, kitame, 65, 10);

setVisibleUI(kitamestart, 0); --69

aura = entryEffectLife( kitamestart+30, 1500, 65, 0x80,  -1,  1,  0, 0); 
setEffMoveKey( kitamestart,aura,0,0,0);
setEffScaleKey( kitamestart+30, aura, 1.5, 1.5);
setEffAlphaKey( kitamestart, aura, 255);

playSe( kitamestart, SE_01);

-- 背景
entryFadeBg( kitamestart, 0, 100, 0,  0, 0, 0, 220);          -- ベース暗め　背景
syuA = entryEffectLife( kitamestart, 906, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuA,0,0,0);
setEffScaleKey(kitamestart,syuA,1.0,1.0);
setEffAlphaKey(kitamestart,syuA,255);

syuB = entryEffectLife( kitamestart, 1503, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuB,0,0,0);
setEffScaleKey(kitamestart,syuB,1.0,1.0);
setEffAlphaKey(kitamestart,syuB,255);

syuC = entryEffectLife( kitamestart, 1502, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(kitamestart,syuC,0,0,0);
setEffScaleKey(kitamestart,syuC,1.0,1.0);
setEffAlphaKey(kitamestart,syuC,255);

-- white
entryFade( kitamestart+62, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- SP_10 = 150500; --SP_02反転
------------------------------------------------------
tamauestart = 66;

tamaue = entryEffectLife( tamauestart, SP_10, 180, 0, -1, 0, 0, 0);
setEffMoveKey(tamauestart,tamaue,0,0,0);
setEffScaleKey(tamauestart,tamaue,1.0,1.0);
setEffAlphaKey(tamauestart, tamaue, 255);
setEffShake(tamauestart, tamaue, 180, 10);

--[[
-- 書き文字エントリー
ctgogo = entryEffectLife( tamauestart+87, 190006, 85, 0x100, -1, 0, 100, 480);    -- ゴゴゴゴ --95
setEffShake( tamauestart+87, ctgogo, 80, 8);
setEffRotateKey( tamauestart+87, ctgogo, 0);

setEffScaleKey( tamauestart+87, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamauestart+87, ctgogo, 255);

setEffScaleKey( tamauestart+150, ctgogo, 0.8, 0.8);
setEffAlphaKey( tamauestart+150, ctgogo, 255);

setEffScaleKey( tamauestart+158, ctgogo, 3.0, 3.0);
setEffAlphaKey( tamauestart+158, ctgogo, 0);

speff = entryEffect(  tamauestart+72,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) --10
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え 
speff = entryEffect(  tamauestart+72,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ) --10
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( tamauestart+72, SE_04);

-- 背景
entryFadeBg( tamauestart, 0, 180, 0,  0, 0, 0, 220);          -- ベース暗め　背景
syu = entryEffectLife( tamauestart, 921, 180, 0x80,  -1, 0,  0,  0);   -- 集中線 
setEffRotateKey( tamauestart, syu, -90);
setEffScaleKey( tamauestart, syu, 1.6, 1.6);

entryFade( tamauestart+64, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( tamauestart+175, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

cardcutin = 246;

setScaleKey( cardcutin-1,   0, 1.5, 1.5);
setScaleKey( cardcutin,   0, 1.0, 1.0);

playSe( cardcutin, SE_05);
speff = entryEffectLife(  cardcutin,   1507, 90,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( cardcutin+85, 3, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( cardcutin+64, SE_06);

------------------------------------------------------
-- SP_11 = 150501; --SP_03反転
------------------------------------------------------
nagerustart = 336;
nageru = entryEffectLife( nagerustart , SP_11, 116, 0x100, -1, 0, 0 ,0);
setEffMoveKey(nagerustart,nageru,0,0,0);
setEffScaleKey(nagerustart,nageru,1.0,1.0);
setEffAlphaKey(nagerustart, nageru, 255);
setEffShake(nagerustart, nageru, 120, 10);

-- 背景 --
entryFadeBg( nagerustart, 0, 34, 0,  255, 255, 255, 220);          -- ベース白　背景
syuyoko1 = entryEffectLife( nagerustart, 907, 34, 0x80,  -1, 0,  0,  0);   -- 集中線（白線）
setEffAlphaKey( nagerustart, syuyoko1, 255);

syu = entryEffectLife( nagerustart, 906, 63, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( nagerustart, syu, 255);

entryFadeBg( nagerustart+32, 2, 5, 6, 0, 230, 255, 200);     -- 背景青

syuyoko2 = entryEffectLife( nagerustart+35, 920, 81, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( nagerustart+35, syuyoko2, 255);

entryFadeBg( nagerustart+39, 0, 82, 0,  0, 0, 0, 255);          -- ベース黒　背景

entryFade( nagerustart+28, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade 白ぼかし
entryFade( nagerustart+63, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( nagerustart+98, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( nagerustart+108, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( nagerustart+114, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spname = entryEffect(nagerustart, 1508,  0,  -1,  0,  0,  0);               -- 技名
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 文字 --
ctzuo = entryEffectLife( nagerustart, 10012, 49, 0x100, -1, 0, 30, 200);    -- ズオッ
setEffShake( nagerustart, ctzuo, 49, 12);
setEffScaleKey( nagerustart, ctzuo, 0.6, 0.6);
setEffRotateKey( nagerustart, ctzuo, 30);
setEffAlphaKey( nagerustart, ctzuo, 255);

setEffMoveKey( nagerustart, ctzuo, 180, 300);

setEffScaleKey( nagerustart+4, ctzuo, 3.0, 3.0);
setEffRotateKey( nagerustart+4, ctzuo, 30);
setEffAlphaKey( nagerustart+4, ctzuo, 255);

setEffScaleKey( nagerustart+28, ctzuo, 3.0, 3.0);
setEffRotateKey( nagerustart+28, ctzuo, 30);
setEffAlphaKey( nagerustart+28, ctzuo, 255);

setEffScaleKey( nagerustart+49, ctzuo, 5.0, 5.0);
setEffRotateKey( nagerustart+49, ctzuo, 30);
setEffAlphaKey( nagerustart+49, ctzuo, 80);

playSe( nagerustart, SE_07);--playSe( nagerustart+28, SE_07);

------------------------------------------------------
-- SP_04 = 150497; --玉が敵に向かう(50F)
------------------------------------------------------
semarustart = 453;

-- 敵キャラ配置 --
changeAnime(semarustart,1,102);
setDisp(semarustart,1,1);

setScaleKey(semarustart,1,1.3,1.3);
setMoveKey(semarustart,1,400,-600, 0);

setScaleKey(semarustart+30,1,0.5,0.5);
setMoveKey(semarustart+30,1,150,-250,0);

setMoveKey(semarustart+49,1,150,-250, 0);
setScaleKey(semarustart+49,1,0.5,0.5);

setDisp(semarustart+49,1,0);

playSe(semarustart, SE_04);

-- エフェクト --
entryFadeBg( semarustart, 0, 50, 0,  0, 0, 0, 255);          -- ベース暗め　背景

syu2 = entryEffectLife( semarustart, 921, 50, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( semarustart, syu2, -130);
setEffScaleKey( semarustart, syu2, 1.7, 1.7);--setEffScaleKey( semarustart, syu2, 1.6, 1.6);
setEffAlphaKey( semarustart, syu2, 255);
setEffAlphaKey( semarustart+43, syu2, 255);

semaru = entryEffectLife( semarustart,SP_04, 50, 0x80, -1, 0, 0, 0);
setEffMoveKey(semarustart, semaru,0,0,0);
setEffScaleKey(semarustart, semaru,1.0,1.0);
setEffAlphaKey( semarustart, semaru, 255);
setEffAlphaKey( semarustart+43, semaru, 255);

-- 文字 --
ctzudodo = entryEffectLife( semarustart, 10014, 40, 0x100, -1, 0, 100, 350);    -- ズドド
setEffShake(semarustart, ctzudodo, 40, 12);
setEffScaleKey(semarustart, ctzudodo, 3.0, 3.0);
setEffAlphaKey( semarustart, ctzudodo, 255);
setEffRotateKey(semarustart, ctzudodo, 0);
setEffAlphaKey(semarustart+40, ctzudodo, 255);

----------------------------------------------------
-- 回避 
----------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

setEffAlphaKey( SP_dodge+9, syu2, 255);
setEffAlphaKey( SP_dodge+9, semaru, 255);
setEffAlphaKey( SP_dodge+10, syu2, 0);
setEffAlphaKey( SP_dodge+10, semaru, 0);

do return end
else end

setEffAlphaKey( semarustart+50, syu2, 255);
setEffAlphaKey( semarustart+50, semaru, 255);

-----------------------------------------------------
--SP_05 = 190011; --ギャン(70F)
------------------------------------------------------
gyan = 497;

playSe( gyan, 1024);

entryFade( gyan-7, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( gyan, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( gyan, SP_05 ,60, 0x100,-1,0,0,0);
setEffMoveKey( gyan, gya ,0,0,0);
setEffScaleKey( gyan, gya ,1.0,1.0);
setEffAlphaKey( gyan, gya ,255);
setEffShake( gyam, gya, 10);

-- 書き文字エントリー
ct4 = entryEffectLife( gyan, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( gyan, ct4, 255);
setEffScaleKey( gyan, ct4, 3.0, 3.0);
setEffScaleKey( gyan+60, ct4, 4.0, 4.0);
setEffAlphaKey( gyan, ct4, 255);
setEffAlphaKey( gyan+60, ct4, 80);
setEffShake( gyan, ct4, 60, 10);

------------------------------------------------------
--SP_06 = 1552; --宇宙からの俯瞰視点で地球が破壊されマグマ的な物が噴射
--SP_12 = 150502; --SP_07反転
------------------------------------------------------
expl = 557; --540

utyu = entryEffectLife( expl, SP_06, 150, 0x80,  -1,  0,  0,  0);
setEffMoveKey( expl, utyu,0,0,0);
setEffScaleKey( expl, utyu,1.1,1.1);
setEffAlphaKey( expl, utyu, 255);

nagame = entryEffectLife( expl, SP_12,  150, 0x100,  -1,  0,  0,  0);
setEffMoveKey( expl, nagame,0,0,0);
setEffScaleKey( expl, nagame,1.0,1.0);
setEffAlphaKey( expl, nagame, 255);

playSe( expl+10, 1034);
playSe( expl+40, SE_09);

playSe( expl+31, 1033);
playSe( expl+141, SE_06);
entryFade( expl+141, 6, 5, 15, fcolor_r, fcolor_g, fcolor_b,255);--whitefade (約150)

-----------------------------------------------------
--SP_08 = 1553; --宇宙からの俯瞰視点で地球が光弾で爆発する演出（紫）
------------------------------------------------------
expl2 = 707; --690 

bakuha = entryEffectLife( expl2 ,SP_08, 100, 0, -1, 0, 0, 0);
setEffMoveKey( expl2, bakuha,0,0,0);
setEffScaleKey( expl2, bakuha,1.0,1.0);
setEffAlphaKey( expl2, bakuha, 255);
setEffAlphaKey( expl2+94, bakuha, 255);
setEffAlphaKey( expl2+95, bakuha, 0);
--setDisp( SP_ATK+469+abc,1,1);
syu3 = entryEffectLife( expl2, 906, 100, 0x00, -1, 0, 0, 0);--集中線
setEffMoveKey( expl2, syu3,0,0,0);
setEffScaleKey( expl2, syu3,1.0,1.0);
setEffAlphaKey( expl2, syu3, 255);
setEffAlphaKey( expl2+94, syu3, 255);
setEffAlphaKey( expl2+95, syu3, 0);
--ダメージ表示
dealDamage( expl2+16);
entryFade( expl2+85,9,10,1,8,8,8,255);--blackfade
endPhase( expl2+90+10);

end