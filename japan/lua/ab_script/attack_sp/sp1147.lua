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
--[[
SP_01 = 100332;
SP_02 = 100333;
SP_03 = 100334;
]]
SP_01=151075--前方ダッシュ
SP_02=151076--蹴り
SP_03=151077--ラッシュ
SP_04=151078--溜め
SP_05=151079--発射
SP_06=151074--迫るビーム

setVisibleUI( 0, 0);
changeAnime( 0, 0, 16); 
setDisp( 0, 0, 0);                     
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -600,   0);
setMoveKey(   0,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   0,   1, 1.2, 1.2);
-----------------------------------------------------
--前方ダッシュ（0〜30F)
-----------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;

Dash=entryEffect(spep1,SP_01,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep1, Dash, 1.0, 1.0);
setEffMoveKey( spep1, Dash, 0, 0, 0);
setEffRotateKey( spep1, Dash, 0);
setEffAlphaKey( spep1, Dash, 255);

Syu1=entryEffectLife(spep1,906,35,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep1, Syu1, 1.1, 1.1);
setEffAlphaKey( spep1, Syu1, 255);

entryFade( spep1+19, 9, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep1, 0, 35, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
playSe( 0, SE_04);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 19; --エンドフェイズのフレーム数を置き換える　（spep7+45）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

changeAnime(  SP_dodge+1,    1,  100);
setDisp(  SP_dodge+1,    1,  1);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   0, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
-----------------------------------------------------
--蹴り（30〜80F)
-----------------------------------------------------
spep2=spep1+30;

Kick=entryEffectLife(spep2,SP_02,50,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep2, Kick, 1.0, 1.0);
setEffMoveKey( spep2, Kick, 0, 0, 0);
setEffRotateKey( spep2, Kick, 0);
setEffAlphaKey( spep2, Kick, 255);

changeAnime(spep2-1,1,108);--くの字
setDisp( spep2-1, 1, 1);

setMoveKey(   spep2-1,   1,    -15, 10,   0);
setMoveKey(   spep2+8,   1,    -15, 10,   0);
setMoveKey(   spep2+14,   1,    250, 10,   0);
setMoveKey(   spep2+27,   1,    600, 10,   0);
setMoveKey(   spep2+47,   1,    600, 10,   0);

setScaleKey(   spep2-1,   1, 1.2, 1.2);
setRotateKey(   spep2-1,   1, 0);

Ctbago=entryEffectLife(spep2,10021,12,0x100,  -1, 0,  0,  0);   --ばご
setEffScaleKey( spep2, Ctbago, 0.3, 0.3);
setEffMoveKey( spep2, Ctbago, -30, 130, 0);
setEffRotateKey( spep2, Ctbago, 345);
setEffAlphaKey( spep2, Ctbago, 255);

setEffAlphaKey( spep2+6, Ctbago, 255);

setEffScaleKey( spep2+12, Ctbago, 1.5, 1.5);
setEffMoveKey( spep2+12, Ctbago, 70, 230, 0);
setEffRotateKey( spep2+12, Ctbago, 345);
setEffAlphaKey( spep2+12, Ctbago, 255);

setEffShake(spep2,Ctbago,12,10);

Syu2=entryEffectLife(spep2,906,50,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, Syu2, 1.1, 1.1);
setEffAlphaKey( spep2, Syu2, 255);

Ryu2=entryEffectLife(spep2,920,50,0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep2, Ryu2, 1.0, 1.0);
setEffAlphaKey( spep2, Ryu2, 255);

entryFade( spep2+39, 8, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep2, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
playSe( spep2+16, 1009);

-----------------------------------------------------
--ラッシュ（80〜190F)
-----------------------------------------------------
spep3=spep2+50;

Rush=entryEffectLife(spep3,SP_03, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep3, Rush, 1.0, 1.0);
setEffMoveKey( spep3, Rush, 0, 0, 0);
setEffRotateKey( spep3, Rush, 0);
setEffAlphaKey( spep3, Rush, 255);

setMoveKey(   spep3-1,   1,    50, 0,   0);
setMoveKey(   spep3+28,   1,    10, 10,   0);--OK
setMoveKey(   spep3+29,   1,    10, 10,   0);
setMoveKey(   spep3+30,   1,    7, 7,   0);
setMoveKey(   spep3+32,   1,    7,10,   0);

setMoveKey(   spep3+68,   1,    40,20,   0);
setMoveKey(   spep3+75,   1,    40,30,   0);
setMoveKey(   spep3+76,   1,    50,30,   0);
setMoveKey(   spep3+77,   1,    50,30,   0);
setMoveKey(   spep3+78,   1,    50,20,   0);
setMoveKey(   spep3+92,   1,    69,20,   0);
setMoveKey(   spep3+98,   1,    70,20,   0);
setMoveKey(   spep3+110,   1,    600,150,   0);

changeAnime(spep3+29,1,106);--のけぞり
setRotateKey(   spep3+28,   1, 0);
setRotateKey(   spep3+29,   1, -10-45);
setRotateKey(   spep3+35,   1, -5-45);
setRotateKey(   spep3+43,   1, -10-45);
setRotateKey(   spep3+45,   1, -15-45);
setRotateKey(   spep3+81,   1, -15-45);
setRotateKey(   spep3+82,   1, -20-45);
setRotateKey(   spep3+97,   1, -5-45);
setRotateKey(   spep3+100,   1, 5-45);
setRotateKey(   spep3+109,   1, 5-45);
setRotateKey(   spep3+110,   1, 0); --角度調整済

setDisp( spep3+110, 1, 0);

Ctdogaga=entryEffectLife(spep3+29,10017,54,0x100,  -1, 0,  0,  0);   --ドガガガ
setEffScaleKey( spep3+29, Ctdogaga, 1.0, 1.0);
setEffMoveKey( spep3+29, Ctdogaga, 0, 200, 0);
setEffRotateKey( spep3+29, Ctdogaga, 0);
setEffAlphaKey( spep3+29, Ctdogaga, 255);

setEffScaleKey( spep3+83, Ctdogaga, 1.2, 1.2);
setEffMoveKey( spep3+83, Ctdogaga, 0, 230, 0);
setEffRotateKey( spep3+83, Ctdogaga, 0);
setEffAlphaKey( spep3+83, Ctdogaga, 255);

setEffShake(spep3+29,Ctdogaga,54,10);

Ctdon=entryEffectLife(spep3+84,10019,26,0x100,  -1, 0,  0,  0);   --ドン
setEffScaleKey( spep3+84, Ctdon, 1.0, 1.0);
setEffMoveKey( spep3+84, Ctdon, 0, 250, 0);
setEffRotateKey( spep3+84, Ctdon, 0);
setEffAlphaKey( spep3+84, Ctdon, 255);

setEffScaleKey( spep3+110, Ctdon, 2.0, 2.0);

setEffShake(spep3+84,Ctdon,26,10);

Syu3=entryEffectLife(spep3,906,110,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, Syu3, 1.0, 1.0);
setEffAlphaKey( spep3, Syu3, 255);

Ryu3=entryEffectLife(spep3,920,39,0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep3, Ryu3, 1.0, 1.0);
setEffAlphaKey( spep3, Ryu3, 255);
setEffAlphaKey( spep3+29, Ryu3, 255);
setEffAlphaKey( spep3+39, Ryu3, 0);

entryFade( spep3+95, 13, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep3, 0, 110, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
playSe( spep3+32, 1009);
setSeVolume( spep3 + 32, 1009, 70 );
playSe( spep3+36, 1010);
setSeVolume( spep3 + 36, 1010, 70 );
playSe( spep3+44, 1009);
setSeVolume( spep3 + 44, 1009, 70 );
playSe( spep3+50, 1010);
setSeVolume( spep3 + 50, 1010, 70 );
playSe( spep3+56, 1009);
setSeVolume( spep3 + 56, 1009, 70 );
playSe( spep3+62, 1010);
setSeVolume( spep3 +62 , 1010, 70 );
playSe( spep3+68, 1009);
setSeVolume( spep3 +68 , 1009, 70 );
playSe( spep3+74, 1010);
setSeVolume( spep3 +74 , 1010, 70 );
playSe( spep3+86, 1009);
setSeVolume( spep3 +86 , 1009, 70 );
playSe( spep3+92, 1010);
setSeVolume( spep3 +92 , 1010, 70 );

------------------------------------------------------
-- かめはめ波溜め！(190〜290F) (70)
------------------------------------------------------
spep4=spep3+110;
Tame = entryEffectLife(spep4,SP_04, 100,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep4, Tame, 1.0, 1.0);
setEffMoveKey( spep4, Tame, 0, 0, 0);
setEffRotateKey( spep4, Tame, 0);
setEffAlphaKey( spep4, Tame, 255);

playSe( spep4+3, SE_03);

entryEffect(  spep4,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep4,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep4+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep4+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep4+10, SE_04);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  spep4,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep4, aura, 1.0, 1.0);
setShakeChara( spep4, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
ctgogo = entryEffectLife( spep4+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep4+23, ctgogo, 70, 10);
setEffScaleKey(spep4+23, ctgogo, 0.8, 0.8);
setEffRotateKey(spep4+23, ctgogo, 0);
setEffAlphaKey( spep4+23, ctgogo, 255);
entryFade( spep4+85, 10, 11, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン　(290〜380F)
------------------------------------------------------
spep5=spep4+100;

setScaleKey( spep5-1,   0, 1.5, 1.5);
setScaleKey( spep5,   0, 1.0, 1.0);
--[[
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
entryFade( spep5+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep5+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );
------------------------------------------------------
-- カメハメハ発射(380〜490F)
------------------------------------------------------
spep6=spep5+100;

Burst = entryEffectLife(spep6,SP_05, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep6, Burst, 1.0, 1.0);
setEffMoveKey( spep6, Burst, 0, 0, 0);
setEffRotateKey( spep6, Burst, 0);
setEffAlphaKey( spep6, Burst, 255);

spname = entryEffect( spep6, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( spep6+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep6+109);

-- ** エフェクト等 ** --
entryFadeBg( spep6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep6, sen2, 190);
setEffScaleKey( spep6, sen2, 1.25, 1.25);

setShakeChara( spep6+45, 0, 54, 50);

shuchusen = entryEffectLife( spep6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep6, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep6+2, 10012, 40, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep6+2, ctzuo, 100, 300,0);
setEffMoveKey(spep6+8, ctzuo, 150, 400,0);
setEffMoveKey(spep6+42, ctzuo, 150, 400,0);
setEffShake(spep6+2, ctzuo, 32, 15);
setEffAlphaKey(spep6+2, ctzuo, 255);
setEffAlphaKey(spep6+38, ctzuo, 255);
setEffAlphaKey(spep6+42, ctzuo, 0);
setEffScaleKey(spep6+2, ctzuo, 0.1, 0.1);
setEffScaleKey(spep6+8, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+38, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+42, ctzuo, 6.0, 6.0);
setEffRotateKey(spep6+2, ctzuo, 20);
setEffRotateKey(spep6+42, ctzuo, 20);

playSe( spep6, SE_06);
playSe( spep6+40, SE_07);
entryFade( spep6+88, 19,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)  (490〜580F)
------------------------------------------------------
spep7=spep6+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_06, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7+20, SE_06);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctzudo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctzudo, 90, 20);
setEffScaleKey( spep7, ctzudo, 3.0, 3.0);
setEffRotateKey(spep7, ctzudo, 70);
setEffAlphaKey(spep7, ctzudo, 255);


playSe( spep7+53, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+53, 1, 108);
setMoveKey(  spep7+53, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  300,    0,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctzudo, 255);
setEffAlphaKey(spep7+80, ctzudo, 0);

entryFade( spep7+82, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F) (580〜690F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ctga, 30, 10);
setEffRotateKey( spep8+15, ctga, -40);
setEffScaleKey( spep8+15, ctga, 4.0, 4.0);
setEffScaleKey( spep8+16, ctga, 2.0, 2.0);
setEffScaleKey( spep8+17, ctga, 2.6, 2.6);
setEffScaleKey( spep8+18, ctga, 4.0, 4.0);
setEffScaleKey( spep8+19, ctga, 2.6, 2.6);
setEffScaleKey( spep8+20, ctga, 3.8, 3.8);
setEffScaleKey( spep8+110, ctga, 3.8, 3.8);
setEffAlphaKey( spep8+15, ctga, 255);
setEffAlphaKey( spep8+105, ctga, 255);
setEffAlphaKey( spep8+115, ctga, 0);

playSe( spep8+13, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);

entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

else
-----------------------------------------------------
--前方ダッシュ（0〜30F)
-----------------------------------------------------
--kame_flag = 0x00;

spep1=0;

Dash=entryEffectLife(spep1,SP_01,30,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep1, Dash, 1.0, 1.0);
setEffMoveKey( spep1, Dash, 0, 0, 0);
setEffRotateKey( spep1, Dash, 0);
setEffAlphaKey( spep1, Dash, 255);

Syu1=entryEffectLife(spep1,906,35,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep1, Syu1, 1.1, 1.1);
setEffAlphaKey( spep1, Syu1, 255);

entryFade( spep1+19, 9, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep1, 0, 35, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
playSe( 0, SE_04);
------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 19; --エンドフェイズのフレーム数を置き換える　（spep7+45）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

changeAnime(  SP_dodge+1,    1,  100);
setDisp(  SP_dodge+1,    1,  1);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   0, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
-----------------------------------------------------
--蹴り（30〜80F)
-----------------------------------------------------
spep2=spep1+30;

Kick=entryEffectLife(spep2,SP_02,50,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep2, Kick, 1.0, 1.0);
setEffMoveKey( spep2, Kick, 0, 0, 0);
setEffRotateKey( spep2, Kick, 0);
setEffAlphaKey( spep2, Kick, 255);

changeAnime(spep2-1,1,108);--くの字
setDisp( spep2-1, 1, 1);

setMoveKey(   spep2-1,   1,    -15, 10,   0);
setMoveKey(   spep2+8,   1,    -15, 10,   0);
setMoveKey(   spep2+14,   1,    250, 10,   0);
setMoveKey(   spep2+27,   1,    600, 10,   0);
setMoveKey(   spep2+47,   1,    600, 10,   0);

setScaleKey(   spep2-1,   1, 1.2, 1.2);
setRotateKey(   spep2-1,   1, 0);

Ctbago=entryEffectLife(spep2,10021,12,0x100,  -1, 0,  0,  0);   --ばご
setEffScaleKey( spep2, Ctbago, 0.3, 0.3);
setEffMoveKey( spep2, Ctbago, -30, 130, 0);
setEffRotateKey( spep2, Ctbago, 345);
setEffAlphaKey( spep2, Ctbago, 255);

setEffAlphaKey( spep2+6, Ctbago, 255);

setEffScaleKey( spep2+12, Ctbago, 1.5, 1.5);
setEffMoveKey( spep2+12, Ctbago, 70, 230, 0);
setEffRotateKey( spep2+12, Ctbago, 345);
setEffAlphaKey( spep2+12, Ctbago, 255);

setEffShake(spep2,Ctbago,12,10);
Syu2=entryEffectLife(spep2,906,50,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, Syu2, 1.1, 1.1);
setEffAlphaKey( spep2, Syu2, 255);

Ryu2=entryEffectLife(spep2,920,50,0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep2, Ryu2, 1.0, 1.0);
setEffAlphaKey( spep2, Ryu2, 255);

entryFade( spep2+39, 8, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep2, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
playSe( spep2+16, 1009);

-----------------------------------------------------
--ラッシュ（80〜190F)
-----------------------------------------------------
spep3=spep2+50;

Rush=entryEffectLife(spep3,SP_03, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep3, Rush, 1.0, 1.0);
setEffMoveKey( spep3, Rush, 0, 0, 0);
setEffRotateKey( spep3, Rush, 0);
setEffAlphaKey( spep3, Rush, 255);

setMoveKey(   spep3-1,   1,    50, 0,   0);
setMoveKey(   spep3+28,   1,    10, 10,   0);--OK
setMoveKey(   spep3+29,   1,    10, 10,   0);
setMoveKey(   spep3+30,   1,    7, 7,   0);
setMoveKey(   spep3+32,   1,    7,10,   0);

setMoveKey(   spep3+68,   1,    40,20,   0);
setMoveKey(   spep3+75,   1,    40,30,   0);
setMoveKey(   spep3+76,   1,    50,30,   0);
setMoveKey(   spep3+77,   1,    50,30,   0);
setMoveKey(   spep3+78,   1,    50,20,   0);
setMoveKey(   spep3+92,   1,    69,20,   0);
setMoveKey(   spep3+98,   1,    70,20,   0);
setMoveKey(   spep3+110,   1,    600,150,   0);

changeAnime(spep3+29,1,106);--のけぞり
setRotateKey(   spep3+28,   1, 0);
setRotateKey(   spep3+29,   1, -10-45);
setRotateKey(   spep3+35,   1, -5-45);
setRotateKey(   spep3+43,   1, -10-45);
setRotateKey(   spep3+45,   1, -15-45);
setRotateKey(   spep3+81,   1, -15-45);
setRotateKey(   spep3+82,   1, -20-45);
setRotateKey(   spep3+97,   1, -5-45);
setRotateKey(   spep3+100,   1, 5-45);
setRotateKey(   spep3+109,   1, 5-45);
setRotateKey(   spep3+110,   1, 0); --角度調整済

setDisp( spep3+110, 1, 0);

Ctdogaga=entryEffectLife(spep3+29,10017,54,0x100,  -1, 0,  0,  0);   --ドガガガ
setEffScaleKey( spep3+29, Ctdogaga, 1.0, 1.0);
setEffMoveKey( spep3+29, Ctdogaga, 0, 200, 0);
setEffRotateKey( spep3+29, Ctdogaga, 0);
setEffAlphaKey( spep3+29, Ctdogaga, 255);

setEffScaleKey( spep3+83, Ctdogaga, 1.2, 1.2);
setEffMoveKey( spep3+83, Ctdogaga, 0, 230, 0);
setEffRotateKey( spep3+83, Ctdogaga, 0);
setEffAlphaKey( spep3+83, Ctdogaga, 255);

setEffShake(spep3+29,Ctdogaga,54,10);

Ctdon=entryEffectLife(spep3+84,10019,26,0x100,  -1, 0,  0,  0);   --ドン
setEffScaleKey( spep3+84, Ctdon, 1.0, 1.0);
setEffMoveKey( spep3+84, Ctdon, 0, 250, 0);
setEffRotateKey( spep3+84, Ctdon, 0);
setEffAlphaKey( spep3+84, Ctdon, 255);

setEffScaleKey( spep3+110, Ctdon, 2.0, 2.0);

setEffShake(spep3+84,Ctdogaga,26,10);

Syu3=entryEffectLife(spep3,906,110,0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, Syu3, 1.0, 1.0);
setEffAlphaKey( spep3, Syu3, 255);

Ryu3=entryEffectLife(spep3,920,39,0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep3, Ryu3, 1.0, 1.0);
setEffAlphaKey( spep3, Ryu3, 255);
setEffAlphaKey( spep3+29, Ryu3, 255);
setEffAlphaKey( spep3+39, Ryu3, 0);

entryFade( spep3+95, 13, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep3, 0, 110, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- ** 音 ** --
-- ** 音 ** --
playSe( spep3+32, 1009);
setSeVolume( spep3 + 32, 1009, 70 );
playSe( spep3+36, 1010);
setSeVolume( spep3 + 36, 1010, 70 );
playSe( spep3+44, 1009);
setSeVolume( spep3 + 44, 1009, 70 );
playSe( spep3+50, 1010);
setSeVolume( spep3 + 50, 1010, 70 );
playSe( spep3+56, 1009);
setSeVolume( spep3 + 56, 1009, 70 );
playSe( spep3+62, 1010);
setSeVolume( spep3 +62 , 1010, 70 );
playSe( spep3+68, 1009);
setSeVolume( spep3 +68 , 1009, 70 );
playSe( spep3+74, 1010);
setSeVolume( spep3 +74 , 1010, 70 );
playSe( spep3+86, 1009);
setSeVolume( spep3 +86 , 1009, 70 );
playSe( spep3+92, 1010);
setSeVolume( spep3 +92 , 1010, 70 );

------------------------------------------------------
-- かめはめ波溜め！(190〜290F) (70)
------------------------------------------------------
spep4=spep3+110;
Tame = entryEffectLife(spep4,SP_04, 100,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep4, Tame, 1.0, 1.0);
setEffMoveKey( spep4, Tame, 0, 0, 0);
setEffRotateKey( spep4, Tame, 0);
setEffAlphaKey( spep4, Tame, 255);

playSe( spep4+3, SE_03);

entryEffect(  spep4,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep4,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep4+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep4+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep4+10, SE_04);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  spep4,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep4, aura, 1.0, 1.0);
setShakeChara( spep4, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
ctgogo = entryEffectLife( spep4+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep4+23, ctgogo, 70, 10);
setEffScaleKey(spep4+23, ctgogo, -0.8, 0.8);
setEffRotateKey(spep4+23, ctgogo, 0);
setEffAlphaKey( spep4+23, ctgogo, 255);
entryFade( spep4+85, 10, 11, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン　(290〜380F)
------------------------------------------------------
spep5=spep4+100;

setScaleKey( spep5-1,   0, 1.5, 1.5);
setScaleKey( spep5,   0, 1.0, 1.0);
--[[
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
entryFade( spep5+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
setEffScaleKey( spep5, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep5, SE_05);
speff = entryEffect(  spep5,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
setEffScaleKey( spep5, speff, 1.0, 1.0);
end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep5+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );

------------------------------------------------------
-- カメハメハ発射(380〜490F)
------------------------------------------------------
spep6=spep5+90;

Burst = entryEffectLife(spep6,SP_05, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep6, Burst, 1.0, 1.0);
setEffMoveKey( spep6, Burst, 0, 0, 0);
setEffRotateKey( spep6, Burst, 0);
setEffAlphaKey( spep6, Burst, 255);

spname = entryEffect( spep6, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( spep6+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep6+109);

-- ** エフェクト等 ** --
entryFadeBg( spep6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep6, sen2, 190);
setEffScaleKey( spep6, sen2, 1.25, 1.25);

setShakeChara( spep6+45, 0, 54, 50);

shuchusen = entryEffectLife( spep6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep6, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep6+2, 10012, 40, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep6+2, ctzuo, 100, 300,0);
setEffMoveKey(spep6+8, ctzuo, 150, 400,0);
setEffMoveKey(spep6+42, ctzuo, 150, 400,0);
setEffShake(spep6+2, ctzuo, 32, 15);
setEffAlphaKey(spep6+2, ctzuo, 255);
setEffAlphaKey(spep6+38, ctzuo, 255);
setEffAlphaKey(spep6+42, ctzuo, 0);
setEffScaleKey(spep6+2, ctzuo, 0.1, 0.1);
setEffScaleKey(spep6+8, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+38, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+42, ctzuo, 6.0, 6.0);
setEffRotateKey(spep6+2, ctzuo, 20);
setEffRotateKey(spep6+42, ctzuo, 20);

playSe( spep6, SE_06);
playSe( spep6+40, SE_07);

entryFade( spep6+88, 19,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)  (490〜580F)
------------------------------------------------------
spep7=spep6+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_06, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7+20, SE_06);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctzudo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctzudo, 90, 20);
setEffScaleKey( spep7, ctzudo, 3.0, 3.0);
setEffRotateKey(spep7, ctzudo, 0);
setEffAlphaKey(spep7, ctzudo, 255);


playSe( spep7+53, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+53, 1, 108);
setMoveKey(  spep7+53, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  300,    0,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctzudo, 255);
setEffAlphaKey(spep7+80, ctzudo, 0);

entryFade( spep7+82, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F) (580〜690F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ct, 30, 10);
setEffRotateKey( spep8+15, ct, -40);
setEffScaleKey( spep8+15, ct, 4.0, 4.0);
setEffScaleKey( spep8+16, ct, 2.0, 2.0);
setEffScaleKey( spep8+17, ct, 2.6, 2.6);
setEffScaleKey( spep8+18, ct, 4.0, 4.0);
setEffScaleKey( spep8+19, ct, 2.6, 2.6);
setEffScaleKey( spep8+20, ct, 3.8, 3.8);
setEffScaleKey( spep8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep8+15, ct, 255);
setEffAlphaKey( spep8+105, ct, 255);
setEffAlphaKey( spep8+115, ct, 0);

playSe( spep8+13, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);


entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

end
