--sp0442 超サイヤ人2キャベ　サイヤ人の意地

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

SE_03k = 1000; --パンチ
SE_04k = 1001; --蹴り
SE_05k = 1009; --強いパンチ
SE_06k = 1010; --強い蹴り

--味方側
SP_01 = 151331;--気溜め 100F
SP_02 = 151332;--キックビーム 210F
SP_03 = 151333;--ビーム迫る 30F
SP_04 = 151334;--パンチラッシュ 84F
--カードカットイン--
SP_05 = 151335;--溜め 108F
SP_06 = 151336;--発射 150F
--エンド--
SP_07 = 1674;
--敵側
SP_01e = 151374;--気溜め 100F
SP_02e = 151375;--キックビーム 210F
SP_04e = 151376;--パンチラッシュ 84F


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
-- 気溜め(100F) (0-100F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1 = 0;

entryFadeBg(spep1,0,100,0,10,10,10,210);

Kitame= entryEffectLife(spep1,SP_01,100,0x100, -1,0,0,0);
setEffMoveKey(spep1,Kitame,0,0,0);
setEffScaleKey(spep1,Kitame,1.0,1.0);
setEffRotateKey(spep1,Kitame,0);
setEffAlphaKey(spep1,Kitame,255);

setEffMoveKey(spep1+100,Kitame,0,0,0);
setEffScaleKey(spep1+100,Kitame,1.0,1.0);
setEffRotateKey(spep1+100,Kitame,0);
setEffAlphaKey(spep1+100,Kitame,255);

syu1 = entryEffectLife(spep1+11,906,89,0x80, -1,0,0,0);

setEffMoveKey(spep1+11,syu1,0,0,0);
setEffScaleKey(spep1+11,syu1,1.0,1.0);
setEffRotateKey(spep1+11,syu1,0);
setEffAlphaKey(spep1+11,syu1,255);

setEffMoveKey(spep1+100,syu1,0,0,0);
setEffScaleKey(spep1+100,syu1,1.0,1.0);
setEffRotateKey(spep1+100,syu1,0);
setEffAlphaKey(spep1+100,syu1,255);

setEffShake(spep1+11,Kitame,89,10);

--SE--
playSe(spep1+11,SE_01);

entryFade( spep1+95, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- キックビーム 210F (100-306F)
------------------------------------------------------
spep2= spep1+100;

changeAnime(spep2-1,1,102);
setDisp(spep2-1,1,1);
setMoveKey(spep2-1,1,400,-400);
setScaleKey(spep2-1,1,2.5,2.5);
setRotateKey(spep2-1,0);

setMoveKey(spep2+13,1,300,-270);
setScaleKey(spep2+13,1,2.5,2.5);
setRotateKey(spep2+13,0);

setMoveKey(spep2+28,1,300,-270);
setScaleKey(spep2+28,1,2.5,2.5);
setRotateKey(spep2+28,0);

setMoveKey(spep2+39,1,300,-800);
setScaleKey(spep2+39,1,2.5,2.5);
setRotateKey(spep2+39,0);

setDisp(spep2+45,1,0);
setMoveKey(spep2+45,1,300,-800);
setScaleKey(spep2+45,1,2.5,2.5);
setRotateKey(spep2+45,0);

setMoveKey(spep2+205,1,300,-800);
setScaleKey(spep2+205,1,2.5,2.5);
setRotateKey(spep2+205,0);

entryFadeBg(spep2,0,206,0,10,10,10,210);

KickBeam= entryEffectLife(spep2,SP_02,206,0x100, -1,0,0,0);
setEffMoveKey(spep2,KickBeam,0,0,0);
setEffScaleKey(spep2,KickBeam,1.0,1.0);
setEffRotateKey(spep2,KickBeam,0);
setEffAlphaKey(spep2,KickBeam,255);

setEffMoveKey(spep2+206,KickBeam,0,0,0);
setEffScaleKey(spep2+206,KickBeam,1.0,1.0);
setEffRotateKey(spep2+206,KickBeam,0);
setEffAlphaKey(spep2+206,KickBeam,255);

setEffShake(spep2,KickBeam,206,10);

syu2 = entryEffectLife(spep2,906,206,0x80, -1,0,0,0);

setEffMoveKey(spep2,syu2,0,0,0);
setEffScaleKey(spep2,syu2,1.0,1.0);
setEffRotateKey(spep2,syu2,0);
setEffAlphaKey(spep2,syu2,255);

setEffMoveKey(spep2+206,syu2,0,0,0);
setEffScaleKey(spep2+206,syu2,1.0,1.0);
setEffRotateKey(spep2+206,syu2,0);
setEffAlphaKey(spep2+206,syu2,255);

ryu2a = entryEffectLife(spep2+25,922,60,0x80, -1,0,0,0);

setEffMoveKey(spep2+25,ryu2a,0,0,0);
setEffScaleKey(spep2+25,ryu2a,1.0,1.0);
setEffRotateKey(spep2+25,ryu2a,0);
setEffAlphaKey(spep2+25,ryu2a,255);

setEffMoveKey(spep2+85,ryu2a,0,0,0);
setEffScaleKey(spep2+85,ryu2a,1.0,1.0);
setEffRotateKey(spep2+85,ryu2a,0);
setEffAlphaKey(spep2+85,ryu2a,255);

ryu2b = entryEffectLife(spep2+86,922,120,0x80, -1,0,0,0);

setEffMoveKey(spep2+25,ryu2b,0,0,0);
setEffScaleKey(spep2+25,ryu2b,1.2,1.2);
setEffRotateKey(spep2+25,ryu2b,340);
setEffAlphaKey(spep2+25,ryu2b,255);

setEffMoveKey(spep2+85,ryu2b,0,0,0);
setEffScaleKey(spep2+85,ryu2b,1.2,1.2);
setEffRotateKey(spep2+85,ryu2b,340);
setEffAlphaKey(spep2+85,ryu2b,255);

--124F　シュン（15F）
ctShun = entryEffectLife(spep2+24,10011,15,0x100, -1,0,0,0);
setEffMoveKey(spep2+24,ctShun,30,100,0);
setEffScaleKey(spep2+24,ctShun,0.6,0.6);
setEffRotateKey(spep2+24,ctShun,20);
setEffAlphaKey(spep2+24,ctShun,255);

setEffMoveKey(spep2+28,ctShun,30,200,0);
setEffScaleKey(spep2+28,ctShun,2.0,2.0);
setEffRotateKey(spep2+28,ctShun,20);
setEffAlphaKey(spep2+28,ctShun,255);

setEffMoveKey(spep2+36,ctShun,30,200,0);
setEffScaleKey(spep2+36,ctShun,2.0,2.0);
setEffRotateKey(spep2+36,ctShun,20);
setEffAlphaKey(spep2+36,ctShun,255);

setEffMoveKey(spep2+39,ctShun,30,200,0);
setEffScaleKey(spep2+39,ctShun,3.0,3.0);
setEffRotateKey(spep2+39,ctShun,20);
setEffAlphaKey(spep2+39,ctShun,0);

--268F
ctZuo2 = entryEffectLife(spep2+168,10012,38,0x100, -1,0,0,0);
setEffMoveKey(spep2+168,ctZuo2,50,0,0);
setEffScaleKey(spep2+168,ctZuo2,0.1,0.1);
setEffRotateKey(spep2+168,ctZuo2,20);
setEffAlphaKey(spep2+168,ctZuo2,255);

setEffMoveKey(spep2+172,ctZuo2,50,100,0);
setEffScaleKey(spep2+172,ctZuo2,2.0,2.0);
setEffRotateKey(spep2+172,ctZuo2,20);
setEffAlphaKey(spep2+172,ctZuo2,255);

setEffMoveKey(spep2+206,ctZuo2,100,300,0);
setEffScaleKey(spep2+206,ctZuo2,2.0,2,0);
setEffRotateKey(spep2+206,ctZuo2,20);
setEffAlphaKey(spep2+206,ctZuo2,255);

setEffShake(spep2+168,ctZuo2,38,20);

--SE--
playSe(spep2+24,43);--瞬間移動
playSe(spep2+94,1021);--瞬間移動
playSe(spep2+119,1021);--瞬間移動
playSe(spep2+168,SE_07);

entryFade( spep2+200, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ビーム 22F 33
------------------------------------------------------
spep3= spep2+207;

setDisp(spep3,1,1);

setMoveKey(spep3,1,0,0,0);
setScaleKey(spep3,1,1.5,1.5);
setRotateKey(spep3,0);

setMoveKey(spep3+6,1,0,0,0);
setScaleKey(spep3+6,1,1.5,1.5);
setRotateKey(spep3+6,1,0);

setShakeChara(spep3,1,20,20);

BeamB= entryEffectLife(spep3,SP_03,20,0x100, -1,0,0,0);
setEffMoveKey(spep3,BeamB,0,0,0);
setEffScaleKey(spep3,BeamB,1.0,1.0);
setEffRotateKey(spep3,BeamB,0);
setEffAlphaKey(spep3,BeamB,0);

setEffMoveKey(spep3+6,BeamB,0,0,0);
setEffScaleKey(spep3+6,BeamB,1.0,1.0);
setEffRotateKey(spep3+6,BeamB,0);

setEffAlphaKey(spep3+6,BeamB,0);
setEffAlphaKey(spep3+7,BeamB,255);
setEffAlphaKey(spep3+20,BeamB,255);

ctZuo3 = entryEffectLife(spep3,10012,8,0x100, -1,0,0,0);

setEffMoveKey(spep3,ctZuo3,100,300,0);
setEffScaleKey(spep3,ctZuo3,2.0,2.0);
setEffRotateKey(spep3,ctZuo3,20);
setEffAlphaKey(spep3,ctZuo3,255);

setEffMoveKey(spep3+4,ctZuo3,100,300,0);
setEffScaleKey(spep3+4,ctZuo3,2.0,2.0);
setEffRotateKey(spep3+4,ctZuo3,20);
setEffAlphaKey(spep3+4,ctZuo3,255);

setEffMoveKey(spep3+8,ctZuo3,100,300,0);
setEffScaleKey(spep3+8,ctZuo3,6.0,6.0);
setEffRotateKey(spep3+8,ctZuo3,20);
setEffAlphaKey(spep3+8,ctZuo3,0);

setEffShake(spep3+8,ctZuo3,8,20);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 299; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);


setDisp( SP_dodge, 0, 0);
setDisp( SP_dodge+10, 0, 0);
setMoveKey(  SP_dodge,    0,  5000,  5000,   0);
setMoveKey(  SP_dodge+9,    0,  5000,  5000,   0);
setMoveKey(  SP_dodge+10,    0,  5000,  5000,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, 0,   0);
setMoveKey(   SP_dodge+1,   0,    0, 0,   0);

setMoveKey(  SP_dodge,    1,  0,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   0, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------------------

changeAnime(spep3+7,1,107);

setMoveKey(spep3+7,1,0,-100,0);
setScaleKey(spep3+7,1,0.7,0.7);
setRotateKey(spep3+7,1,0);

setMoveKey(spep3+19,1,250,-500,0);
setScaleKey(spep3+19,1,1.1,1.1);
setRotateKey(spep3+19,1,0);

setDisp(spep3+19,1,0);

entryFadeBg(spep3,0,20,0,10,10,10,210);

syu3 = entryEffectLife(spep3,906,20,0x80, -1,0,0,0);

setEffMoveKey(spep3,syu3,0,0,0);
setEffScaleKey(spep3,syu3,1.0,1.0);
setEffRotateKey(spep3,syu3,0);
setEffAlphaKey(spep3,syu3,255);

setEffMoveKey(spep3+20,syu3,0,0,0);
setEffScaleKey(spep3+20,syu3,1.0,1.0);
setEffRotateKey(spep3+20,syu3,0);
setEffAlphaKey(spep3+20,syu3,255);

ryu3a = entryEffectLife(spep3,923,20,0x80, -1,0,0,0);

setEffMoveKey(spep3,ryu3a,0,0,0);
setEffScaleKey(spep3,ryu3a,1.2,1.2);
setEffRotateKey(spep3,ryu3a,340);
setEffAlphaKey(spep3,ryu3a,255);

setEffMoveKey(spep3+20,ryu3a,0,0,0);
setEffScaleKey(spep3+20,ryu3a,1.2,1.2);
setEffRotateKey(spep3+20,ryu3a,340);
setEffAlphaKey(spep3+20,ryu3a,255);

BeamA= entryEffectLife(spep3,SP_03,20,0x80, -1,0,0,0);
setEffMoveKey(spep3,BeamA,0,0,0);
setEffScaleKey(spep3,BeamA,1.0,1.0);
setEffRotateKey(spep3,BeamA,0);
setEffAlphaKey(spep3,BeamA,255);

setEffMoveKey(spep3+6,BeamA,0,0,0);
setEffScaleKey(spep3+6,BeamA,1.0,1.0);
setEffRotateKey(spep3+6,BeamA,0);
setEffAlphaKey(spep3+6,BeamA,255);
setEffAlphaKey(spep3+7,BeamA,0);

entryFade( spep3+15, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep3+7,SE_09);

------------------------------------------------------
-- パンチラッシュ 84F
------------------------------------------------------
spep4= spep3+20;

changeAnime(spep4,1,106);
changeAnime(spep4+16,1,108);

setDisp(spep4,1,1);
setDisp(spep4+64,1,0);

setMoveKey(spep4,1,400,0,0);
setMoveKey(spep4+15,1,100,0,0);
setMoveKey(spep4+16,1,250,300,0);
setMoveKey(spep4+29,1,500,750,0);
setMoveKey(spep4+33,1,500,750,0);
setMoveKey(spep4+39,1,150,180,0);
setMoveKey(spep4+59,1,150,180,0);
setMoveKey(spep4+64,1,500,750,0);

setScaleKey(spep4,1,1.5,1.5);
setScaleKey(spep4+15,1,1.5,1.5);
setScaleKey(spep4+16,1,1.5,1.5);
setScaleKey(spep4+29,1,1.5,1.5);
setScaleKey(spep4+39,1,1.5,1.5);
setScaleKey(spep4+59,1,1.5,1.5);
setScaleKey(spep4+64,1,1.5,1.5);

setRotateKey( spep4, 1, 340);
setRotateKey( spep4+15, 1, 340);
setRotateKey( spep4+16, 1, 340);
setRotateKey( spep4+29, 1, 340);
setRotateKey( spep4+39, 1, 340);
setRotateKey( spep4+59, 1, 340);
setRotateKey( spep4+64, 1, 340);

setShakeChara( spep4+1, 1, 83, 15);

entryFadeBg(spep4,0,84,0,10,10,10,255);

Punchrush= entryEffectLife(spep4,SP_04,84,0x100, -1,0,0,0);
setEffMoveKey(spep4,Punchrush,0,0,0);
setEffScaleKey(spep4,Punchrush,1.0,1.0);
setEffRotateKey(spep4,Punchrush,0);
setEffAlphaKey(spep4,Punchrush,255);

setEffMoveKey(spep4+84,Punchrush,0,0,0);
setEffScaleKey(spep4+84,Punchrush,1.0,1.0);
setEffRotateKey(spep4+84,Punchrush,0);
setEffAlphaKey(spep4+84,Punchrush,255);

setEffShake(spep4,Punchrush,84,10);

syu4a = entryEffectLife(spep4,906,35,0x80, -1,0,0,0);

setEffMoveKey(spep4,syu4a,0,0,0);
setEffScaleKey(spep4,syu4a,1.0,1.0);
setEffRotateKey(spep4,syu4a,0);
setEffAlphaKey(spep4,syu4a,255);

setEffMoveKey(spep4+35,syu4a,0,0,0);
setEffScaleKey(spep4+35,syu4a,1.0,1.0);
setEffRotateKey(spep4+35,syu4a,0);
setEffAlphaKey(spep4+35,syu4a,255);

syu4b = entryEffectLife(spep4+39,906,20,0x80, -1,0,0,0);

setEffMoveKey(spep4+39,syu4b,0,0,0);
setEffScaleKey(spep4+39,syu4b,1.0,1.0);
setEffRotateKey(spep4+39,syu4b,0);
setEffAlphaKey(spep4+39,syu4b,255);

setEffMoveKey(spep4+59,syu4b,0,0,0);
setEffScaleKey(spep4+59,syu4b,1.0,1.0);
setEffRotateKey(spep4+59,syu4b,0);
setEffAlphaKey(spep4+59,syu4b,255);

ryu4 = entryEffectLife(spep4,920,84,0x80, -1,0,0,0);

setEffMoveKey(spep4,ryu4,0,0,0);
setEffScaleKey(spep4,ryu4,1.7,1.7);
setEffRotateKey(spep4,ryu4,0);
setEffAlphaKey(spep4,ryu4,255);

setEffMoveKey(spep4+35,ryu4,0,0,0);
setEffScaleKey(spep4+35,ryu4,1.7,1.7);
setEffRotateKey(spep4+35,ryu4,0);
setEffAlphaKey(spep4+35,ryu4,255);

setEffMoveKey(spep4+36,ryu4,0,0,0);
setEffScaleKey(spep4+36,ryu4,1.7,1.7);
setEffRotateKey(spep4+36,ryu4,300);
setEffAlphaKey(spep4+36,ryu4,255);

setEffMoveKey(spep4+84,ryu4,0,0,0);
setEffScaleKey(spep4+84,ryu4,1.7,1.7);
setEffRotateKey(spep4+84,ryu4,300);
setEffAlphaKey(spep4+84,ryu4,255);

entryFade( spep4+79, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE--
playSe(spep4+18,1009);
playSe(spep4+62,1010);
------------------------------------------------------
-- 溜め 108F
------------------------------------------------------
spep5= spep4+84;

setDisp(spep5,1,1);
setDisp(spep5+103,1,0);

setMoveKey(spep5-1,1,500,750,0);
setMoveKey(spep5,1,50,150,0);
setMoveKey(spep5+30,1,250,350,0);
setMoveKey(spep5+103,1,250,350,0);

setScaleKey(spep5-1,1,1.5,1.5);
setScaleKey(spep5,1,1.0,1.0);
setScaleKey(spep5+30,1,0.8,0.8);
setScaleKey(spep5+103,1,0.8,0.8);

setRotateKey( spep5, 1, 330);
setRotateKey( spep5+30, 1, 330);
setRotateKey( spep5+103, 1, 330);

setShakeChara( spep5+1, 1, 103, 15);

entryFadeBg(spep5,0,108,0,10,10,10,255);

Tame = entryEffectLife(spep5,SP_05,108,0x100, -1,0,0,0);
setEffMoveKey(spep5,Tame ,0,0,0);
setEffScaleKey(spep5,Tame ,1.0,1.0);
setEffRotateKey(spep5,Tame ,0);
setEffAlphaKey(spep5,Tame ,255);

setEffMoveKey(spep5+108,Tame ,0,0,0);
setEffScaleKey(spep5+108,Tame ,1.0,1.0);
setEffRotateKey(spep5+108,Tame ,0);
setEffAlphaKey(spep5+108,Tame ,255);

setEffShake(spep5,Tame,108,10);

ryu5 = entryEffectLife(spep5,921,108,0x80, -1,0,0,0);
setEffMoveKey(spep5,ryu5,0,0,0);
setEffScaleKey(spep5,ryu5,1.7,1.7);
setEffRotateKey(spep5,ryu5,300);
setEffAlphaKey(spep5,ryu5,255);

setEffMoveKey(spep5+108,ryu5,0,0,0);
setEffScaleKey(spep5+108,ryu5,1.7,1.7);
setEffRotateKey(spep5+108,ryu5,300);
setEffAlphaKey(spep5+108,ryu5,255);

speff = entryEffect(  spep5+23,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep5+23,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep5+33, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep5+33, ctgogo, 70, 10);
setEffScaleKey(spep5+33, ctgogo, 0.8, 0.8);
setEffRotateKey(spep5+33, ctgogo, 0);
setEffAlphaKey( spep5+33, ctgogo, 255);

playSe( spep5+20, SE_04);

entryFade( spep5+100, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
spep6=spep5+108;

setScaleKey( spep6-1,   0, 1.2, 1.2);
setScaleKey( spep6-1,   0, 1.5, 1.5);
setScaleKey( spep6,   0, 1.0, 1.0);

playSe( spep6, SE_06);
speff = entryEffect(  spep6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep6+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射 150F
------------------------------------------------------
spep7= spep6+90;

setDisp(spep7,1,1);
setDisp(spep7+40,1,0);

setMoveKey(spep7-1,1,250,350,0);
setMoveKey(spep7,1,130,250,0);
setMoveKey(spep7+40,1,300,300,0);
--setMoveKey(spep7+60,1,300,300,0);

setScaleKey(spep7-1,1,0.8,0.8);
setScaleKey(spep7,1,3.0,3.0);
setScaleKey(spep7+40,1,1.0,1.0);
--setScaleKey(spep7+60,1,1.0,1.0);

setRotateKey( spep7-1, 1, 340);
setRotateKey( spep7, 1, 340);
setRotateKey( spep7+40, 1, 340);
--setRotateKey( spep7+60, 1, 340);

entryFadeBg(spep7,0,150,0,10,10,10,255);

Burst = entryEffectLife(spep7,SP_06, 150,0x100, -1,0,0,0);
setEffMoveKey(spep7,Burst ,0,0,0);
setEffScaleKey(spep7,Burst ,1.0,1.0);
setEffRotateKey(spep7,Burst ,0);
setEffAlphaKey(spep7,Burst ,255);

setEffMoveKey(spep7+150,Burst ,0,0,0);
setEffScaleKey(spep7+150,Burst ,1.0,1.0);
setEffRotateKey(spep7+150,Burst ,0);
setEffAlphaKey(spep7+150,Burst ,255);

setEffShake(spep7,Burst,150,10);

syu7 = entryEffectLife(spep7,906,150,0x80, -1,0,0,0);

setEffMoveKey(spep7,syu7,0,0,0);
setEffScaleKey(spep7,syu7,1.0,1.0);
setEffRotateKey(spep7,syu7,0);
setEffAlphaKey(spep7,syu7,255);

setEffMoveKey(spep7+150,syu7,0,0,0);
setEffScaleKey(spep7+150,syu7,1.0,1.0);
setEffRotateKey(spep7+150,syu7,10);
setEffAlphaKey(spep7+150,syu7,255);

ryu7 = entryEffectLife(spep7,921,150,0x80, -1,0,0,0);
setEffMoveKey(spep7,ryu7,0,0,0);
setEffScaleKey(spep7,ryu7,1.7,1.7);
setEffRotateKey(spep7,ryu7,320);
setEffAlphaKey(spep7,ryu7,255);

setEffMoveKey(spep7+150,ryu7,0,0,0);
setEffScaleKey(spep7+150,ryu7,1.7,1.7);
setEffRotateKey(spep7+150,ryu7,320);
setEffAlphaKey(spep7+150,ryu7,255);

--658F
ctZuo = entryEffectLife(spep7+50,10012,41,0x100, -1,0,0,0);
setEffMoveKey(spep7+50,ctZuo,150,350,0);
setEffScaleKey(spep7+50,ctZuo,1.0,1.0);
setEffRotateKey(spep7+50,ctZuo,20);
setEffAlphaKey(spep7+50,ctZuo,255);

setEffMoveKey(spep7+53,ctZuo,180,370,0);
setEffScaleKey(spep7+53,ctZuo,2.0,2.0);
setEffRotateKey(spep7+53,ctZuo,20);
setEffAlphaKey(spep7+53,ctZuo,255);

setEffMoveKey(spep7+83,ctZuo,180,370,0);
setEffScaleKey(spep7+83,ctZuo,2.0,2.0);
setEffRotateKey(spep7+83,ctZuo,20);
setEffAlphaKey(spep7+83,ctZuo,255);

setEffMoveKey(spep7+91,ctZuo,180,370,0);
setEffScaleKey(spep7+91,ctZuo,6.0,6.0);
setEffRotateKey(spep7+91,ctZuo,20);
setEffAlphaKey(spep7+91,ctZuo,0);

setEffShake(spep7+50,ctZuo,41,20);

playSe(spep7+42,SE_07);
--playSe(spep7+64,SE_07);
playSe(spep7+100,SE_09);

entryFade( spep7+145, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- end
------------------------------------------------------
spep8= spep7+150;

End = entryEffect(spep8, SP_07, 0x80, -1,0,0,0);
setEffMoveKey(spep8, End ,0,0,0);
setEffScaleKey(spep8, End ,1.0,1.0);
setEffRotateKey(spep8, End ,0);
setEffAlphaKey(spep8, End ,255);

-- ダメージ表示
dealDamage( spep8+26);
entryFade( spep8+110, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep8+120);

playSe(spep8,SE_10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(100F) (0-100F)
------------------------------------------------------
spep1 = 0;

entryFadeBg(spep1,0,100,0,10,10,10,210);

Kitame= entryEffectLife(spep1,SP_01e,100,0x100, -1,0,0,0);
setEffMoveKey(spep1,Kitame,0,0,0);
setEffScaleKey(spep1,Kitame,1.0,1.0);
setEffRotateKey(spep1,Kitame,0);
setEffAlphaKey(spep1,Kitame,255);

setEffMoveKey(spep1+100,Kitame,0,0,0);
setEffScaleKey(spep1+100,Kitame,1.0,1.0);
setEffRotateKey(spep1+100,Kitame,0);
setEffAlphaKey(spep1+100,Kitame,255);

syu1 = entryEffectLife(spep1+11,906,89,0x80, -1,0,0,0);

setEffMoveKey(spep1+11,syu1,0,0,0);
setEffScaleKey(spep1+11,syu1,1.0,1.0);
setEffRotateKey(spep1+11,syu1,0);
setEffAlphaKey(spep1+11,syu1,255);

setEffMoveKey(spep1+100,syu1,0,0,0);
setEffScaleKey(spep1+100,syu1,1.0,1.0);
setEffRotateKey(spep1+100,syu1,0);
setEffAlphaKey(spep1+100,syu1,255);

setEffShake(spep1+11,Kitame,89,10);

--SE--
playSe(spep1+11,SE_01);

entryFade( spep1+95, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- キックビーム 210F (100-306F)
------------------------------------------------------
spep2= spep1+100;

changeAnime(spep2-1,1,102);
setDisp(spep2-1,1,1);
setMoveKey(spep2-1,1,400,-400);
setScaleKey(spep2-1,1,2.5,2.5);
setRotateKey(spep2-1,0);

setMoveKey(spep2+13,1,300,-270);
setScaleKey(spep2+13,1,2.5,2.5);
setRotateKey(spep2+13,0);

setMoveKey(spep2+28,1,300,-270);
setScaleKey(spep2+28,1,2.5,2.5);
setRotateKey(spep2+28,0);

setMoveKey(spep2+39,1,300,-800);
setScaleKey(spep2+39,1,2.5,2.5);
setRotateKey(spep2+39,0);

setDisp(spep2+45,1,0);
setMoveKey(spep2+45,1,300,-800);
setScaleKey(spep2+45,1,2.5,2.5);
setRotateKey(spep2+45,0);

setMoveKey(spep2+205,1,300,-800);
setScaleKey(spep2+205,1,2.5,2.5);
setRotateKey(spep2+205,0);

entryFadeBg(spep2,0,206,0,10,10,10,210);

KickBeam= entryEffectLife(spep2,SP_02e,206,0x100, -1,0,0,0);
setEffMoveKey(spep2,KickBeam,0,0,0);
setEffScaleKey(spep2,KickBeam,1.0,1.0);
setEffRotateKey(spep2,KickBeam,0);
setEffAlphaKey(spep2,KickBeam,255);

setEffMoveKey(spep2+206,KickBeam,0,0,0);
setEffScaleKey(spep2+206,KickBeam,1.0,1.0);
setEffRotateKey(spep2+206,KickBeam,0);
setEffAlphaKey(spep2+206,KickBeam,255);

setEffShake(spep2,KickBeam,206,10);

syu2 = entryEffectLife(spep2,906,206,0x80, -1,0,0,0);

setEffMoveKey(spep2,syu2,0,0,0);
setEffScaleKey(spep2,syu2,1.0,1.0);
setEffRotateKey(spep2,syu2,0);
setEffAlphaKey(spep2,syu2,255);

setEffMoveKey(spep2+206,syu2,0,0,0);
setEffScaleKey(spep2+206,syu2,1.0,1.0);
setEffRotateKey(spep2+206,syu2,0);
setEffAlphaKey(spep2+206,syu2,255);

ryu2a = entryEffectLife(spep2+25,922,60,0x80, -1,0,0,0);

setEffMoveKey(spep2+25,ryu2a,0,0,0);
setEffScaleKey(spep2+25,ryu2a,1.0,1.0);
setEffRotateKey(spep2+25,ryu2a,0);
setEffAlphaKey(spep2+25,ryu2a,255);

setEffMoveKey(spep2+85,ryu2a,0,0,0);
setEffScaleKey(spep2+85,ryu2a,1.0,1.0);
setEffRotateKey(spep2+85,ryu2a,0);
setEffAlphaKey(spep2+85,ryu2a,255);

ryu2b = entryEffectLife(spep2+86,922,120,0x80, -1,0,0,0);

setEffMoveKey(spep2+25,ryu2b,0,0,0);
setEffScaleKey(spep2+25,ryu2b,1.2,1.2);
setEffRotateKey(spep2+25,ryu2b,340);
setEffAlphaKey(spep2+25,ryu2b,255);

setEffMoveKey(spep2+85,ryu2b,0,0,0);
setEffScaleKey(spep2+85,ryu2b,1.2,1.2);
setEffRotateKey(spep2+85,ryu2b,340);
setEffAlphaKey(spep2+85,ryu2b,255);

--124F　シュン（15F）
ctShun = entryEffectLife(spep2+24,10011,15,0x100, -1,0,0,0);
setEffMoveKey(spep2+24,ctShun,30,100,0);
setEffScaleKey(spep2+24,ctShun,0.6,0.6);
setEffRotateKey(spep2+24,ctShun,20);
setEffAlphaKey(spep2+24,ctShun,255);

setEffMoveKey(spep2+28,ctShun,30,200,0);
setEffScaleKey(spep2+28,ctShun,2.0,2.0);
setEffRotateKey(spep2+28,ctShun,20);
setEffAlphaKey(spep2+28,ctShun,255);

setEffMoveKey(spep2+36,ctShun,30,200,0);
setEffScaleKey(spep2+36,ctShun,2.0,2.0);
setEffRotateKey(spep2+36,ctShun,20);
setEffAlphaKey(spep2+36,ctShun,255);

setEffMoveKey(spep2+39,ctShun,30,200,0);
setEffScaleKey(spep2+39,ctShun,3.0,3.0);
setEffRotateKey(spep2+39,ctShun,20);
setEffAlphaKey(spep2+39,ctShun,0);

--268F
ctZuo2 = entryEffectLife(spep2+168,10012,38,0x100, -1,0,0,0);
setEffMoveKey(spep2+168,ctZuo2,50,0,0);
setEffScaleKey(spep2+168,ctZuo2,0.1,0.1);
setEffRotateKey(spep2+168,ctZuo2,20);
setEffAlphaKey(spep2+168,ctZuo2,255);

setEffMoveKey(spep2+172,ctZuo2,50,100,0);
setEffScaleKey(spep2+172,ctZuo2,2.0,2.0);
setEffRotateKey(spep2+172,ctZuo2,20);
setEffAlphaKey(spep2+172,ctZuo2,255);

setEffMoveKey(spep2+206,ctZuo2,100,300,0);
setEffScaleKey(spep2+206,ctZuo2,2.0,2,0);
setEffRotateKey(spep2+206,ctZuo2,20);
setEffAlphaKey(spep2+206,ctZuo2,255);

setEffShake(spep2+168,ctZuo2,38,20);

--SE--
playSe(spep2+24,43);--瞬間移動
playSe(spep2+94,1021);--瞬間移動
playSe(spep2+119,1021);--瞬間移動
playSe(spep2+168,SE_07);

entryFade( spep2+200, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ビーム 22F 33
------------------------------------------------------
spep3= spep2+207;

setDisp(spep3,1,1);

setMoveKey(spep3,1,0,0,0);
setScaleKey(spep3,1,1.5,1.5);
setRotateKey(spep3,0);

setMoveKey(spep3+6,1,0,0,0);
setScaleKey(spep3+6,1,1.5,1.5);
setRotateKey(spep3+6,1,0);

setShakeChara(spep3,1,20,20);

BeamB= entryEffectLife(spep3,SP_03,20,0x100, -1,0,0,0);
setEffMoveKey(spep3,BeamB,0,0,0);
setEffScaleKey(spep3,BeamB,1.0,1.0);
setEffRotateKey(spep3,BeamB,0);
setEffAlphaKey(spep3,BeamB,0);

setEffMoveKey(spep3+6,BeamB,0,0,0);
setEffScaleKey(spep3+6,BeamB,1.0,1.0);
setEffRotateKey(spep3+6,BeamB,0);

setEffAlphaKey(spep3+6,BeamB,0);
setEffAlphaKey(spep3+7,BeamB,255);
setEffAlphaKey(spep3+20,BeamB,255);

ctZuo3 = entryEffectLife(spep3,10012,8,0x100, -1,0,0,0);

setEffMoveKey(spep3,ctZuo3,100,300,0);
setEffScaleKey(spep3,ctZuo3,2.0,2.0);
setEffRotateKey(spep3,ctZuo3,20);
setEffAlphaKey(spep3,ctZuo3,255);

setEffMoveKey(spep3+4,ctZuo3,100,300,0);
setEffScaleKey(spep3+4,ctZuo3,2.0,2.0);
setEffRotateKey(spep3+4,ctZuo3,20);
setEffAlphaKey(spep3+4,ctZuo3,255);

setEffMoveKey(spep3+8,ctZuo3,100,300,0);
setEffScaleKey(spep3+8,ctZuo3,6.0,6.0);
setEffRotateKey(spep3+8,ctZuo3,20);
setEffAlphaKey(spep3+8,ctZuo3,0);

setEffShake(spep3+8,ctZuo3,8,20);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 299; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setDisp( SP_dodge, 0, 0);
setDisp( SP_dodge+10, 0, 0);
setMoveKey(  SP_dodge,    0,  5000,  5000,   0);
setMoveKey(  SP_dodge+9,    0,  5000,  5000,   0);
setMoveKey(  SP_dodge+10,    0,  5000,  5000,   0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, 0,   0);
setMoveKey(   SP_dodge+1,   0,    0, 0,   0);

setMoveKey(  SP_dodge,    1,  0,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   0, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------------------

changeAnime(spep3+7,1,107);

setMoveKey(spep3+7,1,0,-100,0);
setScaleKey(spep3+7,1,0.7,0.7);
setRotateKey(spep3+7,1,0);

setMoveKey(spep3+19,1,250,-500,0);
setScaleKey(spep3+19,1,1.1,1.1);
setRotateKey(spep3+19,1,0);

setDisp(spep3+19,1,0);

entryFadeBg(spep3,0,20,0,10,10,10,210);

syu3 = entryEffectLife(spep3,906,20,0x80, -1,0,0,0);

setEffMoveKey(spep3,syu3,0,0,0);
setEffScaleKey(spep3,syu3,1.0,1.0);
setEffRotateKey(spep3,syu3,0);
setEffAlphaKey(spep3,syu3,255);

setEffMoveKey(spep3+20,syu3,0,0,0);
setEffScaleKey(spep3+20,syu3,1.0,1.0);
setEffRotateKey(spep3+20,syu3,0);
setEffAlphaKey(spep3+20,syu3,255);

ryu3a = entryEffectLife(spep3,923,20,0x80, -1,0,0,0);

setEffMoveKey(spep3,ryu3a,0,0,0);
setEffScaleKey(spep3,ryu3a,1.2,1.2);
setEffRotateKey(spep3,ryu3a,340);
setEffAlphaKey(spep3,ryu3a,255);

setEffMoveKey(spep3+20,ryu3a,0,0,0);
setEffScaleKey(spep3+20,ryu3a,1.2,1.2);
setEffRotateKey(spep3+20,ryu3a,340);
setEffAlphaKey(spep3+20,ryu3a,255);

BeamA= entryEffectLife(spep3,SP_03,20,0x80, -1,0,0,0);
setEffMoveKey(spep3,BeamA,0,0,0);
setEffScaleKey(spep3,BeamA,1.0,1.0);
setEffRotateKey(spep3,BeamA,0);
setEffAlphaKey(spep3,BeamA,255);

setEffMoveKey(spep3+6,BeamA,0,0,0);
setEffScaleKey(spep3+6,BeamA,1.0,1.0);
setEffRotateKey(spep3+6,BeamA,0);
setEffAlphaKey(spep3+6,BeamA,255);
setEffAlphaKey(spep3+7,BeamA,0);

entryFade( spep3+15, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep3+7,SE_09);

------------------------------------------------------
-- パンチラッシュ 84F
------------------------------------------------------
spep4= spep3+20;

changeAnime(spep4,1,106);
changeAnime(spep4+16,1,108);

setDisp(spep4,1,1);
setDisp(spep4+64,1,0);

setMoveKey(spep4,1,400,0,0);
setMoveKey(spep4+15,1,100,0,0);
setMoveKey(spep4+16,1,250,300,0);
setMoveKey(spep4+29,1,500,750,0);
setMoveKey(spep4+33,1,500,750,0);
setMoveKey(spep4+39,1,150,180,0);
setMoveKey(spep4+59,1,150,180,0);
setMoveKey(spep4+64,1,500,750,0);

setScaleKey(spep4,1,1.5,1.5);
setScaleKey(spep4+15,1,1.5,1.5);
setScaleKey(spep4+16,1,1.5,1.5);
setScaleKey(spep4+29,1,1.5,1.5);
setScaleKey(spep4+39,1,1.5,1.5);
setScaleKey(spep4+59,1,1.5,1.5);
setScaleKey(spep4+64,1,1.5,1.5);

setRotateKey( spep4, 1, 340);
setRotateKey( spep4+15, 1, 340);
setRotateKey( spep4+16, 1, 340);
setRotateKey( spep4+29, 1, 340);
setRotateKey( spep4+39, 1, 340);
setRotateKey( spep4+59, 1, 340);
setRotateKey( spep4+64, 1, 340);

setShakeChara( spep4+1, 1, 83, 15);

entryFadeBg(spep4,0,84,0,10,10,10,255);

Punchrush= entryEffectLife(spep4,SP_04e,84,0x100, -1,0,0,0);
setEffMoveKey(spep4,Punchrush,0,0,0);
setEffScaleKey(spep4,Punchrush,1.0,1.0);
setEffRotateKey(spep4,Punchrush,0);
setEffAlphaKey(spep4,Punchrush,255);

setEffMoveKey(spep4+84,Punchrush,0,0,0);
setEffScaleKey(spep4+84,Punchrush,1.0,1.0);
setEffRotateKey(spep4+84,Punchrush,0);
setEffAlphaKey(spep4+84,Punchrush,255);

setEffShake(spep4,Punchrush,84,10);

syu4a = entryEffectLife(spep4,906,35,0x80, -1,0,0,0);

setEffMoveKey(spep4,syu4a,0,0,0);
setEffScaleKey(spep4,syu4a,1.0,1.0);
setEffRotateKey(spep4,syu4a,0);
setEffAlphaKey(spep4,syu4a,255);

setEffMoveKey(spep4+35,syu4a,0,0,0);
setEffScaleKey(spep4+35,syu4a,1.0,1.0);
setEffRotateKey(spep4+35,syu4a,0);
setEffAlphaKey(spep4+35,syu4a,255);

syu4b = entryEffectLife(spep4+39,906,20,0x80, -1,0,0,0);

setEffMoveKey(spep4+39,syu4b,0,0,0);
setEffScaleKey(spep4+39,syu4b,1.0,1.0);
setEffRotateKey(spep4+39,syu4b,0);
setEffAlphaKey(spep4+39,syu4b,255);

setEffMoveKey(spep4+59,syu4b,0,0,0);
setEffScaleKey(spep4+59,syu4b,1.0,1.0);
setEffRotateKey(spep4+59,syu4b,0);
setEffAlphaKey(spep4+59,syu4b,255);

ryu4 = entryEffectLife(spep4,920,84,0x80, -1,0,0,0);

setEffMoveKey(spep4,ryu4,0,0,0);
setEffScaleKey(spep4,ryu4,1.7,1.7);
setEffRotateKey(spep4,ryu4,0);
setEffAlphaKey(spep4,ryu4,255);

setEffMoveKey(spep4+35,ryu4,0,0,0);
setEffScaleKey(spep4+35,ryu4,1.7,1.7);
setEffRotateKey(spep4+35,ryu4,0);
setEffAlphaKey(spep4+35,ryu4,255);

setEffMoveKey(spep4+36,ryu4,0,0,0);
setEffScaleKey(spep4+36,ryu4,1.7,1.7);
setEffRotateKey(spep4+36,ryu4,300);
setEffAlphaKey(spep4+36,ryu4,255);

setEffMoveKey(spep4+84,ryu4,0,0,0);
setEffScaleKey(spep4+84,ryu4,1.7,1.7);
setEffRotateKey(spep4+84,ryu4,300);
setEffAlphaKey(spep4+84,ryu4,255);

entryFade( spep4+79, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE--
playSe(spep4+18,1009);
playSe(spep4+62,1010);
------------------------------------------------------
-- 溜め 108F
------------------------------------------------------
spep5= spep4+84;

setDisp(spep5,1,1);
setDisp(spep5+103,1,0);

setMoveKey(spep5-1,1,500,750,0);
setMoveKey(spep5,1,50,150,0);
setMoveKey(spep5+30,1,250,350,0);
setMoveKey(spep5+103,1,250,350,0);

setScaleKey(spep5-1,1,1.5,1.5);
setScaleKey(spep5,1,1.0,1.0);
setScaleKey(spep5+30,1,0.8,0.8);
setScaleKey(spep5+103,1,0.8,0.8);

setRotateKey( spep5, 1, 330);
setRotateKey( spep5+30, 1, 330);
setRotateKey( spep5+103, 1, 330);

setShakeChara( spep5+1, 1, 103, 15);

entryFadeBg(spep5,0,108,0,10,10,10,255);

Tame = entryEffectLife(spep5,SP_05,108,0x100, -1,0,0,0);
setEffMoveKey(spep5,Tame ,0,0,0);
setEffScaleKey(spep5,Tame ,1.0,1.0);
setEffRotateKey(spep5,Tame ,0);
setEffAlphaKey(spep5,Tame ,255);

setEffMoveKey(spep5+108,Tame ,0,0,0);
setEffScaleKey(spep5+108,Tame ,1.0,1.0);
setEffRotateKey(spep5+108,Tame ,0);
setEffAlphaKey(spep5+108,Tame ,255);

setEffShake(spep5,Tame,108,10);

ryu5 = entryEffectLife(spep5,921,108,0x80, -1,0,0,0);
setEffMoveKey(spep5,ryu5,0,0,0);
setEffScaleKey(spep5,ryu5,1.7,1.7);
setEffRotateKey(spep5,ryu5,300);
setEffAlphaKey(spep5,ryu5,255);

setEffMoveKey(spep5+108,ryu5,0,0,0);
setEffScaleKey(spep5+108,ryu5,1.7,1.7);
setEffRotateKey(spep5+108,ryu5,300);
setEffAlphaKey(spep5+108,ryu5,255);

--speff = entryEffect(  spep5+23,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep5+23,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep5+33, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep5+33, ctgogo, 70, 10);
setEffScaleKey(spep5+33, ctgogo, -0.8, 0.8);
setEffRotateKey(spep5+33, ctgogo, 0);
setEffAlphaKey( spep5+33, ctgogo, 255);

playSe( spep5+20, SE_04);

entryFade( spep5+100, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン 90F
------------------------------------------------------
spep6=spep5+108;

setScaleKey( spep6-1,   0, 1.2, 1.2);
setScaleKey( spep6-1,   0, 1.5, 1.5);
setScaleKey( spep6,   0, 1.0, 1.0);

playSe( spep6, SE_06);
speff = entryEffect(  spep6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep6+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射 150F
------------------------------------------------------
spep7= spep6+90;

setDisp(spep7,1,1);
setDisp(spep7+40,1,0);

setMoveKey(spep7-1,1,250,350,0);
setMoveKey(spep7,1,130,250,0);
setMoveKey(spep7+40,1,300,300,0);
--setMoveKey(spep7+60,1,300,300,0);

setScaleKey(spep7-1,1,0.8,0.8);
setScaleKey(spep7,1,3.0,3.0);
setScaleKey(spep7+40,1,1.0,1.0);
--setScaleKey(spep7+60,1,1.0,1.0);

setRotateKey( spep7-1, 1, 340);
setRotateKey( spep7, 1, 340);
setRotateKey( spep7+40, 1, 340);
--setRotateKey( spep7+60, 1, 340);

entryFadeBg(spep7,0,150,0,10,10,10,255);

Burst = entryEffectLife(spep7,SP_06, 150,0x100, -1,0,0,0);
setEffMoveKey(spep7,Burst ,0,0,0);
setEffScaleKey(spep7,Burst ,1.0,1.0);
setEffRotateKey(spep7,Burst ,0);
setEffAlphaKey(spep7,Burst ,255);

setEffMoveKey(spep7+150,Burst ,0,0,0);
setEffScaleKey(spep7+150,Burst ,1.0,1.0);
setEffRotateKey(spep7+150,Burst ,0);
setEffAlphaKey(spep7+150,Burst ,255);

setEffShake(spep7,Burst,150,10);

syu7 = entryEffectLife(spep7,906,150,0x80, -1,0,0,0);

setEffMoveKey(spep7,syu7,0,0,0);
setEffScaleKey(spep7,syu7,1.0,1.0);
setEffRotateKey(spep7,syu7,0);
setEffAlphaKey(spep7,syu7,255);

setEffMoveKey(spep7+150,syu7,0,0,0);
setEffScaleKey(spep7+150,syu7,1.0,1.0);
setEffRotateKey(spep7+150,syu7,10);
setEffAlphaKey(spep7+150,syu7,255);

ryu7 = entryEffectLife(spep7,921,150,0x80, -1,0,0,0);
setEffMoveKey(spep7,ryu7,0,0,0);
setEffScaleKey(spep7,ryu7,1.7,1.7);
setEffRotateKey(spep7,ryu7,320);
setEffAlphaKey(spep7,ryu7,255);

setEffMoveKey(spep7+150,ryu7,0,0,0);
setEffScaleKey(spep7+150,ryu7,1.7,1.7);
setEffRotateKey(spep7+150,ryu7,320);
setEffAlphaKey(spep7+150,ryu7,255);

--658F
ctZuo = entryEffectLife(spep7+50,10012,41,0x100, -1,0,0,0);
setEffMoveKey(spep7+50,ctZuo,150,350,0);
setEffScaleKey(spep7+50,ctZuo,1.0,1.0);
setEffRotateKey(spep7+50,ctZuo,20);
setEffAlphaKey(spep7+50,ctZuo,255);

setEffMoveKey(spep7+53,ctZuo,180,370,0);
setEffScaleKey(spep7+53,ctZuo,2.0,2.0);
setEffRotateKey(spep7+53,ctZuo,20);
setEffAlphaKey(spep7+53,ctZuo,255);

setEffMoveKey(spep7+83,ctZuo,180,370,0);
setEffScaleKey(spep7+83,ctZuo,2.0,2.0);
setEffRotateKey(spep7+83,ctZuo,20);
setEffAlphaKey(spep7+83,ctZuo,255);

setEffMoveKey(spep7+91,ctZuo,180,370,0);
setEffScaleKey(spep7+91,ctZuo,6.0,6.0);
setEffRotateKey(spep7+91,ctZuo,20);
setEffAlphaKey(spep7+91,ctZuo,0);

setEffShake(spep7+50,ctZuo,41,20);

playSe(spep7+42,SE_07);
--playSe(spep7+64,SE_07);
playSe(spep7+100,SE_09);

entryFade( spep7+145, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- end
------------------------------------------------------
spep8= spep7+150;

End = entryEffect(spep8, SP_07, 0x80, -1,0,0,0);
setEffMoveKey(spep8, End ,0,0,0);
setEffScaleKey(spep8, End ,1.0,1.0);
setEffRotateKey(spep8, End ,0);
setEffAlphaKey(spep8, End ,255);

-- ダメージ表示
dealDamage( spep8+26);
entryFade( spep8+110, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep8+120);

playSe(spep8,SE_10);

end
