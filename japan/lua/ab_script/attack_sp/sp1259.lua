--超サイヤ人4ベジータ(ファイナルフラッシュ)

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

SE_03k = 1000; --パンチ
SE_04k = 1001; --蹴り
SE_05k = 1009; --強いパンチ
SE_06k = 1010; --強い蹴り

--味方側
SP_01 = 152874; --正面突進
SP_02 = 152875; --ボコ殴り前
SP_03 = 152876; --ボコ殴り奥
SP_04 = 152877; --ビル破壊前
SP_05 = 152878; --ビル破壊奥
SP_06 = 152879; --敵がビルに激突前
SP_07 = 152880; --敵がビルに激突奥
SP_08 = 152881; --かめはめ波構え
SP_09 = 152882; --発射
SP_10 = 152883; --敵に迫る前
SP_11 = 152884; --敵に迫る奥
SP_12 = 190003; --ギャン
SP_13 = 152885; --大爆発

--敵側
SP_01r = 152886; --正面突進
SP_02r = 152887; --ボコ殴り前
SP_03r = 152888; --ボコ殴り奥
SP_04r = 152889; --ビル破壊前
SP_05r = 152890; --ビル破壊奥
SP_06r = 152891; --敵がビルに激突前
SP_07r = 152892; --敵がビルに激突奥
SP_08r = 152881; --かめはめ波構え
SP_09r = 152893; --発射
SP_10r = 152894; --敵に迫る前
SP_11r = 152895; --敵に迫る奥
SP_12r = 190003; --ギャン
SP_13r = 152896; --大爆発

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
-- 正面ダッシュ(70F)
------------------------------------------------------

spep_0 = 1;

--正面ダッシュ(SP_01)
dash = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_0, dash, 0, 0);
setEffMoveKey( spep_0+70, dash, 0, 0);
setEffScaleKey( spep_0, dash, 1, 1);
setEffScaleKey( spep_0+70, dash, 1, 1);
setEffRotateKey( spep_0,  dash,  0);
setEffRotateKey( spep_0+70,  dash,  0);
setEffAlphaKey( spep_0, dash, 255);
setEffAlphaKey( spep_0+70, dash, 255);

--集中線
shuchusen = entryEffectLife( spep_0, 906, 70, 0x100,  -1, 0,  0, 0);
setEffMoveKey(  spep_0,  shuchusen,  0,  0);
setEffMoveKey(  spep_0+70,  shuchusen,  0,  0);
setEffScaleKey(  spep_0,  shuchusen,  1.1,  2.3);
setEffScaleKey(  spep_0+48,  shuchusen,  1.1,  2.3);
setEffScaleKey(  spep_0+50,  shuchusen,  1.1,  1.1);
setEffScaleKey(  spep_0+70,  shuchusen,  1.1,  1.1);
setEffRotateKey(  spep_0,  shuchusen,  0);
setEffRotateKey(  spep_0+70,  shuchusen,  0);
setEffAlphaKey(  spep_0,  shuchusen,  255);
setEffAlphaKey(  spep_0+70,  shuchusen,  255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_0 + 0,  10012, 56, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_0 + 0, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctZuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctZuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 10, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 12, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 14, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 16, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 18, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 20, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 22, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 24, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 26, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 28, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 30, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 32, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 34, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 36, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 38, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 40, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 42, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 44, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 46, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 48, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 50, ctZuo, 167.1, 345 , 0 );
setEffMoveKey( spep_0 + 52, ctZuo, 153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 54, ctZuo, 193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 56, ctZuo, 207.3, 333.2 , 0 );

setEffScaleKey( spep_0 + 0, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctZuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctZuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 48, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 50, ctZuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 52, ctZuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 54, ctZuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 56, ctZuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctZuo, 27.2 );
setEffRotateKey( spep_0 + 56, ctZuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctZuo, 255 );
setEffAlphaKey( spep_0 + 48, ctZuo, 255 );
setEffAlphaKey( spep_0 + 50, ctZuo, 191 );
setEffAlphaKey( spep_0 + 52, ctZuo, 128 );
setEffAlphaKey( spep_0 + 54, ctZuo, 64 );
setEffAlphaKey( spep_0 + 56, ctZuo, 0 );

--白フェード
entryFade( spep_0+60, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe(spep_0, SE_04);

spep_1 = spep_0 + 70;

------------------------------------------------------
-- ボコ殴り(340F)
------------------------------------------------------

--ボコ殴り前(SP_02)
rush_f = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, rush_f, 0, 0);
setEffMoveKey( spep_1+246, rush_f, 0, 0);
setEffScaleKey( spep_1, rush_f, 1, 1);
setEffScaleKey( spep_1+246, rush_f, 1, 1);
setEffRotateKey( spep_1, rush_f, 0);
setEffRotateKey( spep_1+246, rush_f, 0);
setEffAlphaKey( spep_1, rush_f, 255);
setEffAlphaKey( spep_1+246, rush_f, 255);

--ボコ殴り奥(SP_03)
rush_b = entryEffect( spep_1, SP_03, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, rush_b, 0, 0);
setEffMoveKey( spep_1+246, rush_b, 0, 0);
setEffScaleKey( spep_1, rush_b, 1, 1);
setEffScaleKey( spep_1+246, rush_b, 1, 1);
setEffRotateKey( spep_1, rush_b, 0);
setEffRotateKey( spep_1+246, rush_b, 0);
setEffAlphaKey( spep_1, rush_b, 255);
setEffAlphaKey( spep_1+246, rush_b, 255);

--ビル破壊奥(SP_05)
crash_b = entryEffect( spep_1+246, SP_05, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1+246, crash_b, 0, 0);
setEffMoveKey( spep_1+336, crash_b, 0, 0);
setEffScaleKey( spep_1+246, crash_b, 1, 1);
setEffScaleKey( spep_1+336, crash_b, 1, 1);
setEffRotateKey( spep_1+246, crash_b, 0);
setEffRotateKey( spep_1+336, crash_b, 0);
setEffAlphaKey( spep_1+246, crash_b, 255);
setEffAlphaKey( spep_1+336, crash_b, 255);

--書き文字(カッ)
ctCa = entryEffectLife( spep_1-6 + 230,  10004, 26, 0x100, -1, 0, 104.2, 312.5 );
setEffMoveKey( spep_1-6 + 230, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 232, ctCa, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1-6 + 234, ctCa, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1-6 + 236, ctCa, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1-6 + 238, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 240, ctCa, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 242, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 244, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 246, ctCa, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1-6 + 248, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 250, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 252, ctCa, 104.3, 312.3 , 0 );
setEffMoveKey( spep_1-6 + 254, ctCa, 95.8, 328.2 , 0 );
setEffMoveKey( spep_1-6 + 256, ctCa, 94.8, 330.2 , 0 );

setEffScaleKey( spep_1-6 + 230, ctCa, 1.02, 1.02 );
setEffScaleKey( spep_1-6 + 232, ctCa, 2.98, 2.98 );
setEffScaleKey( spep_1-6 + 234, ctCa, 4.16, 4.16 );
setEffScaleKey( spep_1-6 + 236, ctCa, 2.61, 2.61 );
setEffScaleKey( spep_1-6 + 238, ctCa, 2.62, 2.62 );
setEffScaleKey( spep_1-6 + 240, ctCa, 2.63, 2.63 );
setEffScaleKey( spep_1-6 + 242, ctCa, 2.64, 2.64 );
setEffScaleKey( spep_1-6 + 244, ctCa, 2.64, 2.64 );
setEffScaleKey( spep_1-6 + 246, ctCa, 2.65, 2.65 );
setEffScaleKey( spep_1-6 + 248, ctCa, 2.66, 2.66 );
setEffScaleKey( spep_1-6 + 250, ctCa, 2.67, 2.67 );
setEffScaleKey( spep_1-6 + 252, ctCa, 3.88, 3.88 );
setEffScaleKey( spep_1-6 + 254, ctCa, 4.79, 4.79 );
setEffScaleKey( spep_1-6 + 256, ctCa, 5.39, 5.39 );

setEffRotateKey( spep_1-6 + 230, ctCa, 35.2 );
setEffRotateKey( spep_1-6 + 256, ctCa, 35.2 );

setEffAlphaKey( spep_1-6 + 230, ctCa, 64 );
setEffAlphaKey( spep_1-6 + 232, ctCa, 183 );
setEffAlphaKey( spep_1-6 + 234, ctCa, 255 );
setEffAlphaKey( spep_1-6 + 250, ctCa, 255 );
setEffAlphaKey( spep_1-6 + 252, ctCa, 142 );
setEffAlphaKey( spep_1-6 + 254, ctCa, 57 );
setEffAlphaKey( spep_1-6 + 256, ctCa, 0 );

--ビル破壊前(SP_04)
crash_f = entryEffect( spep_1+246, SP_04, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1+246, crash_f, 0, 0);
setEffMoveKey( spep_1+336, crash_f, 0, 0);
setEffScaleKey( spep_1+246, crash_f, 1, 1);
setEffScaleKey( spep_1+336, crash_f, 1, 1);
setEffRotateKey( spep_1+246, crash_f, 0);
setEffRotateKey( spep_1+336, crash_f, 0);
setEffAlphaKey( spep_1+246, crash_f, 255);
setEffAlphaKey( spep_1+336, crash_f, 255);

--横流線
ryusen = entryEffectLife( spep_1, 914, 124, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffMoveKey(  spep_1+124,  ryusen,  0,  0);
setEffScaleKey(  spep_1,  ryusen,  1.3,  1.9);
setEffScaleKey(  spep_1+124,  ryusen,  1.3,  1.9);
setEffRotateKey(  spep_1,  ryusen,  0);
setEffRotateKey(  spep_1+124,  ryusen,  0);
setEffAlphaKey(  spep_1,  ryusen,  255);
setEffAlphaKey(  spep_1+124,  ryusen,  255);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
    
    --敵の位置固定
    setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );
    
    setRotateKey( SP_dodge, 1, 0 );
    setRotateKey( SP_dodge+8, 1, 0 );
    
    setScaleKey( SP_dodge, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );
    
    --changeAnime(  SP_dodge+9,    1,  100);
    setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
    setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
    setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
    setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
    setRotateKey(   SP_dodge+9,   1, 0);
    setRotateKey(   SP_dodge+10,   1, 0);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------

--殴られる敵の動き
setDisp( spep_1, 1, 1 );
setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+257,  1,  1);
setDisp(  spep_1+274,  1,  0);  --消す
setShakeChara(spep_1+40,  1,  298,  20); --揺れ

changeAnime( spep_1, 1, 100 );
changeAnime( spep_1-3+32, 1, 104 );
changeAnime( spep_1-3+44, 1, 108 );  --くの字
changeAnime( spep_1-3+52, 1, 104 );
changeAnime( spep_1-3+54, 1, 106 );  
changeAnime( spep_1-3+62, 1, 108 );
changeAnime( spep_1-3+70, 1, 106 );
changeAnime( spep_1-3+78, 1, 108 );
changeAnime( spep_1-3+90, 1, 106 );
changeAnime( spep_1-3+98, 1, 108 );
changeAnime( spep_1-3+104, 1, 104 );
changeAnime( spep_1-3+108, 1, 108 );
changeAnime( spep_1-3+114, 1, 106 );
changeAnime( spep_1-3+122, 1, 108 );
changeAnime( spep_1-3+130, 1, 104 );
changeAnime( spep_1-3+132, 1, 106 );
changeAnime( spep_1-3+140, 1, 108 );
changeAnime( spep_1-3+148, 1, 106 );
changeAnime( spep_1-3+156, 1, 108 );
changeAnime( spep_1-3+168, 1, 106 );
changeAnime( spep_1-3+176, 1, 108 );
changeAnime( spep_1-3+182, 1, 104 );
changeAnime( spep_1-3+186, 1, 108 );
changeAnime( spep_1-3+192, 1, 106 );
changeAnime( spep_1-3+200, 1, 108 );
changeAnime( spep_1-3+208, 1, 104 );
changeAnime( spep_1-3+210, 1, 106 );
changeAnime( spep_1-3+218, 1, 108 );
changeAnime(spep_1-3+257,  1,  107);   --手前吹っ飛び

setMoveKey( spep_1 + 0, 1, -1000.8, 14.5 , 0 );
--[[setMoveKey( spep_1 -3 + 2, 1, -667.6, 14.6 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -561.6, 14.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -454.9, 14.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -347.4, 14.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -239.1, 14.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -130.1, 14.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -20.3, 14.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 0.9, 14.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 22.3, 15 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 43.8, 15 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 65.4, 15.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 87.2, 15.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 109.2, 15.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 131.3, 15.2 , 0 );]]
setMoveKey( spep_1 -3 + 31, 1, 137.9, 16.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 152.2, 23 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 148, 24.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 144.7, 26.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 142.3, 28.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 140.8, 30.2 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 140.1, 32 , 0 );
setMoveKey(spep_1-3+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1-3+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1-3+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1-3+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1-3+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1-3+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1-3+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1-3+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1-3+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1-3+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1-3+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1-3+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1-3+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1-3+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1-3+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1-3+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1-3+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1-3+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1-3+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1-3+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1-3+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1-3+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1-3+88, 1, 238.5, 28.5 , 0 );

setMoveKey(spep_1-3+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1-3+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1-3+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1-3+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1-3+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1-3+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1-3+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1-3+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1-3+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1-3+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1-3+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1-3+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1-3+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1-3+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1-3+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1-3+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1-3+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1-3+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1-3+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1-3+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1-3+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1-3+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1-3+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1-3+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1-3+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1-3+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1-3+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1-3+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1-3+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1-3+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1-3+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1-3+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1-3+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1-3+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1-3+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1-3+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1-3+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1-3+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1-3+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1-3+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1-3+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1-3+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1-3+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1-3+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1-3+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1-3+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1-3+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1-3+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1-3+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1-3+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1-3+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1-3+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1-3+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1-3+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1-3+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1-3+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1-3+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1-3+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1-3+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1-3+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1-3+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1-3+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1-3+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1-3+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1-3+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1-3+224, 1, 13.3, 179.6 , 0 );
setMoveKey(spep_1-3+258, 1, -34.2, -24 , 0 );
setMoveKey(spep_1-3+260, 1, -30.1, -34 , 0 );
setMoveKey(spep_1-3+262, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1-3+264, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1-3+266, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1-3+268, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1-3+270, 1, -38, -185.1 , 0 );
setMoveKey(spep_1-3+272, 1, -30, -264.1 , 0 );
setMoveKey(spep_1-3+274, 1, -33.9, -355 , 0 );
setMoveKey(spep_1-3+276, 1, -29.9, -438 , 0 );
setMoveKey(spep_1-3+278, 1, -37.8, -533 , 0 );
setMoveKey(spep_1-3+280, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+282, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+284, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+286, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+288, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+290, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+292, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+294, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+296, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+298, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+300, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+302, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+304, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+306, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+308, 1, -29.8, -612 , 0 );

setMoveKey(spep_1-3+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+337, 1, -43.2, 161.4 , 0 );

a = 0.1

setScaleKey(spep_1-3+0, 1, 1.29-a, 1.29-a );
setScaleKey(spep_1-3+2, 1, 1.29-a, 1.29-a );
setScaleKey(spep_1-3+4, 1, 1.3-a, 1.3-a );
setScaleKey(spep_1-3+8, 1, 1.3-a, 1.3-a );
setScaleKey(spep_1-3+10, 1, 1.31-a, 1.31-a );
setScaleKey(spep_1-3+12, 1, 1.31-a, 1.31-a );
setScaleKey(spep_1-3+14, 1, 1.32-a, 1.32-a );
setScaleKey(spep_1-3+18, 1, 1.32-a, 1.32-a );
setScaleKey(spep_1-3+20, 1, 1.33-a, 1.33-a );
setScaleKey(spep_1-3+24, 1, 1.33-a, 1.33-a );
setScaleKey(spep_1-3+26, 1, 1.34-a, 1.34-a );
setScaleKey(spep_1-3+28, 1, 1.34-a, 1.34-a );
setScaleKey(spep_1-3+30, 1, 1.5-a, 1.5-a );
setScaleKey(spep_1-3+32, 1, 1.47-a, 1.47-a );
setScaleKey(spep_1-3+34, 1, 1.53-a, 1.53-a );
setScaleKey(spep_1-3+36, 1, 1.59-a, 1.59-a );
setScaleKey(spep_1-3+38, 1, 1.65-a, 1.65-a );
setScaleKey(spep_1-3+40, 1, 1.72-a, 1.72-a );
setScaleKey(spep_1-3+42, 1, 1.78-a, 1.78-a );
setScaleKey(spep_1-3+44, 1, 1.83-a, 1.83-a );
setScaleKey(spep_1-3+46, 1, 1.84-a, 1.84-a );
setScaleKey(spep_1-3+48, 1, 1.85-a, 1.85-a );
setScaleKey(spep_1-3+50, 1, 1.86-a, 1.86-a );
setScaleKey(spep_1-3+52, 1, 1.87-a, 1.87-a );
setScaleKey(spep_1-3+54, 1, 1.74-a, 1.74-a );
setScaleKey(spep_1-3+56, 1, 1.75-a, 1.75-a );
setScaleKey(spep_1-3+58, 1, 1.76-a, 1.76-a );
setScaleKey(spep_1-3+60, 1, 1.76-a, 1.76-a );
setScaleKey(spep_1-3+62, 1, 1.91-a, 1.91-a );
setScaleKey(spep_1-3+64, 1, 1.92-a, 1.92-a );
setScaleKey(spep_1-3+66, 1, 1.93-a, 1.93-a );
setScaleKey(spep_1-3+68, 1, 1.93-a, 1.93-a );
setScaleKey(spep_1-3+70, 1, 1.81-a, 1.81-a );
setScaleKey(spep_1-3+72, 1, 1.81-a, 1.81-a );
setScaleKey(spep_1-3+74, 1, 1.82-a, 1.82-a );
setScaleKey(spep_1-3+76, 1, 1.83-a, 1.83-a );
setScaleKey(spep_1-3+78, 1, 1.98-a, 1.98-a );
setScaleKey(spep_1-3+80, 1, 1.99-a, 1.99-a );
setScaleKey(spep_1-3+82, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+84, 1, 2.01-a, 2.01-a );
setScaleKey(spep_1-3+86, 1, 2.01-a, 2.01-a );
setScaleKey(spep_1-3+88, 1, 2.02-a, 2.02-a );
setScaleKey(spep_1-3+90, 1, 1.89-a, 1.89-a );
setScaleKey(spep_1-3+92, 1, 1.89-a, 1.89-a );
setScaleKey(spep_1-3+94, 1, 1.9-a, 1.9-a );
setScaleKey(spep_1-3+96, 1, 1.91-a, 1.91-a );
setScaleKey(spep_1-3+98, 1, 2.07-a, 2.07-a );
setScaleKey(spep_1-3+100, 1, 2.08-a, 2.08-a );
setScaleKey(spep_1-3+102, 1, 2.08-a, 2.08-a );
setScaleKey(spep_1-3+104, 1, 2.1-a, 2.1-a );
setScaleKey(spep_1-3+106, 1, 2.11-a, 2.11-a );
setScaleKey(spep_1-3+108, 1, 2.11-a, 2.11-a );
setScaleKey(spep_1-3+110, 1, 2.12-a, 2.12-a );
setScaleKey(spep_1-3+112, 1, 2.13-a, 2.13-a );
setScaleKey(spep_1-3+114, 1, 1.98-a, 1.98-a );
setScaleKey(spep_1-3+116, 1, 1.99-a, 1.99-a );
setScaleKey(spep_1-3+118, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+119, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+120, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+122, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+128, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+130, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+132, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+138, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+140, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+146, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+148, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+154, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+156, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+166, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+168, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+174, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+176, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+180, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+182, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+184, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+186, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+190, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+192, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+198, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+200, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+206, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+208, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+210, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+218, 1, 0.85-a, 0.85-a );

setScaleKey(spep_1-3+258, 1, 0.21, 0.21 );
setScaleKey(spep_1-3+260, 1, 0.37, 0.37 );
setScaleKey(spep_1-3+262, 1, 0.53, 0.53 );
setScaleKey(spep_1-3+264, 1, 0.69, 0.69 );
setScaleKey(spep_1-3+266, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+268, 1, 1.01, 1.01 );
setScaleKey(spep_1-3+270, 1, 1.4, 1.4 );
setScaleKey(spep_1-3+272, 1, 1.79, 1.79 );
setScaleKey(spep_1-3+274, 1, 2.17, 2.17 );
setScaleKey(spep_1-3+276, 1, 2.56, 2.56 );
setScaleKey(spep_1-3+278, 1, 2.95, 2.95 );
setScaleKey(spep_1-3+280, 1, 3.34, 3.34 );

setRotateKey(spep_1-3, 1, 0 );
setRotateKey(spep_1-3+18, 1, 0 );
setRotateKey(spep_1-3+20, 1, 0 );
setRotateKey(spep_1-3+30, 1, 0 );
setRotateKey(spep_1-3+32, 1, -2 );
setRotateKey(spep_1-3+34, 1, -1.6 );
setRotateKey(spep_1-3+36, 1, -1.2 );
setRotateKey(spep_1-3+38, 1, -0.8 );
setRotateKey(spep_1-3+40, 1, -0.4 );
setRotateKey(spep_1-3+42, 1, 0 );
setRotateKey(spep_1-3+44, 1, -0.2 );
setRotateKey(spep_1-3+50, 1, -0.2 );
setRotateKey(spep_1-3+52, 1, -2 );
setRotateKey(spep_1-3+54, 1, -41 );
setRotateKey(spep_1-3+56, 1, -37.7 );
setRotateKey(spep_1-3+58, 1, -34.4 );
setRotateKey(spep_1-3+60, 1, -31.1 );
setRotateKey(spep_1-3+62, 1, -15.9 );
setRotateKey(spep_1-3+64, 1, -18.3 );
setRotateKey(spep_1-3+66, 1, -20.8 );
setRotateKey(spep_1-3+68, 1, -23.2 );
setRotateKey(spep_1-3+70, 1, -41 );
setRotateKey(spep_1-3+72, 1, -40 );
setRotateKey(spep_1-3+74, 1, -39.1 );
setRotateKey(spep_1-3+76, 1, -38.1 );
setRotateKey(spep_1-3+78, 1, -5.7 );
setRotateKey(spep_1-3+82, 1, -5.7 );
setRotateKey(spep_1-3+84, 1, -3.8 );
setRotateKey(spep_1-3+86, 1, -0.5 );
setRotateKey(spep_1-3+88, 1, 2.9 );
setRotateKey(spep_1-3+90, 1, -41 );
setRotateKey(spep_1-3+92, 1, -40 );
setRotateKey(spep_1-3+94, 1, -39.1 );
setRotateKey(spep_1-3+96, 1, -38.1 );
setRotateKey(spep_1-3+98, 1, -5.7 );
setRotateKey(spep_1-3+102, 1, -5.7 );
setRotateKey(spep_1-3+104, 1, -2 );
setRotateKey(spep_1-3+106, 1, -2 );
setRotateKey(spep_1-3+108, 1, -5.7 );
setRotateKey(spep_1-3+112, 1, -5.7 );
setRotateKey(spep_1-3+114, 1, -41 );
setRotateKey(spep_1-3+116, 1, -40.4 );
setRotateKey(spep_1-3+118, 1, -39.7 );
setRotateKey(spep_1-3+120, 1, -39.1 );
setRotateKey(spep_1-3+122, 1, -0.2 );
setRotateKey(spep_1-3+128, 1, -0.2 );
setRotateKey(spep_1-3+130, 1, -2 );
setRotateKey(spep_1-3+132, 1, -41 );
setRotateKey(spep_1-3+134, 1, -37.7 );
setRotateKey(spep_1-3+136, 1, -34.4 );
setRotateKey(spep_1-3+138, 1, -31.1 );
setRotateKey(spep_1-3+140, 1, -15.9 );
setRotateKey(spep_1-3+142, 1, -18.3 );
setRotateKey(spep_1-3+144, 1, -20.8 );
setRotateKey(spep_1-3+146, 1, -23.2 );
setRotateKey(spep_1-3+148, 1, -41 );
setRotateKey(spep_1-3+150, 1, -40 );
setRotateKey(spep_1-3+152, 1, -39.1 );
setRotateKey(spep_1-3+154, 1, -38.1 );
setRotateKey(spep_1-3+156, 1, -5.7 );
setRotateKey(spep_1-3+160, 1, -5.7 );
setRotateKey(spep_1-3+162, 1, -3.8 );
setRotateKey(spep_1-3+164, 1, -0.5 );
setRotateKey(spep_1-3+166, 1, 2.9 );
setRotateKey(spep_1-3+168, 1, -41 );
setRotateKey(spep_1-3+170, 1, -40 );
setRotateKey(spep_1-3+172, 1, -39.1 );
setRotateKey(spep_1-3+174, 1, -38.1 );
setRotateKey(spep_1-3+176, 1, -5.7 );
setRotateKey(spep_1-3+180, 1, -5.7 );
setRotateKey(spep_1-3+182, 1, -2 );
setRotateKey(spep_1-3+184, 1, -2 );
setRotateKey(spep_1-3+186, 1, -5.7 );
setRotateKey(spep_1-3+190, 1, -5.7 );
setRotateKey(spep_1-3+192, 1, -41 );
setRotateKey(spep_1-3+194, 1, -40.4 );
setRotateKey(spep_1-3+196, 1, -39.7 );
setRotateKey(spep_1-3+198, 1, -39.1 );
setRotateKey(spep_1-3+200, 1, -0.2 );
setRotateKey(spep_1-3+206, 1, -0.2 );
setRotateKey(spep_1-3+208, 1, -2 );
setRotateKey(spep_1-3+210, 1, -41 );
setRotateKey(spep_1-3+212, 1, -37.7 );
setRotateKey(spep_1-3+214, 1, -34.4 );
setRotateKey(spep_1-3+216, 1, -31.1 );
setRotateKey(spep_1-3+218, 1, -15.9 );
setRotateKey(spep_1-3+220, 1, -18.3 );
setRotateKey(spep_1-3+222, 1, -20.8 );
setRotateKey(spep_1-3+224, 1, -23.2 );


setRotateKey(spep_1-3+258, 1, 4.7 );
setRotateKey(spep_1-3+262, 1, 4.7 );
setRotateKey(spep_1-3+264, 1, 4.6 );
setRotateKey(spep_1-3+272, 1, 4.6 );
setRotateKey(spep_1-3+274, 1, 4.7 );

--集中線
shuchusen2 = entryEffectLife( spep_1-6+48, 906, 232, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1-6+48,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1-6+280,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1-6+48,  shuchusen2,  1.3,  1.9);
setEffScaleKey(  spep_1-6+280,  shuchusen2,  1.3,  1.9);
setEffRotateKey(  spep_1-6+48,  shuchusen2,  0);
setEffRotateKey(  spep_1-6+280,  shuchusen2,  0);
setEffAlphaKey(  spep_1-6+48,  shuchusen2,  255);
setEffAlphaKey(  spep_1-6+280,  shuchusen2,  255);



--書き文字(ドガガガッ)
ctDoga = entryEffectLife( spep_1 + 46,  10017, 168, 0x100, -1, 0, 12, 370.7 );
setEffMoveKey( spep_1 + 46, ctDoga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ctDoga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ctDoga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ctDoga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ctDoga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 212, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 214, ctDoga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 46, ctDoga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ctDoga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ctDoga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ctDoga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ctDoga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ctDoga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 214, ctDoga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 46, ctDoga, 14.5 );
setEffRotateKey( spep_1 + 214, ctDoga, 14.5 );

setEffAlphaKey( spep_1 + 46, ctDoga, 255 );
setEffAlphaKey( spep_1 + 206, ctDoga, 255 );
setEffAlphaKey( spep_1 + 208, ctDoga, 191 );
setEffAlphaKey( spep_1 + 210, ctDoga, 128 );
setEffAlphaKey( spep_1 + 212, ctDoga, 64 );
setEffAlphaKey( spep_1 + 214, ctDoga, 0 );

--白フェード
entryFade( spep_1-6+48, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 230);     -- white fade

entryFade( spep_1-6+124, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 230);     -- white fade

entryFade( spep_1+252, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_1+312, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 342, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --黒　背景

--SE
playSe(  spep_1,  SE_04);
playSe(  spep_1+42,  1000);--パンチ
playSe(  spep_1+50,  1004);--振りかぶり
playSe(  spep_1+52,  1001);--パンチ
playSe(  spep_1+60,  1007);--蹴り
playSe(  spep_1+68,  1008);--蹴り
playSe(  spep_1+76,  1000);--パンチ
playSe(  spep_1+82,  1007);--蹴り
playSe(  spep_1+88,  1008);--蹴り
playSe(  spep_1+96,  1000);--パンチ
playSe(  spep_1+104,  1004);--振りかぶり
playSe(  spep_1+106,  1001);--パンチ
--ここまでアップ

playSe(  spep_1+126,  1000);--パンチ
playSe(  spep_1+132,  1001);--パンチ
playSe(  spep_1+138,  1007);--蹴り
playSe(  spep_1+146,  1008);--蹴り
playSe(  spep_1+154,  1001);--パンチ
playSe(  spep_1+160,  1007);--蹴り
playSe(  spep_1+166,  1008);--蹴り
playSe(  spep_1+172,  1004);--振りかぶり
playSe(  spep_1+174,  1001);--パンチ
playSe(  spep_1+184,  1000);--パンチ
playSe(  spep_1+190,  1007);--蹴り
playSe(  spep_1+198,  1001);--パンチ
playSe(  spep_1+204,  1007);--蹴り
playSe(  spep_1+210,  1008);--蹴り
playSe(  spep_1+226,  1017);--蹴り
playSe(  spep_1+246,  1011);--ビル破壊音

spep_2 = spep_1 + 320;

------------------------------------------------------
-- 敵叩きつけ→かめはめ波構え(280F)
------------------------------------------------------
--敵がビルに激突前(SP_06)
hit_f = entryEffect( spep_2, SP_06, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, hit_f, 0, 0);
setEffMoveKey( spep_2+80, hit_f, 0, 0);
setEffScaleKey( spep_2, hit_f, 1, 1);
setEffScaleKey( spep_2+80, hit_f, 1, 1);
setEffRotateKey( spep_2, hit_f, 0);
setEffRotateKey( spep_2+80, hit_f, 0);
setEffAlphaKey( spep_2, hit_f, 255);
setEffAlphaKey( spep_2+80, hit_f, 255);

--敵がビルに激突奥(SP_07)
hit_b = entryEffect( spep_2, SP_07, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_2, hit_b, 0, 0);
setEffMoveKey( spep_2+80, hit_b, 0, 0);
setEffScaleKey( spep_2, hit_b, 1, 1);
setEffScaleKey( spep_2+80, hit_b, 1, 1);
setEffRotateKey( spep_2, hit_b, 0);
setEffRotateKey( spep_2+80, hit_b, 0);
setEffAlphaKey( spep_2, hit_b, 255);
setEffAlphaKey( spep_2+80, hit_b, 255);

--かめはめ波構え(SP_08)
charge = entryEffect( spep_2+76, SP_08, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2+76, charge, 0, 0);
setEffMoveKey( spep_2+176, charge, 0, 0);
setEffScaleKey( spep_2+76, charge, 1, 1);
setEffScaleKey( spep_2+176, charge, 1, 1);
setEffRotateKey( spep_2+76, charge, 0);
setEffRotateKey( spep_2+176, charge, 0);
setEffAlphaKey( spep_2+76, charge, 255);
setEffAlphaKey( spep_2+176, charge, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2+26, 906, 54, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+26,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+80,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+26,  shuchusen2,  1.1,  1.4);
setEffScaleKey(  spep_2+80,  shuchusen2,  1.1,  1.4);
setEffRotateKey(  spep_2+26,  shuchusen2,  0);
setEffRotateKey(  spep_2+80,  shuchusen2,  0);
setEffAlphaKey(  spep_2+26,  shuchusen2,  255);
setEffAlphaKey(  spep_2+80,  shuchusen2,  255);

--集中線
shuchusen3 = entryEffectLife( spep_2+106, 906, 124, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+106,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+230,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+106,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_2+230,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_2+106,  shuchusen3,  0);
setEffRotateKey(  spep_2+230,  shuchusen3,  0);
setEffAlphaKey(  spep_2+106,  shuchusen3,  255);
setEffAlphaKey(  spep_2+230,  shuchusen3,  255);

--顔カットイン
speff=entryEffect(spep_2+110,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+110,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGogo=entryEffectLife(spep_2+122,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+122,ctGogo,0,520,0);
setEffMoveKey(spep_2+194,ctGogo,0,520,0);

setEffScaleKey(spep_2+122, ctGogo, 0.7, 0.7);
setEffScaleKey(spep_2+192, ctGogo, 0.7, 0.7);
setEffScaleKey(spep_2+194, ctGogo, 1.8, 1.8);

setEffAlphaKey( spep_2 + 122, ctGogo, 255 );
setEffAlphaKey( spep_2 + 194, ctGogo, 255 );

setEffRotateKey(spep_2+122,ctGogo,0);
setEffRotateKey(spep_2+194,ctGogo,0);

--書き文字(ドゴォンッ)
ctDogo = entryEffectLife( spep_2 + 26,  10018, 38, 0x100, -1, 0, -81.8, 345.2 );
setEffMoveKey( spep_2 + 26, ctDogo, -81.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 28, ctDogo, -80, 344.7 , 0 );
setEffMoveKey( spep_2 + 30, ctDogo, -80, 344.6 , 0 );
setEffMoveKey( spep_2 + 32, ctDogo, -83.4, 345.3 , 0 );
setEffMoveKey( spep_2 + 34, ctDogo, -80, 344.7 , 0 );
setEffMoveKey( spep_2 + 36, ctDogo, -82.9, 345.3 , 0 );
setEffMoveKey( spep_2 + 38, ctDogo, -80.1, 344.8 , 0 );
setEffMoveKey( spep_2 + 40, ctDogo, -82.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 42, ctDogo, -80.1, 344.7 , 0 );
setEffMoveKey( spep_2 + 44, ctDogo, -82.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 46, ctDogo, -80.1, 344.6 , 0 );
setEffMoveKey( spep_2 + 48, ctDogo, -82.7, 345.1 , 0 );
setEffMoveKey( spep_2 + 50, ctDogo, -80.1, 344.5 , 0 );
setEffMoveKey( spep_2 + 52, ctDogo, -80, 344.5 , 0 );
setEffMoveKey( spep_2 + 54, ctDogo, -82.6, 345 , 0 );
setEffMoveKey( spep_2 + 56, ctDogo, -80.1, 344.5 , 0 );
setEffMoveKey( spep_2 + 58, ctDogo, -82.6, 345.1 , 0 );
setEffMoveKey( spep_2 + 60, ctDogo, -80.1, 344.6 , 0 );
setEffMoveKey( spep_2 + 62, ctDogo, -82.6, 345.1 , 0 );
setEffMoveKey( spep_2 + 64, ctDogo, -82.6, 345.1 , 0 );

setEffScaleKey( spep_2 + 26, ctDogo, 2.12, 2.12 );
setEffScaleKey( spep_2 + 28, ctDogo, 3.25, 3.25 );
setEffScaleKey( spep_2 + 30, ctDogo, 4.38, 4.38 );
setEffScaleKey( spep_2 + 32, ctDogo, 4.05, 4.05 );
setEffScaleKey( spep_2 + 34, ctDogo, 3.71, 3.71 );
setEffScaleKey( spep_2 + 36, ctDogo, 3.38, 3.38 );
setEffScaleKey( spep_2 + 38, ctDogo, 3.33, 3.33 );
setEffScaleKey( spep_2 + 40, ctDogo, 3.29, 3.29 );
setEffScaleKey( spep_2 + 42, ctDogo, 3.24, 3.24 );
setEffScaleKey( spep_2 + 44, ctDogo, 3.19, 3.19 );
setEffScaleKey( spep_2 + 46, ctDogo, 3.14, 3.14 );
setEffScaleKey( spep_2 + 48, ctDogo, 3.1, 3.1 );
setEffScaleKey( spep_2 + 50, ctDogo, 3.05, 3.05 );
setEffScaleKey( spep_2 + 52, ctDogo, 3, 3 );
setEffScaleKey( spep_2 + 54, ctDogo, 2.99, 2.99 );
setEffScaleKey( spep_2 + 56, ctDogo, 2.98, 2.98 );
setEffScaleKey( spep_2 + 58, ctDogo, 2.97, 2.97 );
setEffScaleKey( spep_2 + 60, ctDogo, 2.95, 2.95 );
setEffScaleKey( spep_2 + 62, ctDogo, 2.94, 2.94 );
setEffScaleKey( spep_2 + 64, ctDogo, 2.93, 2.93 );

setEffRotateKey( spep_2 + 26, ctDogo, -24.7 );
setEffRotateKey( spep_2 + 42, ctDogo, -24.7 );
setEffRotateKey( spep_2 + 44, ctDogo, -24.6 );
setEffRotateKey( spep_2 + 64, ctDogo, -24.6 );

setEffAlphaKey( spep_2 + 26, ctDogo, 255 );
setEffAlphaKey( spep_2 + 52, ctDogo, 255 );
setEffAlphaKey( spep_2 + 54, ctDogo, 213 );
setEffAlphaKey( spep_2 + 56, ctDogo, 170 );
setEffAlphaKey( spep_2 + 58, ctDogo, 128 );
setEffAlphaKey( spep_2 + 60, ctDogo, 85 );
setEffAlphaKey( spep_2 + 62, ctDogo, 42 );
setEffAlphaKey( spep_2 + 64, ctDogo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2-3 + 0, 1, -439.4, 224.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 137.1, 11.2 , 0 );
setMoveKey( spep_2-3 + 34, 1, 132.8, 1.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 142.2, 8.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 139.6, 3.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 144.9, 6.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 138.3, -2.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 147.7, 4.2 , 0 );
setMoveKey( spep_2-3 + 46, 1, 145, -0.8 , 0 );
setMoveKey( spep_2-3 + 48, 1, 150.4, 2.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 143.8, -6.8 , 0 );
setMoveKey( spep_2-3 + 52, 1, 153.1, 0.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 150.5, -8.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 155.9, -1.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, 149.2, -14.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 158.6, -4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 156, -13 , 0 );
setMoveKey( spep_2-3 + 64, 1, 161.3, -6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 154.7, -11 , 0 );
setMoveKey( spep_2-3 + 68, 1, 164.1, -8.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 161.4, -17.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 166.8, -10.1 , 0 );
setMoveKey( spep_2-3 + 74, 1, 160.2, -19.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, 169.6, -12.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 166.9, -21.2 , 0 );

setScaleKey( spep_2-3 + 0, 1, 8.0, 8.0 );
setScaleKey( spep_2-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 60, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 62, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 72, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 76, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 78, 1, 0.78, 0.78 );

setRotateKey( spep_2-3 + 0, 1, 21.3 );
setRotateKey( spep_2-3 + 2, 1, 21.4 );
setRotateKey( spep_2-3 + 4, 1, 21.4 );
setRotateKey( spep_2-3 + 6, 1, 21.5 );

--SE
playSe( spep_2, 44);
playSe( spep_2+28, SE_13);

playSe( spep_2+112, SE_01);

playSe( spep_2+144, SE_04);
playSe( spep_2+164, SE_02);
playSe( spep_2+184, SE_02);
playSe( spep_2+204, SE_02);

--白フェード
entryFade( spep_2 + 68, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 226;

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

shuchusen2 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen2,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_3,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen2,  0);
setEffRotateKey(  spep_3+90,  shuchusen2,  0);
setEffAlphaKey(  spep_3,  shuchusen2,  255);
setEffAlphaKey(  spep_3+90,  shuchusen2,  255);

--***背景と白フェード***
entryFade( spep_3+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 90;

------------------------------------------------------
-- かめはめ波発射(210F)
------------------------------------------------------
--かめはめ波発射(SP_09)
shoot = entryEffectLife( spep_4, SP_09, 86, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, shoot, 0, 0);
setEffMoveKey( spep_4+86, shoot, 0, 0);
setEffScaleKey( spep_4, shoot, 1, 1);
setEffScaleKey( spep_4+86, shoot, 1, 1);
setEffRotateKey( spep_4, shoot, 0);
setEffRotateKey( spep_4+86, shoot, 0);
setEffAlphaKey( spep_4, shoot, 255);
setEffAlphaKey( spep_4+86, shoot, 255);

--かめはめ迫る前(SP_10)
semaru_f = entryEffect( spep_4+86, SP_10, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4+86, semaru_f, 0, 0);
setEffMoveKey( spep_4+206, semaru_f, 0, 0);
setEffScaleKey( spep_4+86, semaru_f, 1, 1);
setEffScaleKey( spep_4+206, semaru_f, 1, 1);
setEffRotateKey( spep_4+86, semaru_f, 0);
setEffRotateKey( spep_4+206, semaru_f, 0);
setEffAlphaKey( spep_4+86, semaru_f, 255);
setEffAlphaKey( spep_4+206, semaru_f, 255);

--かめはめ迫る奥(SP_11)
semaru_r = entryEffect( spep_4+86, SP_11, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4+86, semaru_r, 0, 0);
setEffMoveKey( spep_4+146, semaru_r, 0, 0);
setEffScaleKey( spep_4+86, semaru_r, 1, 1);
setEffScaleKey( spep_4+146, semaru_r, 1, 1);
setEffRotateKey( spep_4+86, semaru_r, 0);
setEffRotateKey( spep_4+146, semaru_r, 0);
setEffAlphaKey( spep_4+86, semaru_r, 255);
setEffAlphaKey( spep_4+146, semaru_r, 255);

--黄色ギャン
gyan = entryEffectLife(spep_4+142, SP_12, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_4+142, gyan, 0, 0);
setEffMoveKey(spep_4+202, gyan, 0, 0);
setEffScaleKey( spep_4+142, gyan, 1.0, 1.0);
setEffScaleKey( spep_4+202, gyan, 1.0, 1.0);
setEffRotateKey(spep_4+142, gyan, 0);
setEffRotateKey(spep_4+202, gyan, 0);
setEffAlphaKey(spep_4+142, gyan, 255);
setEffAlphaKey(spep_4+202, gyan, 255);

--集中線
shuchusen4 = entryEffectLife( spep_4+30, 906, 140, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_4+30,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+170,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+30,  shuchusen4,  1.3,  1.9);
setEffScaleKey(  spep_4+170,  shuchusen4,  1.3,  1.9);
setEffRotateKey(  spep_4+30,  shuchusen4,  0);
setEffRotateKey(  spep_4+170,  shuchusen4,  0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);
setEffAlphaKey(  spep_4+170,  shuchusen4,  255);

--書き文字(ズオッ)
ctZuo2 = entryEffectLife( spep_4 + 30,  10012, 48, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_4 + 30, ctZuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 32, ctZuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_4 + 34, ctZuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_4 + 36, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 38, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 40, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 42, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 44, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 46, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 48, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 50, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 52, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 54, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 56, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 58, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 60, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 62, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 64, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 66, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 68, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 70, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 72, ctZuo2, 167.1, 345 , 0 );
setEffMoveKey( spep_4 + 74, ctZuo2, 153.1, 368.5 , 0 );
setEffMoveKey( spep_4 + 76, ctZuo2, 193.8, 337.2 , 0 );
setEffMoveKey( spep_4 + 78, ctZuo2, 207.3, 333.2 , 0 );

setEffScaleKey( spep_4 + 30, ctZuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 32, ctZuo2, 1.13, 1.13 );
setEffScaleKey( spep_4 + 34, ctZuo2, 1.94, 1.94 );
setEffScaleKey( spep_4 + 36, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 70, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 72, ctZuo2, 3.68, 3.68 );
setEffScaleKey( spep_4 + 74, ctZuo2, 4.67, 4.67 );
setEffScaleKey( spep_4 + 76, ctZuo2, 5.63, 5.63 );
setEffScaleKey( spep_4 + 78, ctZuo2, 6.62, 6.62 );

setEffRotateKey( spep_4-2 + 30, ctZuo2, 20);
setEffRotateKey( spep_4-2 + 78,  ctZuo2, 20);

setEffAlphaKey( spep_4 + 30, ctZuo2, 255 );
setEffAlphaKey( spep_4 + 70, ctZuo2, 255 );
setEffAlphaKey( spep_4 + 72, ctZuo2, 191 );
setEffAlphaKey( spep_4 + 74, ctZuo2, 128 );
setEffAlphaKey( spep_4 + 76, ctZuo2, 64 );
setEffAlphaKey( spep_4 + 78, ctZuo2, 0 );


c=100;
--書き文字(ズドドドッ)
ctZud = entryEffectLife( spep_4-4 + 90,  10014, 58, 0x100, -1, 0, 164.2 - c, 325.6 );
setEffMoveKey( spep_4-4 + 90, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 92, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 94, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 96, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 98, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 100, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 102, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 104, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 106, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 108, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 110, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 112, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 114, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 116, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 118, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 120, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 122, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 124, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 126, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 128, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 130, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 132, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 134, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 136, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 138, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 140, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 142, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 144, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 146, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 148, ctZud, 148.2 - c, 307.1 , 0 );

setEffScaleKey( spep_4-4 + 90, ctZud, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 148, ctZud, 2.73, 2.73 );

setEffRotateKey( spep_4-4 + 90, ctZud, 48 );
setEffRotateKey( spep_4-4 + 148, ctZud, 48 );

setEffAlphaKey( spep_4-4 + 90, ctZud, 255 );
setEffAlphaKey( spep_4-4 + 148, ctZud, 255 );

--書き文字(ギャンッ)
ctGyan = entryEffectLife( spep_4-8 + 150,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4-8 + 150, ctGyan, 8.8, 313 , 0 );
setEffMoveKey( spep_4-8 + 152, ctGyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4-8 + 154, ctGyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4-8 + 156, ctGyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4-8 + 158, ctGyan, 10, 317.1 , 0 );
setEffMoveKey( spep_4-8 + 160, ctGyan, 10, 317.2 , 0 );
setEffMoveKey( spep_4-8 + 162, ctGyan, 10, 317.3 , 0 );
setEffMoveKey( spep_4-8 + 164, ctGyan, 10, 317.4 , 0 );
setEffMoveKey( spep_4-8 + 166, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4-8 + 168, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4-8 + 170, ctGyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4-8 + 172, ctGyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4-8 + 174, ctGyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4-8 + 176, ctGyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4-8 + 178, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4-8 + 180, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4-8 + 182, ctGyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4-8 + 184, ctGyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4-8 + 186, ctGyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4-8 + 188, ctGyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4-8 + 190, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4-8 + 192, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4-8 + 194, ctGyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4-8 + 196, ctGyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4-8 + 198, ctGyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4-8 + 200, ctGyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4-8 + 202, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4-8 + 204, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4-8 + 206, ctGyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4-8 + 208, ctGyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4-8 + 150, ctGyan, 2.11, 2.11 );
setEffScaleKey( spep_4-8 + 152, ctGyan, 2.47, 2.47 );
setEffScaleKey( spep_4-8 + 154, ctGyan, 2.82, 2.82 );
setEffScaleKey( spep_4-8 + 156, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_4-8 + 158, ctGyan, 3.53, 3.53 );
setEffScaleKey( spep_4-8 + 160, ctGyan, 3.56, 3.56 );
setEffScaleKey( spep_4-8 + 162, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4-8 + 164, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4-8 + 166, ctGyan, 3.63, 3.63 );
setEffScaleKey( spep_4-8 + 168, ctGyan, 3.67, 3.67 );
setEffScaleKey( spep_4-8 + 170, ctGyan, 3.7, 3.7 );
setEffScaleKey( spep_4-8 + 172, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4-8 + 174, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4-8 + 176, ctGyan, 3.77, 3.77 );
setEffScaleKey( spep_4-8 + 178, ctGyan, 3.81, 3.81 );
setEffScaleKey( spep_4-8 + 180, ctGyan, 3.85, 3.85 );
setEffScaleKey( spep_4-8 + 182, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4-8 + 184, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4-8 + 186, ctGyan, 3.92, 3.92 );
setEffScaleKey( spep_4-8 + 188, ctGyan, 3.95, 3.95 );
setEffScaleKey( spep_4-8 + 190, ctGyan, 3.99, 3.99 );
setEffScaleKey( spep_4-8 + 192, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4-8 + 194, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4-8 + 196, ctGyan, 4.06, 4.06 );
setEffScaleKey( spep_4-8 + 198, ctGyan, 4.09, 4.09 );
setEffScaleKey( spep_4-8 + 200, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4-8 + 202, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4-8 + 204, ctGyan, 4.16, 4.16 );
setEffScaleKey( spep_4-8 + 206, ctGyan, 4.2, 4.2 );
setEffScaleKey( spep_4-8 + 208, ctGyan, 4.23, 4.23 );

setEffRotateKey( spep_4-8 + 150, ctGyan, -5.2 );
setEffRotateKey( spep_4-8 + 208, ctGyan, -5.2 );

setEffAlphaKey( spep_4-8 + 150, ctGyan, 255 );
setEffAlphaKey( spep_4-8 + 208, ctGyan, 255 );

--敵の動き
setDisp( spep_4-7+90 + 0, 1, 1 );
setDisp( spep_4-7+90 + 59, 1, 0 );
setDisp( spep_4-7+90 + 60, 1, 0 );
changeAnime( spep_4-7+90 + 0, 1, 108 );

setMoveKey( spep_4-7+90 + 0, 1, 881.5, -609.2 , 0 );
setMoveKey( spep_4-7+90 + 2, 1, 794.4, -547.4 , 0 );
setMoveKey( spep_4-7+90 + 4, 1, 707.2, -485.5 , 0 );
setMoveKey( spep_4-7+90 + 6, 1, 620.1, -423.7 , 0 );
setMoveKey( spep_4-7+90 + 8, 1, 532.9, -361.8 , 0 );
setMoveKey( spep_4-7+90 + 10, 1, 445.8, -300 , 0 );
setMoveKey( spep_4-7+90 + 12, 1, 358.6, -238.2 , 0 );
setMoveKey( spep_4-7+90 + 14, 1, 348.2, -231.5 , 0 );
setMoveKey( spep_4-7+90 + 16, 1, 337.7, -224.9 , 0 );
setMoveKey( spep_4-7+90 + 18, 1, 327.2, -218.3 , 0 );
setMoveKey( spep_4-7+90 + 20, 1, 316.8, -211.7 , 0 );
setMoveKey( spep_4-7+90 + 22, 1, 306.3, -205 , 0 );
setMoveKey( spep_4-7+90 + 24, 1, 295.8, -198.4 , 0 );
setMoveKey( spep_4-7+90 + 26, 1, 285.4, -191.8 , 0 );
setMoveKey( spep_4-7+90 + 28, 1, 274.9, -185.2 , 0 );
setMoveKey( spep_4-7+90 + 30, 1, 264.5, -178.5 , 0 );
setMoveKey( spep_4-7+90 + 32, 1, 254, -171.9 , 0 );
setMoveKey( spep_4-7+90 + 34, 1, 243.5, -165.3 , 0 );
setMoveKey( spep_4-7+90 + 36, 1, 233.1, -158.7 , 0 );
setMoveKey( spep_4-7+90 + 38, 1, 222.6, -152 , 0 );
setMoveKey( spep_4-7+90 + 40, 1, 212.1, -145.4 , 0 );
setMoveKey( spep_4-7+90 + 42, 1, 201.7, -138.8 , 0 );
setMoveKey( spep_4-7+90 + 44, 1, 191.2, -132.1 , 0 );
setMoveKey( spep_4-7+90 + 46, 1, 180.7, -125.5 , 0 );
setMoveKey( spep_4-7+90 + 48, 1, 170.3, -118.9 , 0 );
setMoveKey( spep_4-7+90 + 50, 1, 159.8, -112.3 , 0 );
setMoveKey( spep_4-7+90 + 52, 1, 149.4, -105.6 , 0 );
setMoveKey( spep_4-7+90 + 54, 1, 138.9, -99 , 0 );
setMoveKey( spep_4-7+90 + 56, 1, 128.4, -92.4 , 0 );
setMoveKey( spep_4-7+90 + 58, 1, 118, -85.7 , 0 );

setScaleKey( spep_4-7+90 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_4-7+90 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_4-7+90 + 4, 1, 1.17, 1.17 );
setScaleKey( spep_4-7+90 + 6, 1, 1.1, 1.1 );
setScaleKey( spep_4-7+90 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4-7+90 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_4-7+90 + 12, 1, 0.88, 0.88 );
setScaleKey( spep_4-7+90 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_4-7+90 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_4-7+90 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_4-7+90 + 20, 1, 0.82, 0.82 );
setScaleKey( spep_4-7+90 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_4-7+90 + 24, 1, 0.79, 0.79 );
setScaleKey( spep_4-7+90 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_4-7+90 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_4-7+90 + 30, 1, 0.74, 0.74 );
setScaleKey( spep_4-7+90 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_4-7+90 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4-7+90 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_4-7+90 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_4-7+90 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_4-7+90 + 42, 1, 0.65, 0.65 );
setScaleKey( spep_4-7+90 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_4-7+90 + 46, 1, 0.62, 0.62 );
setScaleKey( spep_4-7+90 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_4-7+90 + 50, 1, 0.59, 0.59 );
setScaleKey( spep_4-7+90 + 52, 1, 0.57, 0.57 );
setScaleKey( spep_4-7+90 + 54, 1, 0.56, 0.56 );
setScaleKey( spep_4-7+90 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_4-7+90 + 58, 1, 0.53, 0.53 );

setRotateKey( spep_4-7+90 + 0, 1, 21.5 );

--***背景と白フェード***
entryFade( spep_4+80, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_4+134, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_4+188, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_4, SE_02);
playSe( spep_4+20, SE_02);
playSe( spep_4+30, SE_07);

playSe( spep_4+92, SE_06);

playSe( spep_4+140, SE_09);

spep_5 = spep_4 + 200;

------------------------------------------------------
-- 締め爆発(160F)
------------------------------------------------------

--締め爆発(SP_09)
bomb = entryEffect( spep_5, SP_13, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, bomb, 0, 0);
setEffMoveKey( spep_5+160, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1, 1);
setEffScaleKey( spep_5+160, bomb, 1, 1);
setEffRotateKey( spep_5, bomb, 0);
setEffRotateKey( spep_5+160, bomb, 0);
setEffAlphaKey( spep_5, bomb, 255);
setEffAlphaKey( spep_5+160, bomb, 255);

--SE
playSe(spep_5+30, SE_10);

-- ダメージ表示
dealDamage(spep_5+50);
endPhase(spep_5+150);

else

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 正面ダッシュ(70F)
------------------------------------------------------

spep_0 = 1;

--正面ダッシュ(SP_01)
dash = entryEffect( spep_0, SP_01r, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_0, dash, 0, 0);
setEffMoveKey( spep_0+70, dash, 0, 0);
setEffScaleKey( spep_0, dash, 1, 1);
setEffScaleKey( spep_0+70, dash, 1, 1);
setEffRotateKey( spep_0,  dash,  0);
setEffRotateKey( spep_0+70,  dash,  0);
setEffAlphaKey( spep_0, dash, 255);
setEffAlphaKey( spep_0+70, dash, 255);

--集中線
shuchusen = entryEffectLife( spep_0, 906, 70, 0x100,  -1, 0,  0, 0);
setEffMoveKey(  spep_0,  shuchusen,  0,  0);
setEffMoveKey(  spep_0+70,  shuchusen,  0,  0);
setEffScaleKey(  spep_0,  shuchusen,  1.1,  2.3);
setEffScaleKey(  spep_0+48,  shuchusen,  1.1,  2.3);
setEffScaleKey(  spep_0+50,  shuchusen,  1.1,  1.1);
setEffScaleKey(  spep_0+70,  shuchusen,  1.1,  1.1);
setEffRotateKey(  spep_0,  shuchusen,  0);
setEffRotateKey(  spep_0+70,  shuchusen,  0);
setEffAlphaKey(  spep_0,  shuchusen,  255);
setEffAlphaKey(  spep_0+70,  shuchusen,  255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_0 + 0,  10012, 56, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_0 + 0, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctZuo, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctZuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 10, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 12, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 14, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 16, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 18, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 20, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 22, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 24, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 26, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 28, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 30, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 32, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 34, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 36, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 38, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 40, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 42, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 44, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 46, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 48, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 50, ctZuo, 167.1, 345 , 0 );
setEffMoveKey( spep_0 + 52, ctZuo, 153.1, 368.5 , 0 );
setEffMoveKey( spep_0 + 54, ctZuo, 193.8, 337.2 , 0 );
setEffMoveKey( spep_0 + 56, ctZuo, 207.3, 333.2 , 0 );

setEffScaleKey( spep_0 + 0, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctZuo, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctZuo, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 48, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 50, ctZuo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 52, ctZuo, 4.67, 4.67 );
setEffScaleKey( spep_0 + 54, ctZuo, 5.63, 5.63 );
setEffScaleKey( spep_0 + 56, ctZuo, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctZuo, 27.2 );
setEffRotateKey( spep_0 + 56, ctZuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctZuo, 255 );
setEffAlphaKey( spep_0 + 48, ctZuo, 255 );
setEffAlphaKey( spep_0 + 50, ctZuo, 191 );
setEffAlphaKey( spep_0 + 52, ctZuo, 128 );
setEffAlphaKey( spep_0 + 54, ctZuo, 64 );
setEffAlphaKey( spep_0 + 56, ctZuo, 0 );

--白フェード
entryFade( spep_0+60, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe(spep_0, SE_04);

spep_1 = spep_0 + 70;

------------------------------------------------------
-- ボコ殴り(340F)
------------------------------------------------------

--ボコ殴り前(SP_02)
rush_f = entryEffect( spep_1, SP_02r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, rush_f, 0, 0);
setEffMoveKey( spep_1+246, rush_f, 0, 0);
setEffScaleKey( spep_1, rush_f, 1, 1);
setEffScaleKey( spep_1+246, rush_f, 1, 1);
setEffRotateKey( spep_1, rush_f, 0);
setEffRotateKey( spep_1+246, rush_f, 0);
setEffAlphaKey( spep_1, rush_f, 255);
setEffAlphaKey( spep_1+246, rush_f, 255);

--ボコ殴り奥(SP_03)
rush_b = entryEffect( spep_1, SP_03r, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, rush_b, 0, 0);
setEffMoveKey( spep_1+246, rush_b, 0, 0);
setEffScaleKey( spep_1, rush_b, 1, 1);
setEffScaleKey( spep_1+246, rush_b, 1, 1);
setEffRotateKey( spep_1, rush_b, 0);
setEffRotateKey( spep_1+246, rush_b, 0);
setEffAlphaKey( spep_1, rush_b, 255);
setEffAlphaKey( spep_1+246, rush_b, 255);

--ビル破壊前(SP_04)
crash_f = entryEffect( spep_1+246, SP_04r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1+246, crash_f, 0, 0);
setEffMoveKey( spep_1+336, crash_f, 0, 0);
setEffScaleKey( spep_1+246, crash_f, 1, 1);
setEffScaleKey( spep_1+336, crash_f, 1, 1);
setEffRotateKey( spep_1+246, crash_f, 0);
setEffRotateKey( spep_1+336, crash_f, 0);
setEffAlphaKey( spep_1+246, crash_f, 255);
setEffAlphaKey( spep_1+336, crash_f, 255);

--ビル破壊奥(SP_05)
crash_b = entryEffect( spep_1+246, SP_05r, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1+246, crash_b, 0, 0);
setEffMoveKey( spep_1+336, crash_b, 0, 0);
setEffScaleKey( spep_1+246, crash_b, 1, 1);
setEffScaleKey( spep_1+336, crash_b, 1, 1);
setEffRotateKey( spep_1+246, crash_b, 0);
setEffRotateKey( spep_1+336, crash_b, 0);
setEffAlphaKey( spep_1+246, crash_b, 255);
setEffAlphaKey( spep_1+336, crash_b, 255);

--書き文字(カッ)
ctCa = entryEffectLife( spep_1-6 + 230,  10004, 26, 0x100, -1, 0, 104.2, 312.5 );
setEffMoveKey( spep_1-6 + 230, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 232, ctCa, 98.8, 322.6 , 0 );
setEffMoveKey( spep_1-6 + 234, ctCa, 104.2, 312.6 , 0 );
setEffMoveKey( spep_1-6 + 236, ctCa, 99.5, 321.2 , 0 );
setEffMoveKey( spep_1-6 + 238, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 240, ctCa, 99.5, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 242, ctCa, 104.2, 312.5 , 0 );
setEffMoveKey( spep_1-6 + 244, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 246, ctCa, 104.2, 312.4 , 0 );
setEffMoveKey( spep_1-6 + 248, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 250, ctCa, 99.4, 321.3 , 0 );
setEffMoveKey( spep_1-6 + 252, ctCa, 104.3, 312.3 , 0 );
setEffMoveKey( spep_1-6 + 254, ctCa, 95.8, 328.2 , 0 );
setEffMoveKey( spep_1-6 + 256, ctCa, 94.8, 330.2 , 0 );

setEffScaleKey( spep_1-6 + 230, ctCa, 1.02, 1.02 );
setEffScaleKey( spep_1-6 + 232, ctCa, 2.98, 2.98 );
setEffScaleKey( spep_1-6 + 234, ctCa, 4.16, 4.16 );
setEffScaleKey( spep_1-6 + 236, ctCa, 2.61, 2.61 );
setEffScaleKey( spep_1-6 + 238, ctCa, 2.62, 2.62 );
setEffScaleKey( spep_1-6 + 240, ctCa, 2.63, 2.63 );
setEffScaleKey( spep_1-6 + 242, ctCa, 2.64, 2.64 );
setEffScaleKey( spep_1-6 + 244, ctCa, 2.64, 2.64 );
setEffScaleKey( spep_1-6 + 246, ctCa, 2.65, 2.65 );
setEffScaleKey( spep_1-6 + 248, ctCa, 2.66, 2.66 );
setEffScaleKey( spep_1-6 + 250, ctCa, 2.67, 2.67 );
setEffScaleKey( spep_1-6 + 252, ctCa, 3.88, 3.88 );
setEffScaleKey( spep_1-6 + 254, ctCa, 4.79, 4.79 );
setEffScaleKey( spep_1-6 + 256, ctCa, 5.39, 5.39 );

setEffRotateKey( spep_1-6 + 230, ctCa, 5.2 );
setEffRotateKey( spep_1-6 + 256, ctCa, 5.2 );

setEffAlphaKey( spep_1-6 + 230, ctCa, 64 );
setEffAlphaKey( spep_1-6 + 232, ctCa, 183 );
setEffAlphaKey( spep_1-6 + 234, ctCa, 255 );
setEffAlphaKey( spep_1-6 + 250, ctCa, 255 );
setEffAlphaKey( spep_1-6 + 252, ctCa, 142 );
setEffAlphaKey( spep_1-6 + 254, ctCa, 57 );
setEffAlphaKey( spep_1-6 + 256, ctCa, 0 );

--横流線
ryusen = entryEffectLife( spep_1, 914, 124, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffMoveKey(  spep_1+124,  ryusen,  0,  0);
setEffScaleKey(  spep_1,  ryusen,  1.3,  1.9);
setEffScaleKey(  spep_1+124,  ryusen,  1.3,  1.9);
setEffRotateKey(  spep_1,  ryusen,  0);
setEffRotateKey(  spep_1+124,  ryusen,  0);
setEffAlphaKey(  spep_1,  ryusen,  255);
setEffAlphaKey(  spep_1+124,  ryusen,  255);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    playSe( SP_dodge-12, 1042);
    pauseAll( SP_dodge, 67);
    
    --敵の位置固定
    setMoveKey( SP_dodge, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+2, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+4, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+6, 1, 178.2, 15 , 0 );
    setMoveKey( SP_dodge+8, 1, 178.2, 15 , 0 );
    
    setRotateKey( SP_dodge, 1, 0 );
    setRotateKey( SP_dodge+8, 1, 0 );
    
    setScaleKey( SP_dodge, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+2, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+4, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+6, 1, 1.13, 1.13 );
    setScaleKey( SP_dodge+8, 1, 1.13, 1.13 );
    
    --changeAnime(  SP_dodge+9,    1,  100);
    setMoveKey(  SP_dodge+9,    1,  178.2, 15 , 0 );
    setMoveKey(  SP_dodge+10,    1,  178.2, 15 , 0 );
    setScaleKey( SP_dodge+9,    1,  1.13, 1.13 );
    setScaleKey( SP_dodge+10,    1,  1.13, 1.13 );
    setRotateKey(   SP_dodge+9,   1, 0);
    setRotateKey(   SP_dodge+10,   1, 0);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------

--殴られる敵の動き
setDisp( spep_1, 1, 1 );
setDisp( spep_1+226, 1, 0 );
setDisp(  spep_1+257,  1,  1);
setDisp(  spep_1+274,  1,  0);  --消す
setShakeChara(spep_1+40,  1,  298,  20); --揺れ

changeAnime( spep_1, 1, 100 );
changeAnime( spep_1-3+32, 1, 104 );
changeAnime( spep_1-3+44, 1, 108 );  --くの字
changeAnime( spep_1-3+52, 1, 104 );
changeAnime( spep_1-3+54, 1, 106 );  
changeAnime( spep_1-3+62, 1, 108 );
changeAnime( spep_1-3+70, 1, 106 );
changeAnime( spep_1-3+78, 1, 108 );
changeAnime( spep_1-3+90, 1, 106 );
changeAnime( spep_1-3+98, 1, 108 );
changeAnime( spep_1-3+104, 1, 104 );
changeAnime( spep_1-3+108, 1, 108 );
changeAnime( spep_1-3+114, 1, 106 );
changeAnime( spep_1-3+122, 1, 108 );
changeAnime( spep_1-3+130, 1, 104 );
changeAnime( spep_1-3+132, 1, 106 );
changeAnime( spep_1-3+140, 1, 108 );
changeAnime( spep_1-3+148, 1, 106 );
changeAnime( spep_1-3+156, 1, 108 );
changeAnime( spep_1-3+168, 1, 106 );
changeAnime( spep_1-3+176, 1, 108 );
changeAnime( spep_1-3+182, 1, 104 );
changeAnime( spep_1-3+186, 1, 108 );
changeAnime( spep_1-3+192, 1, 106 );
changeAnime( spep_1-3+200, 1, 108 );
changeAnime( spep_1-3+208, 1, 104 );
changeAnime( spep_1-3+210, 1, 106 );
changeAnime( spep_1-3+218, 1, 108 );
changeAnime(spep_1-3+257,  1,  107);   --手前吹っ飛び

setMoveKey( spep_1 + 0, 1, -1000.8, 14.5 , 0 );
--[[setMoveKey( spep_1 -3 + 2, 1, -667.6, 14.6 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -561.6, 14.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -454.9, 14.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -347.4, 14.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -239.1, 14.8 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -130.1, 14.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -20.3, 14.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 0.9, 14.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 22.3, 15 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 43.8, 15 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 65.4, 15.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 87.2, 15.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 109.2, 15.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 131.3, 15.2 , 0 );]]
setMoveKey( spep_1 -3 + 31, 1, 137.9, 16.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 152.2, 23 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 148, 24.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 144.7, 26.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 142.3, 28.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 140.8, 30.2 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 140.1, 32 , 0 );
setMoveKey(spep_1-3+44, 1, 150.4, 36 , 0 );
setMoveKey(spep_1-3+46, 1, 154.6, 31.7 , 0 );
setMoveKey(spep_1-3+48, 1, 167, 35.5 , 0 );
setMoveKey(spep_1-3+50, 1, 167.5, 27.2 , 0 );
setMoveKey(spep_1-3+52, 1, 162.2, 17.4 , 0 );
setMoveKey(spep_1-3+54, 1, 119.3, 52.1 , 0 );
setMoveKey(spep_1-3+56, 1, 129.3, 66.4 , 0 );
setMoveKey(spep_1-3+58, 1, 140.7, 50.7 , 0 );
setMoveKey(spep_1-3+60, 1, 150.7, 65.3 , 0 );
setMoveKey(spep_1-3+62, 1, 167.4, 58 , 0 );
setMoveKey(spep_1-3+64, 1, 175.5, 61.9 , 0 );
setMoveKey(spep_1-3+66, 1, 171.6, 57.8 , 0 );
setMoveKey(spep_1-3+68, 1, 183.9, 61.7 , 0 );
setMoveKey(spep_1-3+70, 1, 140.7, 83.2 , 0 );
setMoveKey(spep_1-3+72, 1, 141.5, 102.8 , 0 );
setMoveKey(spep_1-3+74, 1, 148.8, 92.2 , 0 );
setMoveKey(spep_1-3+76, 1, 145.1, 102.8 , 0 );
setMoveKey(spep_1-3+78, 1, 187.6, 53.1 , 0 );
setMoveKey(spep_1-3+80, 1, 209.9, 60.2 , 0 );
setMoveKey(spep_1-3+82, 1, 220.4, 55.3 , 0 );
setMoveKey(spep_1-3+84, 1, 239, 29.1 , 0 );
setMoveKey(spep_1-3+86, 1, 230.8, 24.8 , 0 );
setMoveKey(spep_1-3+88, 1, 238.5, 28.5 , 0 );

setMoveKey(spep_1-3+90, 1, 132.7, 68.2 , 0 );
setMoveKey(spep_1-3+92, 1, 133.4, 98.5 , 0 );
setMoveKey(spep_1-3+94, 1, 141.3, 97.8 , 0 );
setMoveKey(spep_1-3+96, 1, 137.2, 119.2 , 0 );
setMoveKey(spep_1-3+98, 1, 182.2, 55.8 , 0 );
setMoveKey(spep_1-3+100, 1, 205.3, 58.9 , 0 );
setMoveKey(spep_1-3+102, 1, 216.5, 50 , 0 );
setMoveKey(spep_1-3+104, 1, 174.3, 23.7 , 0 );
setMoveKey(spep_1-3+106, 1, 185.5, 19.4 , 0 );
setMoveKey(spep_1-3+108, 1, 187.5, 27.4 , 0 );
setMoveKey(spep_1-3+110, 1, 192.6, 23.1 , 0 );
setMoveKey(spep_1-3+112, 1, 205.8, 26.8 , 0 );
setMoveKey(spep_1-3+114, 1, 106.8, 55.5 , 0 );
setMoveKey(spep_1-3+116, 1, 105.5, 73.1 , 0 );
setMoveKey(spep_1-3+118, 1, 108.4, 58.5 , 0 );
setMoveKey(spep_1-3+120, 1, 27.9, 184.8 , 0 );
setMoveKey(spep_1-3+122, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+124, 1, 34.5, 168.7 , 0 );
setMoveKey(spep_1-3+126, 1, 37.4, 168.7 , 0 );
setMoveKey(spep_1-3+128, 1, 40.3, 168.7 , 0 );
setMoveKey(spep_1-3+130, 1, 34.8, 161.9 , 0 );
setMoveKey(spep_1-3+132, 1, 19.2, 177 , 0 );
setMoveKey(spep_1-3+134, 1, 21.2, 181.1 , 0 );
setMoveKey(spep_1-3+136, 1, 28.4, 178.2 , 0 );
setMoveKey(spep_1-3+138, 1, 28.8, 180.8 , 0 );
setMoveKey(spep_1-3+140, 1, 36.3, 179.6 , 0 );
setMoveKey(spep_1-3+142, 1, 37.4, 179.6 , 0 );
setMoveKey(spep_1-3+144, 1, 38.6, 179.6 , 0 );
setMoveKey(spep_1-3+146, 1, 39.7, 179.6 , 0 );
setMoveKey(spep_1-3+148, 1, 24.6, 190.7 , 0 );
setMoveKey(spep_1-3+150, 1, 23.1, 194.9 , 0 );
setMoveKey(spep_1-3+152, 1, 26.9, 192.5 , 0 );
setMoveKey(spep_1-3+154, 1, 23.6, 194.9 , 0 );
setMoveKey(spep_1-3+156, 1, 41.7, 179.6 , 0 );
setMoveKey(spep_1-3+158, 1, 46.5, 179.3 , 0 );
setMoveKey(spep_1-3+160, 1, 51.2, 179 , 0 );
setMoveKey(spep_1-3+162, 1, 55.9, 168.2 , 0 );
setMoveKey(spep_1-3+164, 1, 55.3, 168.2 , 0 );
setMoveKey(spep_1-3+166, 1, 54.6, 168.2 , 0 );
setMoveKey(spep_1-3+168, 1, 17.8, 185.2 , 0 );
setMoveKey(spep_1-3+170, 1, 16.3, 193.1 , 0 );
setMoveKey(spep_1-3+172, 1, 20.1, 194.3 , 0 );
setMoveKey(spep_1-3+174, 1, 16.8, 200.3 , 0 );
setMoveKey(spep_1-3+176, 1, 34.9, 179.6 , 0 );
setMoveKey(spep_1-3+178, 1, 39.7, 179.3 , 0 );
setMoveKey(spep_1-3+180, 1, 44.4, 179 , 0 );
setMoveKey(spep_1-3+182, 1, 28, 167.3 , 0 );
setMoveKey(spep_1-3+184, 1, 32.7, 167.3 , 0 );
setMoveKey(spep_1-3+186, 1, 31.5, 168.7 , 0 );
setMoveKey(spep_1-3+188, 1, 34.1, 168.7 , 0 );
setMoveKey(spep_1-3+190, 1, 36.7, 168.7 , 0 );
setMoveKey(spep_1-3+192, 1, 4.3, 179.8 , 0 );
setMoveKey(spep_1-3+194, 1, 2.1, 184.4 , 0 );
setMoveKey(spep_1-3+196, 1, 5.3, 182.2 , 0 );
setMoveKey(spep_1-3+198, 1, 1.5, 184.8 , 0 );
setMoveKey(spep_1-3+200, 1, 5.1, 168.7 , 0 );
setMoveKey(spep_1-3+202, 1, 8, 168.7 , 0 );
setMoveKey(spep_1-3+204, 1, 11, 168.7 , 0 );
setMoveKey(spep_1-3+206, 1, 13.9, 168.7 , 0 );
setMoveKey(spep_1-3+208, 1, 8.3, 161.9 , 0 );
setMoveKey(spep_1-3+210, 1, -7.2, 177 , 0 );
setMoveKey(spep_1-3+212, 1, -5.2, 181.1 , 0 );
setMoveKey(spep_1-3+214, 1, 1.9, 178.2 , 0 );
setMoveKey(spep_1-3+216, 1, 2.3, 180.8 , 0 );
setMoveKey(spep_1-3+218, 1, 9.8, 179.6 , 0 );
setMoveKey(spep_1-3+220, 1, 11, 179.6 , 0 );
setMoveKey(spep_1-3+222, 1, 12.1, 179.6 , 0 );
setMoveKey(spep_1-3+224, 1, 13.3, 179.6 , 0 );
setMoveKey(spep_1-3+258, 1, -34.2, -24 , 0 );
setMoveKey(spep_1-3+260, 1, -30.1, -34 , 0 );
setMoveKey(spep_1-3+262, 1, -38.1, -56.1 , 0 );
setMoveKey(spep_1-3+264, 1, -30.1, -62.1 , 0 );
setMoveKey(spep_1-3+266, 1, -34.1, -80.1 , 0 );
setMoveKey(spep_1-3+268, 1, -30.1, -90.2 , 0 );
setMoveKey(spep_1-3+270, 1, -38, -185.1 , 0 );
setMoveKey(spep_1-3+272, 1, -30, -264.1 , 0 );
setMoveKey(spep_1-3+274, 1, -33.9, -355 , 0 );
setMoveKey(spep_1-3+276, 1, -29.9, -438 , 0 );
setMoveKey(spep_1-3+278, 1, -37.8, -533 , 0 );
setMoveKey(spep_1-3+280, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+282, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+284, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+286, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+288, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+290, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+292, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+294, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+296, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+298, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+300, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+302, 1, -37.8, -620 , 0 );
setMoveKey(spep_1-3+304, 1, -29.8, -612 , 0 );
setMoveKey(spep_1-3+306, 1, -33.8, -616 , 0 );
setMoveKey(spep_1-3+308, 1, -29.8, -612 , 0 );

setMoveKey(spep_1-3+310, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+312, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+314, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+316, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+318, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+320, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+322, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+324, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+326, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+328, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+330, 1, -43.2, 161.4 , 0 );
setMoveKey(spep_1-3+332, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+334, 1, -47.2, 157.4 , 0 );
setMoveKey(spep_1-3+336, 1, -39.2, 165.4 , 0 );
setMoveKey(spep_1-3+337, 1, -43.2, 161.4 , 0 );

a = 0.1

setScaleKey(spep_1-3+0, 1, 1.29-a, 1.29-a );
setScaleKey(spep_1-3+2, 1, 1.29-a, 1.29-a );
setScaleKey(spep_1-3+4, 1, 1.3-a, 1.3-a );
setScaleKey(spep_1-3+8, 1, 1.3-a, 1.3-a );
setScaleKey(spep_1-3+10, 1, 1.31-a, 1.31-a );
setScaleKey(spep_1-3+12, 1, 1.31-a, 1.31-a );
setScaleKey(spep_1-3+14, 1, 1.32-a, 1.32-a );
setScaleKey(spep_1-3+18, 1, 1.32-a, 1.32-a );
setScaleKey(spep_1-3+20, 1, 1.33-a, 1.33-a );
setScaleKey(spep_1-3+24, 1, 1.33-a, 1.33-a );
setScaleKey(spep_1-3+26, 1, 1.34-a, 1.34-a );
setScaleKey(spep_1-3+28, 1, 1.34-a, 1.34-a );
setScaleKey(spep_1-3+30, 1, 1.5-a, 1.5-a );
setScaleKey(spep_1-3+32, 1, 1.47-a, 1.47-a );
setScaleKey(spep_1-3+34, 1, 1.53-a, 1.53-a );
setScaleKey(spep_1-3+36, 1, 1.59-a, 1.59-a );
setScaleKey(spep_1-3+38, 1, 1.65-a, 1.65-a );
setScaleKey(spep_1-3+40, 1, 1.72-a, 1.72-a );
setScaleKey(spep_1-3+42, 1, 1.78-a, 1.78-a );
setScaleKey(spep_1-3+44, 1, 1.83-a, 1.83-a );
setScaleKey(spep_1-3+46, 1, 1.84-a, 1.84-a );
setScaleKey(spep_1-3+48, 1, 1.85-a, 1.85-a );
setScaleKey(spep_1-3+50, 1, 1.86-a, 1.86-a );
setScaleKey(spep_1-3+52, 1, 1.87-a, 1.87-a );
setScaleKey(spep_1-3+54, 1, 1.74-a, 1.74-a );
setScaleKey(spep_1-3+56, 1, 1.75-a, 1.75-a );
setScaleKey(spep_1-3+58, 1, 1.76-a, 1.76-a );
setScaleKey(spep_1-3+60, 1, 1.76-a, 1.76-a );
setScaleKey(spep_1-3+62, 1, 1.91-a, 1.91-a );
setScaleKey(spep_1-3+64, 1, 1.92-a, 1.92-a );
setScaleKey(spep_1-3+66, 1, 1.93-a, 1.93-a );
setScaleKey(spep_1-3+68, 1, 1.93-a, 1.93-a );
setScaleKey(spep_1-3+70, 1, 1.81-a, 1.81-a );
setScaleKey(spep_1-3+72, 1, 1.81-a, 1.81-a );
setScaleKey(spep_1-3+74, 1, 1.82-a, 1.82-a );
setScaleKey(spep_1-3+76, 1, 1.83-a, 1.83-a );
setScaleKey(spep_1-3+78, 1, 1.98-a, 1.98-a );
setScaleKey(spep_1-3+80, 1, 1.99-a, 1.99-a );
setScaleKey(spep_1-3+82, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+84, 1, 2.01-a, 2.01-a );
setScaleKey(spep_1-3+86, 1, 2.01-a, 2.01-a );
setScaleKey(spep_1-3+88, 1, 2.02-a, 2.02-a );
setScaleKey(spep_1-3+90, 1, 1.89-a, 1.89-a );
setScaleKey(spep_1-3+92, 1, 1.89-a, 1.89-a );
setScaleKey(spep_1-3+94, 1, 1.9-a, 1.9-a );
setScaleKey(spep_1-3+96, 1, 1.91-a, 1.91-a );
setScaleKey(spep_1-3+98, 1, 2.07-a, 2.07-a );
setScaleKey(spep_1-3+100, 1, 2.08-a, 2.08-a );
setScaleKey(spep_1-3+102, 1, 2.08-a, 2.08-a );
setScaleKey(spep_1-3+104, 1, 2.1-a, 2.1-a );
setScaleKey(spep_1-3+106, 1, 2.11-a, 2.11-a );
setScaleKey(spep_1-3+108, 1, 2.11-a, 2.11-a );
setScaleKey(spep_1-3+110, 1, 2.12-a, 2.12-a );
setScaleKey(spep_1-3+112, 1, 2.13-a, 2.13-a );
setScaleKey(spep_1-3+114, 1, 1.98-a, 1.98-a );
setScaleKey(spep_1-3+116, 1, 1.99-a, 1.99-a );
setScaleKey(spep_1-3+118, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+119, 1, 2.0-a, 2.0-a );
setScaleKey(spep_1-3+120, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+122, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+128, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+130, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+132, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+138, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+140, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+146, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+148, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+154, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+156, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+166, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+168, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+174, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+176, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+180, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+182, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+184, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+186, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+190, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+192, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+198, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+200, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+206, 1, 0.85-a, 0.85-a );
setScaleKey(spep_1-3+208, 1, 0.86-a, 0.86-a );
setScaleKey(spep_1-3+210, 1, 0.8-a, 0.8-a );
setScaleKey(spep_1-3+218, 1, 0.85-a, 0.85-a );

setScaleKey(spep_1-3+258, 1, 0.21, 0.21 );
setScaleKey(spep_1-3+260, 1, 0.37, 0.37 );
setScaleKey(spep_1-3+262, 1, 0.53, 0.53 );
setScaleKey(spep_1-3+264, 1, 0.69, 0.69 );
setScaleKey(spep_1-3+266, 1, 0.85, 0.85 );
setScaleKey(spep_1-3+268, 1, 1.01, 1.01 );
setScaleKey(spep_1-3+270, 1, 1.4, 1.4 );
setScaleKey(spep_1-3+272, 1, 1.79, 1.79 );
setScaleKey(spep_1-3+274, 1, 2.17, 2.17 );
setScaleKey(spep_1-3+276, 1, 2.56, 2.56 );
setScaleKey(spep_1-3+278, 1, 2.95, 2.95 );
setScaleKey(spep_1-3+280, 1, 3.34, 3.34 );

setRotateKey(spep_1-3, 1, 0 );
setRotateKey(spep_1-3+18, 1, 0 );
setRotateKey(spep_1-3+20, 1, 0 );
setRotateKey(spep_1-3+30, 1, 0 );
setRotateKey(spep_1-3+32, 1, -2 );
setRotateKey(spep_1-3+34, 1, -1.6 );
setRotateKey(spep_1-3+36, 1, -1.2 );
setRotateKey(spep_1-3+38, 1, -0.8 );
setRotateKey(spep_1-3+40, 1, -0.4 );
setRotateKey(spep_1-3+42, 1, 0 );
setRotateKey(spep_1-3+44, 1, -0.2 );
setRotateKey(spep_1-3+50, 1, -0.2 );
setRotateKey(spep_1-3+52, 1, -2 );
setRotateKey(spep_1-3+54, 1, -41 );
setRotateKey(spep_1-3+56, 1, -37.7 );
setRotateKey(spep_1-3+58, 1, -34.4 );
setRotateKey(spep_1-3+60, 1, -31.1 );
setRotateKey(spep_1-3+62, 1, -15.9 );
setRotateKey(spep_1-3+64, 1, -18.3 );
setRotateKey(spep_1-3+66, 1, -20.8 );
setRotateKey(spep_1-3+68, 1, -23.2 );
setRotateKey(spep_1-3+70, 1, -41 );
setRotateKey(spep_1-3+72, 1, -40 );
setRotateKey(spep_1-3+74, 1, -39.1 );
setRotateKey(spep_1-3+76, 1, -38.1 );
setRotateKey(spep_1-3+78, 1, -5.7 );
setRotateKey(spep_1-3+82, 1, -5.7 );
setRotateKey(spep_1-3+84, 1, -3.8 );
setRotateKey(spep_1-3+86, 1, -0.5 );
setRotateKey(spep_1-3+88, 1, 2.9 );
setRotateKey(spep_1-3+90, 1, -41 );
setRotateKey(spep_1-3+92, 1, -40 );
setRotateKey(spep_1-3+94, 1, -39.1 );
setRotateKey(spep_1-3+96, 1, -38.1 );
setRotateKey(spep_1-3+98, 1, -5.7 );
setRotateKey(spep_1-3+102, 1, -5.7 );
setRotateKey(spep_1-3+104, 1, -2 );
setRotateKey(spep_1-3+106, 1, -2 );
setRotateKey(spep_1-3+108, 1, -5.7 );
setRotateKey(spep_1-3+112, 1, -5.7 );
setRotateKey(spep_1-3+114, 1, -41 );
setRotateKey(spep_1-3+116, 1, -40.4 );
setRotateKey(spep_1-3+118, 1, -39.7 );
setRotateKey(spep_1-3+120, 1, -39.1 );
setRotateKey(spep_1-3+122, 1, -0.2 );
setRotateKey(spep_1-3+128, 1, -0.2 );
setRotateKey(spep_1-3+130, 1, -2 );
setRotateKey(spep_1-3+132, 1, -41 );
setRotateKey(spep_1-3+134, 1, -37.7 );
setRotateKey(spep_1-3+136, 1, -34.4 );
setRotateKey(spep_1-3+138, 1, -31.1 );
setRotateKey(spep_1-3+140, 1, -15.9 );
setRotateKey(spep_1-3+142, 1, -18.3 );
setRotateKey(spep_1-3+144, 1, -20.8 );
setRotateKey(spep_1-3+146, 1, -23.2 );
setRotateKey(spep_1-3+148, 1, -41 );
setRotateKey(spep_1-3+150, 1, -40 );
setRotateKey(spep_1-3+152, 1, -39.1 );
setRotateKey(spep_1-3+154, 1, -38.1 );
setRotateKey(spep_1-3+156, 1, -5.7 );
setRotateKey(spep_1-3+160, 1, -5.7 );
setRotateKey(spep_1-3+162, 1, -3.8 );
setRotateKey(spep_1-3+164, 1, -0.5 );
setRotateKey(spep_1-3+166, 1, 2.9 );
setRotateKey(spep_1-3+168, 1, -41 );
setRotateKey(spep_1-3+170, 1, -40 );
setRotateKey(spep_1-3+172, 1, -39.1 );
setRotateKey(spep_1-3+174, 1, -38.1 );
setRotateKey(spep_1-3+176, 1, -5.7 );
setRotateKey(spep_1-3+180, 1, -5.7 );
setRotateKey(spep_1-3+182, 1, -2 );
setRotateKey(spep_1-3+184, 1, -2 );
setRotateKey(spep_1-3+186, 1, -5.7 );
setRotateKey(spep_1-3+190, 1, -5.7 );
setRotateKey(spep_1-3+192, 1, -41 );
setRotateKey(spep_1-3+194, 1, -40.4 );
setRotateKey(spep_1-3+196, 1, -39.7 );
setRotateKey(spep_1-3+198, 1, -39.1 );
setRotateKey(spep_1-3+200, 1, -0.2 );
setRotateKey(spep_1-3+206, 1, -0.2 );
setRotateKey(spep_1-3+208, 1, -2 );
setRotateKey(spep_1-3+210, 1, -41 );
setRotateKey(spep_1-3+212, 1, -37.7 );
setRotateKey(spep_1-3+214, 1, -34.4 );
setRotateKey(spep_1-3+216, 1, -31.1 );
setRotateKey(spep_1-3+218, 1, -15.9 );
setRotateKey(spep_1-3+220, 1, -18.3 );
setRotateKey(spep_1-3+222, 1, -20.8 );
setRotateKey(spep_1-3+224, 1, -23.2 );


setRotateKey(spep_1-3+258, 1, 4.7 );
setRotateKey(spep_1-3+262, 1, 4.7 );
setRotateKey(spep_1-3+264, 1, 4.6 );
setRotateKey(spep_1-3+272, 1, 4.6 );
setRotateKey(spep_1-3+274, 1, 4.7 );

--集中線
shuchusen2 = entryEffectLife( spep_1-6+48, 906, 232, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1-6+48,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1-6+280,  shuchusen2,  0,  0);
setEffScaleKey(  spep_1-6+48,  shuchusen2,  1.3,  1.9);
setEffScaleKey(  spep_1-6+280,  shuchusen2,  1.3,  1.9);
setEffRotateKey(  spep_1-6+48,  shuchusen2,  0);
setEffRotateKey(  spep_1-6+280,  shuchusen2,  0);
setEffAlphaKey(  spep_1-6+48,  shuchusen2,  255);
setEffAlphaKey(  spep_1-6+280,  shuchusen2,  255);


--書き文字(ドガガガッ)
ctDoga = entryEffectLife( spep_1 + 46,  10017, 168, 0x100, -1, 0, 12, 370.7 );
setEffMoveKey( spep_1 + 46, ctDoga, 12, 370.7 , 0 );
setEffMoveKey( spep_1 + 48, ctDoga, 11.8, 371.2 , 0 );
setEffMoveKey( spep_1 + 50, ctDoga, 4, 380.1 , 0 );
setEffMoveKey( spep_1 + 52, ctDoga, 11.8, 371 , 0 );
setEffMoveKey( spep_1 + 54, ctDoga, 4.8, 378.9 , 0 );
setEffMoveKey( spep_1 + 56, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 58, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 60, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 62, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 64, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 66, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 68, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 70, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 72, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 74, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 76, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 78, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 80, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 82, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 84, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 86, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 88, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 90, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 92, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 94, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 96, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 98, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 100, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 102, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 104, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 106, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 108, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 110, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 112, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 114, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 116, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 118, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 120, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 122, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 124, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 126, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 128, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 130, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 132, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 134, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 136, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 138, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 140, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 142, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 144, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 146, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 148, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 150, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 152, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 154, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 156, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 158, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 160, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 162, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 164, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 166, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 168, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 170, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 172, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 174, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 176, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 178, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 180, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 182, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 184, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 186, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 188, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 190, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 192, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 194, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 196, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 198, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 200, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 202, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 204, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 206, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 208, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 210, ctDoga, 5.3, 378.4 , 0 );
setEffMoveKey( spep_1 + 212, ctDoga, 11.9, 370.7 , 0 );
setEffMoveKey( spep_1 + 214, ctDoga, 11.9, 370.7 , 0 );

setEffScaleKey( spep_1 + 46, ctDoga, 2.44, 2.44 );
setEffScaleKey( spep_1 + 48, ctDoga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 50, ctDoga, 3.06, 3.06 );
setEffScaleKey( spep_1 + 52, ctDoga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 54, ctDoga, 2.75, 2.75 );
setEffScaleKey( spep_1 + 56, ctDoga, 2.6, 2.6 );
setEffScaleKey( spep_1 + 214, ctDoga, 2.6, 2.6 );

setEffRotateKey( spep_1 + 46, ctDoga, -14.5 );
setEffRotateKey( spep_1 + 214, ctDoga, -14.5 );

setEffAlphaKey( spep_1 + 46, ctDoga, 255 );
setEffAlphaKey( spep_1 + 206, ctDoga, 255 );
setEffAlphaKey( spep_1 + 208, ctDoga, 191 );
setEffAlphaKey( spep_1 + 210, ctDoga, 128 );
setEffAlphaKey( spep_1 + 212, ctDoga, 64 );
setEffAlphaKey( spep_1 + 214, ctDoga, 0 );

--白フェード
entryFade( spep_1-6+48, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 230);     -- white fade

entryFade( spep_1-6+124, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 230);     -- white fade

entryFade( spep_1+252, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_1+312, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 342, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --黒　背景

--SE
playSe(  spep_1,  SE_04);
playSe(  spep_1+42,  1000);--パンチ
playSe(  spep_1+50,  1004);--振りかぶり
playSe(  spep_1+52,  1001);--パンチ
playSe(  spep_1+60,  1007);--蹴り
playSe(  spep_1+68,  1008);--蹴り
playSe(  spep_1+76,  1000);--パンチ
playSe(  spep_1+82,  1007);--蹴り
playSe(  spep_1+88,  1008);--蹴り
playSe(  spep_1+96,  1000);--パンチ
playSe(  spep_1+104,  1004);--振りかぶり
playSe(  spep_1+106,  1001);--パンチ
--ここまでアップ

playSe(  spep_1+126,  1000);--パンチ
playSe(  spep_1+132,  1001);--パンチ
playSe(  spep_1+138,  1007);--蹴り
playSe(  spep_1+146,  1008);--蹴り
playSe(  spep_1+154,  1001);--パンチ
playSe(  spep_1+160,  1007);--蹴り
playSe(  spep_1+166,  1008);--蹴り
playSe(  spep_1+172,  1004);--振りかぶり
playSe(  spep_1+174,  1001);--パンチ
playSe(  spep_1+184,  1000);--パンチ
playSe(  spep_1+190,  1007);--蹴り
playSe(  spep_1+198,  1001);--パンチ
playSe(  spep_1+204,  1007);--蹴り
playSe(  spep_1+210,  1008);--蹴り
playSe(  spep_1+226,  1017);--蹴り
playSe(  spep_1+246,  1011);--ビル破壊音

spep_2 = spep_1 + 320;

------------------------------------------------------
-- 敵叩きつけ→かめはめ波構え(280F)
------------------------------------------------------
--敵がビルに激突前(SP_06)
hit_f = entryEffect( spep_2, SP_06r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2, hit_f, 0, 0);
setEffMoveKey( spep_2+80, hit_f, 0, 0);
setEffScaleKey( spep_2, hit_f, 1, 1);
setEffScaleKey( spep_2+80, hit_f, 1, 1);
setEffRotateKey( spep_2, hit_f, 0);
setEffRotateKey( spep_2+80, hit_f, 0);
setEffAlphaKey( spep_2, hit_f, 255);
setEffAlphaKey( spep_2+80, hit_f, 255);

--敵がビルに激突奥(SP_07)
hit_b = entryEffect( spep_2, SP_07r, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_2, hit_b, 0, 0);
setEffMoveKey( spep_2+80, hit_b, 0, 0);
setEffScaleKey( spep_2, hit_b, 1, 1);
setEffScaleKey( spep_2+80, hit_b, 1, 1);
setEffRotateKey( spep_2, hit_b, 0);
setEffRotateKey( spep_2+80, hit_b, 0);
setEffAlphaKey( spep_2, hit_b, 255);
setEffAlphaKey( spep_2+80, hit_b, 255);

--かめはめ波構え(SP_08)
charge = entryEffect( spep_2+76, SP_08r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_2+76, charge, 0, 0);
setEffMoveKey( spep_2+176, charge, 0, 0);
setEffScaleKey( spep_2+76, charge, -1, 1);
setEffScaleKey( spep_2+176, charge, -1, 1);
setEffRotateKey( spep_2+76, charge, 0);
setEffRotateKey( spep_2+176, charge, 0);
setEffAlphaKey( spep_2+76, charge, 255);
setEffAlphaKey( spep_2+176, charge, 255);

--集中線
shuchusen2 = entryEffectLife( spep_2+26, 906, 54, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+26,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+80,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+26,  shuchusen2,  1.1,  1.4);
setEffScaleKey(  spep_2+80,  shuchusen2,  1.1,  1.4);
setEffRotateKey(  spep_2+26,  shuchusen2,  0);
setEffRotateKey(  spep_2+80,  shuchusen2,  0);
setEffAlphaKey(  spep_2+26,  shuchusen2,  255);
setEffAlphaKey(  spep_2+80,  shuchusen2,  255);

--集中線
shuchusen3 = entryEffectLife( spep_2+106, 906, 124, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2+106,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+230,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+106,  shuchusen3,  1.1,  1.4);
setEffScaleKey(  spep_2+230,  shuchusen3,  1.1,  1.4);
setEffRotateKey(  spep_2+106,  shuchusen3,  0);
setEffRotateKey(  spep_2+230,  shuchusen3,  0);
setEffAlphaKey(  spep_2+106,  shuchusen3,  255);
setEffAlphaKey(  spep_2+230,  shuchusen3,  255);

--顔カットイン
--speff=entryEffect(spep_2+130,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+130,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGogo=entryEffectLife(spep_2+122,190006,72,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+122,ctGogo,0,520,0);
setEffMoveKey(spep_2+194,ctGogo,0,520,0);

setEffScaleKey(spep_2+122, ctGogo, -0.7, 0.7);
setEffScaleKey(spep_2+192, ctGogo, -0.7, 0.7);
setEffScaleKey(spep_2+194, ctGogo, -1.8, 1.8);

setEffAlphaKey( spep_2 + 122, ctGogo, 255 );
setEffAlphaKey( spep_2 + 194, ctGogo, 255 );

setEffRotateKey(spep_2+122,ctGogo,0);
setEffRotateKey(spep_2+194,ctGogo,0);

--書き文字(ドゴォンッ)
ctDogo = entryEffectLife( spep_2 + 26,  10018, 38, 0x100, -1, 0, -81.8, 345.2 );
setEffMoveKey( spep_2 + 26, ctDogo, -81.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 28, ctDogo, -80, 344.7 , 0 );
setEffMoveKey( spep_2 + 30, ctDogo, -80, 344.6 , 0 );
setEffMoveKey( spep_2 + 32, ctDogo, -83.4, 345.3 , 0 );
setEffMoveKey( spep_2 + 34, ctDogo, -80, 344.7 , 0 );
setEffMoveKey( spep_2 + 36, ctDogo, -82.9, 345.3 , 0 );
setEffMoveKey( spep_2 + 38, ctDogo, -80.1, 344.8 , 0 );
setEffMoveKey( spep_2 + 40, ctDogo, -82.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 42, ctDogo, -80.1, 344.7 , 0 );
setEffMoveKey( spep_2 + 44, ctDogo, -82.8, 345.2 , 0 );
setEffMoveKey( spep_2 + 46, ctDogo, -80.1, 344.6 , 0 );
setEffMoveKey( spep_2 + 48, ctDogo, -82.7, 345.1 , 0 );
setEffMoveKey( spep_2 + 50, ctDogo, -80.1, 344.5 , 0 );
setEffMoveKey( spep_2 + 52, ctDogo, -80, 344.5 , 0 );
setEffMoveKey( spep_2 + 54, ctDogo, -82.6, 345 , 0 );
setEffMoveKey( spep_2 + 56, ctDogo, -80.1, 344.5 , 0 );
setEffMoveKey( spep_2 + 58, ctDogo, -82.6, 345.1 , 0 );
setEffMoveKey( spep_2 + 60, ctDogo, -80.1, 344.6 , 0 );
setEffMoveKey( spep_2 + 62, ctDogo, -82.6, 345.1 , 0 );
setEffMoveKey( spep_2 + 64, ctDogo, -82.6, 345.1 , 0 );

setEffScaleKey( spep_2 + 26, ctDogo, 2.12, 2.12 );
setEffScaleKey( spep_2 + 28, ctDogo, 3.25, 3.25 );
setEffScaleKey( spep_2 + 30, ctDogo, 4.38, 4.38 );
setEffScaleKey( spep_2 + 32, ctDogo, 4.05, 4.05 );
setEffScaleKey( spep_2 + 34, ctDogo, 3.71, 3.71 );
setEffScaleKey( spep_2 + 36, ctDogo, 3.38, 3.38 );
setEffScaleKey( spep_2 + 38, ctDogo, 3.33, 3.33 );
setEffScaleKey( spep_2 + 40, ctDogo, 3.29, 3.29 );
setEffScaleKey( spep_2 + 42, ctDogo, 3.24, 3.24 );
setEffScaleKey( spep_2 + 44, ctDogo, 3.19, 3.19 );
setEffScaleKey( spep_2 + 46, ctDogo, 3.14, 3.14 );
setEffScaleKey( spep_2 + 48, ctDogo, 3.1, 3.1 );
setEffScaleKey( spep_2 + 50, ctDogo, 3.05, 3.05 );
setEffScaleKey( spep_2 + 52, ctDogo, 3, 3 );
setEffScaleKey( spep_2 + 54, ctDogo, 2.99, 2.99 );
setEffScaleKey( spep_2 + 56, ctDogo, 2.98, 2.98 );
setEffScaleKey( spep_2 + 58, ctDogo, 2.97, 2.97 );
setEffScaleKey( spep_2 + 60, ctDogo, 2.95, 2.95 );
setEffScaleKey( spep_2 + 62, ctDogo, 2.94, 2.94 );
setEffScaleKey( spep_2 + 64, ctDogo, 2.93, 2.93 );

setEffRotateKey( spep_2 + 26, ctDogo, -24.7 );
setEffRotateKey( spep_2 + 42, ctDogo, -24.7 );
setEffRotateKey( spep_2 + 44, ctDogo, -24.6 );
setEffRotateKey( spep_2 + 64, ctDogo, -24.6 );

setEffAlphaKey( spep_2 + 26, ctDogo, 255 );
setEffAlphaKey( spep_2 + 52, ctDogo, 255 );
setEffAlphaKey( spep_2 + 54, ctDogo, 213 );
setEffAlphaKey( spep_2 + 56, ctDogo, 170 );
setEffAlphaKey( spep_2 + 58, ctDogo, 128 );
setEffAlphaKey( spep_2 + 60, ctDogo, 85 );
setEffAlphaKey( spep_2 + 62, ctDogo, 42 );
setEffAlphaKey( spep_2 + 64, ctDogo, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2-3 + 0, 1, -439.4, 224.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 137.1, 11.2 , 0 );
setMoveKey( spep_2-3 + 34, 1, 132.8, 1.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 142.2, 8.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, 139.6, 3.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 144.9, 6.3 , 0 );
setMoveKey( spep_2-3 + 42, 1, 138.3, -2.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 147.7, 4.2 , 0 );
setMoveKey( spep_2-3 + 46, 1, 145, -0.8 , 0 );
setMoveKey( spep_2-3 + 48, 1, 150.4, 2.2 , 0 );
setMoveKey( spep_2-3 + 50, 1, 143.8, -6.8 , 0 );
setMoveKey( spep_2-3 + 52, 1, 153.1, 0.1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 150.5, -8.9 , 0 );
setMoveKey( spep_2-3 + 56, 1, 155.9, -1.9 , 0 );
setMoveKey( spep_2-3 + 58, 1, 149.2, -14.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 158.6, -4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 156, -13 , 0 );
setMoveKey( spep_2-3 + 64, 1, 161.3, -6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 154.7, -11 , 0 );
setMoveKey( spep_2-3 + 68, 1, 164.1, -8.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 161.4, -17.1 , 0 );
setMoveKey( spep_2-3 + 72, 1, 166.8, -10.1 , 0 );
setMoveKey( spep_2-3 + 74, 1, 160.2, -19.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, 169.6, -12.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 166.9, -21.2 , 0 );

setScaleKey( spep_2-3 + 0, 1, 8.0, 8.0 );
setScaleKey( spep_2-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 46, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 54, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 60, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 62, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 72, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 76, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 78, 1, 0.78, 0.78 );

setRotateKey( spep_2-3 + 0, 1, 21.3 );
setRotateKey( spep_2-3 + 2, 1, 21.4 );
setRotateKey( spep_2-3 + 4, 1, 21.4 );
setRotateKey( spep_2-3 + 6, 1, 21.5 );

--SE
playSe( spep_2, 44);
playSe( spep_2+28, SE_13);

playSe( spep_2+112, SE_01);

playSe( spep_2+144, SE_04);
playSe( spep_2+164, SE_02);
playSe( spep_2+184, SE_02);
playSe( spep_2+204, SE_02);

--白フェード
entryFade( spep_2 + 68, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 226;

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

shuchusen2 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen2,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_3,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen2,  0);
setEffRotateKey(  spep_3+90,  shuchusen2,  0);
setEffAlphaKey(  spep_3,  shuchusen2,  255);
setEffAlphaKey(  spep_3+90,  shuchusen2,  255);

--***背景と白フェード***
entryFade( spep_3+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 90;

------------------------------------------------------
-- かめはめ波発射(210F)
------------------------------------------------------
--かめはめ波発射(SP_09)
shoot = entryEffectLife( spep_4, SP_09r, 86, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4, shoot, 0, 0);
setEffMoveKey( spep_4+86, shoot, 0, 0);
setEffScaleKey( spep_4, shoot, 1, 1);
setEffScaleKey( spep_4+86, shoot, 1, 1);
setEffRotateKey( spep_4, shoot, 0);
setEffRotateKey( spep_4+86, shoot, 0);
setEffAlphaKey( spep_4, shoot, 255);
setEffAlphaKey( spep_4+86, shoot, 255);

--かめはめ迫る前(SP_10)
semaru_f = entryEffect( spep_4+86, SP_10r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_4+86, semaru_f, 0, 0);
setEffMoveKey( spep_4+206, semaru_f, 0, 0);
setEffScaleKey( spep_4+86, semaru_f, 1, 1);
setEffScaleKey( spep_4+206, semaru_f, 1, 1);
setEffRotateKey( spep_4+86, semaru_f, 0);
setEffRotateKey( spep_4+206, semaru_f, 0);
setEffAlphaKey( spep_4+86, semaru_f, 255);
setEffAlphaKey( spep_4+206, semaru_f, 255);

--かめはめ迫る奥(SP_11)
semaru_r = entryEffect( spep_4+86, SP_11r, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4+86, semaru_r, 0, 0);
setEffMoveKey( spep_4+146, semaru_r, 0, 0);
setEffScaleKey( spep_4+86, semaru_r, 1, 1);
setEffScaleKey( spep_4+146, semaru_r, 1, 1);
setEffRotateKey( spep_4+86, semaru_r, 0);
setEffRotateKey( spep_4+146, semaru_r, 0);
setEffAlphaKey( spep_4+86, semaru_r, 255);
setEffAlphaKey( spep_4+146, semaru_r, 255);

--黄色ギャン
gyan = entryEffectLife(spep_4+142, SP_12r, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_4+142, gyan, 0, 0);
setEffMoveKey(spep_4+202, gyan, 0, 0);
setEffScaleKey( spep_4+142, gyan, 1.0, 1.0);
setEffScaleKey( spep_4+202, gyan, 1.0, 1.0);
setEffRotateKey(spep_4+142, gyan, 0);
setEffRotateKey(spep_4+202, gyan, 0);
setEffAlphaKey(spep_4+142, gyan, 255);
setEffAlphaKey(spep_4+202, gyan, 255);

--集中線
shuchusen4 = entryEffectLife( spep_4+30, 906, 140, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_4+30,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+170,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+30,  shuchusen4,  1.3,  1.9);
setEffScaleKey(  spep_4+170,  shuchusen4,  1.3,  1.9);
setEffRotateKey(  spep_4+30,  shuchusen4,  0);
setEffRotateKey(  spep_4+170,  shuchusen4,  0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);
setEffAlphaKey(  spep_4+170,  shuchusen4,  255);

--書き文字(ズオッ)
ctZuo2 = entryEffectLife( spep_4 + 30,  10012, 48, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_4 + 30, ctZuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 32, ctZuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_4 + 34, ctZuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_4 + 36, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 38, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 40, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 42, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 44, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 46, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 48, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 50, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 52, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 54, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 56, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 58, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 60, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 62, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 64, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 66, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 68, ctZuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_4 + 70, ctZuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 72, ctZuo2, 167.1, 345 , 0 );
setEffMoveKey( spep_4 + 74, ctZuo2, 153.1, 368.5 , 0 );
setEffMoveKey( spep_4 + 76, ctZuo2, 193.8, 337.2 , 0 );
setEffMoveKey( spep_4 + 78, ctZuo2, 207.3, 333.2 , 0 );

setEffScaleKey( spep_4 + 30, ctZuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 32, ctZuo2, 1.13, 1.13 );
setEffScaleKey( spep_4 + 34, ctZuo2, 1.94, 1.94 );
setEffScaleKey( spep_4 + 36, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 70, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 72, ctZuo2, 3.68, 3.68 );
setEffScaleKey( spep_4 + 74, ctZuo2, 4.67, 4.67 );
setEffScaleKey( spep_4 + 76, ctZuo2, 5.63, 5.63 );
setEffScaleKey( spep_4 + 78, ctZuo2, 6.62, 6.62 );

setEffRotateKey( spep_4-2 + 30, ctZuo2, 20);
setEffRotateKey( spep_4-2 + 78,  ctZuo2, 20);

setEffAlphaKey( spep_4 + 30, ctZuo2, 255 );
setEffAlphaKey( spep_4 + 70, ctZuo2, 255 );
setEffAlphaKey( spep_4 + 72, ctZuo2, 191 );
setEffAlphaKey( spep_4 + 74, ctZuo2, 128 );
setEffAlphaKey( spep_4 + 76, ctZuo2, 64 );
setEffAlphaKey( spep_4 + 78, ctZuo2, 0 );


c=100;
--書き文字(ズドドドッ)
ctZud = entryEffectLife( spep_4-4 + 90,  10014, 58, 0x100, -1, 0, 164.2 - c, 325.6 );
setEffMoveKey( spep_4-4 + 90, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 92, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 94, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 96, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 98, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 100, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 102, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 104, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 106, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 108, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 110, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 112, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 114, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 116, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 118, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 120, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 122, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 124, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 126, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 128, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 130, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 132, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 134, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 136, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 138, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 140, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 142, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 144, ctZud, 148.2 - c, 307.1 , 0 );
setEffMoveKey( spep_4-4 + 146, ctZud, 164.2 - c, 325.6 , 0 );
setEffMoveKey( spep_4-4 + 148, ctZud, 148.2 - c, 307.1 , 0 );

setEffScaleKey( spep_4-4 + 90, ctZud, 2.73, 2.73 );
setEffScaleKey( spep_4-4 + 148, ctZud, 2.73, 2.73 );

setEffRotateKey( spep_4-4 + 90, ctZud, -42 );
setEffRotateKey( spep_4-4 + 148, ctZud, -42 );

setEffAlphaKey( spep_4-4 + 90, ctZud, 255 );
setEffAlphaKey( spep_4-4 + 148, ctZud, 255 );

--書き文字(ギャンッ)
ctGyan = entryEffectLife( spep_4-8 + 150,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4-8 + 150, ctGyan, 8.8, 313 , 0 );
setEffMoveKey( spep_4-8 + 152, ctGyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4-8 + 154, ctGyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4-8 + 156, ctGyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4-8 + 158, ctGyan, 10, 317.1 , 0 );
setEffMoveKey( spep_4-8 + 160, ctGyan, 10, 317.2 , 0 );
setEffMoveKey( spep_4-8 + 162, ctGyan, 10, 317.3 , 0 );
setEffMoveKey( spep_4-8 + 164, ctGyan, 10, 317.4 , 0 );
setEffMoveKey( spep_4-8 + 166, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4-8 + 168, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4-8 + 170, ctGyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4-8 + 172, ctGyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4-8 + 174, ctGyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4-8 + 176, ctGyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4-8 + 178, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4-8 + 180, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4-8 + 182, ctGyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4-8 + 184, ctGyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4-8 + 186, ctGyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4-8 + 188, ctGyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4-8 + 190, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4-8 + 192, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4-8 + 194, ctGyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4-8 + 196, ctGyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4-8 + 198, ctGyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4-8 + 200, ctGyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4-8 + 202, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4-8 + 204, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4-8 + 206, ctGyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4-8 + 208, ctGyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4-8 + 150, ctGyan, 2.11, 2.11 );
setEffScaleKey( spep_4-8 + 152, ctGyan, 2.47, 2.47 );
setEffScaleKey( spep_4-8 + 154, ctGyan, 2.82, 2.82 );
setEffScaleKey( spep_4-8 + 156, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_4-8 + 158, ctGyan, 3.53, 3.53 );
setEffScaleKey( spep_4-8 + 160, ctGyan, 3.56, 3.56 );
setEffScaleKey( spep_4-8 + 162, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4-8 + 164, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4-8 + 166, ctGyan, 3.63, 3.63 );
setEffScaleKey( spep_4-8 + 168, ctGyan, 3.67, 3.67 );
setEffScaleKey( spep_4-8 + 170, ctGyan, 3.7, 3.7 );
setEffScaleKey( spep_4-8 + 172, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4-8 + 174, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4-8 + 176, ctGyan, 3.77, 3.77 );
setEffScaleKey( spep_4-8 + 178, ctGyan, 3.81, 3.81 );
setEffScaleKey( spep_4-8 + 180, ctGyan, 3.85, 3.85 );
setEffScaleKey( spep_4-8 + 182, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4-8 + 184, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4-8 + 186, ctGyan, 3.92, 3.92 );
setEffScaleKey( spep_4-8 + 188, ctGyan, 3.95, 3.95 );
setEffScaleKey( spep_4-8 + 190, ctGyan, 3.99, 3.99 );
setEffScaleKey( spep_4-8 + 192, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4-8 + 194, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4-8 + 196, ctGyan, 4.06, 4.06 );
setEffScaleKey( spep_4-8 + 198, ctGyan, 4.09, 4.09 );
setEffScaleKey( spep_4-8 + 200, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4-8 + 202, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4-8 + 204, ctGyan, 4.16, 4.16 );
setEffScaleKey( spep_4-8 + 206, ctGyan, 4.2, 4.2 );
setEffScaleKey( spep_4-8 + 208, ctGyan, 4.23, 4.23 );

setEffRotateKey( spep_4-8 + 150, ctGyan, -5.2 );
setEffRotateKey( spep_4-8 + 208, ctGyan, -5.2 );

setEffAlphaKey( spep_4-8 + 150, ctGyan, 255 );
setEffAlphaKey( spep_4-8 + 208, ctGyan, 255 );

--敵の動き
setDisp( spep_4-7+90 + 0, 1, 1 );
setDisp( spep_4-7+90 + 59, 1, 0 );
setDisp( spep_4-7+90 + 60, 1, 0 );
changeAnime( spep_4-7+90 + 0, 1, 108 );

setMoveKey( spep_4-7+90 + 0, 1, 881.5, -609.2 , 0 );
setMoveKey( spep_4-7+90 + 2, 1, 794.4, -547.4 , 0 );
setMoveKey( spep_4-7+90 + 4, 1, 707.2, -485.5 , 0 );
setMoveKey( spep_4-7+90 + 6, 1, 620.1, -423.7 , 0 );
setMoveKey( spep_4-7+90 + 8, 1, 532.9, -361.8 , 0 );
setMoveKey( spep_4-7+90 + 10, 1, 445.8, -300 , 0 );
setMoveKey( spep_4-7+90 + 12, 1, 358.6, -238.2 , 0 );
setMoveKey( spep_4-7+90 + 14, 1, 348.2, -231.5 , 0 );
setMoveKey( spep_4-7+90 + 16, 1, 337.7, -224.9 , 0 );
setMoveKey( spep_4-7+90 + 18, 1, 327.2, -218.3 , 0 );
setMoveKey( spep_4-7+90 + 20, 1, 316.8, -211.7 , 0 );
setMoveKey( spep_4-7+90 + 22, 1, 306.3, -205 , 0 );
setMoveKey( spep_4-7+90 + 24, 1, 295.8, -198.4 , 0 );
setMoveKey( spep_4-7+90 + 26, 1, 285.4, -191.8 , 0 );
setMoveKey( spep_4-7+90 + 28, 1, 274.9, -185.2 , 0 );
setMoveKey( spep_4-7+90 + 30, 1, 264.5, -178.5 , 0 );
setMoveKey( spep_4-7+90 + 32, 1, 254, -171.9 , 0 );
setMoveKey( spep_4-7+90 + 34, 1, 243.5, -165.3 , 0 );
setMoveKey( spep_4-7+90 + 36, 1, 233.1, -158.7 , 0 );
setMoveKey( spep_4-7+90 + 38, 1, 222.6, -152 , 0 );
setMoveKey( spep_4-7+90 + 40, 1, 212.1, -145.4 , 0 );
setMoveKey( spep_4-7+90 + 42, 1, 201.7, -138.8 , 0 );
setMoveKey( spep_4-7+90 + 44, 1, 191.2, -132.1 , 0 );
setMoveKey( spep_4-7+90 + 46, 1, 180.7, -125.5 , 0 );
setMoveKey( spep_4-7+90 + 48, 1, 170.3, -118.9 , 0 );
setMoveKey( spep_4-7+90 + 50, 1, 159.8, -112.3 , 0 );
setMoveKey( spep_4-7+90 + 52, 1, 149.4, -105.6 , 0 );
setMoveKey( spep_4-7+90 + 54, 1, 138.9, -99 , 0 );
setMoveKey( spep_4-7+90 + 56, 1, 128.4, -92.4 , 0 );
setMoveKey( spep_4-7+90 + 58, 1, 118, -85.7 , 0 );

setScaleKey( spep_4-7+90 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_4-7+90 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_4-7+90 + 4, 1, 1.17, 1.17 );
setScaleKey( spep_4-7+90 + 6, 1, 1.1, 1.1 );
setScaleKey( spep_4-7+90 + 8, 1, 1.03, 1.03 );
setScaleKey( spep_4-7+90 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_4-7+90 + 12, 1, 0.88, 0.88 );
setScaleKey( spep_4-7+90 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_4-7+90 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_4-7+90 + 18, 1, 0.84, 0.84 );
setScaleKey( spep_4-7+90 + 20, 1, 0.82, 0.82 );
setScaleKey( spep_4-7+90 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_4-7+90 + 24, 1, 0.79, 0.79 );
setScaleKey( spep_4-7+90 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_4-7+90 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_4-7+90 + 30, 1, 0.74, 0.74 );
setScaleKey( spep_4-7+90 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_4-7+90 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4-7+90 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_4-7+90 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_4-7+90 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_4-7+90 + 42, 1, 0.65, 0.65 );
setScaleKey( spep_4-7+90 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_4-7+90 + 46, 1, 0.62, 0.62 );
setScaleKey( spep_4-7+90 + 48, 1, 0.61, 0.61 );
setScaleKey( spep_4-7+90 + 50, 1, 0.59, 0.59 );
setScaleKey( spep_4-7+90 + 52, 1, 0.57, 0.57 );
setScaleKey( spep_4-7+90 + 54, 1, 0.56, 0.56 );
setScaleKey( spep_4-7+90 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_4-7+90 + 58, 1, 0.53, 0.53 );

setRotateKey( spep_4-7+90 + 0, 1, 21.5 );

--***背景と白フェード***
entryFade( spep_4+80, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_4+134, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_4+188, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe( spep_4, SE_02);
playSe( spep_4+20, SE_02);
playSe( spep_4+30, SE_07);

playSe( spep_4+92, SE_06);

playSe( spep_4+140, SE_09);

spep_5 = spep_4 + 200;

------------------------------------------------------
-- 締め爆発(160F)
------------------------------------------------------

--締め爆発(SP_09)
bomb = entryEffect( spep_5, SP_13r, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_5, bomb, 0, 0);
setEffMoveKey( spep_5+160, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1, 1);
setEffScaleKey( spep_5+160, bomb, 1, 1);
setEffRotateKey( spep_5, bomb, 0);
setEffRotateKey( spep_5+160, bomb, 0);
setEffAlphaKey( spep_5, bomb, 255);
setEffAlphaKey( spep_5+160, bomb, 255);

--SE
playSe(spep_5+30, SE_10);

-- ダメージ表示
dealDamage(spep_5+50);
endPhase(spep_5+150);

end