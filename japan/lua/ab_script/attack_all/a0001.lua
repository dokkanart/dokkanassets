print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 150022;
--SP_02 = 150023;
--SP_03 = 150024;
--SP_04 = 150025;

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

---------------

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+75;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
rn_02 = SP_ATK_1+100;		--タックル
SP_ATK_3 = rn_02+30;	--けり
SP_ATK_4 = SP_ATK_3+78;	--死亡処理orつなぎ

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 75+SP_ATK_0, 906, 98, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 75+SP_ATK_0, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( rn_02+12, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


entryFadeBg( SP_ATK_0, 10, 173, 2, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime( SP_ATK_0, 0, 17);                       -- 溜め
changeAnime( SP_ATK_0, 1, 104);                       -- 立ち
setDisp( SP_ATK_0, 1, 0);
entryEffect(  SP_ATK_0+45,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0+1,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.5, 1.5);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);


-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0+5,  311,  68,  0x40, 0,  0,  0,  -35);--気力
setEffScaleKey( SP_ATK_0+5, aura, 0.5, 0.5);
setEffScaleKey( SP_ATK_0+28, aura, 0.5, 0.5);
setEffScaleKey( SP_ATK_0+44, aura, 0.6, 0.6);
setEffScaleKey( SP_ATK_0+60, aura, 0.7, 0.7);

kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
playSe( SP_ATK_0+5, SE_01);
playSe( SP_ATK_0+28, SE_02);
playSe( SP_ATK_0+50, SE_02);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_0+45, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(SP_ATK_0+45, ct, 40, 7);
setEffAlphaKey(SP_ATK_0+45, ct, 255);
setEffAlphaKey(SP_ATK_0+65, ct, 255);
setEffAlphaKey(SP_ATK_0+85, ct, 0);
setEffScaleKey( SP_ATK_0+45, ct, 0.1, 0.1);
setEffScaleKey( SP_ATK_0+55, ct, 2.0, 2.0);

--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

entryEffectLife( SP_ATK_0+85,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002

entryEffect( 73+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
setShake(75+SP_ATK_0, 13, 17);
entryEffect( 75+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

changeAnime( 75+SP_ATK_0, 0,  116); -- タックル開始
playSe( SP_ATK_0+75, SE_01);
---------------------
-- タックル開始
---------------------

setQuake( SP_ATK_1+3,10,20);
setMoveKey( SP_ATK_1+5, 0,    0, 0,   80);
setMoveKey( SP_ATK_1+10, 0,  0, 0,   60);
setMoveKey( SP_ATK_1+15, 0,  -100, 180,  0);


--changeAnime(  5, 0, 17);                  
--entryEffect(  20,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  20,   1500,   0x80,    -1,  0,  0,  0);    -- eff_001


--changeAnime( 10, 0, 16);  

setVisibleUI(SP_ATK_1+14, 0);
setMoveKey( SP_ATK_1+25, 0,  0, 0,   -128);
setShakeChara( SP_ATK_1+25, 0, 50, 12);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, 0,  0, 0,   -128);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end



setScaleKey(   SP_ATK_1+35,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_1+55,   0, 1.8, 1.8);

--entryFade( SP_ATK_1+37, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade


--playSe( SP_ATK_1+25, SE_02);

--setVisibleUI(69, 0);
--changeAnime( 70, 0, 16);                       -- 溜め!
--orr = entryEffectLife(  50,   1503, 210, 0x80,  -1,  0,  0,  0); -- オーラ
--setEffAlphaKey( 50, orr, 255);
--entryEffect(  50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  50,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)


setShakeChara( SP_ATK_1+65, 0, 49, 5);



entryEffectLife( SP_ATK_1+30, 906, 75, 0x00,  -1, 0,  0,  0);   -- 集中線

------------------------------------------------------
-- 全体攻撃表示
------------------------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then	--プレイヤーサイドの全体攻撃が出来たときにID差し替え予定
spname = entryEffectLife( SP_ATK_0+15, 1554,  150, 0x100,  -1,  0,  50,  -220);               -- かめはめ波文字
else
spname = entryEffectLife( SP_ATK_0+15, 1554,  150, 0x100,  -1,  0,  -50,  -220);               end
-- 全体攻撃文字
setEffScaleKey(SP_ATK_0+15, spname, -1.3, 1);

setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);

setScaleKey( SP_ATK_1+80,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+90,   0, 5, 5);
setScaleKey( SP_ATK_1+98,   0, 5, 5);
setScaleKey( SP_ATK_1+99,   0, 1, 1);

setMoveKey( SP_ATK_1+95, 0,  0, 0,   -128);

setMoveKey( SP_ATK_1+85, 0,  0, 0,   -128);
entryFade( SP_ATK_1+90, 7, 10, 8, 0, 0, 0, 255);     -- black fade

setMoveKey( SP_ATK_1+98, 0,  0, 0,   -128);
setMoveKey( SP_ATK_1+99, 0,  -250, -1100,   0);

setMoveKey(  SP_ATK_1+98,    1,  700,  0,   0);
setMoveKey( SP_ATK_1+99, 1,  100, 0,   0);
changeAnime(  SP_ATK_1+99, 1, 101);
playSe( SP_ATK_1+80, SE_01);
bakuha = entryEffectLife( SP_ATK_1+80,  11, 18, 0x80,  0,  0,  0,  -10);--爆破
setEffScaleKey(SP_ATK_1+80, bakuha, 3.0, 3.0);
setShake(SP_ATK_1+80, 13, 17);
syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);

------------------------------------------------------
-- ATK
------------------------------------------------------
entryFadeBg( rn_02, 0, 50, 4, 0, 0, 0, 255);          -- ベース暗め　背景

aura_atk = entryEffectLife( rn_02+3,  311,  108,  0x40, 0,  0,  100,  -35);--気力
setEffScaleKey( rn_02+3, aura_atk, 1.5, 1.5);
setEffRotateKey(rn_02+3, aura_atk, 305);

setMoveKey( rn_02+3, 0,  -250, -1100,   0);
--setMoveKey( rn_02+8, 0,  -150, -150,   0);
setMoveKey( rn_02+12, 0,  -100, -40,   0);

changeAnime(  rn_02, 0, 12);

entryEffect( SP_ATK_3+20,   1500, 0,  -1,  0,  0,  0); -- オーラ
--setEffScaleKey(SP_ATK_3+20, db,  2,2);


setEnvZoomEnable( rn_02+15,  1);

entryEffectLife( rn_02+14, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
setDisp( rn_02, 1, 1);
--setMoveKey( rn_02+8, 1,  120, -50,   0);
--setMoveKey( rn_02+12, 1,  100, 0,   0);
setMoveKey( rn_02+12, 1, 50,  -10,   0);  

if (_IS_GUARD_ == 1) then
changeAnime(  rn_02+12, 1, 104);
entryEffect( rn_02+12,   23,   0x40,  1,   0,  -100,  0);
entryEffect( rn_02+12,   908,   0,  -1,   0,  0,  0);
playSe( rn_02+12, 1013);
else
changeAnime(  rn_02+12, 1, 108);
entryEffect( rn_02+12,   6,   0x40,  1,   0,  0,  0);
entryEffect( rn_02+12,   908,   0,  -1,   0,  0,  0);
entryEffect( rn_02+12,   906,   0,  1,   0,  0,  0);
playSe( rn_02+12, SE_09);
end
aura = entryEffectLife( rn_02+15,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ

--playSe( rn_02+25, SE_05);
--playSe( rn_02+20, 1052);
-----------------------------------------

--setZanzou(Card+6, 0,  0);

-- 書き文字エントリー
ct = entryEffectLife( rn_02+17, 10021, 99, 0, -1, 0, -30, 130); -- bako
setEffShake(rn_02+17, ct, 99, 35);
setEffScaleKey( rn_02+17, ct, 2.4, 2.4);
setEffAlphaKey(rn_02+17, ct, 255);
setEffAlphaKey(rn_02+17+20+5, ct, 255);
setEffAlphaKey(rn_02+17+25+5, ct, 0);



-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
entryFadeBg( SP_ATK_3, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景


-- ダメージ表示
dealDamage(SP_ATK_3+10);


--エフェクト消滅
setEffAlphaKey( (SP_ATK_3), kamehame_beam3,255);
setEffAlphaKey( (SP_ATK_3+28), kamehame_beam3,255);

--ご飯カット
setEffAlphaKey( (SP_ATK_3+34), kamehame_beam3,0);
entryFadeBg(SP_ATK_3+36,0,43,3,0,0,0);
setQuake(SP_ATK_3+36,30,20);
--playSe( SP_ATK_3+36, 1044);
setDisp( SP_ATK_3+36, 0, 1);
--setMoveKey(  SP_ATK_3+36, 1,  10, 150,   0);
setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFade( SP_ATK_3+40, 30,  10, 1, 255, 255, 255, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
--[[
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
setScaleKey( SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_ATK_4+1, 0, 1.0, 1.0);
setEnvZoomEnable( SP_ATK_4+10,  0);
--setMoveKey(  SP_ATK_4,    1,  10, 150,   0);
setMoveKey( SP_ATK_4, 1,  100, 0,   0);
setScaleKey( SP_ATK_4,    1,  2.5, 2.5);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,10);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+10);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+120);
]]--
-- 味方移動（画面外へ)
setEnvZoomEnable(SP_ATK_4+9, 0);
entryEffectLife( SP_ATK_4+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
--P ふっとび移動
setMoveKey( SP_ATK_4+6, 0, -100, -40,   0);      -- 中央位置から
setMoveKey( SP_ATK_4+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( SP_ATK_4+11, 0, 4); 
changeAnime( SP_ATK_4+13, 0, 0); 

------------------
--E ふっとび移動
changeAnime(  SP_ATK_4+6, 1, 108);
setMoveKey( SP_ATK_4+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( SP_ATK_4+10, 1, 220,  260,  0);-- 中央位置から
-- ダメージ表示
dealDamage(SP_ATK_4+10);



entryFade( SP_ATK_4+10, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+20);
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)
setEnvZoomEnable(SP_ATK_4+9, 0);
entryEffectLife( SP_ATK_4+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
--P ふっとび移動
setMoveKey( SP_ATK_4+6, 0, -100, -40,   0);      -- 中央位置から
setMoveKey( SP_ATK_4+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( SP_ATK_4+11, 0, 4); 
changeAnime( SP_ATK_4+13, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( SP_ATK_4+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( SP_ATK_4+10, 1, 220,  -60,  0);-- 中央位置から


changeAnime( SP_ATK_4+17+15, 1, 104); 
changeAnime( SP_ATK_4+19+15, 1, 100); 
setBgScroll(SP_ATK_4+17+15,8);
wipeInOut(SP_ATK_4+34);
entryFade( SP_ATK_4+34, 20, 10, 1, 0, 0, 0, 0); -- カット接続用
setMoveKey( SP_ATK_4+54, 1, 220,  -60,  0);-- 中央位置から
setMoveKey( SP_ATK_4+55, 1, 700,  -60,  0);-- 中央位置から
endPhase(SP_ATK_4+56);

end

print ("[lua]sp0001 end");
