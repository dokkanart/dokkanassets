

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
--[[
SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;
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

--エフェクトの用意
SP_01 = 107060
SP_02 = 107061
SP_03 = 107062
SP_04 = 107063
SP_05 = 107064
SP_06 = 107065
SP_07 = 107066
SP_08 = 107067
SP_09 = 107068
SP_10 = 107069


--切り替えタイミング
SP_start_01 = 0;
SP_start_02 = SP_start_01 + 235;
SP_start_03 = SP_start_02 + 205;
--SP_start_03 = SP_start_02 + 285;
SP_start_04 = SP_start_03 + 355;
--不明な変数
multi_frm = 2;

--キャラ絵の用意
changeAnime( 0, 0, 0);                       -- 立ち
--setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   9,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   9,   0, 1.5, 1.5);

setVisibleUI(0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--白フラッシュ
entryFade( 0, 9,  10, 1, 255, 255, 255, 255); 
entryFlash( 9, 1,255, 255, 255);--3f
entryFadeBg( 9, 0, SP_start_02, 2, 10, 10, 10, 200);       --ベース暗め　背景
changeAnime( 9, 0, 30);  
--天津飯用意
setScaleKey( 10, 0, 6.0, 6.0);
setMoveKey( 10, 0, 100, -1800, 0);

--集中線
shuchusen = entryEffectLife( 10, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
--shuchusen = entryEffectLife( 11, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 10, shuchusen, 1.0, 1.0);
--effhit = entryEffect( 20, SP_01, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 40, SP_02, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 60, SP_03, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 80, SP_05, 0x100, -1, 0, 0, 0);
--effhit = entryEffect( 20, SP_08, 0x80, -1, 0, 0, 100);
--effhit = entryEffectLife( 20, SP_07, 100, 0x100, -1, 0, 0, 100);
setEffAlphaKey( 10, shuchusen, 255);


setEffAlphaKey( SP_start_02, shuchusen, 0);
------------------------------------------------------
--新気功砲(気玉溜め)
-- かめはめ波溜め！(100F)
------------------------------------------------------
--天津飯縮小
setScaleKey( 40, 0, 1.6, 1.6);
setMoveKey( 40, 0, 50, -280, 0);
setScaleKey( 70, 0, 1.5, 1.5);
setMoveKey( 70, 0, 50, -280, 0);
--changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_08);

setShakeChara( 70, 0, 218, 5);



playSe( 65, SE_05);
--ゴゴゴゴゴ（書き文字任意）
-- 書き文字エントリー
ct2 = entryEffectLife( 50, 10008,65, 0, -1, 0, -190, 100);    -- ゴゴゴ・・・
setEffShake(50, ct2, 40, 8);
setEffScaleKey(60, ct2, 1.4, 1.4);
setEffAlphaKey( 60, ct2, 255);

--カットイン表示

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  50,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  50,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
setEffAlphaKey( 50, speff, 255);

setEffShake(50, ct2, 95, 8);

setEffAlphaKey( 110, ct2, 255);
--setEffAlphaKey( 125, ct2, 200);
--setEffAlphaKey( 135, ct2, 100);
setEffAlphaKey( 115, ct2, 0);

--playSe( 50, SE_04);

--playSe( 60, SE_03);
--playSe( 80, SE_03);
--playSe( 100, SE_03);
--playSe( 120, SE_03);
setEffAlphaKey( 150, speff, 255);
setEffAlphaKey( 155, speff, 0);
--天津飯SHAKE
entryFade( 155, 1, 1, 1, 255, 255, 255, 255); 
setMoveKey( 159, 0, 50, -280, 0);
--setQuake(170,25,20);
setShakeChara( 162, 0, 75, 10);

--エフェクト表示（黄色）
speff = entryEffect( 160, SP_02, 0x40, 0, 300, 0, 0);
--speff = entryEffectLife( 170, SP_02, 330, 0x40, 0, 300, 0, 0);
setEffScaleKey( 160, speff, 1.0, 1.0);
--setShakeChara( 190, 0, 30, 30);


setScaleKey( 160, 0, 1.5, 1.5);
setMoveKey( 160, 0, 50, -200, 0);
setScaleKey( 175, 0, 2.0, 2.0);
playSe( 175, SE_03);
playSe( 195, SE_03);
playSe( 215, SE_03);
playSe( 235, SE_03);
--setScaleKey( 200, 0, 2.1, 2.1);
--speff = entryEffect( 200, SP_01, 0, -1, 0, 0, 0);   -- テスト

--setMoveKey( 200, 0, 0, -600, 0);

--setEffScaleKey( 200, ct, 1.3, 1.3);

--白フラッシュ
--entryFade( 235, 15,  15, 5, 255, 255, 255, 255); 
setScaleKey( SP_start_02, 0, 2.1, 2.1);
setMoveKey( SP_start_02, 0, 50, -180, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( 169,   0, 1.5, 1.5);
--setScaleKey( 170,   0, 1.0, 1.0);
--カード絵＋技名

playSe( SP_start_02, SE_05);
speff = entryEffect(  SP_start_02,   1507,   0,  -1,  0,  0,  0);   -- カード
--speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

------------------------------------------------------
-- カメハメハ発射(110F)
-- 新気功砲(発射)(90F)
------------------------------------------------------
--白フラッシュ
entryFade( SP_start_02+75, 5,  10, 5, 255, 255, 255, 255); 
playSe( SP_start_02+80, SE_07);
setScaleKey( SP_start_02+70, 0, 1.5, 1.5);
--setScaleKey( SP_start_02+90, 0, 1.5, 2.5);
setMoveKey( SP_start_02+70, 0, 0, 0, 0);
changeAnime( SP_start_02+71, 0, 31);  

entryFadeBg( SP_start_02+70, 0, 79, 2, 245, 10, 10, 200);       --ベース暗め　背景

--天津飯表示
setShakeChara( SP_start_02+80, 0, 75, 10);

playSe( SP_start_02+100, SE_06);
--エフェクト表示
speff = entryEffect( SP_start_02+100, SP_03, 0x100, 0, 0, 0, 100);
--speff = entryEffectLife( SP_start_02+100, SP_03, 230, 0x40, 0, 300, 0, 0);
setEffScaleKey( SP_start_02+100, speff, 1.0, 1.0);

--斜め効果線
--ズオッ（書き文字任意）

-- 書き文字エントリー
--ct = entryEffectLife( SP_start_02+100, 10012, 49, 0, -1, 100, 100, 0); 
ct = entryEffectLife( SP_start_02+100, 10012, 49, 0x100, -1, 0, 100, 100); 

setEffShake(SP_start_02+100, ct, 24, 8);
setEffScaleKey(SP_start_02+100, ct, 2.0, 2.0);
setEffShake(SP_start_02+125, ct, 0, 0);
setEffAlphaKey( SP_start_02+100, ct, 255);
setEffScaleKey( SP_start_02+125, ct, 3.0, 3.0);
setEffMoveKey( SP_start_02+125, ct, 200, 200, 0);
setEffAlphaKey( SP_start_02+125, ct, 100);
setEffScaleKey( SP_start_02+135, ct, 4.0, 4.0);
setEffMoveKey( SP_start_02+135, ct, 400, 400, 0);
setEffAlphaKey( SP_start_02+135, ct, 0);
--一気に引く
--流線
--ryuusen = entryEffectLife( SP_start_02+100, 921, 40, 0x80,  -1, 0,  300,  900);   -- 集中線
--setEffRotateKey(SP_start_02+100, ryuusen, 180);
--setEffScaleKey( SP_start_02+100, ryuusen, 3.0, 3.0);

ryusen = entryEffectLife( SP_start_02+100, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_02+100, ryusen, 230);
setEffScaleKey( SP_start_02+100, ryusen, 2, 1.5); 
setEffShake(SP_start_02+100, ryusen, 32, 5);
setEffAlphaKey(SP_start_02+100, ryusen, 120);
setEffAlphaKey(SP_start_02+100+16, ryusen, 120);



setScaleKey( SP_start_02+110, 0, 1.2, 1.2);
setMoveKey( SP_start_02+110, 0, -50, -50, 0);
--setMoveKey( SP_start_02+110, 0, -50, 50, 0);


--暗転と黒背景地面配置
entryFade( SP_start_02+135, 15,  10, 15, 0, 0, 0, 255); 





setScaleKey( SP_start_02+149, 0, 0.2, 0.2);
setMoveKey( SP_start_02+149, 0, -300, 300, 0);
setDisp( SP_start_02+149, 0, 0);

--setDisp( SP_start_03+370, 0, 0);
--setDisp( SP_start_03+370, 1, 1);
setMoveKey( SP_start_02+150, 0, -700, 500, 0);

--流線
ryuusen = entryEffectLife( SP_start_02+160, 920, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(SP_start_02+160, ryuusen, 60);
setEffScaleKey( SP_start_02+160, ryuusen, 2.0, 2.0);

entryFadeBg( SP_start_02+160, 0, 340, 0, 10, 10, 10, 245);       --ベース暗め　背景
--setScaleKey( SP_start_02+160, 0, 1.5, 1.5);
--setMoveKey( SP_start_02+160, 0, 0, 0, 0);
--playSe( SP_start_02+160, SE_06);
effbg = entryEffect( SP_start_02+160, SP_04, 0x80, -1, 0, 0, 100);
--effbg = entryEffect( SP_start_02+160, SP_04, 0x80, -1, 0, 0, 100);

setEffScaleKey( SP_start_02+160, effbg, 0.5, 0.5);

--setEffScaleKey( SP_start_02+160, effbg, 1.0, 1.0);
--effbg = entryEffect( SP_start_02+160, SP_05, 0x40, 300, 0, 400, -200);



--背景と敵の配置を表示

setMoveKey( SP_start_02+160, 1, 400, -400, 0);
setScaleKey( SP_start_02+160, 1, 2.0, 2.0);

setDisp( SP_start_02+160, 1, 1);
changeAnime( SP_start_02+160, 1, 100);  
setShakeChara( SP_start_02+160, 1, 39, 5);

setMoveKey( SP_start_02+165, 1, 200, -150, 0);
setScaleKey( SP_start_02+165, 1, 2.0, 2.0);
--setEffScaleKey( SP_start_02+165, effbg, 1.0, 1.0);
--setEffMoveKey( SP_start_02+165, effbg, 4.0, 0.0, 0.0);

--playSe( SP_start_02+180, SE_09);
--SHAKE
setMoveKey( SP_start_02+180, 1, 50, -150, 0);
setScaleKey( SP_start_02+180, 1, 1.5, 1.5);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

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
-- 戻る
------------------------------------------------------
--setScaleKey( SP_start_02+180, 1, 1.0, 1.0);
--setQuake( SP_start_02+180,20,10);
setMoveKey( SP_start_02+181, 1, 50, -200, 0);
setScaleKey( SP_start_02+181, 1, 1.5, 1.5);

--エフェクト
--playSe( SP_start_02+64, SE_10);
setScaleKey( SP_start_02+199, 1, 1.5, 1.5);
--setScaleKey( SP_start_02+199, 1, 1.0, 1.0);


effhit = entryEffect( SP_start_02+190, SP_05, 0x100, 1, 0, 0, 50);
--effhit2 = entryEffectLife( SP_start_02+190, 1509, 35, 0x40, 1,  300, 0, 0);
--setEffScaleKey( SP_start_02+190, effhit, 1.0, 1.0);
setEffScaleKey( SP_start_02+190, effhit2, 2.0, 2.0);


entryFade( SP_start_02+199, 1,  5, 1, 255, 255, 255, 255); 


setScaleKey( SP_start_02+200, 1, 1.5, 1.5);
setMoveKey( SP_start_02+200, 1, 200, -300, 0);
setEffScaleKey( SP_start_02+200, effbg, 1.5, 1.5);
--setEffScaleKey( SP_start_02+200, effbg, 1.0, 1.0);
setEffMoveKey( SP_start_02+200, effbg, 0, 0, 0);

changeAnime( SP_start_02+205, 1, 108); 
setAnimeLoop( SP_start_02+205, 1, 1);

setRotateKey( SP_start_02+205,  1, 60 );

--setRotateKey( SP_start_02+206,  1, 60 );

--setQuake( SP_start_02+200,10,30);
--setShakeChara( SP_start_02+211, 1, 40, 3);
playSe( SP_start_02+200, SE_09);
effatk = entryEffect( SP_start_02+200, SP_06, 0x100, -1, 0, 50, 0);
--setShakeChara( SP_start_02+200, 0, 100, 10);
setEffRotateKey(SP_start_02+200, effatk, -15);
setEffRotateKey(SP_start_02+200, effbg, -15);
setEffMoveKey( SP_start_02+200, effbg, 0, 0, 350);

--setEffScaleKey = (SP_start_02+200, effatk, 1.4, 1.4);
--setEffScaleKey( SP_start_02+200, effatk, 1.5, 1.5);
--setShakeChara( SP_start_02+200, 1, 100, 10);

--setEffScaleKey( SP_start_02+200, effatk, 2.0, 2.0);
--setMoveKey( SP_start_02+235, 1, 50, -200, 0);

setMoveKey( SP_start_02+224, 1, 200, -300, 0);
setRotateKey( SP_start_02+265,  1, 60 );

setScaleKey( SP_start_02+265, 1,  1.5, 1.5);
entryFade( SP_start_02+265, 9,  20, 1, 255, 255, 255, 255); 
setMoveKey( SP_start_02+275, 1, 250, -350, 0);
setDisp( SP_start_02+280, 0, 1);
setDisp( SP_start_02+280, 1, 0);
setMoveKey( SP_start_02+280, 1, 250, -350, 0);
entryFadeBg( SP_start_02+280, 0, 269, 2, 245, 10, 10, 200);       --ベース暗め　背景



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------


--集中線
shuchusen = entryEffectLife( SP_start_03+80, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start_03+80, shuchusen, 2.0, 2.0);
setEffAlphaKey( SP_start_03+80, shuchusen, 255);
setEffAlphaKey( SP_start_03+80, shuchusen, 0);


--天津飯表示
setShakeChara( SP_start_03+80, 0, 165, 10);


--エフェクト表示
speff3 = entryEffect( SP_start_03+80, SP_07, 0x100, -1, 0, 0, 0);
speff4 = entryEffect( SP_start_03+80, SP_08, 0x80, -1, 0, 0, 0);
setEffAlphaKey( SP_start_03+80, speff3, 255);
setEffAlphaKey( SP_start_03+235, speff3, 255);

--一気に引く
playSe( SP_start_03+100, SE_06);
setScaleKey( SP_start_03+100, 0, 1.4, 1.4);
setMoveKey( SP_start_03+100, 0, -70, -30, 0);
--playSe( SP_start_03+100, SE_06);
-- 書き文字エントリー
ct = entryEffectLife( SP_start_03+100, 10012, 30, 0x100, -1, 0, 100, 100); 
setEffShake(SP_start_03+100, ct, 24, 8);
setEffScaleKey(SP_start_03+100, ct, 2.0, 2.0);
setEffShake(SP_start_03+125, ct, 0, 0);
setEffAlphaKey( SP_start_03+100, ct, 255);
setEffScaleKey( SP_start_03+125, ct, 3.0, 3.0);
setEffMoveKey( SP_start_03+125, ct, 200, 200, 0);
setEffAlphaKey( SP_start_03+125, ct, 100);
setEffScaleKey( SP_start_03+135, ct, 4.0, 4.0);
setEffMoveKey( SP_start_03+135, ct, 400, 400, 0);
setEffAlphaKey( SP_start_03+135, ct, 0);

ryusen = entryEffectLife( SP_start_03+100, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_03+100, ryusen, 230);
setEffScaleKey( SP_start_03+100, ryusen, 2, 1.5); 
setEffShake(SP_start_03+100, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+100, ryusen, 255);
setEffAlphaKey(SP_start_03+116, ryusen, 120);
setEffAlphaKey(SP_start_03+126, ryusen, 0);



--一気に引く
--setScaleKey( SP_start_03+180, 0, 0.7, 0.7);
--setMoveKey( SP_start_03+180, 0, -220, 150, 0);
--setMoveKey( SP_start_03+170, 0, -50, -50, 0);
setScaleKey( SP_start_03+170, 0, 0.7, 0.7);
setMoveKey( SP_start_03+170, 0, -220, 150, 0);
playSe( SP_start_03+170, SE_06);
-- 書き文字エントリー
ct3 = entryEffectLife( SP_start_03+170, 10012, 30, 0x100, -1, 0, 0, 150); 
setEffShake(SP_start_03+170, ct3, 24, 8);
setEffScaleKey(SP_start_03+170, ct3, 2.0, 2.0);
setEffShake(SP_start_03+195, ct3, 0, 0);
setEffAlphaKey( SP_start_03+170, ct3, 255);
setEffScaleKey( SP_start_03+195, ct3, 3.0, 3.0);
setEffMoveKey( SP_start_03+195, ct3, 100, 250, 0);
setEffAlphaKey( SP_start_03+195, ct3, 100);
setEffScaleKey( SP_start_03+205, ct3, 4.0, 4.0);
setEffMoveKey( SP_start_03+205, ct3, 200, 450, 0);
setEffAlphaKey( SP_start_03+205, ct3, 0);



ryusen = entryEffectLife( SP_start_03+170, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_03+170, ryusen, 230);
setEffScaleKey( SP_start_03+170, ryusen, 2, 1.5); 
setEffShake(SP_start_03+170, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+166, ryusen, 255);
setEffAlphaKey(SP_start_03+166+16, ryusen, 120);
setEffAlphaKey(SP_start_03+166+26, ryusen, 0);

setEffAlphaKey(SP_start_03+245+26, ryusen, 0);



--一気に引く
setScaleKey( SP_start_03+220, 0, 0.4, 0.4);
setMoveKey( SP_start_03+220, 0, -250, 250, 0);
playSe( SP_start_03+220, SE_06);
-- 書き文字エントリー
ct3 = entryEffectLife( SP_start_03+220, 10012, 30, 0x100, -1, 0, -100, 250); 
setEffShake(SP_start_03+220, ct3, 24, 8);
setEffScaleKey(SP_start_03+220, ct3, 2.0, 2.0);
setEffShake(SP_start_03+245, ct3, 0, 0);
setEffAlphaKey( SP_start_03+220, ct3, 255);
setEffScaleKey( SP_start_03+245, ct3, 3.0, 3.0);
setEffMoveKey( SP_start_03+245, ct3, 0, 300, 0);
setEffAlphaKey( SP_start_03+245, ct3, 100);
--setEffScaleKey( SP_start_03+235, ct3, 4.0, 4.0);
--setEffMoveKey( SP_start_03+235, ct3, 400, 400, 0);
--setEffAlphaKey( SP_start_03+235, ct3, 0);

ryusen = entryEffectLife( SP_start_03+220, 921, 100, 0x100, -1, 0,   0,  0);   -- tateの時間を確認
setEffRotateKey(SP_start_03+220, ryusen, 230);
setEffScaleKey( SP_start_03+220, ryusen, 2, 1.5); --3,2
setEffShake(SP_start_03+220, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+220, ryusen, 255);
setEffAlphaKey(SP_start_03+236, ryusen, 120);
setEffAlphaKey(SP_start_03+239, ryusen, 0);


--暗転と黒背景地面配置
entryFade( SP_start_03+235, 5,  10, 5, 0, 0, 0, 255); 

setScaleKey( SP_start_03+239, 0, 0.2, 0.2);
setMoveKey( SP_start_03+239, 0, -300, 390, 0);
setDisp( SP_start_03+239, 0, 0);
setDisp( SP_start_03+239, 1, 1);



--流線
--ryuusen = entryEffectLife( SP_start_03+240, 920, 135, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(SP_start_03+240, ryuusen, 60);
--setEffScaleKey( SP_start_03+240, ryuusen, 2.0, 2.0);

entryFadeBg( SP_start_03+240, 0, 340, 0, 10, 10, 10, 245);       --ベース暗め　背景
--setScaleKey( SP_start_03+160, 0, 1.5, 1.5);
--setMoveKey( SP_start_03+160, 0, 0, 0, 0);

ryusen = entryEffectLife( SP_start_03+240, 921, 900, 0x80, -1, 0,   -50,  250);  
setEffRotateKey(SP_start_03+240, ryusen, 60);
setEffScaleKey( SP_start_03+240, ryusen, 2, 2); 
--setEffScaleKey( SP_start_03+240, ryusen, 2, 2); 
setEffAlphaKey( SP_start_03+240, ryusen, 255);


playSe( SP_start_03+240, SE_06);
effbg = entryEffect( SP_start_03+240, SP_10, 0x80, -1, 0, 0, -50);
effatk = entryEffect( SP_start_03+240, SP_09, 0x100, -1, 0, 50, -90);

--effbg = entryEffect( SP_start_03+240, SP_10, 0x80, -1, 0, 0, 0);
--effatk = entryEffect( SP_start_03+240, SP_09, 0x100, -1, 0, 50, -40);


setEffScaleKey( SP_start_02+190, effbg, 0.9, 0.9);
setEffScaleKey( SP_start_03+240, effatk, 0.9, 0.9);
setMoveKey( SP_start_03+240, 1, 100, -275, 0);

--setMoveKey( SP_start_03+240, 1, 100, -225, 0);
setScaleKey( SP_start_03+240, 1, 1.5, 1.5);

playSe( SP_start_03+240, SE_09);
playSe( SP_start_03+285, SE_09);


setShakeChara( SP_start_03+355, 1, 10, 3);
setMoveKey( SP_start_03+340, 1, 100, -325, 0);
setMoveKey( SP_start_03+350, 1, 100, -325, 0);
--setMoveKey( SP_start_03+340, 1, 100, -275, 0);
--setMoveKey( SP_start_03+350, 1, 100, -275, 0);


playSe( SP_start_03+365, SE_10);
setMoveKey( SP_start_03+385, 1, 100, -350, 0);
--setMoveKey( SP_start_03+385, 1, 100, -300, 0);
setScaleKey( SP_start_03+385, 1,  1.5, 1.5);
setRotateKey( SP_start_03+385,  1, 60 );
changeAnime( SP_start_04+80, 1, 108); 
setAnimeLoop( SP_start_04+80, 1, 1);

--entryFade( SP_start_03+285, 10,  80, 0, 255, 255, 255, 255); 
--entryFadeBg( SP_start_03+295, 0, 2, 8, 255, 255, 255, 0);     -- 青い　背景
setEffAlphaKey(SP_start_04+80, 1, 0);
setDisp( SP_start_04+80, 1, 0);
setEffAlphaKey( SP_start_04+80, speff3, 0);
setEffAlphaKey( SP_start_04+80, speff4, 0);

setMoveKey( SP_start_04+80, 1, 50, -350, 0);
--setMoveKey( SP_start_04+80, 1, 50, -300, 0);
setScaleKey( SP_start_04+80, 1,  1.5, 1.5);
setRotateKey( SP_start_04+80,  1, 60 );
changeAnime( SP_start_04+80, 1, 108);
setAnimeLoop( SP_start_04+80, 1, 1);



------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ダメージ表示

dealDamage(SP_start_04+0);

--entryFade( SP_start_04+80, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( SP_start_04+50, 30,  30, 10, 255, 255, 255, 255);             -- black fade

endPhase(SP_start_04+90);



else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);


entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--白フラッシュ
entryFade( 0, 9,  10, 1, 255, 255, 255, 255); 
entryFlash( 9, 1,255, 255, 255);--3f
entryFadeBg( 9, 0, SP_start_02, 2, 10, 10, 10, 200);       --ベース暗め　背景
changeAnime( 9, 0, 30);  
--天津飯用意
setScaleKey( 10, 0, 6.0, 6.0);
setMoveKey( 10, 0, 100, -1800, 0);

--集中線
shuchusen = entryEffectLife( 10, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
--shuchusen = entryEffectLife( 11, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 10, shuchusen, 1.0, 1.0);
--effhit = entryEffect( 20, SP_01, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 40, SP_02, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 60, SP_03, 0x80, -1, 0, 0, 0);
--effhit = entryEffect( 80, SP_05, 0x100, -1, 0, 0, 0);
--effhit = entryEffect( 20, SP_08, 0x80, -1, 0, 0, 100);
--effhit = entryEffectLife( 20, SP_07, 100, 0x100, -1, 0, 0, 100);
setEffAlphaKey( 10, shuchusen, 255);


setEffAlphaKey( SP_start_02, shuchusen, 0);
------------------------------------------------------
--新気功砲(気玉溜め)
-- かめはめ波溜め！(100F)
------------------------------------------------------
--天津飯縮小
setScaleKey( 40, 0, 1.6, 1.6);
setMoveKey( 40, 0, 50, -280, 0);
setScaleKey( 70, 0, 1.5, 1.5);
setMoveKey( 70, 0, 50, -280, 0);
--changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_08);

setShakeChara( 70, 0, 218, 5);



playSe( 65, SE_05);
--ゴゴゴゴゴ（書き文字任意）
-- 書き文字エントリー
ct2 = entryEffectLife( 50, 10008,65, 0, -1, 0, -190, 100);    -- ゴゴゴ・・・
setEffShake(50, ct2, 40, 8);
setEffScaleKey(60, ct2, 1.4, 1.4);
setEffAlphaKey( 60, ct2, 255);

--カットイン表示
--[[
--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  50,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  50,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
setEffAlphaKey( 50, speff, 255);
]]
setEffShake(50, ct2, 95, 8);

setEffAlphaKey( 110, ct2, 255);
--setEffAlphaKey( 125, ct2, 200);
--setEffAlphaKey( 135, ct2, 100);
setEffAlphaKey( 115, ct2, 0);

--playSe( 50, SE_04);

--playSe( 60, SE_03);
--playSe( 80, SE_03);
--playSe( 100, SE_03);
--playSe( 120, SE_03);
--setEffAlphaKey( 150, speff, 255);
--setEffAlphaKey( 155, speff, 0);
--天津飯SHAKE
entryFade( 155, 1, 1, 1, 255, 255, 255, 255); 
setMoveKey( 159, 0, 50, -280, 0);
--setQuake(170,25,20);
setShakeChara( 162, 0, 75, 10);

--エフェクト表示（黄色）
speff = entryEffect( 160, SP_02, 0x40, 0, 300, 0, 0);
--speff = entryEffectLife( 170, SP_02, 330, 0x40, 0, 300, 0, 0);
setEffScaleKey( 160, speff, 1.0, 1.0);
--setShakeChara( 190, 0, 30, 30);


setScaleKey( 160, 0, 1.5, 1.5);
setMoveKey( 160, 0, 50, -200, 0);
setScaleKey( 175, 0, 2.0, 2.0);
playSe( 175, SE_03);
playSe( 195, SE_03);
playSe( 215, SE_03);
playSe( 235, SE_03);
--setScaleKey( 200, 0, 2.1, 2.1);
--speff = entryEffect( 200, SP_01, 0, -1, 0, 0, 0);   -- テスト

--setMoveKey( 200, 0, 0, -600, 0);

--setEffScaleKey( 200, ct, 1.3, 1.3);

--白フラッシュ
--entryFade( 235, 15,  15, 5, 255, 255, 255, 255); 
setScaleKey( SP_start_02, 0, 2.1, 2.1);
setMoveKey( SP_start_02, 0, 50, -180, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( 169,   0, 1.5, 1.5);
--setScaleKey( 170,   0, 1.0, 1.0);
--カード絵＋技名

playSe( SP_start_02, SE_05);
speff = entryEffect(  SP_start_02,   1507,   0,  -1,  0,  0,  0);   -- カード
--speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

------------------------------------------------------
-- カメハメハ発射(110F)
-- 新気功砲(発射)(90F)
------------------------------------------------------
--白フラッシュ
entryFade( SP_start_02+75, 5,  10, 5, 255, 255, 255, 255); 
playSe( SP_start_02+80, SE_07);
setScaleKey( SP_start_02+70, 0, 1.5, 1.5);
--setScaleKey( SP_start_02+90, 0, 1.5, 2.5);
setMoveKey( SP_start_02+70, 0, 0, 0, 0);
changeAnime( SP_start_02+71, 0, 31);  

entryFadeBg( SP_start_02+70, 0, 79, 2, 245, 10, 10, 200);       --ベース暗め　背景

--天津飯表示
setShakeChara( SP_start_02+80, 0, 75, 10);

playSe( SP_start_02+100, SE_06);
--エフェクト表示
speff = entryEffect( SP_start_02+100, SP_03, 0x100, 0, 0, 0, 100);
--speff = entryEffectLife( SP_start_02+100, SP_03, 230, 0x40, 0, 300, 0, 0);
setEffScaleKey( SP_start_02+100, speff, 1.0, 1.0);

--斜め効果線
--ズオッ（書き文字任意）

-- 書き文字エントリー
--ct = entryEffectLife( SP_start_02+100, 10012, 49, 0, -1, 100, 100, 0); 
ct = entryEffectLife( SP_start_02+100, 10012, 49, 0x100, -1, 0, 100, 100); 

setEffShake(SP_start_02+100, ct, 24, 8);
setEffScaleKey(SP_start_02+100, ct, 2.0, 2.0);
setEffShake(SP_start_02+125, ct, 0, 0);
setEffAlphaKey( SP_start_02+100, ct, 255);
setEffScaleKey( SP_start_02+125, ct, 3.0, 3.0);
setEffMoveKey( SP_start_02+125, ct, 200, 200, 0);
setEffAlphaKey( SP_start_02+125, ct, 100);
setEffScaleKey( SP_start_02+135, ct, 4.0, 4.0);
setEffMoveKey( SP_start_02+135, ct, 400, 400, 0);
setEffAlphaKey( SP_start_02+135, ct, 0);
--一気に引く
--流線
--ryuusen = entryEffectLife( SP_start_02+100, 921, 40, 0x80,  -1, 0,  300,  900);   -- 集中線
--setEffRotateKey(SP_start_02+100, ryuusen, 180);
--setEffScaleKey( SP_start_02+100, ryuusen, 3.0, 3.0);

ryusen = entryEffectLife( SP_start_02+100, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_02+100, ryusen, 230);
setEffScaleKey( SP_start_02+100, ryusen, 2, 1.5); 
setEffShake(SP_start_02+100, ryusen, 32, 5);
setEffAlphaKey(SP_start_02+100, ryusen, 120);
setEffAlphaKey(SP_start_02+100+16, ryusen, 120);



setScaleKey( SP_start_02+110, 0, 1.2, 1.2);
setMoveKey( SP_start_02+110, 0, -50, -50, 0);
--setMoveKey( SP_start_02+110, 0, -50, 50, 0);


--暗転と黒背景地面配置
entryFade( SP_start_02+135, 15,  10, 15, 0, 0, 0, 255); 





setScaleKey( SP_start_02+149, 0, 0.2, 0.2);
setMoveKey( SP_start_02+149, 0, -300, 300, 0);
setDisp( SP_start_02+149, 0, 0);

--setDisp( SP_start_03+370, 0, 0);
--setDisp( SP_start_03+370, 1, 1);
setMoveKey( SP_start_02+150, 0, -700, 500, 0);

--流線
ryuusen = entryEffectLife( SP_start_02+160, 920, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(SP_start_02+160, ryuusen, 60);
setEffScaleKey( SP_start_02+160, ryuusen, 2.0, 2.0);

entryFadeBg( SP_start_02+160, 0, 340, 0, 10, 10, 10, 245);       --ベース暗め　背景
--setScaleKey( SP_start_02+160, 0, 1.5, 1.5);
--setMoveKey( SP_start_02+160, 0, 0, 0, 0);
--playSe( SP_start_02+160, SE_06);
effbg = entryEffect( SP_start_02+160, SP_04, 0x80, -1, 0, 0, 100);
--effbg = entryEffect( SP_start_02+160, SP_04, 0x80, -1, 0, 0, 100);

setEffScaleKey( SP_start_02+160, effbg, 0.5, 0.5);

--setEffScaleKey( SP_start_02+160, effbg, 1.0, 1.0);
--effbg = entryEffect( SP_start_02+160, SP_05, 0x40, 300, 0, 400, -200);



--背景と敵の配置を表示

setMoveKey( SP_start_02+160, 1, 400, -400, 0);
setScaleKey( SP_start_02+160, 1, 2.0, 2.0);

setDisp( SP_start_02+160, 1, 1);
changeAnime( SP_start_02+160, 1, 100);  
setShakeChara( SP_start_02+160, 1, 39, 5);

setMoveKey( SP_start_02+165, 1, 200, -150, 0);
setScaleKey( SP_start_02+165, 1, 2.0, 2.0);
--setEffScaleKey( SP_start_02+165, effbg, 1.0, 1.0);
--setEffMoveKey( SP_start_02+165, effbg, 4.0, 0.0, 0.0);

--playSe( SP_start_02+180, SE_09);
--SHAKE
setMoveKey( SP_start_02+180, 1, 50, -150, 0);
setScaleKey( SP_start_02+180, 1, 1.5, 1.5);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

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
-- 戻る
------------------------------------------------------
--setScaleKey( SP_start_02+180, 1, 1.0, 1.0);
--setQuake( SP_start_02+180,20,10);
setMoveKey( SP_start_02+181, 1, 50, -200, 0);
setScaleKey( SP_start_02+181, 1, 1.5, 1.5);

--エフェクト
--playSe( SP_start_02+64, SE_10);
setScaleKey( SP_start_02+199, 1, 1.5, 1.5);
--setScaleKey( SP_start_02+199, 1, 1.0, 1.0);


effhit = entryEffect( SP_start_02+190, SP_05, 0x100, 1, 0, 0, 50);
--effhit2 = entryEffectLife( SP_start_02+190, 1509, 35, 0x40, 1,  300, 0, 0);
--setEffScaleKey( SP_start_02+190, effhit, 1.0, 1.0);
setEffScaleKey( SP_start_02+190, effhit2, 2.0, 2.0);


entryFade( SP_start_02+199, 1,  5, 1, 255, 255, 255, 255); 


setScaleKey( SP_start_02+200, 1, 1.5, 1.5);
setMoveKey( SP_start_02+200, 1, 200, -300, 0);
setEffScaleKey( SP_start_02+200, effbg, 1.5, 1.5);
--setEffScaleKey( SP_start_02+200, effbg, 1.0, 1.0);
setEffMoveKey( SP_start_02+200, effbg, 0, 0, 0);

changeAnime( SP_start_02+205, 1, 108); 
setAnimeLoop( SP_start_02+205, 1, 1);

setRotateKey( SP_start_02+205,  1, 60 );

--setRotateKey( SP_start_02+206,  1, 60 );

--setQuake( SP_start_02+200,10,30);
--setShakeChara( SP_start_02+211, 1, 40, 3);
playSe( SP_start_02+200, SE_09);
effatk = entryEffect( SP_start_02+200, SP_06, 0x100, -1, 0, 50, 0);
--setShakeChara( SP_start_02+200, 0, 100, 10);
setEffRotateKey(SP_start_02+200, effatk, -15);
setEffRotateKey(SP_start_02+200, effbg, -15);
setEffMoveKey( SP_start_02+200, effbg, 0, 0, 350);

--setEffScaleKey = (SP_start_02+200, effatk, 1.4, 1.4);
--setEffScaleKey( SP_start_02+200, effatk, 1.5, 1.5);
--setShakeChara( SP_start_02+200, 1, 100, 10);

--setEffScaleKey( SP_start_02+200, effatk, 2.0, 2.0);
--setMoveKey( SP_start_02+235, 1, 50, -200, 0);

setMoveKey( SP_start_02+224, 1, 200, -300, 0);
setRotateKey( SP_start_02+265,  1, 60 );

setScaleKey( SP_start_02+265, 1,  1.5, 1.5);
entryFade( SP_start_02+265, 9,  20, 1, 255, 255, 255, 255); 
setMoveKey( SP_start_02+275, 1, 250, -350, 0);
setDisp( SP_start_02+280, 0, 1);
setDisp( SP_start_02+280, 1, 0);
setMoveKey( SP_start_02+280, 1, 250, -350, 0);
entryFadeBg( SP_start_02+280, 0, 269, 2, 245, 10, 10, 200);       --ベース暗め　背景



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------


--集中線
shuchusen = entryEffectLife( SP_start_03+80, 906, 235, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start_03+80, shuchusen, 2.0, 2.0);
setEffAlphaKey( SP_start_03+80, shuchusen, 255);
setEffAlphaKey( SP_start_03+80, shuchusen, 0);


--天津飯表示
setShakeChara( SP_start_03+80, 0, 165, 10);


--エフェクト表示
speff3 = entryEffect( SP_start_03+80, SP_07, 0x100, -1, 0, 0, 0);
speff4 = entryEffect( SP_start_03+80, SP_08, 0x80, -1, 0, 0, 0);
setEffAlphaKey( SP_start_03+80, speff3, 255);
setEffAlphaKey( SP_start_03+235, speff3, 255);

--一気に引く
playSe( SP_start_03+100, SE_06);
setScaleKey( SP_start_03+100, 0, 1.4, 1.4);
setMoveKey( SP_start_03+100, 0, -70, -30, 0);
--playSe( SP_start_03+100, SE_06);
-- 書き文字エントリー
ct = entryEffectLife( SP_start_03+100, 10012, 30, 0x100, -1, 0, 100, 100); 
setEffShake(SP_start_03+100, ct, 24, 8);
setEffScaleKey(SP_start_03+100, ct, 2.0, 2.0);
setEffShake(SP_start_03+125, ct, 0, 0);
setEffAlphaKey( SP_start_03+100, ct, 255);
setEffScaleKey( SP_start_03+125, ct, 3.0, 3.0);
setEffMoveKey( SP_start_03+125, ct, 200, 200, 0);
setEffAlphaKey( SP_start_03+125, ct, 100);
setEffScaleKey( SP_start_03+135, ct, 4.0, 4.0);
setEffMoveKey( SP_start_03+135, ct, 400, 400, 0);
setEffAlphaKey( SP_start_03+135, ct, 0);

ryusen = entryEffectLife( SP_start_03+100, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_03+100, ryusen, 230);
setEffScaleKey( SP_start_03+100, ryusen, 2, 1.5); 
setEffShake(SP_start_03+100, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+100, ryusen, 255);
setEffAlphaKey(SP_start_03+116, ryusen, 120);
setEffAlphaKey(SP_start_03+126, ryusen, 0);



--一気に引く
--setScaleKey( SP_start_03+180, 0, 0.7, 0.7);
--setMoveKey( SP_start_03+180, 0, -220, 150, 0);
--setMoveKey( SP_start_03+170, 0, -50, -50, 0);
setScaleKey( SP_start_03+170, 0, 0.7, 0.7);
setMoveKey( SP_start_03+170, 0, -220, 150, 0);
playSe( SP_start_03+170, SE_06);
-- 書き文字エントリー
ct3 = entryEffectLife( SP_start_03+170, 10012, 30, 0x100, -1, 0, 0, 150); 
setEffShake(SP_start_03+170, ct3, 24, 8);
setEffScaleKey(SP_start_03+170, ct3, 2.0, 2.0);
setEffShake(SP_start_03+195, ct3, 0, 0);
setEffAlphaKey( SP_start_03+170, ct3, 255);
setEffScaleKey( SP_start_03+195, ct3, 3.0, 3.0);
setEffMoveKey( SP_start_03+195, ct3, 100, 250, 0);
setEffAlphaKey( SP_start_03+195, ct3, 100);
setEffScaleKey( SP_start_03+205, ct3, 4.0, 4.0);
setEffMoveKey( SP_start_03+205, ct3, 200, 450, 0);
setEffAlphaKey( SP_start_03+205, ct3, 0);



ryusen = entryEffectLife( SP_start_03+170, 921, 100, 0x100, -1, 0,   0,  0); 
setEffRotateKey(SP_start_03+170, ryusen, 230);
setEffScaleKey( SP_start_03+170, ryusen, 2, 1.5); 
setEffShake(SP_start_03+170, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+166, ryusen, 255);
setEffAlphaKey(SP_start_03+166+16, ryusen, 120);
setEffAlphaKey(SP_start_03+166+26, ryusen, 0);

setEffAlphaKey(SP_start_03+245+26, ryusen, 0);



--一気に引く
setScaleKey( SP_start_03+220, 0, 0.4, 0.4);
setMoveKey( SP_start_03+220, 0, -250, 250, 0);
playSe( SP_start_03+220, SE_06);
-- 書き文字エントリー
ct3 = entryEffectLife( SP_start_03+220, 10012, 30, 0x100, -1, 0, -100, 250); 
setEffShake(SP_start_03+220, ct3, 24, 8);
setEffScaleKey(SP_start_03+220, ct3, 2.0, 2.0);
setEffShake(SP_start_03+245, ct3, 0, 0);
setEffAlphaKey( SP_start_03+220, ct3, 255);
setEffScaleKey( SP_start_03+245, ct3, 3.0, 3.0);
setEffMoveKey( SP_start_03+245, ct3, 0, 300, 0);
setEffAlphaKey( SP_start_03+245, ct3, 100);
--setEffScaleKey( SP_start_03+235, ct3, 4.0, 4.0);
--setEffMoveKey( SP_start_03+235, ct3, 400, 400, 0);
--setEffAlphaKey( SP_start_03+235, ct3, 0);

ryusen = entryEffectLife( SP_start_03+220, 921, 100, 0x100, -1, 0,   0,  0);   -- tateの時間を確認
setEffRotateKey(SP_start_03+220, ryusen, 230);
setEffScaleKey( SP_start_03+220, ryusen, 2, 1.5); --3,2
setEffShake(SP_start_03+220, ryusen, 32, 5);
setEffAlphaKey(SP_start_03+220, ryusen, 255);
setEffAlphaKey(SP_start_03+236, ryusen, 120);
setEffAlphaKey(SP_start_03+239, ryusen, 0);


--暗転と黒背景地面配置
entryFade( SP_start_03+235, 5,  10, 5, 0, 0, 0, 255); 

setScaleKey( SP_start_03+239, 0, 0.2, 0.2);
setMoveKey( SP_start_03+239, 0, -300, 390, 0);
setDisp( SP_start_03+239, 0, 0);
setDisp( SP_start_03+239, 1, 1);



--流線
--ryuusen = entryEffectLife( SP_start_03+240, 920, 135, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(SP_start_03+240, ryuusen, 60);
--setEffScaleKey( SP_start_03+240, ryuusen, 2.0, 2.0);

entryFadeBg( SP_start_03+240, 0, 340, 0, 10, 10, 10, 245);       --ベース暗め　背景
--setScaleKey( SP_start_03+160, 0, 1.5, 1.5);
--setMoveKey( SP_start_03+160, 0, 0, 0, 0);

ryusen = entryEffectLife( SP_start_03+240, 921, 900, 0x80, -1, 0,   -50,  250);  
setEffRotateKey(SP_start_03+240, ryusen, 60);
setEffScaleKey( SP_start_03+240, ryusen, 2, 2); 
--setEffScaleKey( SP_start_03+240, ryusen, 2, 2); 
setEffAlphaKey( SP_start_03+240, ryusen, 255);


playSe( SP_start_03+240, SE_06);
effbg = entryEffect( SP_start_03+240, SP_10, 0x80, -1, 0, 0, -50);
effatk = entryEffect( SP_start_03+240, SP_09, 0x100, -1, 0, 50, -90);

--effbg = entryEffect( SP_start_03+240, SP_10, 0x80, -1, 0, 0, 0);
--effatk = entryEffect( SP_start_03+240, SP_09, 0x100, -1, 0, 50, -40);


setEffScaleKey( SP_start_02+190, effbg, 0.9, 0.9);
setEffScaleKey( SP_start_03+240, effatk, 0.9, 0.9);
setMoveKey( SP_start_03+240, 1, 100, -275, 0);

--setMoveKey( SP_start_03+240, 1, 100, -225, 0);
setScaleKey( SP_start_03+240, 1, 1.5, 1.5);

playSe( SP_start_03+240, SE_09);
playSe( SP_start_03+285, SE_09);


setShakeChara( SP_start_03+355, 1, 10, 3);
setMoveKey( SP_start_03+340, 1, 100, -325, 0);
setMoveKey( SP_start_03+350, 1, 100, -325, 0);
--setMoveKey( SP_start_03+340, 1, 100, -275, 0);
--setMoveKey( SP_start_03+350, 1, 100, -275, 0);


playSe( SP_start_03+365, SE_10);
setMoveKey( SP_start_03+385, 1, 100, -350, 0);
--setMoveKey( SP_start_03+385, 1, 100, -300, 0);
setScaleKey( SP_start_03+385, 1,  1.5, 1.5);
setRotateKey( SP_start_03+385,  1, 60 );
changeAnime( SP_start_04+80, 1, 108); 
setAnimeLoop( SP_start_04+80, 1, 1);

--entryFade( SP_start_03+285, 10,  80, 0, 255, 255, 255, 255); 
--entryFadeBg( SP_start_03+295, 0, 2, 8, 255, 255, 255, 0);     -- 青い　背景
setEffAlphaKey(SP_start_04+80, 1, 0);
setDisp( SP_start_04+80, 1, 0);
setEffAlphaKey( SP_start_04+80, speff3, 0);
setEffAlphaKey( SP_start_04+80, speff4, 0);

setMoveKey( SP_start_04+80, 1, 50, -350, 0);
--setMoveKey( SP_start_04+80, 1, 50, -300, 0);
setScaleKey( SP_start_04+80, 1,  1.5, 1.5);
setRotateKey( SP_start_04+80,  1, 60 );
changeAnime( SP_start_04+80, 1, 108);
setAnimeLoop( SP_start_04+80, 1, 1);



------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ダメージ表示

dealDamage(SP_start_04+0);

--entryFade( SP_start_04+80, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( SP_start_04+50, 30,  30, 10, 255, 255, 255, 255);             -- black fade

endPhase(SP_start_04+90);





end
