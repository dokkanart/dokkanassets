--スーパーベビー2(リベンジファイナルフラッシュ)

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
SE_08 = 1042; --ひらめき
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;
SE_13 = 1033; --激突音
SE_14 = 1034; --強い感じの溜め音
SE_15 = 1020; --強い感じの溜め音

--味方側
SP_01 = 153012; --左手溜め
SP_02 = 153013; --右手溜め
SP_03 = 153014; --正面構え
SP_04 = 153015; --敵を飲み込むビーム
SP_05 = 153016; --↑の岩
SP_06 = 153066; --↑の背景
SP_07 = 153017; --〆爆発

--敵側
SP_01r = 153012; --左手溜め
SP_02r = 153013; --右手溜め
SP_03r = 153014; --正面構え
SP_04r = 153015; --敵を飲み込むビーム
SP_05r = 153016; --↑の岩
SP_06r = 153066; --↑の背景
SP_07r = 153017; --〆爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 右手で溜め(120F)
------------------------------------------------------

spep_0 = 1;

--右手溜め(SP_01)
charge_R = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0); 
setEffMoveKey( spep_0, charge_R, 0, 0);
setEffMoveKey( spep_0+120, charge_R, 0, 0);
setEffScaleKey( spep_0, charge_R, 1, 1);
setEffScaleKey( spep_0+120, charge_R, 1, 1);
setEffRotateKey( spep_0,  charge_R,  0);
setEffRotateKey( spep_0+120,  charge_R,  0);
setEffAlphaKey( spep_0, charge_R, 255);
setEffAlphaKey( spep_0+84, charge_R, 255);
setEffAlphaKey( spep_0+86, charge_R, 0);
setEffAlphaKey( spep_0+120, charge_R, 0);

--集中線
shuchusen = entryEffectLife( spep_0+32, 906, 52, 0x100,  -1, 0, -60, -100);
setEffMoveKey(  spep_0+32,  shuchusen, -60, -100);
setEffMoveKey(  spep_0+84,  shuchusen, -60, -100);
setEffScaleKey(  spep_0+32,  shuchusen,  1.1,  1.1);
setEffScaleKey(  spep_0+84,  shuchusen,  1.1,  1.1);
setEffRotateKey(  spep_0+32,  shuchusen,  0);
setEffRotateKey(  spep_0+84,  shuchusen,  0);
setEffAlphaKey(  spep_0+32,  shuchusen,  255);
setEffAlphaKey(  spep_0+84,  shuchusen,  255);

playSe(spep_0+32, SE_14);
playSe(spep_0+62, SE_14);

spep_1 = spep_0 + 84;

------------------------------------------------------
-- 左手で溜め(100F)
------------------------------------------------------

--左手溜め(SP_02)
charge_L = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0); 
setEffMoveKey( spep_1, charge_L, 0, 0);
setEffMoveKey( spep_1+100, charge_L, 0, 0);
setEffScaleKey( spep_1, charge_L, 1, 1);
setEffScaleKey( spep_1+100, charge_L, 1, 1);
setEffRotateKey( spep_1,  charge_L,  0);
setEffRotateKey( spep_1+100,  charge_L,  0);
setEffAlphaKey( spep_1, charge_L, 255);
setEffAlphaKey( spep_1+70, charge_L, 255);
setEffAlphaKey( spep_1+72, charge_L, 0);
setEffAlphaKey( spep_1+100, charge_L, 0);

--集中線
shuchusen2 = entryEffectLife( spep_1+24, 906, 46, 0x100,  -1, 0, 60, -100);
setEffMoveKey(  spep_1+24,  shuchusen2, 60, -100);
setEffMoveKey(  spep_1+70,  shuchusen2, 60, -100);
setEffScaleKey(  spep_1+24,  shuchusen2,  1.1,  1.1);
setEffScaleKey(  spep_1+70,  shuchusen2,  1.1,  1.1);
setEffRotateKey(  spep_1+24,  shuchusen2,  0);
setEffRotateKey(  spep_1+70,  shuchusen2,  0);
setEffAlphaKey(  spep_1+24,  shuchusen2,  255);
setEffAlphaKey(  spep_1+70,  shuchusen2,  255);

playSe(spep_1+24, SE_14);
playSe(spep_1+54, SE_14);

spep_2 = spep_1 + 70;


------------------------------------------------------
-- 正面構え〜発射
------------------------------------------------------

--正面構え〜発射(SP_03)
shoot = entryEffect( spep_2, SP_03, 0x80, -1, 0, 0); 
setEffMoveKey( spep_2, shoot, 0, 0);
setEffMoveKey( spep_2+220, shoot, 0, 0);
setEffScaleKey( spep_2, shoot, 1, 1);
setEffScaleKey( spep_2+220, shoot, 1, 1);
setEffRotateKey( spep_2,  shoot,  0);
setEffRotateKey( spep_2+220,  shoot,  0);
setEffAlphaKey( spep_2, shoot, 255);
setEffAlphaKey( spep_2+166, shoot, 255);
setEffAlphaKey( spep_2+168, shoot, 0);
setEffAlphaKey( spep_2+220, shoot, 0);

--集中線
shuchusen3 = entryEffectLife( spep_2+24, 906, 142, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+24,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+166,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+24,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_2+166,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_2+24,  shuchusen3,  0);
setEffRotateKey(  spep_2+166,  shuchusen3,  0);
setEffAlphaKey(  spep_2+24,  shuchusen3,  255);
setEffAlphaKey(  spep_2+166,  shuchusen3,  255);

--顔カットイン
speff=entryEffect(spep_2+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGogo=entryEffectLife(spep_2+16,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+16,ctGogo,0,520,0);
setEffMoveKey(spep_2+88,ctGogo,0,520,0);

setEffScaleKey(spep_2+16, ctGogo, 0.7, 0.7);
setEffScaleKey(spep_2+86, ctGogo, 0.7, 0.7);
setEffScaleKey(spep_2+88, ctGogo, 1.8, 1.8);

setEffAlphaKey( spep_2 + 16, ctGogo, 255 );
setEffAlphaKey( spep_2 + 88, ctGogo, 255 );

setEffRotateKey(spep_2+16,ctGogo,0);
setEffRotateKey(spep_2+88,ctGogo,0);


playSe( spep_2+16, SE_04); --ゴゴゴ
playSe( spep_2+110, SE_06); --発射！

spep_3 = spep_2 + 166;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_3-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_3,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen4,  0);
setEffRotateKey(  spep_3+90,  shuchusen4,  0);
setEffAlphaKey(  spep_3,  shuchusen4,  255);
setEffAlphaKey(  spep_3+90,  shuchusen4,  255);

--***背景と白フェード***
entryFade( spep_3+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵を飲み込んで岩に飛んでく(120F)
------------------------------------------------------
--飛んでく(SP_04)
beam_F = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0); 
setEffMoveKey( spep_4, beam_F, 0, 0);
setEffMoveKey( spep_4+120, beam_F, 0, 0);
setEffScaleKey( spep_4, beam_F, 1, 1);
setEffScaleKey( spep_4+120, beam_F, 1, 1);
setEffRotateKey( spep_4,  beam_F,  0);
setEffRotateKey( spep_4+120,  beam_F,  0);
setEffAlphaKey( spep_4, beam_F, 255);
setEffAlphaKey( spep_4+86, beam_F, 255);
setEffAlphaKey( spep_4+88, beam_F, 0);
setEffAlphaKey( spep_4+120, beam_F, 0);

--背景(SP_06)
beam_R = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0); 
setEffMoveKey( spep_4, beam_R, 0, 0);
setEffMoveKey( spep_4+120, beam_R, 0, 0);
setEffScaleKey( spep_4, beam_R, 1, 1);
setEffScaleKey( spep_4+120, beam_R, 1, 1);
setEffRotateKey( spep_4,  beam_R,  0);
setEffRotateKey( spep_4+120,  beam_R,  0);
setEffAlphaKey( spep_4, beam_R, 255);
setEffAlphaKey( spep_4+86, beam_R, 255);
setEffAlphaKey( spep_4+88, beam_R, 0);
setEffAlphaKey( spep_4+120, beam_R, 0);

--奥行き付き流線
ryusen = entryEffectLife( spep_4, 924, 120, 0x80, -1, -500, 120); 
setEffMoveKey( spep_4, ryusen, -500, 120); 
setEffMoveKey( spep_4+120, ryusen, -500, 120); 
setEffScaleKey( spep_4, ryusen, 1.9, 1.5);
setEffScaleKey( spep_4+120, ryusen, 1.9, 1.5);
setEffRotateKey( spep_4,  ryusen,  23);
setEffRotateKey( spep_4+120,  ryusen,  23);
setEffAlphaKey( spep_4, ryusen, 255);
setEffAlphaKey( spep_4+120, ryusen, 255);

--岩(SP_05)
iwa = entryEffect( spep_4, SP_05, 0x80, -1, 0, 0); 
setEffMoveKey( spep_4, iwa, 0, 0);
setEffMoveKey( spep_4+120, iwa, 0, 0);
setEffScaleKey( spep_4, iwa, 1, 1);
setEffScaleKey( spep_4+120, iwa, 1, 1);
setEffRotateKey( spep_4,  iwa,  0);
setEffRotateKey( spep_4+120,  iwa,  0);
setEffAlphaKey( spep_4, iwa, 255);
setEffAlphaKey( spep_4+86, iwa, 255);
setEffAlphaKey( spep_4+88, iwa, 0);
setEffAlphaKey( spep_4+120, iwa, 0);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 44, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 174.7, -157.9 , 0 );
setMoveKey( spep_4 + 2, 1, 168.1, -154.3 , 0 );
setMoveKey( spep_4 + 4, 1, 161.6, -150.7 , 0 );
setMoveKey( spep_4 + 6, 1, 155, -147.1 , 0 );
setMoveKey( spep_4 + 8, 1, 148.5, -143.5 , 0 );
setMoveKey( spep_4 + 10, 1, 141.9, -139.9 , 0 );
setMoveKey( spep_4 + 12, 1, 135.4, -136.2 , 0 );
setMoveKey( spep_4 + 14, 1, 128.8, -132.6 , 0 );
setMoveKey( spep_4 + 16, 1, 122.2, -129 , 0 );
setMoveKey( spep_4 + 18, 1, 115.7, -125.4 , 0 );
setMoveKey( spep_4 + 20, 1, 109.1, -121.8 , 0 );
setMoveKey( spep_4 + 22, 1, 102.6, -118.2 , 0 );
setMoveKey( spep_4 + 24, 1, 96, -114.6 , 0 );
setMoveKey( spep_4 + 26, 1, 89.4, -111 , 0 );
setMoveKey( spep_4 + 28, 1, 82.9, -107.4 , 0 );
setMoveKey( spep_4 + 30, 1, 76.3, -103.8 , 0 );
setMoveKey( spep_4 + 32, 1, 69.8, -100.2 , 0 );
setMoveKey( spep_4 + 34, 1, 63.2, -96.5 , 0 );
setMoveKey( spep_4 + 36, 1, 56.6, -92.9 , 0 );
setMoveKey( spep_4 + 38, 1, 50.1, -89.3 , 0 );
setMoveKey( spep_4 + 40, 1, 43.5, -85.7 , 0 );
setMoveKey( spep_4 + 42, 1, 37, -82.1 , 0 );
setMoveKey( spep_4 + 44, 1, 30.4, -78.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 14, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 18, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 26, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 38, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 40, 1, 0.99, 0.99 );
setScaleKey( spep_4 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 44, 1, 1.02, 1.02 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 44, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--***背景と白フェード***
entryFade( spep_4+78, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_4, SE_07); --ビーム飛んでく

spep_5 = spep_4 + 86;

------------------------------------------------------
-- 締め爆発
------------------------------------------------------

--〆爆発(SP_07)
bomb = entryEffect( spep_5, SP_07, 0x100, -1, 0, 0); 
setEffMoveKey( spep_5, bomb, 0, 0);
setEffMoveKey( spep_5+302, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1, 1);
setEffScaleKey( spep_5+302, bomb, 1, 1);
setEffRotateKey( spep_5,  bomb,  0);
setEffRotateKey( spep_5+302,  bomb,  0);
setEffAlphaKey( spep_5, bomb, 255);
setEffAlphaKey( spep_5+212, bomb, 255);
setEffAlphaKey( spep_5+214, bomb, 0);
setEffAlphaKey( spep_5+302, bomb, 0);

--ビームが岩に当たったときの集中線
shuchusen5 = entryEffectLife( spep_5+12, 906, 24, 0x100, -1, 0, -230, 0);
setEffMoveKey(  spep_5+12,  shuchusen5, -230, 0);
setEffMoveKey(  spep_5+36,  shuchusen5, -230, 0);
setEffScaleKey(  spep_5+12,  shuchusen5,  1.5,  1.2);
setEffScaleKey(  spep_5+36,  shuchusen5,  1.5,  1.2);
setEffRotateKey(  spep_5+12,  shuchusen5,  0);
setEffRotateKey(  spep_5+36,  shuchusen5,  0);
setEffAlphaKey(  spep_5+12,  shuchusen5,  255);
setEffAlphaKey(  spep_5+36,  shuchusen5,  255);

--ビームが爆発したときの集中線
shuchusen6 = entryEffectLife( spep_5+70, 906, 140, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_5+70,  shuchusen6,  0,  0);
setEffMoveKey(  spep_5+210,  shuchusen6,  0,  0);
setEffScaleKey(  spep_5+70,  shuchusen6,  1.6,  1.6);
setEffScaleKey(  spep_5+210,  shuchusen6,  1.6,  1.6);
setEffRotateKey(  spep_5+70,  shuchusen6,  0);
setEffRotateKey(  spep_5+210,  shuchusen6,  0);
setEffAlphaKey(  spep_5+70,  shuchusen6,  255);
setEffAlphaKey(  spep_5+210,  shuchusen6,  255);

--SE
playSe( spep_5+12, SE_09); --岩に激突
--playSe( spep_5+56, SE_15); --岩に激突
playSe( spep_5+76, SE_10); --岩に激突

-- ダメージ表示
dealDamage(spep_5+80);
endPhase(spep_5+210);

else

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 右手で溜め(120F)
------------------------------------------------------

spep_0 = 1;

--右手溜め(SP_01)
charge_R = entryEffect( spep_0, SP_01r, 0x100, -1, 0, 0); 
setEffMoveKey( spep_0, charge_R, 0, 0);
setEffMoveKey( spep_0+120, charge_R, 0, 0);
setEffScaleKey( spep_0, charge_R, -1, 1);
setEffScaleKey( spep_0+120, charge_R, -1, 1);
setEffRotateKey( spep_0,  charge_R,  0);
setEffRotateKey( spep_0+120,  charge_R,  0);
setEffAlphaKey( spep_0, charge_R, 255);
setEffAlphaKey( spep_0+84, charge_R, 255);
setEffAlphaKey( spep_0+86, charge_R, 0);
setEffAlphaKey( spep_0+120, charge_R, 0);

--集中線
shuchusen = entryEffectLife( spep_0+32, 906, 52, 0x100,  -1, 0, -60, -100);
setEffMoveKey(  spep_0+32,  shuchusen, -60, -100);
setEffMoveKey(  spep_0+84,  shuchusen, -60, -100);
setEffScaleKey(  spep_0+32,  shuchusen,  1.1,  1.1);
setEffScaleKey(  spep_0+84,  shuchusen,  1.1,  1.1);
setEffRotateKey(  spep_0+32,  shuchusen,  0);
setEffRotateKey(  spep_0+84,  shuchusen,  0);
setEffAlphaKey(  spep_0+32,  shuchusen,  255);
setEffAlphaKey(  spep_0+84,  shuchusen,  255);

playSe(spep_0+32, SE_14);
playSe(spep_0+62, SE_14);

spep_1 = spep_0 + 84;

------------------------------------------------------
-- 左手で溜め(100F)
------------------------------------------------------

--左手溜め(SP_02)
charge_L = entryEffect( spep_1, SP_02r, 0x100, -1, 0, 0); 
setEffMoveKey( spep_1, charge_L, 0, 0);
setEffMoveKey( spep_1+100, charge_L, 0, 0);
setEffScaleKey( spep_1, charge_L, -1, 1);
setEffScaleKey( spep_1+100, charge_L, -1, 1);
setEffRotateKey( spep_1,  charge_L,  0);
setEffRotateKey( spep_1+100,  charge_L,  0);
setEffAlphaKey( spep_1, charge_L, 255);
setEffAlphaKey( spep_1+70, charge_L, 255);
setEffAlphaKey( spep_1+72, charge_L, 0);
setEffAlphaKey( spep_1+100, charge_L, 0);

--集中線
shuchusen2 = entryEffectLife( spep_1+24, 906, 46, 0x100,  -1, 0, 60, -100);
setEffMoveKey(  spep_1+24,  shuchusen2, 60, -100);
setEffMoveKey(  spep_1+70,  shuchusen2, 60, -100);
setEffScaleKey(  spep_1+24,  shuchusen2,  1.1,  1.1);
setEffScaleKey(  spep_1+70,  shuchusen2,  1.1,  1.1);
setEffRotateKey(  spep_1+24,  shuchusen2,  0);
setEffRotateKey(  spep_1+70,  shuchusen2,  0);
setEffAlphaKey(  spep_1+24,  shuchusen2,  255);
setEffAlphaKey(  spep_1+70,  shuchusen2,  255);

playSe(spep_1+24, SE_14);
playSe(spep_1+54, SE_14);

spep_2 = spep_1 + 70;


------------------------------------------------------
-- 正面構え〜発射
------------------------------------------------------

--正面構え〜発射(SP_03)
shoot = entryEffect( spep_2, SP_03r, 0x80, -1, 0, 0); 
setEffMoveKey( spep_2, shoot, 0, 0);
setEffMoveKey( spep_2+220, shoot, 0, 0);
setEffScaleKey( spep_2, shoot, -1, 1);
setEffScaleKey( spep_2+220, shoot, -1, 1);
setEffRotateKey( spep_2,  shoot,  0);
setEffRotateKey( spep_2+220,  shoot,  0);
setEffAlphaKey( spep_2, shoot, 255);
setEffAlphaKey( spep_2+166, shoot, 255);
setEffAlphaKey( spep_2+168, shoot, 0);
setEffAlphaKey( spep_2+220, shoot, 0);

--集中線
shuchusen3 = entryEffectLife( spep_2+24, 906, 142, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+24,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+166,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+24,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_2+166,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_2+24,  shuchusen3,  0);
setEffRotateKey(  spep_2+166,  shuchusen3,  0);
setEffAlphaKey(  spep_2+24,  shuchusen3,  255);
setEffAlphaKey(  spep_2+166,  shuchusen3,  255);

--顔カットイン
--speff=entryEffect(spep_2+4,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+4,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGogo=entryEffectLife(spep_2+16,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+16,ctGogo,0,520,0);
setEffMoveKey(spep_2+88,ctGogo,0,520,0);

setEffScaleKey(spep_2+16, ctGogo, -0.7, 0.7);
setEffScaleKey(spep_2+86, ctGogo, -0.7, 0.7);
setEffScaleKey(spep_2+88, ctGogo, -1.8, 1.8);

setEffAlphaKey( spep_2 + 16, ctGogo, 255 );
setEffAlphaKey( spep_2 + 88, ctGogo, 255 );

setEffRotateKey(spep_2+16,ctGogo,0);
setEffRotateKey(spep_2+88,ctGogo,0);

playSe( spep_2+16, SE_04); --ゴゴゴ
playSe( spep_2+110, SE_06); --発射！

spep_3 = spep_2 + 166;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_3-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_3,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen4,  0);
setEffRotateKey(  spep_3+90,  shuchusen4,  0);
setEffAlphaKey(  spep_3,  shuchusen4,  255);
setEffAlphaKey(  spep_3+90,  shuchusen4,  255);

--***背景と白フェード***
entryFade( spep_3+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵を飲み込んで岩に飛んでく(120F)
------------------------------------------------------
--飛んでく(SP_04)
beam_F = entryEffect( spep_4, SP_04r, 0x100, -1, 0, 0); 
setEffMoveKey( spep_4, beam_F, 0, 0);
setEffMoveKey( spep_4+120, beam_F, 0, 0);
setEffScaleKey( spep_4, beam_F, 1, 1);
setEffScaleKey( spep_4+120, beam_F, 1, 1);
setEffRotateKey( spep_4,  beam_F,  0);
setEffRotateKey( spep_4+120,  beam_F,  0);
setEffAlphaKey( spep_4, beam_F, 255);
setEffAlphaKey( spep_4+86, beam_F, 255);
setEffAlphaKey( spep_4+88, beam_F, 0);
setEffAlphaKey( spep_4+120, beam_F, 0);

--背景(SP_06)
beam_R = entryEffect( spep_4, SP_06r, 0x80, -1, 0, 0); 
setEffMoveKey( spep_4, beam_R, 0, 0);
setEffMoveKey( spep_4+120, beam_R, 0, 0);
setEffScaleKey( spep_4, beam_R, 1, 1);
setEffScaleKey( spep_4+120, beam_R, 1, 1);
setEffRotateKey( spep_4,  beam_R,  0);
setEffRotateKey( spep_4+120,  beam_R,  0);
setEffAlphaKey( spep_4, beam_R, 255);
setEffAlphaKey( spep_4+86, beam_R, 255);
setEffAlphaKey( spep_4+88, beam_R, 0);
setEffAlphaKey( spep_4+120, beam_R, 0);

--奥行き付き流線
ryusen = entryEffectLife( spep_4, 924, 120, 0x80, -1, -500, 120); 
setEffMoveKey( spep_4, ryusen, -500, 120); 
setEffMoveKey( spep_4+120, ryusen, -500, 120); 
setEffScaleKey( spep_4, ryusen, 1.9, 1.5);
setEffScaleKey( spep_4+120, ryusen, 1.9, 1.5);
setEffRotateKey( spep_4,  ryusen,  23);
setEffRotateKey( spep_4+120,  ryusen,  23);
setEffAlphaKey( spep_4, ryusen, 255);
setEffAlphaKey( spep_4+120, ryusen, 255);

--岩(SP_05)
iwa = entryEffect( spep_4, SP_05r, 0x80, -1, 0, 0); 
setEffMoveKey( spep_4, iwa, 0, 0);
setEffMoveKey( spep_4+120, iwa, 0, 0);
setEffScaleKey( spep_4, iwa, 1, 1);
setEffScaleKey( spep_4+120, iwa, 1, 1);
setEffRotateKey( spep_4,  iwa,  0);
setEffRotateKey( spep_4+120,  iwa,  0);
setEffAlphaKey( spep_4, iwa, 255);
setEffAlphaKey( spep_4+86, iwa, 255);
setEffAlphaKey( spep_4+88, iwa, 0);
setEffAlphaKey( spep_4+120, iwa, 0);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 44, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 174.7, -157.9 , 0 );
setMoveKey( spep_4 + 2, 1, 168.1, -154.3 , 0 );
setMoveKey( spep_4 + 4, 1, 161.6, -150.7 , 0 );
setMoveKey( spep_4 + 6, 1, 155, -147.1 , 0 );
setMoveKey( spep_4 + 8, 1, 148.5, -143.5 , 0 );
setMoveKey( spep_4 + 10, 1, 141.9, -139.9 , 0 );
setMoveKey( spep_4 + 12, 1, 135.4, -136.2 , 0 );
setMoveKey( spep_4 + 14, 1, 128.8, -132.6 , 0 );
setMoveKey( spep_4 + 16, 1, 122.2, -129 , 0 );
setMoveKey( spep_4 + 18, 1, 115.7, -125.4 , 0 );
setMoveKey( spep_4 + 20, 1, 109.1, -121.8 , 0 );
setMoveKey( spep_4 + 22, 1, 102.6, -118.2 , 0 );
setMoveKey( spep_4 + 24, 1, 96, -114.6 , 0 );
setMoveKey( spep_4 + 26, 1, 89.4, -111 , 0 );
setMoveKey( spep_4 + 28, 1, 82.9, -107.4 , 0 );
setMoveKey( spep_4 + 30, 1, 76.3, -103.8 , 0 );
setMoveKey( spep_4 + 32, 1, 69.8, -100.2 , 0 );
setMoveKey( spep_4 + 34, 1, 63.2, -96.5 , 0 );
setMoveKey( spep_4 + 36, 1, 56.6, -92.9 , 0 );
setMoveKey( spep_4 + 38, 1, 50.1, -89.3 , 0 );
setMoveKey( spep_4 + 40, 1, 43.5, -85.7 , 0 );
setMoveKey( spep_4 + 42, 1, 37, -82.1 , 0 );
setMoveKey( spep_4 + 44, 1, 30.4, -78.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 2, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 14, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 16, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 18, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 24, 1, 0.86, 0.86 );
setScaleKey( spep_4 + 26, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 30, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_4 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 38, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 40, 1, 0.99, 0.99 );
setScaleKey( spep_4 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 44, 1, 1.02, 1.02 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 44, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--***背景と白フェード***
entryFade( spep_4+78, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_4, SE_07); --ビーム飛んでく

spep_5 = spep_4 + 86;

------------------------------------------------------
-- 締め爆発
------------------------------------------------------

--〆爆発(SP_07)
bomb = entryEffect( spep_5, SP_07r, 0x100, -1, 0, 0); 
setEffMoveKey( spep_5, bomb, 0, 0);
setEffMoveKey( spep_5+302, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1, 1);
setEffScaleKey( spep_5+302, bomb, 1, 1);
setEffRotateKey( spep_5,  bomb,  0);
setEffRotateKey( spep_5+302,  bomb,  0);
setEffAlphaKey( spep_5, bomb, 255);
setEffAlphaKey( spep_5+212, bomb, 255);
setEffAlphaKey( spep_5+214, bomb, 0);
setEffAlphaKey( spep_5+302, bomb, 0);

--ビームが岩に当たったときの集中線
shuchusen5 = entryEffectLife( spep_5+12, 906, 24, 0x100, -1, 0, -230, 0);
setEffMoveKey(  spep_5+12,  shuchusen5, -230, 0);
setEffMoveKey(  spep_5+36,  shuchusen5, -230, 0);
setEffScaleKey(  spep_5+12,  shuchusen5,  1.5,  1.2);
setEffScaleKey(  spep_5+36,  shuchusen5,  1.5,  1.2);
setEffRotateKey(  spep_5+12,  shuchusen5,  0);
setEffRotateKey(  spep_5+36,  shuchusen5,  0);
setEffAlphaKey(  spep_5+12,  shuchusen5,  255);
setEffAlphaKey(  spep_5+36,  shuchusen5,  255);

--ビームが爆発したときの集中線
shuchusen6 = entryEffectLife( spep_5+70, 906, 140, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_5+70,  shuchusen6,  0,  0);
setEffMoveKey(  spep_5+210,  shuchusen6,  0,  0);
setEffScaleKey(  spep_5+70,  shuchusen6,  1.6,  1.6);
setEffScaleKey(  spep_5+210,  shuchusen6,  1.6,  1.6);
setEffRotateKey(  spep_5+70,  shuchusen6,  0);
setEffRotateKey(  spep_5+210,  shuchusen6,  0);
setEffAlphaKey(  spep_5+70,  shuchusen6,  255);
setEffAlphaKey(  spep_5+210,  shuchusen6,  255);

--SE
playSe( spep_5+12, SE_09); --岩に激突
--playSe( spep_5+56, SE_15); --岩に激突
playSe( spep_5+76, SE_10); --岩に激突

-- ダメージ表示
dealDamage(spep_5+80);
endPhase(spep_5+210);

end