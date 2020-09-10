--4013950 リブリアン(巨大化) 格闘sp1167 愛の拳

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


SP_01 =151566;--待機と拡大　前面、後面のオーラは流用もの	ef_001	120	前面、後面のオーラは流用もの
SP_02 =151567;--パンチ	ef_002	190	
SP_03 =151568;--ヒット演出	ef_003	80	ef_002と敵の間のヒット演出
SP_04 =151569;--ヒット演出	ef_004	76	敵の前面のヒット演出
SP_05 =151570;--ビーム	ef_005	180	

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--SP_01 = 151546; --手前に突進 
------------------------------------------------------
spep_1=0;

Tossin = entryEffectLife(spep_1,SP_01,100,0x100,-1,0,0,0); -- SP_01手前に突進

setEffAlphaKey(spep_1,Tossin,255);
setEffAlphaKey(spep_1+100,Tossin,255);
setEffScaleKey(spep_1,Tossin,1.0,1.0);
setEffScaleKey(spep_1+100,Tossin,1.0,1.0);
setEffRotateKey(spep_1,Tossin,0);
setEffRotateKey(spep_1+100,Tossin,0);

--文字エントリー
ctgogo=entryEffectLife(spep_1+30,190006,69,0x100,-1,-200,500);--ゴゴゴ

setEffShake(spep_1+30,ctgogo,69,15);
setEffMoveKey(spep_1+30,ctgogo,-200,500);
setEffMoveKey(spep_1+99,ctgogo,-200,500);
setEffScaleKey(spep_1+39,ctgogo,0.8,0.8);
setEffScaleKey(spep_1+99,ctgogo,0.8,0.8);
setEffAlphaKey(spep_1+30,ctgogo,255);
setEffAlphaKey(spep_1+99,ctgogo,255);
setEffRotateKey(spep_1+30,ctgogo,0);
setEffRotateKey(spep_1+99,ctgogo,0);

--顔＆セリフカットイン
speff=entryEffect(spep_1+20,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+20,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

entryFadeBg(spep_1,0,120,0,10,10,10,180);
entryFade(spep_1+94,4,4,4,255,255,255,255);

--SE
playSe(spep_1,SE_01);
--SE
playSe( spep_1+30, SE_04); --ゴゴゴ

------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_2=spep_1+100;

entryFadeBg( spep_2, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+80, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--SP_02 = 151548; 右ストレート
------------------------------------------------------
spep_3=spep_2+90;

--ヤムチャ
setDisp(spep_3,1,1);
changeAnime(spep_3,1,118);

setMoveKey(spep_3,1,700,-1300,0);
setMoveKey(spep_3+38,1,700,-1300,0);
setMoveKey(spep_3+76,1,80,-320,0);

setScaleKey(spep_3,1,10.0,10.0);
setScaleKey(spep_3+76,1,1.0,1.0);

setRotateKey(spep_3,1,0);

MigiStraight = entryEffectLife(spep_3,SP_02,188,0x80,-1,0,0,0); 

setEffShake(spep_3,MigiStraight,188,15);
setEffAlphaKey(spep_3,MigiStraight,255);
setEffScaleKey(spep_3,MigiStraight,1.0,1.0);
setEffRotateKey(spep_3,MigiStraight,0);

--集中線
shuchusen3 = entryEffectLife(spep_3,  906,  190,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(spep_3,shuchusen3,  1.5,  1.5);
setEffAlphaKey(spep_3,shuchusen3,  255);

--ドン
ctdon=entryEffectLife(spep_3+15,10019,24,0x100,-1,-100,300);

setEffShake(spep_3,ctdon,24,15);
setEffMoveKey(spep_3+15,ctdon,-100,300);
setEffMoveKey(spep_3+39,ctdon,-100,300);
setEffScaleKey(spep_3+15,ctdon,2.0,2.0);
setEffScaleKey(spep_3+39,ctdon,2.0,2.0);
setEffAlphaKey(spep_3+15,ctdon,255);
setEffAlphaKey(spep_3+39,ctdon,255);
setEffRotateKey(spep_3+15,ctdon,0);
setEffRotateKey(spep_3+39,ctdon,0);

--SE
playSe(spep_3+15,8);

--!?
cthatena=entryEffectLife(spep_3+70,10001,28,0x100,-1,-50,-50);--!? 280

setEffShake(spep_3+70,cthatena,46,15);
setEffMoveKey(spep_3+70,cthatena,-70,-250);
setEffMoveKey(spep_3+98,cthatena,-70,-250);
setEffScaleKey(spep_3+70,cthatena,1.8,1.8);
setEffScaleKey(spep_3+75,cthatena,2.5,2.5);
setEffScaleKey(spep_3+80,cthatena,2.5,2.5);
setEffScaleKey(spep_3+98,cthatena,1.8,1.8);
setEffAlphaKey(spep_3+70,cthatena,255);
setEffAlphaKey(spep_3+98,cthatena,255);
setEffRotateKey(spep_3+70,cthatena,350);
setEffRotateKey(spep_3+98,cthatena,350);

--SE
--playSe(spep_3+70,37);
playSe(spep_3+90, 1014); --パンチの音

entryFadeBg(spep_3,0,190,0,10,10,10,230);
------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge=spep_3+100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge,1,80,-320,0);
setScaleKey(SP_dodge , 1 , 1.0 ,1.0);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 80, -320, 0);
setScaleKey(SP_dodge+8,  1 , 1.0 ,1.0);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);
do return end
else end

-------------------------------------------------------------
--回避されなかった場合
-------------------------------------------------------------
setDisp(spep_3+138,1,0);
setDisp(spep_3+140,1,1);
setDisp(spep_3+188,1,0);

changeAnime(spep_3+140,1,107);
setShakeChara(spep_3+140,1,48,10);

setMoveKey(spep_3+138,1,80,-320,0);
setMoveKey(spep_3+140,1,0,-300,0);
setMoveKey(spep_3+188,1,30,-520,0);

setScaleKey(spep_3+138,1,1.0,1.0);
setScaleKey(spep_3+140,1,0.6,0.6);
setScaleKey(spep_3+188,1,3.0,3.0);

setRotateKey(spep_3+139,1,0);
setRotateKey(spep_3+140,1,320);
setRotateKey(spep_3+188,1,320);

--setShakeChara(spep_3+140,48,25);

setEffAlphaKey(spep_3+188,MigiStraight,255);
setEffScaleKey(spep_3+188,MigiStraight,1.0,1.0);
setEffRotateKey(spep_3+188,MigiStraight,0);

-- SP_03後方から波動・手前
HadouFront = entryEffectLife(spep_3+138,SP_03,50,0x100,-1,0,0,0); 

setEffAlphaKey(spep_3+138,HadouFront,255);
setEffAlphaKey(spep_3+188,HadouFront,0);
setEffScaleKey(spep_3+138,HadouFront,1.0,1.0);
setEffScaleKey(spep_3+188,HadouFront,1.0,1.0);
setEffRotateKey(spep_3+138,HadouFront,0);
setEffRotateKey(spep_3+188,HadouFront,0);

setEffShake(spep_3+138,HadouFront,50,15);

-- SP_04後方から波動・奥
HadouBehind = entryEffectLife(spep_3+138,SP_04,50,0x80,-1,0,0,0); 

setEffAlphaKey(spep_3+138,HadouBehind,255);
setEffAlphaKey(spep_3+188,HadouBehind,255);
setEffScaleKey(spep_3+138,HadouBehind,1.0,1.0);
setEffScaleKey(spep_3+188,HadouBehind,1.0,1.0);
setEffRotateKey(spep_3+138,HadouBehind,0);
setEffRotateKey(spep_3+188,HadouBehind,0);

setEffShake(spep_3+138,HadouBehind,50,15);
setEffScaleKey(spep_3+190,shuchusen3,  1.5,  1.5);
setEffAlphaKey(spep_3+190,shuchusen3,  255);

--ドゴォン
ctdogown=entryEffectLife(spep_3+138,10018,50,0x100,-1,0,0);

setEffShake(spep_3+138,ctdogown,50,25);
setEffMoveKey(spep_3+138,ctdogown,0,0);
setEffMoveKey(spep_3+188,ctdogown,0,0);
setEffScaleKey(spep_3+138,ctdogown,1.8,1.8);
setEffScaleKey(spep_3+158,ctdogown,3.8,3.8);
setEffScaleKey(spep_3+181,ctdogown,3.8,3.8);
setEffScaleKey(spep_3+188,ctdogown,6.8,6.8);
setEffAlphaKey(spep_3+138,ctdogown,255);
setEffAlphaKey(spep_3+181,ctdogown,255);
setEffAlphaKey(spep_3+188,ctdogown,30);
setEffRotateKey(spep_3+138,ctdogown,10);
setEffRotateKey(spep_3+158,ctdogown,0);
setEffRotateKey(spep_3+188,ctdogown,0);

--SE
playSe(spep_3+138,1025);
entryFade(spep_3+138,0,2,2,255,255,255,230);
entryFade(spep_3+184,4,4,4,255,255,255,255);

------------------------------------------------------
--SP_05上からハンマー
------------------------------------------------------
spep_4=spep_3+190;

Hummer = entryEffectLife(spep_4,SP_05,176,0x100,-1,0,0,0); -- SP_05上からハンマー

setEffAlphaKey(spep_4,Hummer,255);
setEffAlphaKey(spep_4+176,Hummer,255);
setEffScaleKey(spep_4,Hummer,1.0,1.0);
setEffScaleKey(spep_4+176,Hummer,1.0,1.0);
setEffRotateKey(spep_4,Hummer,0);
setEffRotateKey(spep_4+176,Hummer,0);

setEffShake(spep_4,Hummer,176,15);

--ズオッ
ctzuo=entryEffectLife(spep_4+76,10012,34,0x100,-1,100,-100);--ズオ

setEffShake(spep_4+76,ctzuo,34,20);
setEffMoveKey(spep_4+76,ctzuo,100,-100);
setEffMoveKey(spep_4+110,ctzuo,200,-200);
setEffScaleKey(spep_4+76,ctzuo,0.1,0.1);
setEffScaleKey(spep_4+110,ctzuo,3.2,3.2);
setEffAlphaKey(spep_4+76,ctzuo,255);
setEffAlphaKey(spep_4+110,ctzuo,255);
setEffRotateKey(spep_4+76,ctzuo,30);
setEffRotateKey(spep_4+110,ctzuo,30);

--SE
playSe(spep_4,SE_01);

--ズドド
ctzudodo=entryEffectLife(spep_4+120,10014,56,0x100,-1,0,0);--ズドドドッ 520

setEffShake(spep_4+120,ctzudodo,56,20);
setEffMoveKey(spep_4+120,ctzudodo,0,0);
setEffMoveKey(spep_4+176,ctzudodo,0,0);
setEffScaleKey(spep_4+120,ctzudodo,2.2,2.2);
setEffScaleKey(spep_4+176,ctzudodo,4.2,4.2);
setEffAlphaKey(spep_4+120,ctzudodo,255);
setEffAlphaKey(spep_4+176,ctzudodo,255);
setEffRotateKey(spep_4+120,ctzudodo,46);
setEffRotateKey(spep_4+176,ctzudodo,46);

--集中線
shuchusen4 = entryEffectLife(  spep_4,  906,  176,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffScaleKey(  spep_4+176,  shuchusen4,  1.5,  1.5);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+176,  shuchusen4,  255);

--SE
playSe(spep_4+120,SE_07);

entryFadeBg(spep_4,0,180,0,10,10,10,200);
entryFade(spep_4+174,4,4,4,255,255,255,255);

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_5=spep_4+180;

gyan = entryEffect(  spep_5,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_5, ct6, 3.0, 3.0);
setEffScaleKey( spep_5+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_5, ct6, 255);
setEffAlphaKey( spep_5+58, ct6, 0);
setEffShake( spep_5, ct6, 58, 10);

playSe(  spep_5, SE_09);

entryFade(  spep_5+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_6=spep_5+58;

bakuhatsu = entryEffect(  spep_6,  1683,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffAlphaKey(  spep_6+190,  bakuhatsu,  255);

shuchusen = entryEffectLife(  spep_6,  906,  200,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_6,  shuchusen,  1.5,  1.5);
setEffScaleKey(  spep_6+190,  shuchusen,  1.5,  1.5);
setEffAlphaKey(  spep_6,  shuchusen,  255);
setEffAlphaKey(  spep_6+190,  shuchusen,  255);

-- 背景 --
entryFadeBg( spep_6, 0, 190, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_6,  SE_10);

-- ダメージ表示
dealDamage( spep_6+86);

entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);

else

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--SP_01 = 151546; --手前に突進 
------------------------------------------------------
spep_1=0;

Tossin = entryEffectLife(spep_1,SP_01,100,0x100,-1,0,0,0); -- SP_01手前に突進

setEffAlphaKey(spep_1,Tossin,255);
setEffAlphaKey(spep_1+100,Tossin,255);
setEffScaleKey(spep_1,Tossin,1.0,1.0);
setEffScaleKey(spep_1+100,Tossin,1.0,1.0);
setEffRotateKey(spep_1,Tossin,0);
setEffRotateKey(spep_1+100,Tossin,0);

--文字エントリー
ctgogo=entryEffectLife(spep_1+30,190006,69,0x100,-1,-100,500);--ゴゴゴ

setEffShake(spep_1+30,ctgogo,69,15);
setEffMoveKey(spep_1+30,ctgogo,-100,500);
setEffMoveKey(spep_1+99,ctgogo,-100,500);
setEffScaleKey(spep_1+39,ctgogo,-0.8,0.8);
setEffScaleKey(spep_1+99,ctgogo,-0.8,0.8);
setEffAlphaKey(spep_1+30,ctgogo,255);
setEffAlphaKey(spep_1+99,ctgogo,255);
setEffRotateKey(spep_1+30,ctgogo,0);
setEffRotateKey(spep_1+99,ctgogo,0);

--顔＆セリフカットイン
--speff=entryEffect(spep_1+40,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+40,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

entryFadeBg(spep_1,0,120,0,10,10,10,180);
entryFade(spep_1+94,4,4,4,255,255,255,255);

--SE
playSe(spep_1,SE_01);
--SE
playSe( spep_1+30, SE_04); --ゴゴゴ

------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_2=spep_1+100;

entryFadeBg( spep_2, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+80, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--SP_02 = 151548; 右ストレート
------------------------------------------------------
spep_3=spep_2+90;

--ヤムチャ
setDisp(spep_3,1,1);
changeAnime(spep_3,1,118);

setMoveKey(spep_3,1,700,-1300,0);
setMoveKey(spep_3+38,1,700,-1300,0);
setMoveKey(spep_3+76,1,80,-320,0);

setScaleKey(spep_3,1,10.0,10.0);
setScaleKey(spep_3+76,1,1.0,1.0);

setRotateKey(spep_3,1,0);

MigiStraight = entryEffectLife(spep_3,SP_02,188,0x80,-1,0,0,0); 

setEffShake(spep_3,MigiStraight,188,15);
setEffAlphaKey(spep_3,MigiStraight,255);
setEffScaleKey(spep_3,MigiStraight,1.0,1.0);
setEffRotateKey(spep_3,MigiStraight,0);

--集中線
shuchusen3 = entryEffectLife(spep_3,  906,  190,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(spep_3,shuchusen3,  1.5,  1.5);
setEffAlphaKey(spep_3,shuchusen3,  255);

--ドン
ctdon=entryEffectLife(spep_3+15,10019,24,0x100,-1,-100,300);

setEffShake(spep_3,ctdon,24,15);
setEffMoveKey(spep_3+15,ctdon,-100,300);
setEffMoveKey(spep_3+39,ctdon,-100,300);
setEffScaleKey(spep_3+15,ctdon,2.0,2.0);
setEffScaleKey(spep_3+39,ctdon,2.0,2.0);
setEffAlphaKey(spep_3+15,ctdon,255);
setEffAlphaKey(spep_3+39,ctdon,255);
setEffRotateKey(spep_3+15,ctdon,0);
setEffRotateKey(spep_3+39,ctdon,0);

--SE
playSe(spep_3+15,8)

--!?
cthatena=entryEffectLife(spep_3+70,10001,28,0x100,-1,-50,-50);--!? 280

setEffShake(spep_3+70,cthatena,46,15);
setEffMoveKey(spep_3+70,cthatena,-70,-250);
setEffMoveKey(spep_3+98,cthatena,-70,-250);
setEffScaleKey(spep_3+70,cthatena,1.8,1.8);
setEffScaleKey(spep_3+75,cthatena,2.5,2.5);
setEffScaleKey(spep_3+80,cthatena,2.5,2.5);
setEffScaleKey(spep_3+98,cthatena,1.8,1.8);
setEffAlphaKey(spep_3+70,cthatena,255);
setEffAlphaKey(spep_3+98,cthatena,255);
setEffRotateKey(spep_3+70,cthatena,350);
setEffRotateKey(spep_3+98,cthatena,350);

--SE
--playSe(spep_3+70,37);
playSe(spep_3+90, 1014); --パンチの音

entryFadeBg(spep_3,0,190,0,10,10,10,230);
------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge=spep_3+100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge,1,80,-320,0);
setScaleKey(SP_dodge , 1 , 1.0 ,1.0);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 80, -320, 0);
setScaleKey(SP_dodge+8,  1 , 1.0 ,1.0);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);
do return end
else end

-------------------------------------------------------------
--回避されなかった場合
-------------------------------------------------------------
setDisp(spep_3+138,1,0);
setDisp(spep_3+140,1,1);
setDisp(spep_3+188,1,0);

changeAnime(spep_3+140,1,107);
setShakeChara(spep_3+140,1,48,10);

setMoveKey(spep_3+138,1,80,-320,0);
setMoveKey(spep_3+140,1,0,-300,0);
setMoveKey(spep_3+188,1,30,-520,0);

setScaleKey(spep_3+138,1,1.0,1.0);
setScaleKey(spep_3+140,1,0.6,0.6);
setScaleKey(spep_3+188,1,3.0,3.0);

setRotateKey(spep_3+139,1,0);
setRotateKey(spep_3+140,1,320);
setRotateKey(spep_3+188,1,320);

--setShakeChara(spep_3+140,48,25);

setEffAlphaKey(spep_3+188,MigiStraight,255);
setEffScaleKey(spep_3+188,MigiStraight,1.0,1.0);
setEffRotateKey(spep_3+188,MigiStraight,0);

-- SP_03後方から波動・手前
HadouFront = entryEffectLife(spep_3+138,SP_03,50,0x100,-1,0,0,0); 

setEffAlphaKey(spep_3+138,HadouFront,255);
setEffAlphaKey(spep_3+188,HadouFront,0);
setEffScaleKey(spep_3+138,HadouFront,1.0,1.0);
setEffScaleKey(spep_3+188,HadouFront,1.0,1.0);
setEffRotateKey(spep_3+138,HadouFront,0);
setEffRotateKey(spep_3+188,HadouFront,0);

setEffShake(spep_3+138,HadouFront,50,15);

-- SP_04後方から波動・奥
HadouBehind = entryEffectLife(spep_3+138,SP_04,50,0x80,-1,0,0,0); 

setEffAlphaKey(spep_3+138,HadouBehind,255);
setEffAlphaKey(spep_3+188,HadouBehind,255);
setEffScaleKey(spep_3+138,HadouBehind,1.0,1.0);
setEffScaleKey(spep_3+188,HadouBehind,1.0,1.0);
setEffRotateKey(spep_3+138,HadouBehind,0);
setEffRotateKey(spep_3+188,HadouBehind,0);

setEffShake(spep_3+138,HadouBehind,50,15);
setEffScaleKey(spep_3+190,shuchusen3,  1.5,  1.5);
setEffAlphaKey(spep_3+190,shuchusen3,  255);

--ドゴォン
ctdogown=entryEffectLife(spep_3+138,10018,50,0x100,-1,0,0);

setEffShake(spep_3+138,ctdogown,50,25);
setEffMoveKey(spep_3+138,ctdogown,0,0);
setEffMoveKey(spep_3+188,ctdogown,0,0);
setEffScaleKey(spep_3+138,ctdogown,1.8,1.8);
setEffScaleKey(spep_3+158,ctdogown,3.8,3.8);
setEffScaleKey(spep_3+181,ctdogown,3.8,3.8);
setEffScaleKey(spep_3+188,ctdogown,6.8,6.8);
setEffAlphaKey(spep_3+138,ctdogown,255);
setEffAlphaKey(spep_3+181,ctdogown,255);
setEffAlphaKey(spep_3+188,ctdogown,30);
setEffRotateKey(spep_3+138,ctdogown,10);
setEffRotateKey(spep_3+158,ctdogown,0);
setEffRotateKey(spep_3+188,ctdogown,0);

--SE
playSe(spep_3+138,1025);
entryFade(spep_3+138,0,2,2,255,255,255,230);
entryFade(spep_3+184,4,4,4,255,255,255,255);

------------------------------------------------------
--SP_05上からハンマー
------------------------------------------------------
spep_4=spep_3+190;

Hummer = entryEffectLife(spep_4,SP_05,176,0x100,-1,0,0,0); -- SP_05上からハンマー

setEffAlphaKey(spep_4,Hummer,255);
setEffAlphaKey(spep_4+176,Hummer,255);
setEffScaleKey(spep_4,Hummer,1.0,1.0);
setEffScaleKey(spep_4+176,Hummer,1.0,1.0);
setEffRotateKey(spep_4,Hummer,0);
setEffRotateKey(spep_4+176,Hummer,0);

setEffShake(spep_4,Hummer,176,15);

--ズオッ
ctzuo=entryEffectLife(spep_4+76,10012,34,0x100,-1,50,-300);--ズオ

setEffShake(spep_4+76,ctzuo,34,20);
setEffMoveKey(spep_4+76,ctzuo,100,-100);
setEffMoveKey(spep_4+110,ctzuo,200,-200);
setEffScaleKey(spep_4+76,ctzuo,0.1,0.1);
setEffScaleKey(spep_4+110,ctzuo,3.2,3.2);
setEffAlphaKey(spep_4+76,ctzuo,255);
setEffAlphaKey(spep_4+110,ctzuo,255);
setEffRotateKey(spep_4+76,ctzuo,30);
setEffRotateKey(spep_4+110,ctzuo,30);

--SE
playSe(spep_4,SE_01);

--ズドド
ctzudodo=entryEffectLife(spep_4+120,10014,56,0x100,-1,0,0);--ズドドドッ 520

setEffShake(spep_4+120,ctzudodo,56,20);
setEffMoveKey(spep_4+120,ctzudodo,0,0);
setEffMoveKey(spep_4+176,ctzudodo,0,0);
setEffScaleKey(spep_4+120,ctzudodo,2.2,2.2);
setEffScaleKey(spep_4+176,ctzudodo,4.2,4.2);
setEffAlphaKey(spep_4+120,ctzudodo,255);
setEffAlphaKey(spep_4+176,ctzudodo,255);
setEffRotateKey(spep_4+120,ctzudodo,-24);
setEffRotateKey(spep_4+176,ctzudodo,-24);

--集中線
shuchusen4 = entryEffectLife(  spep_4,  906,  176,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffScaleKey(  spep_4+176,  shuchusen4,  1.5,  1.5);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+176,  shuchusen4,  255);

--SE
playSe(spep_4+120,SE_07);

entryFadeBg(spep_4,0,180,0,10,10,10,200);
entryFade(spep_4+174,4,4,4,255,255,255,255);

------------------------------------------------------
--ギャン
------------------------------------------------------
spep_5=spep_4+180;

gyan = entryEffect(  spep_5,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_5, ct6, 3.0, 3.0);
setEffScaleKey( spep_5+58, ct6, 4.0, 4.0);
setEffAlphaKey( spep_5, ct6, 255);
setEffAlphaKey( spep_5+58, ct6, 0);
setEffShake( spep_5, ct6, 58, 10);

playSe(  spep_5, SE_09);

entryFade(  spep_5+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発
------------------------------------------------------
spep_6=spep_5+58;

bakuhatsu = entryEffect(  spep_6,  1683,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_6,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_6,  bakuhatsu,  255);
setEffAlphaKey(  spep_6+190,  bakuhatsu,  255);

shuchusen = entryEffectLife(  spep_6,  906,  200,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_6,  shuchusen,  1.5,  1.5);
setEffScaleKey(  spep_6+190,  shuchusen,  1.5,  1.5);
setEffAlphaKey(  spep_6,  shuchusen,  255);
setEffAlphaKey(  spep_6+190,  shuchusen,  255);

-- 背景 --
entryFadeBg( spep_6, 0, 190, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_6,  SE_10);

-- ダメージ表示
dealDamage( spep_6+86);

entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);

end
