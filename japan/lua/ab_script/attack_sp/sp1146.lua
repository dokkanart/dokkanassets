--参考sp0346超4ゴジータ100倍ビッグバンかめはめ

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

--味方側
SP_01 = 151018;--タメ
SP_02 = 151020;--打撃
SP_03 = 151022;--構え
SP_04 = 151024;--岩1
SP_05 = 151025;--床1
SP_06 = 151026;--放つ
SP_07 = 151028;--岩2
SP_08 = 151029;--床2
SP_09 = 151030;--出現
SP_10 = 151032;--爆発


--敵側は味方側に1xをつけてます

SP_11 = 151019;--タメ敵側
SP_12 = 151021;--打撃敵側
SP_13 = 151023;--構え敵側
SP_16 = 151027;--放つ敵側
SP_19 = 151031;--出現


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10012, 90, 0, -1, 0, 100, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 20);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);

entryFade( spep_0+20, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade


playSe( spep_0+20, SE_01);
------------------------------------------------------
-- ラッシュ(160F)
------------------------------------------------------
spep_1 = spep_0+120;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+24, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+110, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFadeBg( spep_1, 0, 160, 0, 0, 0, 0, 210);          -- やや暗い　背景

yokosen1 = entryEffectLife( spep_1, 914, 110, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, yokosen1, 1.6, 1.6);
setEffAlphaKey( spep_1, yokosen1, 255);
setEffRotateKey(spep_1, yokosen1, 0);
setEffMoveKey( spep_1, yokosen1, 0, 0, 0);

tatesen1 = entryEffectLife( spep_1+111, 914, 50, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_1+111, tatesen1, 1.6, 1.6);
setEffAlphaKey( spep_1+111, tatesen1, 255);
setEffRotateKey(spep_1+111, tatesen1, 90);
setEffMoveKey( spep_1+111, tatesen1, 0, 0, 0);

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); 


setDisp( spep_1, 1, 1);--敵表示
setRotateKey(   spep_1,   1, 0);
setRotateKey(   spep_1+24,   1, 0);
setRotateKey(   spep_1+25,   1, 0);
setRotateKey(   spep_1+83,   1, 0);
setRotateKey(   spep_1+84,   1, -30);
setRotateKey(   spep_1+109,   1, -30);
setRotateKey(   spep_1+110,   1, 80);
setRotateKey(   spep_1+150,   1, 80);

setMoveKey(   spep_1,   1,    -500,  0,  0);
setMoveKey(   spep_1+15,   1,    -50, 0,  0);
setMoveKey(   spep_1+79,   1,    80, 0,  0);
setMoveKey(   spep_1+109,   1,    100,  100,  0);
setMoveKey(   spep_1+110,   1,    80,  -100,  0);
setMoveKey(   spep_1+130,   1,    80,  -700,  0);

setScaleKey(   spep_1,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_1+34, 1, 85 , 5 );

changeAnime( spep_1, 1, 100);  --待機
changeAnime( spep_1+25, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_1+84, 1, 106);  --ダメージ
changeAnime( spep_1+110, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_1+130, 1, 0);




-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+24, 10017, 68, 0, -1, 0, 50, 250); -- ドガガガッ
setEffRotateKey(spep_1+24, ctDokgaga, 20);
setEffShake(spep_1+24, ctDokgaga, 72, 5);
setEffAlphaKey(spep_1+24, ctDokgaga, 255);
setEffScaleKey(spep_1+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+36, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+37, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+40, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+41, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+80, ctDokgaga, 2.3, 2.3);

ctBaki = entryEffectLife( spep_1+115, 10020, 22, 0, -1, 0, -50, 400); -- バキッ
setEffRotateKey(spep_1+115, ctBaki, -10);
setEffRotateKey(spep_1+125, ctBaki, -10);
setEffRotateKey(spep_1+126, ctBaki, 0);
setEffRotateKey(spep_1+127, ctBaki, 0);
setEffRotateKey(spep_1+128, ctBaki, -10);
setEffRotateKey(spep_1+129, ctBaki, -10);
setEffRotateKey(spep_1+130, ctBaki, 0);
setEffRotateKey(spep_1+131, ctBaki, 0);
setEffRotateKey(spep_1+134, ctBaki, -10);
setEffShake(spep_1+116, ctBaki, 72, 5);
setEffAlphaKey(spep_1+115, ctBaki, 255);
setEffAlphaKey(spep_1+125, ctBaki, 255);
setEffAlphaKey(spep_1+135, ctBaki, 0);
setEffScaleKey(spep_1+115, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+125, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+126, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+127, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+135, ctBaki, 2.4, 2.4);


shuchusen1 = entryEffectLife( spep_1, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);

--[[
playSe( spep_1+33, 1009);
playSe( spep_1+43, 1009);
playSe( spep_1+50, 1010);
playSe( spep_1+60, 1009);
playSe( spep_1+67, 1009);
playSe( spep_1+75, 1009);
playSe( spep_1+80, 1010);
playSe( spep_1+85, 1010);
playSe( spep_1+93, 1010);
playSe( spep_1+110, 1010);
]]
--v4.11調整
playSe( spep_1+33, 1009);
setSeVolume(spep_1+33, 1009,85);
playSe( spep_1+43, 1009);
setSeVolume( spep_1+43, 1009,85);
playSe( spep_1+50, 1010);
setSeVolume( spep_1+50, 1010,85);
playSe( spep_1+60, 1009);
setSeVolume( spep_1+60, 1009,85);
playSe( spep_1+67, 1009);
setSeVolume( spep_1+67, 1009,85);
playSe( spep_1+75, 1009);
setSeVolume( spep_1+75, 1009,85);
playSe( spep_1+80, 1010);
setSeVolume( spep_1+80, 1010,85);
playSe( spep_1+85, 1010);
setSeVolume( spep_1+85, 1010,85);
SE001 = playSe( spep_1+93, 1010);
setSeVolume( spep_1+93, 1010,85);
stopSe(spep_1+115,SE001,0);
playSe( spep_1+110, 1010);
setSeVolume( spep_1+110, 1010,100);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 地面ドン(180F)
------------------------------------------------------
spep_2 = spep_1+160;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 180, 0, 0, 0, 0, 255);          -- ベース黒　背景

tatesen2 = entryEffectLife( spep_2, 914, 180, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_2, tatesen2, 1.6, 1.6);
setEffAlphaKey( spep_2, tatesen2, 255);
setEffRotateKey(spep_2, tatesen2, 90);
setEffMoveKey( spep_2, tatesen2, 0, 0, 0);


setDisp( spep_2, 1, 1);--敵表示
setRotateKey(   spep_2,   1, 80);
setRotateKey(   spep_2+150,   1, 80);

setMoveKey(   spep_2-1,   1,    0,  400,  0);
setMoveKey(   spep_2+10,   1,    0, 380,  0);
setMoveKey(   spep_2+20,   1,    0,  -300,  0);
setMoveKey(   spep_2+80,   1,    0,  -300,  0);
setMoveKey(   spep_2+100,   1,    0,  -400,  0);
setMoveKey(   spep_2+140,   1,    0,  -700,  0);

setScaleKey(   spep_2,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_2+1, 1, 59 , 10 );
setShakeChara( spep_2+60, 1, 40 , 15 );

changeAnime( spep_2, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_2+120, 1, 0);


touzyo2 = entryEffect(  spep_2+80,   SP_03,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2+80, touzyo2, 1.0, 1.0);
setEffAlphaKey( spep_2+80, touzyo2, 255);
setEffShake(spep_2+80, touzyo2, 110, 10); 
--setEffShake(spep_2+24, touzyo2, 116, 10); 


zimenusiro2 = entryEffect(  spep_2+15,   SP_05,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_2+15, zimenusiro2, 1.0, 1.0);
setEffAlphaKey( spep_2+15, zimenusiro2, 255);
--setEffShake(spep_2+24, zimenusiro2, 116, 10); 


zimenmae2 = entryEffect(  spep_2+20,   SP_04,   0x100,  -1,  0,  0,  0);   --岩
setEffScaleKey( spep_2+20, zimenmae2, 1.0, 1.0);
setEffAlphaKey( spep_2+20, zimenmae2, 255);
--setEffShake(spep_2, zimenmae2, 140, 10); --揺らす

shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.3, 2.3);
setEffAlphaKey( spep_2, shuchusen2, 255);

speff = entryEffect(  spep_2+90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_2+103, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+103, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_2+103, gogogo, 255);
setEffRotateKey( spep_2+103, gogogo, 20);

playSe( spep_2+20, SE_10);
playSe( spep_2+100, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+180;
entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 2, 2);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3+4, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
spep_4 = spep_3+90;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+15, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 210);          -- 暗め　背景

ryuusen4 = entryEffectLife( spep_4, 921, 80, 0x80,  -1, 0,  -50,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey(spep_4, ryuusen4, -90);



zimenusiro4 = entryEffect(  spep_4,   SP_08,   0x80,  -1,  0,  -50,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);
--setEffShake(spep_4+24, zimenusiro4, 116, 10); 


zimenmae4 = entryEffect(  spep_4,   SP_07,   0x100,  -1,  0,  0,  0);   --岩
setEffScaleKey( spep_4, zimenmae4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenmae4, 255);
--setEffShake(spep_4, zimenmae2, 140, 10); --揺らす

zangeki4 = entryEffect(  spep_4,   SP_06,   0x100,  -1,  0,  0,  0);   --発射
setEffScaleKey( spep_4, zangeki4, 1.0, 1.0);
setEffAlphaKey( spep_4, zangeki4, 255);
setEffShake( spep_4, zangeki4, 110, 10);

setDisp( spep_4, 1, 1);--敵表示
setRotateKey(   spep_4,   1, 90);
setRotateKey(   spep_4+150,   1, 90);

setMoveKey(   spep_4-1,   1,    0,  -340,  0);
setMoveKey(   spep_4,   1,    0,  -360,  0);
setMoveKey(   spep_4+60,   1,    0, -460,  0);

setScaleKey(   spep_4,   1, 1.6, 1.6);
setScaleKey(   spep_4+100,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_4+1, 1, 100 , 15 );

changeAnime( spep_4, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_4+80, 1, 0);

shuchusenct4 = entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 2, 2);
setEffAlphaKey( spep_4, shuchusenct4, 255);


-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+30, ctZuo4, 255);
setEffAlphaKey(spep_4+52, ctZuo4, 0);
--setEffMoveKey(  spep_4+5,  ctZuo4,  130,  290,   0);
--setEffMoveKey(  spep_4+35,  ctZuo4,  130,  290,   0);
--setEffMoveKey(  spep_4+52, ctZuo4,  220,  350,   0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+35, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+52, ctZuo4, 8.0, 8.0);

--playSe( spep_4+6, SE_06);
playSe( spep_4+15, SE_07);




------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
spep_5 = spep_4+105;



entryFade( spep_5-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

syutugen5 = entryEffect(  spep_5+50,   SP_09,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_5+50, syutugen5, 1.0, 1.0);
setEffAlphaKey( spep_5+50, syutugen5, 255);


bom = entryEffect(  spep_5,   SP_10,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_5, bom, 1.0, 1.0);
setEffAlphaKey( spep_5, bom, 255);


shuchusen5 = entryEffectLife( spep_5, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 2.3, 2.3);
setEffAlphaKey( spep_5, shuchusen5, 255);

-- ダメージ表示
dealDamage( spep_5+16);
--entryFade( spep_5+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+138);

playSe( spep_5+6, SE_10);
playSe( spep_5+50, 43);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------


spep_0 = 0;

entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_11,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10012, 90, 0, -1, 0, 100, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 20);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);

entryFade( spep_0+20, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade


playSe( spep_0+20, SE_01);
------------------------------------------------------
-- ラッシュ(160F)
------------------------------------------------------
spep_1 = spep_0+120;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+24, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+110, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFadeBg( spep_1, 0, 160, 0, 0, 0, 0, 210);          -- やや暗い　背景

yokosen1 = entryEffectLife( spep_1, 914, 110, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, yokosen1, 1.6, 1.6);
setEffAlphaKey( spep_1, yokosen1, 255);
setEffRotateKey(spep_1, yokosen1, 0);
setEffMoveKey( spep_1, yokosen1, 0, 0, 0);

tatesen1 = entryEffectLife( spep_1+111, 914, 50, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_1+111, tatesen1, 1.6, 1.6);
setEffAlphaKey( spep_1+111, tatesen1, 255);
setEffRotateKey(spep_1+111, tatesen1, 90);
setEffMoveKey( spep_1+111, tatesen1, 0, 0, 0);

touzyo = entryEffect(  spep_1,   SP_12,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); 


setDisp( spep_1, 1, 1);--敵表示
setRotateKey(   spep_1,   1, 0);
setRotateKey(   spep_1+24,   1, 0);
setRotateKey(   spep_1+25,   1, 0);
setRotateKey(   spep_1+83,   1, 0);
setRotateKey(   spep_1+84,   1, -30);
setRotateKey(   spep_1+109,   1, -30);
setRotateKey(   spep_1+110,   1, 80);
setRotateKey(   spep_1+150,   1, 80);

setMoveKey(   spep_1,   1,    -500,  0,  0);
setMoveKey(   spep_1+15,   1,    -50, 0,  0);
setMoveKey(   spep_1+79,   1,    80, 0,  0);
setMoveKey(   spep_1+109,   1,    100,  100,  0);
setMoveKey(   spep_1+110,   1,    80,  -100,  0);
setMoveKey(   spep_1+130,   1,    80,  -700,  0);

setScaleKey(   spep_1,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_1+34, 1, 85 , 5 );

changeAnime( spep_1, 1, 100);  --待機
changeAnime( spep_1+25, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_1+84, 1, 106);  --ダメージ
changeAnime( spep_1+110, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_1+130, 1, 0);




-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+24, 10017, 68, 0, -1, 0, 50, 250); -- ドガガガッ
setEffRotateKey(spep_1+24, ctDokgaga, 20);
setEffShake(spep_1+24, ctDokgaga, 72, 5);
setEffAlphaKey(spep_1+24, ctDokgaga, 255);
setEffScaleKey(spep_1+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+36, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+37, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+40, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+41, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+80, ctDokgaga, 2.3, 2.3);

ctBaki = entryEffectLife( spep_1+115, 10020, 22, 0, -1, 0, -50, 400); -- バキッ
setEffRotateKey(spep_1+115, ctBaki, -10);
setEffRotateKey(spep_1+125, ctBaki, -10);
setEffRotateKey(spep_1+126, ctBaki, 0);
setEffRotateKey(spep_1+127, ctBaki, 0);
setEffRotateKey(spep_1+128, ctBaki, -10);
setEffRotateKey(spep_1+129, ctBaki, -10);
setEffRotateKey(spep_1+130, ctBaki, 0);
setEffRotateKey(spep_1+131, ctBaki, 0);
setEffRotateKey(spep_1+134, ctBaki, -10);
setEffShake(spep_1+116, ctBaki, 72, 5);
setEffAlphaKey(spep_1+115, ctBaki, 255);
setEffAlphaKey(spep_1+125, ctBaki, 255);
setEffAlphaKey(spep_1+135, ctBaki, 0);
setEffScaleKey(spep_1+115, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+125, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+126, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+127, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+135, ctBaki, 2.4, 2.4);


shuchusen1 = entryEffectLife( spep_1, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);


--[[
playSe( spep_1+33, 1009);
playSe( spep_1+43, 1009);
playSe( spep_1+50, 1010);
playSe( spep_1+60, 1009);
playSe( spep_1+67, 1009);
playSe( spep_1+75, 1009);
playSe( spep_1+80, 1010);
playSe( spep_1+85, 1010);
playSe( spep_1+93, 1010);
playSe( spep_1+110, 1010);
]]
--v4.11調整
playSe( spep_1+33, 1009);
setSeVolume(spep_1+33, 1009,85);
playSe( spep_1+43, 1009);
setSeVolume( spep_1+43, 1009,85);
playSe( spep_1+50, 1010);
setSeVolume( spep_1+50, 1010,85);
playSe( spep_1+60, 1009);
setSeVolume( spep_1+60, 1009,85);
playSe( spep_1+67, 1009);
setSeVolume( spep_1+67, 1009,85);
playSe( spep_1+75, 1009);
setSeVolume( spep_1+75, 1009,85);
playSe( spep_1+80, 1010);
setSeVolume( spep_1+80, 1010,85);
playSe( spep_1+85, 1010);
setSeVolume( spep_1+85, 1010,85);
SE001 = playSe( spep_1+93, 1010);
setSeVolume( spep_1+93, 1010,85);
stopSe(spep_1+115,SE001,0);
playSe( spep_1+110, 1010);
setSeVolume( spep_1+110, 1010,100);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 地面ドン(180F)
------------------------------------------------------
spep_2 = spep_1+160;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 180, 0, 0, 0, 0, 255);          -- ベース黒　背景

tatesen2 = entryEffectLife( spep_2, 914, 180, 0x80,  -1, 0,  0,  0);   -- 縦線
setEffScaleKey( spep_2, tatesen2, 1.6, 1.6);
setEffAlphaKey( spep_2, tatesen2, 255);
setEffRotateKey(spep_2, tatesen2, 90);
setEffMoveKey( spep_2, tatesen2, 0, 0, 0);


setDisp( spep_2, 1, 1);--敵表示
setRotateKey(   spep_2,   1, 80);
setRotateKey(   spep_2+150,   1, 80);

setMoveKey(   spep_2-1,   1,    0,  400,  0);
setMoveKey(   spep_2+10,   1,    0, 380,  0);
setMoveKey(   spep_2+20,   1,    0,  -300,  0);
setMoveKey(   spep_2+80,   1,    0,  -300,  0);
setMoveKey(   spep_2+100,   1,    0,  -400,  0);
setMoveKey(   spep_2+140,   1,    0,  -700,  0);

setScaleKey(   spep_2,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_2+1, 1, 59 , 10 );
setShakeChara( spep_2+60, 1, 40 , 15 );

changeAnime( spep_2, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_2+120, 1, 0);


touzyo2 = entryEffect(  spep_2+80,   SP_13,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2+80, touzyo2, 1.0, 1.0);
setEffAlphaKey( spep_2+80, touzyo2, 255);
setEffShake(spep_2+80, touzyo2, 110, 10); 
--setEffShake(spep_2+24, touzyo2, 116, 10); 


zimenusiro2 = entryEffect(  spep_2+15,   SP_05,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_2+15, zimenusiro2, 1.0, 1.0);
setEffAlphaKey( spep_2+15, zimenusiro2, 255);
--setEffShake(spep_2+24, zimenusiro2, 116, 10); 


zimenmae2 = entryEffect(  spep_2+20,   SP_04,   0x100,  -1,  0,  0,  0);   --岩
setEffScaleKey( spep_2+20, zimenmae2, 1.0, 1.0);
setEffAlphaKey( spep_2+20, zimenmae2, 255);
--setEffShake(spep_2, zimenmae2, 140, 10); --揺らす

shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.3, 2.3);
setEffAlphaKey( spep_2, shuchusen2, 255);

--speff = entryEffect(  spep_2+90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
--gogogo = entryEffectLife( spep_2+103, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
--setEffScaleKey( spep_2+103, gogogo, -0.8, 0.8);
--setEffAlphaKey( spep_2+103, gogogo, 255);
--setEffRotateKey( spep_2+103, gogogo, 20);

playSe( spep_2+20, SE_10);
playSe( spep_2+100, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+180;
entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 2, 2);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3+4, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
spep_4 = spep_3+90;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+15, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 210);          -- 暗め　背景

ryuusen4 = entryEffectLife( spep_4, 921, 80, 0x80,  -1, 0,  -50,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusen4, 255);
setEffRotateKey(spep_4, ryuusen4, -90);



zimenusiro4 = entryEffect(  spep_4,   SP_08,   0x80,  -1,  0,  -50,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);
--setEffShake(spep_4+24, zimenusiro4, 116, 10); 


zimenmae4 = entryEffect(  spep_4,   SP_07,   0x100,  -1,  0,  0,  0);   --岩
setEffScaleKey( spep_4, zimenmae4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenmae4, 255);
--setEffShake(spep_4, zimenmae2, 140, 10); --揺らす

zangeki4 = entryEffect(  spep_4,   SP_16,   0x100,  -1,  0,  0,  0);   --発射(反転させる)
setEffScaleKey( spep_4, zangeki4, 1.0, 1.0);
setEffAlphaKey( spep_4, zangeki4, 255);
setEffShake( spep_4, zangeki4, 110, 10);

setDisp( spep_4, 1, 1);--敵表示
setRotateKey(   spep_4,   1, 90);
setRotateKey(   spep_4+150,   1, 90);

setMoveKey(   spep_4-1,   1,    0,  -340,  0);
setMoveKey(   spep_4,   1,    0,  -360,  0);
setMoveKey(   spep_4+60,   1,    0, -460,  0);

setScaleKey(   spep_4,   1, 1.6, 1.6);
setScaleKey(   spep_4+100,   1, 1.6, 1.6);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_4+1, 1, 100 , 15 );

changeAnime( spep_4, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_4+80, 1, 0);

shuchusenct4 = entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 2, 2);
setEffAlphaKey( spep_4, shuchusenct4, 255);


-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+30, ctZuo4, 255);
setEffAlphaKey(spep_4+52, ctZuo4, 0);
--setEffMoveKey(  spep_4+5,  ctZuo4,  130,  290,   0);
--setEffMoveKey(  spep_4+35,  ctZuo4,  130,  290,   0);
--setEffMoveKey(  spep_4+52, ctZuo4,  220,  350,   0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+35, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+52, ctZuo4, 8.0, 8.0);

--playSe( spep_4+6, SE_06);
playSe( spep_4+15, SE_07);




------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
spep_5 = spep_4+105;



entryFade( spep_5-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

syutugen5 = entryEffect(  spep_5+50,   SP_19,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_5+50, syutugen5, 1.0, 1.0);
setEffAlphaKey( spep_5+50, syutugen5, 255);


bom = entryEffect(  spep_5,   SP_10,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_5, bom, 1.0, 1.0);
setEffAlphaKey( spep_5, bom, 255);


shuchusen5 = entryEffectLife( spep_6, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 2.3, 2.3);
setEffAlphaKey( spep_5, shuchusen5, 255);

-- ダメージ表示
dealDamage( spep_5+16);
--entryFade( spep_5+146, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+138);

playSe( spep_5+6, SE_10);
playSe( spep_5+50, 43);

end


