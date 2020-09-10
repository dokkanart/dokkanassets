print ("[lua]sp1109");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150503;--突撃
SP_02 = 150504;--裏拳ラッシュ
SP_03 = 150505;--ビンタ叩き落とし
SP_04 = 150506;--かめはめ波溜め
SP_05 = 150507;--かめはめ波発射
SP_06 = 1595;--必殺技用（エクスプロージョン10）

SP_02e = 150508;--裏拳ラッシュ
SP_03e = 150509;--ビンタ叩き落とし
SP_04e = 150510;--かめはめ波溜め


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
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);

setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);
setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

------------------------------------------------------
--突撃
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(5, 0);
setDisp( 5, 0, 0);
setMoveKey( 5, 0,    -2000, -54,   0);


tosshin = entryEffect(  5,   SP_01,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(5, tosshin, 0, 0, 0);
setEffScaleKey( 5, tosshin, 1.0, 1.0);
setEffAlphaKey( 5, tosshin, 255);
setEffRotateKey( 5, tosshin, 0);

shuchusen = entryEffectLife( 5, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(5, shuchusen, 0, 0, 0);
setEffScaleKey( 5, shuchusen, 1.2, 1.2);
setEffAlphaKey( 5, shuchusen, 255);
setEffRotateKey( 5, shuchusen, 0);

speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 5, SE_04);


-- 書き文字エントリー
ctgogo = entryEffectLife( 5, 190006, 85, 0x100, -1, 0,-200, 500);    -- ゴゴゴゴ
setEffScaleKey(5, ctgogo, 0.7, 0.7);
setEffRotateKey(5, ctgogo, 10);
setEffAlphaKey( 5, ctgogo, 255);
setEffShake(5, ctgogo, 40, 28);



------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

spep_1 = 100;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);




------------------------------------------------------
-- 裏拳ラッシュ(167f)
------------------------------------------------------

spep_2 = spep_1+85;
tyousei=20;
entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 334+tyousei, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setBgScroll(spep_2,-60);
changeAnime( spep_2, 1, 100);                       -- 立ち
setDisp( spep_2, 1, 1);
setMoveKey(   spep_2-1,   1,    0, 0,   0);
setMoveKey(   spep_2,   1,    2000, 0,   0);
setMoveKey(   spep_2+10,   1,    2000, 0,   0);
setScaleKey(   spep_2,   1, 1.4, 1.4);
setRotateKey( spep_2,  1,  0 );


ryusen = entryEffectLife( spep_2, 920, 344, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey(spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 0);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);



--敵がinしてくる
setMoveKey(   spep_2+tyousei+10,   1,    100, 0,   0);

rush = entryEffect(  spep_2+tyousei,   SP_02,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_2+tyousei, rush, 0, 0, 0);
setEffScaleKey( spep_2+tyousei, rush, 1.0, 1.0);
setEffAlphaKey( spep_2+tyousei, rush, 255);
setEffRotateKey( spep_2+tyousei, rush, 0);


--一旦流線が消える
setEffAlphaKey( spep_2+tyousei+39, ryusen, 255);
setEffAlphaKey( spep_2+tyousei+40, ryusen, 0);


shuchuserush = entryEffectLife( spep_2+40+tyousei, 906, 300, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2+44+tyousei, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2+44+tyousei, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2+44+tyousei, shuchuserush, 255);
setEffRotateKey( spep_2+44+tyousei, shuchuserush, 0);


--ズンッ
zun = entryEffectLife(  spep_2+44+tyousei,   10016,   26,0,     -1,  0,  -100,  250);--導入
setEffMoveKey(spep_2+44+tyousei, zun, -100, 250, 0);
setEffScaleKey( spep_2+44+tyousei, zun, 1.0, 1.0);
setEffAlphaKey( spep_2+44+tyousei, zun, 255);
setEffRotateKey( spep_2+44+tyousei, zun, 0);
setEffShake( spep_2+45+tyousei, zun, 25, 7);

setEffAlphaKey( spep_2+68+tyousei, zun, 255);
setEffAlphaKey( spep_2+70+tyousei, zun, 0);



changeAnime( spep_2+44+tyousei, 1, 104);                       -- 立ち
setMoveKey(   spep_2+44+tyousei,   1,    100, 0,   0);
setShakeChara( spep_2+45+tyousei, 1, 30, 10);

setMoveKey(   spep_2+76+tyousei,   1,    200, 0,   0);

--一旦集中線が消える
setEffAlphaKey( spep_2+70+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+71+tyousei, shuchuserush, 0);

--流線復活する
setEffAlphaKey( spep_2+79+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+80+tyousei, ryusen, 255);

setMoveKey(   spep_2+100+tyousei,   1,    -50, 0,   0);

--裏拳
changeAnime( spep_2+117+tyousei, 1, 105);                       -- 立ち
setShakeChara( spep_2+118+tyousei, 1, 30, 10);
setEffAlphaKey( spep_2+114+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+115+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+114+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+115+tyousei, shuchuserush, 255);

--ガッ
ga = entryEffectLife(  spep_2+117+tyousei,   10005,   30,0,     -1,  0,  10,  200);--導入
setEffMoveKey(spep_2+117+tyousei, ga, 10, 200, 0);
setEffScaleKey( spep_2+117+tyousei, ga, 1.0, 1.0);
setEffAlphaKey( spep_2+117+tyousei, ga, 255);
setEffRotateKey( spep_2+117+tyousei, ga, 10);
setEffShake( spep_2+117+tyousei, ga, 30, 7);


--敵側ずれる
setMoveKey(   spep_2+156+tyousei,   1,    -50, 0,   0);
setEffAlphaKey( spep_2+155+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+156+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+155+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+156+tyousei, shuchuserush, 0);

setMoveKey(   spep_2+159+tyousei,   1,    50, 0,   0);

setMoveKey(   spep_2+169+tyousei,   1,    50, 0,   0);

--蹴り
changeAnime( spep_2+170+tyousei, 1, 108);                       -- 立ち
setMoveKey(   spep_2+170+tyousei,   1,    100, 0,   0);
setShakeChara( spep_2+170+tyousei, 1, 19, 10);
setEffAlphaKey( spep_2+169+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+170+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+169+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+170+tyousei, shuchuserush, 255);
--バキッ
baki = entryEffectLife( spep_2+170+tyousei, 10020, 20, 0, -1, 0, 0, 200); -- バキッ
setEffMoveKey( spep_2+183+tyousei, baki, 0, 200,0);
setEffRotateKey( spep_2+170+tyousei, baki, -20);
setEffScaleKey( spep_2+170+tyousei, baki, 0.7, 0.7);
setEffScaleKey( spep_2+180+tyousei, baki, 1, 1);
setEffShake( spep_2+171+tyousei, baki, 19, 7);

--追う
setMoveKey(   spep_2+196+tyousei,   1,    100, 30,   0);
setEffAlphaKey( spep_2+185+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+186+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+185+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+186+tyousei, shuchuserush, 0);

--殴る
setMoveKey(   spep_2+201+tyousei,   1,    200, 0,   0);
setShakeChara( spep_2+202+tyousei, 1, 29, 10);
setEffAlphaKey( spep_2+199+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+200+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+199+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+200+tyousei, shuchuserush, 255);

--ガッ
gadai = entryEffectLife(  spep_2+200+tyousei,   10005,  10, 0x100,     -1,  0,  100,  200);--導入
setEffMoveKey(spep_2+200+tyousei, gadai, 100, 200, 0);
setEffScaleKey( spep_2+200+tyousei, gadai, 1.0, 1.0);
setEffAlphaKey( spep_2+200+tyousei, gadai, 255);
setEffRotateKey( spep_2+200+tyousei, gadai, -20);
setEffShake( spep_2+200+tyousei, gadai, 13, 7);

setShakeChara( spep_2+201+tyousei, 1, 29, 15);

--戻される
--[[
setEffAlphaKey( spep_2+209+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+210+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+209+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+210+tyousei, shuchuserush, 0);
]]
--飛ばされる
setMoveKey(   spep_2+230+tyousei,   1,    500, 0,   0);

--戻される
setEffAlphaKey( spep_2+219+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+220+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+219+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+220+tyousei, shuchuserush, 0);

setBgScroll(spep_2+230+tyousei,60);

setMoveKey(   spep_2+255+tyousei,   1,    -100, 0,   0);

setMoveKey(   spep_2+279+tyousei,   1,    -50, 0,   0);
setScaleKey(   spep_2+279+tyousei,   1, 1.4, 1.4);

setEffAlphaKey( spep_2+278+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+279+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+279+tyousei, shuchuserush, 0);

--バゴォ
bago = entryEffectLife( spep_2+280+tyousei,10021, 50, 0x100,-1, 0,120,270);--バゴォッ
setEffMoveKey(spep_2+280+tyousei, bago, 120, 270, 0);
setEffAlphaKey(  spep_2+281+tyousei, bago, 255);
setEffScaleKey( spep_2+280+tyousei, bago, 2, 2);
setEffRotateKey( spep_2+280+tyousei, bago, 20);
--setEffShake( spep_2+282+tyousei, bago, 50, 7);

setEffScaleKey( spep_2+290+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+295+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+300+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+305+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+310+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+315+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+320+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+325+tyousei, bago, 2, 2);

--setEffAlphaKey(  spep_2+330+tyousei, bago, 255);
--setEffAlphaKey(  spep_2+331+tyousei, bago, 0);

setRotateKey( spep_2+279+tyousei,  1,  0 );
changeAnime( spep_2+280+tyousei, 1, 106);                       -- 立ち
setMoveKey(   spep_2+280+tyousei,   1,    -100, 54,   0);
setRotateKey( spep_2+280+tyousei,  1,  30 );
setShakeChara( spep_2+281+tyousei, 1, 30, 10);

buttobashirush = entryEffectLife( spep_2+280+tyousei, 924, 53, 0x80,  -1,  0,  -100,  -600); -- 流線斜め
setEffMoveKey(spep_2+280+tyousei, buttobashirush, -100, -600, 0);
setEffRotateKey( spep_2+280+tyousei, buttobashirush, -90);
setEffScaleKey( spep_2+280+tyousei, buttobashirush, 2.0, 1.5);
setEffAlphaKey( spep_2+280+tyousei, buttobashirush, 255);

setScaleKey(   spep_2+333+tyousei,   1, 0.5, 0.5);
setMoveKey(   spep_2+333+tyousei,   1,    -100, 400,   0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 235; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2+25+tyousei, 43);
playSe( spep_2+40+tyousei, 1035);

playSe( spep_2+80+tyousei, 1018);
--playSe( spep_2+100+tyousei, 43);

playSe( spep_2+117+tyousei, 1009);

playSe( spep_2+156+tyousei, 1018);

playSe( spep_2+174+tyousei, 1010);
playSe( spep_2+200+tyousei, 1009);

playSe( spep_2+230+tyousei, 1018);

playSe( spep_2+279+tyousei, 1010);

------------------------------------------------------
-- ビンタ叩き落とし(90F)
------------------------------------------------------
spep_3 = spep_2+334+tyousei;

tyousei2=20;
entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 208, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setScaleKey(   spep_3-1,   1, 0.5, 0.5);
setMoveKey(   spep_3-1,   1,    -100, 400,   0);
setRotateKey( spep_3-1,  1,  30 );
setRotateKey( spep_3,  1,  -30 );
setScaleKey(   spep_3,   1, 1.4, 1.4);
setMoveKey(   spep_3,   1,    500, -1000,   0);

playSe( spep_3+tyousei2, 1018);

ryusen = entryEffectLife( spep_3, 920, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, 45);
setEffScaleKey( spep_3, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen, 255);


urakenura = entryEffect(  spep_3+tyousei2,   SP_03,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3+tyousei2, urakenura, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2, urakenura, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei2, urakenura, 255);
setEffRotateKey( spep_3+tyousei2, urakenura, 0);

uraken = entryEffect(  spep_3+tyousei2,   SP_03,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3+tyousei2, uraken, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2, uraken, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei2, uraken, 0);
setEffRotateKey( spep_3+tyousei2, uraken, 0);

setMoveKey(   spep_3+tyousei2+20,   1,    -50, 0,   0);
setShakeChara( spep_3+tyousei2+20, 1, 29, 10);



ryusentosshinn = entryEffectLife( spep_3+tyousei2+48, 921, 20, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_3+tyousei2+48, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_3+tyousei2+48, ryusentosshinn, -45);
setEffScaleKey( spep_3+tyousei2+48, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_3+tyousei2+48, ryusentosshinn, 255);


--バゴォ
bago2 = entryEffectLife( spep_3+tyousei2+45,10021,30,0x100,-1,0,-200,250);--バゴォッ
setEffAlphaKey(  spep_3+tyousei2+45, bago2, 255);
setEffScaleKey( spep_3+tyousei2+45, bago2, 2.0, 2.0);
setEffRotateKey( spep_3+tyousei2+45, bago2, -45);
setEffShake( spep_3+tyousei2+47, bago2, 30, 7);

--setEffAlphaKey(  spep_3+tyousei2+75, bago2, 255);
--setEffAlphaKey(  spep_3+tyousei2+76, bago2, 0);

setMoveKey(   spep_3+tyousei2+45,   1,    -50, 0,   0);
setScaleKey(   spep_3+tyousei2+45,   1, 1.4, 1.4);

playSe( spep_3+tyousei2+45, 1009);
setRotateKey( spep_3+tyousei2+45,  1,  -30 );

changeAnime( spep_3+tyousei2+46, 1, 107); 
setRotateKey( spep_3+tyousei2+46,  1,  90 );
setScaleKey(   spep_3+tyousei2+46,   1, 0.8, 0.8);
setMoveKey(   spep_3+tyousei2+46,   1,    -80, -160,   0);
setRotateKey( spep_3+tyousei2+47,  1,  90 );
setEffAlphaKey( spep_3+tyousei2+46, uraken, 0);
setEffAlphaKey( spep_3+tyousei2+47, uraken, 255);

shuchuserush = entryEffectLife( spep_3+tyousei2+48, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3+tyousei2+48, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2+48, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_3+tyousei2+48, shuchuserush, 255);
setEffRotateKey( spep_3+tyousei2+48, shuchuserush, 0);

setMoveKey(   spep_3+tyousei2+68,   1,    -200, -400,   0);

------------------------------------------------------
-- かめはめ波溜め(100F)
------------------------------------------------------
spep_4 = spep_3+70+tyousei2;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setBgScroll(spep_4,-10);

setMoveKey(   spep_4-1,   1,    -200,-400,   0);
setScaleKey(   spep_4-1,   1, 0.8, 0.8);
--setScaleKey(   spep_4-1,   1, 1.0, 1.0);

setRotateKey( spep_4,  1,  90 );
setMoveKey(   spep_4,   1,    400, 600,   0);
setScaleKey(   spep_4,   1, 0.3, 0.3);


kamebeam = entryEffect( spep_4,   SP_04,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, kamebeam, 0, 0, 0);
setEffScaleKey( spep_4, kamebeam, 1.0, 1.0);
setEffAlphaKey( spep_4, kamebeam, 255);
setEffRotateKey( spep_4, kamebeam, 0);

shuchusenkame = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_4, shuchusenkame, 0, 0, 0);
setEffScaleKey( spep_4, shuchusenkame, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenkame, 255);
setEffRotateKey( spep_4, shuchusenkame, 0);

buttobashirush = entryEffectLife( spep_4, 924, 53, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffMoveKey(spep_4, buttobashirush, -300, 50, 0);
setEffRotateKey( spep_4, buttobashirush, -25);
setEffScaleKey( spep_4, buttobashirush, 1.2, 1.2);
setEffAlphaKey( spep_4, buttobashirush, 255);
--[[
buttobashirush = entryEffectLife( spep_4, 924, 53, 0x80,  -1,  0,  100,  -600); -- 流線斜め
setEffMoveKey(spep_4, buttobashirush, 100, -600, 0);
setEffRotateKey( spep_4, buttobashirush, -90);
setEffScaleKey( spep_4, buttobashirush, 2.0, 2.0);
setEffAlphaKey( spep_4, buttobashirush, 255);
]]
playSe( spep_4+1, 1035);
--ズドドド
ctzudo = entryEffectLife( spep_4+5, 10014, 60, 0x100, -1, 0, -50, 350);    -- ズドドドッ
setEffScaleKey( spep_4+5, ctzudo, 1.5, 1.5);
setEffRotateKey( spep_4+5, ctzudo, 0);
setEffAlphaKey( spep_4+5, ctzudo, 255);
setEffShake(spep_4+5, ctzudo, 60, 10);

--setMoveKey(   spep_4+90,   1,    200, 200,   0);
--setScaleKey(   spep_4+90,   1, 0.6, 0.6);

------------------------------------------------------
-- かめはめ波発射(100F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 75, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey(   spep_5-1,   1,    200, 200,   0);
setScaleKey(   spep_5-1,   1, 0.5, 0.5);
setRotateKey( spep_5-1,  1,  90 );

changeAnime( spep_5, 1, 108);                       -- 立ち

setMoveKey(   spep_5+10,   1,    100, 100,   0);
setScaleKey(   spep_5+1,   1, 1.4, 1.4);
setRotateKey( spep_5+1,  1,  -30 );


ryusentosshinn = entryEffectLife( spep_5, 921, 70, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_5, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_5, ryusentosshinn, -30);
setEffScaleKey( spep_5, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusentosshinn, 255);
playSe( spep_5, 1022);

bunnshin = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 0.8, 0.8);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);

shuchusenkame = entryEffectLife( spep_5, 906, 75, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_5, shuchusenkame, 0, 0, 0);
setEffScaleKey( spep_5, shuchusenkame, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenkame, 255);
setEffRotateKey( spep_5, shuchusenkame, 0);

--ズオッ
ct1 = entryEffectLife( spep_5+30, 10012, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffScaleKey(spep_5+30, ct1, 1.4, 1.4);
setEffScaleKey(spep_5+40, ct1, 2.4, 2.4);
setEffRotateKey(spep_5+30, ct1, 30);
setEffShake(spep_5+40, ct1, 30, 28);

playSe( spep_5+36, SE_04);


------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

spep_6 = spep_5+75;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey(   spep_6,   1,    100, 100,   0);
setScaleKey(   spep_6,   1, 1.4, 1.4);
setRotateKey( spep_6,  1,  -30 );

--setMoveKey(   spep_6,   1,    200, 200,   0);
--setScaleKey(   spep_6,   1, 0.6, 0.6);

setDisp( spep_6, 1, 0);
playSe( spep_6+8, 1024);
gyan=entryEffectLife(  spep_6,  190000,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン

setEffAlphaKey( spep_6, ctgyan, 255);
setEffScaleKey( spep_6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgyan, 255);
setEffAlphaKey( spep_6+60, ctgyan, 0);
setEffShake( spep_6, ctgyan, 45, 8);
setEffAlphaKey( spep_6+59, ctgyan, 255);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+60 --410 469
spep_9=spep_7; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   SP_06,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+140);


else
------------------------------------------------------
--敵側
------------------------------------------------------


entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(5, 0);
setDisp( 5, 0, 0);
setMoveKey( 5, 0,    -2000, -54,   0);


tosshin = entryEffect(  5,   SP_01,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(5, tosshin, 0, 0, 0);
setEffScaleKey( 5, tosshin, -1.0, 1.0);
setEffAlphaKey( 5, tosshin, 255);
setEffRotateKey( 5, tosshin, 0);

shuchusen = entryEffectLife( 5, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(5, shuchusen, 0, 0, 0);
setEffScaleKey( 5, shuchusen, 1.2, 1.2);
setEffAlphaKey( 5, shuchusen, 255);
setEffRotateKey( 5, shuchusen, 0);
--[[
speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( 5, SE_04);


-- 書き文字エントリー
ctgogo = entryEffectLife( 5, 190006, 85, 0x100, -1, 0,-200, 500);    -- ゴゴゴゴ
setEffScaleKey(5, ctgogo, -0.7, 0.7);
setEffRotateKey(5, ctgogo, 10);
setEffAlphaKey( 5, ctgogo, 255);
setEffShake(5, ctgogo, 40, 28);



------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

spep_1 = 100;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);




------------------------------------------------------
-- 裏拳ラッシュ(167f)
------------------------------------------------------

spep_2 = spep_1+85;
tyousei=20;
entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 334+tyousei, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setBgScroll(spep_2,-60);
changeAnime( spep_2, 1, 100);                       -- 立ち
setDisp( spep_2, 1, 1);
setMoveKey(   spep_2-1,   1,    0, 0,   0);
setMoveKey(   spep_2,   1,    2000, 0,   0);
setMoveKey(   spep_2+10,   1,    2000, 0,   0);
setScaleKey(   spep_2,   1, 1.4, 1.4);
setRotateKey( spep_2,  1,  0 );


ryusen = entryEffectLife( spep_2, 920, 344, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey(spep_2, ryusen, 0, 0, 0);
setEffRotateKey( spep_2, ryusen, 0);
setEffScaleKey( spep_2, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen, 255);



--敵がinしてくる
setMoveKey(   spep_2+tyousei+10,   1,    100, 0,   0);

rush = entryEffect(  spep_2+tyousei,   SP_02e,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_2+tyousei, rush, 0, 0, 0);
setEffScaleKey( spep_2+tyousei, rush, 1.0, 1.0);
setEffAlphaKey( spep_2+tyousei, rush, 255);
setEffRotateKey( spep_2+tyousei, rush, 0);


--一旦流線が消える
setEffAlphaKey( spep_2+tyousei+39, ryusen, 255);
setEffAlphaKey( spep_2+tyousei+40, ryusen, 0);


shuchuserush = entryEffectLife( spep_2+40+tyousei, 906, 300, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2+44+tyousei, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2+44+tyousei, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2+44+tyousei, shuchuserush, 255);
setEffRotateKey( spep_2+44+tyousei, shuchuserush, 0);


--ズンッ
zun = entryEffectLife(  spep_2+44+tyousei,   10016,   26,0,     -1,  0,  -100,  250);--導入
setEffMoveKey(spep_2+44+tyousei, zun, -100, 250, 0);
setEffScaleKey( spep_2+44+tyousei, zun, 1.0, 1.0);
setEffAlphaKey( spep_2+44+tyousei, zun, 255);
setEffRotateKey( spep_2+44+tyousei, zun, 0);
setEffShake( spep_2+45+tyousei, zun, 25, 7);

setEffAlphaKey( spep_2+68+tyousei, zun, 255);
setEffAlphaKey( spep_2+70+tyousei, zun, 0);



changeAnime( spep_2+44+tyousei, 1, 104);                       -- 立ち
setMoveKey(   spep_2+44+tyousei,   1,    100, 0,   0);
setShakeChara( spep_2+45+tyousei, 1, 30, 10);

setMoveKey(   spep_2+76+tyousei,   1,    200, 0,   0);

--一旦集中線が消える
setEffAlphaKey( spep_2+70+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+71+tyousei, shuchuserush, 0);

--流線復活する
setEffAlphaKey( spep_2+79+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+80+tyousei, ryusen, 255);

setMoveKey(   spep_2+100+tyousei,   1,    -50, 0,   0);

--裏拳
changeAnime( spep_2+117+tyousei, 1, 105);                       -- 立ち
setShakeChara( spep_2+118+tyousei, 1, 30, 10);
setEffAlphaKey( spep_2+114+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+115+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+114+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+115+tyousei, shuchuserush, 255);

--ガッ
ga = entryEffectLife(  spep_2+117+tyousei,   10005,   30,0,     -1,  0,  10,  200);--導入
setEffMoveKey(spep_2+117+tyousei, ga, 10, 200, 0);
setEffScaleKey( spep_2+117+tyousei, ga, 1.0, 1.0);
setEffAlphaKey( spep_2+117+tyousei, ga, 255);
setEffRotateKey( spep_2+117+tyousei, ga, 10);
setEffShake( spep_2+117+tyousei, ga, 30, 7);


--敵側ずれる
setMoveKey(   spep_2+156+tyousei,   1,    -50, 0,   0);
setEffAlphaKey( spep_2+155+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+156+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+155+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+156+tyousei, shuchuserush, 0);

setMoveKey(   spep_2+159+tyousei,   1,    50, 0,   0);

setMoveKey(   spep_2+169+tyousei,   1,    50, 0,   0);

--蹴り
changeAnime( spep_2+170+tyousei, 1, 108);                       -- 立ち
setMoveKey(   spep_2+170+tyousei,   1,    100, 0,   0);
setShakeChara( spep_2+170+tyousei, 1, 19, 10);
setEffAlphaKey( spep_2+169+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+170+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+169+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+170+tyousei, shuchuserush, 255);
--バキッ
baki = entryEffectLife( spep_2+170+tyousei, 10020, 20, 0, -1, 0, 0, 200); -- バキッ
setEffMoveKey( spep_2+183+tyousei, baki, 0, 200,0);
setEffRotateKey( spep_2+170+tyousei, baki, -20);
setEffScaleKey( spep_2+170+tyousei, baki, 0.7, 0.7);
setEffScaleKey( spep_2+180+tyousei, baki, 1, 1);
setEffShake( spep_2+171+tyousei, baki, 19, 7);

--追う
setMoveKey(   spep_2+196+tyousei,   1,    100, 30,   0);
setEffAlphaKey( spep_2+185+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+186+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+185+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+186+tyousei, shuchuserush, 0);

--殴る
setMoveKey(   spep_2+201+tyousei,   1,    200, 0,   0);
setShakeChara( spep_2+202+tyousei, 1, 29, 10);
setEffAlphaKey( spep_2+199+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+200+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+199+tyousei, shuchuserush, 0);
setEffAlphaKey( spep_2+200+tyousei, shuchuserush, 255);

--ガッ
gadai = entryEffectLife(  spep_2+200+tyousei,   10005,  10, 0x100,     -1,  0,  100,  200);--導入
setEffMoveKey(spep_2+200+tyousei, gadai, 100, 200, 0);
setEffScaleKey( spep_2+200+tyousei, gadai, 1.0, 1.0);
setEffAlphaKey( spep_2+200+tyousei, gadai, 255);
setEffRotateKey( spep_2+200+tyousei, gadai, -20);
setEffShake( spep_2+200+tyousei, gadai, 13, 7);

setShakeChara( spep_2+201+tyousei, 1, 29, 15);

--戻される
--[[
setEffAlphaKey( spep_2+209+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+210+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+209+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+210+tyousei, shuchuserush, 0);
]]
--飛ばされる
setMoveKey(   spep_2+230+tyousei,   1,    500, 0,   0);

--戻される
setEffAlphaKey( spep_2+219+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+220+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+219+tyousei, shuchuserush, 255);
setEffAlphaKey( spep_2+220+tyousei, shuchuserush, 0);

setBgScroll(spep_2+230+tyousei,60);

setMoveKey(   spep_2+255+tyousei,   1,    -100, 0,   0);

setMoveKey(   spep_2+279+tyousei,   1,    -50, 0,   0);
setScaleKey(   spep_2+279+tyousei,   1, 1.4, 1.4);

setEffAlphaKey( spep_2+278+tyousei, ryusen, 255);
setEffAlphaKey( spep_2+279+tyousei, ryusen, 0);
setEffAlphaKey( spep_2+279+tyousei, shuchuserush, 0);

--バゴォ
bago = entryEffectLife( spep_2+280+tyousei,10021, 50, 0x100,-1, 0,120,270);--バゴォッ
setEffMoveKey(spep_2+280+tyousei, bago, 120, 270, 0);
setEffAlphaKey(  spep_2+281+tyousei, bago, 255);
setEffScaleKey( spep_2+280+tyousei, bago, 2, 2);
setEffRotateKey( spep_2+280+tyousei, bago, 20);
--setEffShake( spep_2+282+tyousei, bago, 50, 7);

setEffScaleKey( spep_2+290+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+295+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+300+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+305+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+310+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+315+tyousei, bago, 2, 2);
setEffScaleKey( spep_2+320+tyousei, bago, 1.9, 1.9);
setEffScaleKey( spep_2+325+tyousei, bago, 2, 2);

--setEffAlphaKey(  spep_2+330+tyousei, bago, 255);
--setEffAlphaKey(  spep_2+331+tyousei, bago, 0);

setRotateKey( spep_2+279+tyousei,  1,  0 );
changeAnime( spep_2+280+tyousei, 1, 106);                       -- 立ち
setMoveKey(   spep_2+280+tyousei,   1,    -100, 54,   0);
setRotateKey( spep_2+280+tyousei,  1,  30 );
setShakeChara( spep_2+281+tyousei, 1, 30, 10);

buttobashirush = entryEffectLife( spep_2+280+tyousei, 924, 53, 0x80,  -1,  0,  -100,  -600); -- 流線斜め
setEffMoveKey(spep_2+280+tyousei, buttobashirush, -100, -600, 0);
setEffRotateKey( spep_2+280+tyousei, buttobashirush, -90);
setEffScaleKey( spep_2+280+tyousei, buttobashirush, 2.0, 1.5);
setEffAlphaKey( spep_2+280+tyousei, buttobashirush, 255);

setScaleKey(   spep_2+333+tyousei,   1, 0.5, 0.5);
setMoveKey(   spep_2+333+tyousei,   1,    -100, 400,   0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 235; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2+25+tyousei, 43);
playSe( spep_2+40+tyousei, 1035);

playSe( spep_2+80+tyousei, 1018);
--playSe( spep_2+100+tyousei, 43);

playSe( spep_2+117+tyousei, 1009);

playSe( spep_2+156+tyousei, 1018);

playSe( spep_2+174+tyousei, 1010);
playSe( spep_2+200+tyousei, 1009);

playSe( spep_2+230+tyousei, 1018);

playSe( spep_2+279+tyousei, 1010);

------------------------------------------------------
-- ビンタ叩き落とし(90F)
------------------------------------------------------
spep_3 = spep_2+334+tyousei;

tyousei2=20;
entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 208, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setScaleKey(   spep_3-1,   1, 0.5, 0.5);
setMoveKey(   spep_3-1,   1,    -100, 400,   0);
setRotateKey( spep_3-1,  1,  30 );
setRotateKey( spep_3,  1,  -30 );
setScaleKey(   spep_3,   1, 1.4, 1.4);
setMoveKey(   spep_3,   1,    500, -1000,   0);

playSe( spep_3+tyousei2, 1018);

ryusen = entryEffectLife( spep_3, 920, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, 45);
setEffScaleKey( spep_3, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen, 255);


urakenura = entryEffect(  spep_3+tyousei2,   SP_03,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3+tyousei2, urakenura, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2, urakenura, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei2, urakenura, 255);
setEffRotateKey( spep_3+tyousei2, urakenura, 0);

uraken = entryEffect(  spep_3+tyousei2,   SP_03e,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3+tyousei2, uraken, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2, uraken, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei2, uraken, 0);
setEffRotateKey( spep_3+tyousei2, uraken, 0);

setMoveKey(   spep_3+tyousei2+20,   1,    -50, 0,   0);
setShakeChara( spep_3+tyousei2+20, 1, 29, 10);



ryusentosshinn = entryEffectLife( spep_3+tyousei2+48, 921, 20, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_3+tyousei2+48, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_3+tyousei2+48, ryusentosshinn, -45);
setEffScaleKey( spep_3+tyousei2+48, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_3+tyousei2+48, ryusentosshinn, 255);


--バゴォ
bago2 = entryEffectLife( spep_3+tyousei2+45,10021,30,0x100,-1,0,-200,250);--バゴォッ
setEffAlphaKey(  spep_3+tyousei2+45, bago2, 255);
setEffScaleKey( spep_3+tyousei2+45, bago2, 2.0, 2.0);
setEffRotateKey( spep_3+tyousei2+45, bago2, -45);
setEffShake( spep_3+tyousei2+47, bago2, 30, 7);

--setEffAlphaKey(  spep_3+tyousei2+75, bago2, 255);
--setEffAlphaKey(  spep_3+tyousei2+76, bago2, 0);

setMoveKey(   spep_3+tyousei2+45,   1,    -50, 0,   0);
setScaleKey(   spep_3+tyousei2+45,   1, 1.4, 1.4);

playSe( spep_3+tyousei2+45, 1009);
setRotateKey( spep_3+tyousei2+45,  1,  -30 );

changeAnime( spep_3+tyousei2+46, 1, 107); 
setRotateKey( spep_3+tyousei2+46,  1,  90 );
setScaleKey(   spep_3+tyousei2+46,   1, 0.8, 0.8);
setMoveKey(   spep_3+tyousei2+46,   1,    -80, -160,   0);
setRotateKey( spep_3+tyousei2+47,  1,  90 );
setEffAlphaKey( spep_3+tyousei2+46, uraken, 0);
setEffAlphaKey( spep_3+tyousei2+47, uraken, 255);

shuchuserush = entryEffectLife( spep_3+tyousei2+48, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3+tyousei2+48, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3+tyousei2+48, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_3+tyousei2+48, shuchuserush, 255);
setEffRotateKey( spep_3+tyousei2+48, shuchuserush, 0);

setMoveKey(   spep_3+tyousei2+68,   1,    -200, -400,   0);

------------------------------------------------------
-- かめはめ波溜め(100F)
------------------------------------------------------
spep_4 = spep_3+70+tyousei2;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setBgScroll(spep_4,-10);

setMoveKey(   spep_4-1,   1,    -200,-400,   0);
setScaleKey(   spep_4-1,   1, 0.8, 0.8);
--setScaleKey(   spep_4-1,   1, 1.0, 1.0);

setRotateKey( spep_4,  1,  90 );
setMoveKey(   spep_4,   1,    400, 600,   0);
setScaleKey(   spep_4,   1, 0.3, 0.3);


kamebeam = entryEffect( spep_4,   SP_04e,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, kamebeam, 0, 0, 0);
setEffScaleKey( spep_4, kamebeam, 1.0, 1.0);
setEffAlphaKey( spep_4, kamebeam, 255);
setEffRotateKey( spep_4, kamebeam, 0);

shuchusenkame = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_4, shuchusenkame, 0, 0, 0);
setEffScaleKey( spep_4, shuchusenkame, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenkame, 255);
setEffRotateKey( spep_4, shuchusenkame, 0);

buttobashirush = entryEffectLife( spep_4, 924, 53, 0x80,  -1,  0,  0,  20); -- 流線斜め
setEffMoveKey(spep_4, buttobashirush, -300, 50, 0);
setEffRotateKey( spep_4, buttobashirush, -25);
setEffScaleKey( spep_4, buttobashirush, 1.2, 1.2);
setEffAlphaKey( spep_4, buttobashirush, 255);
--[[
buttobashirush = entryEffectLife( spep_4, 924, 53, 0x80,  -1,  0,  100,  -600); -- 流線斜め
setEffMoveKey(spep_4, buttobashirush, 100, -600, 0);
setEffRotateKey( spep_4, buttobashirush, -90);
setEffScaleKey( spep_4, buttobashirush, 2.0, 2.0);
setEffAlphaKey( spep_4, buttobashirush, 255);
]]
playSe( spep_4+1, 1035);
--ズドドド
ctzudo = entryEffectLife( spep_4+5, 10014, 60, 0x100, -1, 0, -50, 350);    -- ズドドドッ
setEffScaleKey( spep_4+5, ctzudo, 1.5, 1.5);
setEffRotateKey( spep_4+5, ctzudo, -90);
setEffAlphaKey( spep_4+5, ctzudo, 255);
setEffShake(spep_4+5, ctzudo, 60, 10);

--setMoveKey(   spep_4+90,   1,    200, 200,   0);
--setScaleKey(   spep_4+90,   1, 0.6, 0.6);

------------------------------------------------------
-- かめはめ波発射(100F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 75, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey(   spep_5-1,   1,    200, 200,   0);
setScaleKey(   spep_5-1,   1, 0.5, 0.5);
setRotateKey( spep_5-1,  1,  90 );

changeAnime( spep_5, 1, 108);                       -- 立ち

setMoveKey(   spep_5+10,   1,    100, 100,   0);
setScaleKey(   spep_5+1,   1, 1.4, 1.4);
setRotateKey( spep_5+1,  1,  -30 );


ryusentosshinn = entryEffectLife( spep_5, 921, 70, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_5, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_5, ryusentosshinn, -30);
setEffScaleKey( spep_5, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusentosshinn, 255);
playSe( spep_5, 1022);

bunnshin = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 0.8, 0.8);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);

shuchusenkame = entryEffectLife( spep_5, 906, 75, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_5, shuchusenkame, 0, 0, 0);
setEffScaleKey( spep_5, shuchusenkame, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenkame, 255);
setEffRotateKey( spep_5, shuchusenkame, 0);

--ズオッ
ct1 = entryEffectLife( spep_5+30, 10012, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffScaleKey(spep_5+30, ct1, 1.4, 1.4);
setEffScaleKey(spep_5+40, ct1, 2.4, 2.4);
setEffRotateKey(spep_5+30, ct1, 30);
setEffShake(spep_5+40, ct1, 30, 28);

playSe( spep_5+36, SE_04);


------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

spep_6 = spep_5+75;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey(   spep_6,   1,    100, 100,   0);
setScaleKey(   spep_6,   1, 1.4, 1.4);
setRotateKey( spep_6,  1,  -30 );

--setMoveKey(   spep_6,   1,    200, 200,   0);
--setScaleKey(   spep_6,   1, 0.6, 0.6);

setDisp( spep_6, 1, 0);
playSe( spep_6+8, 1024);
gyan=entryEffectLife(  spep_6,  190000,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン

setEffAlphaKey( spep_6, ctgyan, 255);
setEffScaleKey( spep_6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgyan, 255);
setEffAlphaKey( spep_6+60, ctgyan, 0);
setEffShake( spep_6, ctgyan, 45, 8);
setEffAlphaKey( spep_6+59, ctgyan, 255);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+60 --410 469
spep_9=spep_7; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   SP_06,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+140);


end
