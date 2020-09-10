--超サイヤ人ベジータ 1015300 サイクロンシューティング
--sp_effect_a6_00013


fcolor_r = 245 ;
fcolor_g = 245 ;
fcolor_b = 245 ;
 
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=	152350	;--	溜め
SP_02=	152351	;--	構え〜放つ
SP_03=	152352	;--	着弾1・手前
SP_04=	152353	;--	着弾1・奥
SP_05=	152354	;--	連射
SP_06=	152355	;--	着弾2・手前
SP_07=	152356	;--	着弾2・奥

--敵側
SP_01x=	152357	;--	溜め	(敵)
SP_02x=	152358	;--	構え〜放つ	(敵)
SP_03x=	152352	;--	着弾1・手前	
SP_04x=	152353	;--	着弾1・奥	
SP_05x=	152359	;--	連射	(敵)
SP_06x=	152355	;--	着弾2・手前	
SP_07x=	152356	;--	着弾2・奥	


-----------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;
--[[
setDisp( spep_0, 0, 1);
setDisp( spep_0+10, 0, 0);
changeAnime(spep_0,0,0);

setMoveKey(   spep_0+0,   0,    0, 0,   0);
setMoveKey(   spep_0+1,   0,    0, 0,   0);
setMoveKey(   spep_0+2,   0,    0, 0,   0);
setMoveKey(   spep_0+3,   0,    0, 0,   0);
setMoveKey(   spep_0+10,   0,    0, 0,   0);

setScaleKey(   spep_0+0,   0, 1.6, 1.6);
setScaleKey(   spep_0+1,   0, 1.6, 1.6);
setScaleKey(   spep_0+2,   0, 1.6, 1.6);
setScaleKey(   spep_0+3,   0, 1.6, 1.6);
setScaleKey(   spep_0+10,   0, 1.6, 1.6);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+10,   0, 0);
]]

--エフェクト再生
tame=entryEffectLife(spep_0,SP_01,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+140,tame,0,0,0);

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

--後ろの気
ef_ki=entryEffectLife(spep_0+10, 1503, 130,0x80,-1,0,0,0);   

setEffMoveKey(spep_0+10,ef_ki,0,0,0);
setEffMoveKey(spep_0+140,ef_ki,0,0,0);

setEffScaleKey(spep_0+10, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_0+140,ef_ki, 1.0, 1.0);

setEffAlphaKey(spep_0+10,ef_ki,255);
setEffAlphaKey(spep_0+140,ef_ki,255);

setEffRotateKey(spep_0+10,ef_ki,0);
setEffRotateKey(spep_0+140,ef_ki,0);
--[[
--バチバチ
ef_bati=entryEffectLife(spep_0+10, 1502, 130,0x100,-1,0,0,0);   

setEffMoveKey(spep_0+10,ef_bati,0,0,0);
setEffMoveKey(spep_0+140,ef_bati,0,0,0);

setEffScaleKey(spep_0+10,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_0+140,ef_bati, 1.0, 1.0);

setEffAlphaKey(spep_0+10,ef_bati,255);
setEffAlphaKey(spep_0+140,ef_bati,255);

setEffRotateKey(spep_0+10,ef_bati,0);
setEffRotateKey(spep_0+140,ef_bati,0);
]]--
--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -4 + 20,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ

setEffMoveKey( spep_0 -4 + 20, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -4 + 22, ctzuzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 -4 + 24, ctzuzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 -4 + 26, ctzuzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 -4 + 28, ctzuzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 -4 + 30, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 32, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 34, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 36, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 38, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 40, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 42, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 44, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 46, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 48, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 50, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 52, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 54, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 56, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 58, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 60, ctzuzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 -4 + 20, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -4 + 22, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 -4 + 24, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -4 + 26, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -4 + 60, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -4 + 20, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -4 + 60, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -4 + 20, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -4 + 38, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -4 + 40, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 -4 + 42, ctzuzuzun, 172 );
setEffAlphaKey( spep_0 -4 + 44, ctzuzuzun, 136 );
setEffAlphaKey( spep_0 -4 + 46, ctzuzuzun, 104 );
setEffAlphaKey( spep_0 -4 + 48, ctzuzuzun, 77 );
setEffAlphaKey( spep_0 -4 + 50, ctzuzuzun, 53 );
setEffAlphaKey( spep_0 -4 + 52, ctzuzuzun, 34 );
setEffAlphaKey( spep_0 -4 + 54, ctzuzuzun, 19 );
setEffAlphaKey( spep_0 -4 + 56, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 -4 + 58, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 -4 + 60, ctzuzuzun, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_0 + 18,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 18, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen5, 1.21, 2.03 );
setEffScaleKey( spep_0 + 138, shuchusen5, 1.21, 2.03 );

setEffRotateKey( spep_0 + 18, shuchusen5, 180 );
setEffRotateKey( spep_0 + 138, shuchusen5, 180 );

setEffAlphaKey( spep_0 + 18, shuchusen5, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen5, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+64,190006,70,0x100,-1,-110,520);--ゴゴゴ
setEffMoveKey(spep_0+64,ctgogo,-110,520,0);
setEffMoveKey(spep_0+134,ctgogo,-110,520,0);
setEffScaleKey(spep_0+64, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+134, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 64, ctgogo, 0 );
setEffAlphaKey( spep_0 + 65, ctgogo, 255 );
setEffAlphaKey( spep_0 + 66, ctgogo, 255 );
setEffAlphaKey( spep_0 + 134, ctgogo, 255 );

--顔カットイン
speff=entryEffect(spep_0+52,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+52,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え



-- ** エフェクト等 ** --
entryFade(spep_0, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+10,0,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+132,6,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_0 +18, SE_02 ); --気を貯める
playSe( spep_0 +38, SE_02 ); --気を貯める
--playSe( spep_0 +58, SE_02 ); --気を貯める
playSe( spep_0 +64, SE_04);--ゴゴゴ

spep_1=spep_0+140;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;
--------------------------------------
--ビームを出す
--------------------------------------
--エフェクト再生
beam=entryEffectLife(spep_2,SP_02,110,0x100,-1,0,0,0);

setEffMoveKey(spep_2,beam,0,0,0);
setEffMoveKey(spep_2+110,beam,0,0,0);

setEffScaleKey(spep_2,beam,1.0,1.0);
setEffScaleKey(spep_2+110,beam,1.0,1.0);

setEffAlphaKey(spep_2,beam,255);
setEffAlphaKey(spep_2+110,beam,255);

setEffRotateKey(spep_2,beam,0);
setEffRotateKey(spep_2+110,beam,0);

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, ryusen,0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 5.84, 1.23 );
setEffScaleKey( spep_2 + 110, ryusen, 5.84, 1.23 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 110, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 38 );
setEffAlphaKey( spep_2 + 2, ryusen, 57 );
setEffAlphaKey( spep_2 + 4, ryusen, 77 );
setEffAlphaKey( spep_2 + 6, ryusen, 97 );
setEffAlphaKey( spep_2 + 8, ryusen, 117 );
setEffAlphaKey( spep_2 + 10, ryusen, 136 );
setEffAlphaKey( spep_2 + 12, ryusen, 156 );
setEffAlphaKey( spep_2 + 14, ryusen, 176 );
setEffAlphaKey( spep_2 + 16, ryusen, 196 );
setEffAlphaKey( spep_2 + 18, ryusen, 215 );
setEffAlphaKey( spep_2 + 20, ryusen, 235 );
setEffAlphaKey( spep_2 + 22, ryusen, 255 );
setEffAlphaKey( spep_2 + 110, ryusen, 255 );

--集中線
shuchusen = entryEffectLife( spep_2 + 0,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.26, 1.69 );
setEffScaleKey( spep_2 + 110, shuchusen, 1.26, 1.69 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 110, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 110, shuchusen, 255 );

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--SE
--playSe( spep_2 , 1016 ); --グミ撃つち
--playSe( spep_2+20 , 1016 ); --グミ撃つち
playSe( spep_2+44 , 1017 ); --グミ撃つち


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
]]

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
playSe( spep_2+68 , 1017 ); --グミ撃つち
playSe( spep_2+84 , 1017 ); --グミ撃つち
playSe( spep_2+100 , 1017 ); --グミ撃つち
-- ** エフェクト等 ** --
entryFade(spep_2+102, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+110;
--------------------------------------
--ビームが当たる
--------------------------------------
--エフェクト再生(前)
hit_f=entryEffectLife(spep_3,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,hit_f,0,0,0);
setEffMoveKey(spep_3+100,hit_f,0,0,0);

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+100,hit_f,1.0,1.0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+100,hit_f,255);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+100,hit_f,0);

--エフェクト再生(後)
hit_b=entryEffectLife(spep_3,SP_04,100,0x80,-1,0,0,0);

setEffMoveKey(spep_3,hit_b,0,0,0);
setEffMoveKey(spep_3+100,hit_b,0,0,0);

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+100,hit_b,1.0,1.0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+100,hit_b,255);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+100,hit_b,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 98, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 19, 1, 106 );  --22
changeAnime( spep_3 + 20, 1, 106 );  --22

setMoveKey( spep_3 + 0, 1, -766.1, 55.2 , 0 );
setMoveKey( spep_3 + 2, 1, -682.7, 58.8 , 0 );
setMoveKey( spep_3 + 4, 1, -583, 55.2 , 0 );
setMoveKey( spep_3 + 6, 1, -511.4, 43.5 , 0 );
setMoveKey( spep_3 + 8, 1, -399.9, 55.2 , 0 );
setMoveKey( spep_3 + 10, 1, -316.5, 54.8 , 0 );
setMoveKey( spep_3 + 12, 1, -216.8, 55.3 , 0 );
setMoveKey( spep_3 + 14, 1, -141.2, 39.6 , 0 );
setMoveKey( spep_3 + 16, 1, -33.7, 55.3 , 0 );
setMoveKey( spep_3 + 18, 1, -41.2, 58.9 , 0 );
setMoveKey( spep_3 + 21, 1, -24.3, 55.3 , 0 );
setMoveKey( spep_3 + 22, 1, -23.8, 76.2 , 0 );
setMoveKey( spep_3 + 24, 1, -20.5, 94.1 , 0 );
setMoveKey( spep_3 + 26, 1, -22.6, 76.2 , 0 );
setMoveKey( spep_3 + 28, 1, -20.9, 90.9 , 0 );
setMoveKey( spep_3 + 30, 1, -13.3, 80.2 , 0 );
setMoveKey( spep_3 + 32, 1, -10, 94.1 , 0 );
setMoveKey( spep_3 + 34, 1, -8, 80.2 , 0 );
setMoveKey( spep_3 + 36, 1, -10.4, 90.9 , 0 );
setMoveKey( spep_3 + 38, 1, -6.8, 80.2 , 0 );
setMoveKey( spep_3 + 40, 1, 0.5, 94.1 , 0 );
setMoveKey( spep_3 + 42, 1, 2.5, 76.2 , 0 );
setMoveKey( spep_3 + 44, 1, 0.2, 90.9 , 0 );
setMoveKey( spep_3 + 46, 1, 3.8, 76.2 , 0 );
setMoveKey( spep_3 + 48, 1, 11.1, 94.1 , 0 );
setMoveKey( spep_3 + 50, 1, 13, 80.2 , 0 );
setMoveKey( spep_3 + 52, 1, 10.7, 90.9 , 0 );
setMoveKey( spep_3 + 54, 1, 14.3, 76.2 , 0 );
setMoveKey( spep_3 + 56, 1, 21.6, 94.1 , 0 );
setMoveKey( spep_3 + 58, 1, 23.6, 80.2 , 0 );
setMoveKey( spep_3 + 60, 1, 21.2, 90.9 , 0 );
setMoveKey( spep_3 + 62, 1, 24.8, 76.2 , 0 );
setMoveKey( spep_3 + 64, 1, 32.1, 94.1 , 0 );
setMoveKey( spep_3 + 66, 1, 34.1, 80.2 , 0 );
setMoveKey( spep_3 + 68, 1, 31.7, 90.9 , 0 );
setMoveKey( spep_3 + 70, 1, 35.3, 76.2 , 0 );
setMoveKey( spep_3 + 72, 1, 42.6, 94.1 , 0 );
setMoveKey( spep_3 + 74, 1, 44.6, 76.2 , 0 );
setMoveKey( spep_3 + 76, 1, 42.3, 90.9 , 0 );
setMoveKey( spep_3 + 78, 1, 45.9, 72.2 , 0 );
setMoveKey( spep_3 + 80, 1, 53.2, 94.1 , 0 );
setMoveKey( spep_3 + 82, 1, 55.1, 76.2 , 0 );
setMoveKey( spep_3 + 84, 1, 52.8, 90.9 , 0 );
setMoveKey( spep_3 + 86, 1, 56.4, 80.2 , 0 );
setMoveKey( spep_3 + 88, 1, 63.7, 94.1 , 0 );
setMoveKey( spep_3 + 90, 1, 65.7, 76.2 , 0 );
setMoveKey( spep_3 + 92, 1, 63.3, 90.9 , 0 );
setMoveKey( spep_3 + 94, 1, 66.9, 76.2 , 0 );
setMoveKey( spep_3 + 96, 1, 74.2, 94.1 , 0 );
setMoveKey( spep_3 + 98, 1, 76.2, 76.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 19, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 20, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 98, 1, 1.45, 1.45 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );
setRotateKey( spep_3 + 19, 1, -20.2 );
setRotateKey( spep_3 + 20, 1, -20.2 );
setRotateKey( spep_3 + 98, 1, -20.2 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.32, 1.92 );
setEffScaleKey( spep_3 + 100, shuchusen2, 1.32, 1.92 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen2, 255 );

--流線
ryusen2 = entryEffectLife( spep_3 + 0,  914, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 4.08, 1.23 );
setEffScaleKey( spep_3 + 100, ryusen2, 4.08, 1.23 );

setEffRotateKey( spep_3 + 0, ryusen2, 180 );
setEffRotateKey( spep_3 + 100, ryusen2, 180 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 100, ryusen2, 255 );

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+90, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_3+20 , 1025 ); --ヒット
playSe( spep_3+34 , 1025 ); --ヒット
playSe( spep_3+48 , 1025 ); --ヒット
playSe( spep_3+62 , 1025 ); --ヒット
playSe( spep_3+76 , 1025 ); --ヒット
playSe( spep_3+90 , 1025 ); --ヒット
--playSe( spep_3+80 , 1025 ); --ヒット
--playSe( spep_3+90 , 1025 ); --ヒット

--次の準備
spep_4=spep_3+100;

--------------------------------------
--ビームを撃つ
--------------------------------------
--エフェクト再生
beam2=entryEffectLife(spep_4,SP_05,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam2,0,0,0);
setEffMoveKey(spep_4+80,beam2,0,0,0);

setEffScaleKey(spep_4,beam2,1.0,1.0);
setEffScaleKey(spep_4+80,beam2,1.0,1.0);

setEffAlphaKey(spep_4,beam2,255);
setEffAlphaKey(spep_4+80,beam2,255);

setEffRotateKey(spep_4,beam2,0);
setEffRotateKey(spep_4+80,beam2,0);

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.32, 1.92 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 80, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen3, 255 );


--流線
ryusen3 = entryEffectLife( spep_4 + 0,  914, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 4.08, 1.23 );
setEffScaleKey( spep_4 + 80, ryusen3, 4.08, 1.23 );

setEffRotateKey( spep_4 + 0, ryusen3, 180 );
setEffRotateKey( spep_4 + 80, ryusen3, 180 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe( spep_4 , 1017 ); --グミ撃つち
playSe( spep_4+16 , 1017 ); --グミ撃つち
playSe( spep_4+32 , 1017 ); --グミ撃つち
playSe( spep_4+48 , 1017 ); --グミ撃つち
playSe( spep_4+64 , 1017 ); --グミ撃つち

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ビームが当たる
--------------------------------------
--エフェクト再生(前)
hit_f2=entryEffectLife(spep_5,SP_06,100,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f2,0,0,0);
setEffMoveKey(spep_5+100,hit_f2,0,0,0);

setEffScaleKey(spep_5,hit_f2,1.0,1.0);
setEffScaleKey(spep_5+100,hit_f2,1.0,1.0);

setEffAlphaKey(spep_5,hit_f2,255);
setEffAlphaKey(spep_5+100,hit_f2,255);

setEffRotateKey(spep_5,hit_f2,0);
setEffRotateKey(spep_5+100,hit_f2,0);

--エフェクト再生(後)
hit_b2=entryEffectLife(spep_5,SP_07,100,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b2,0,0,0);
setEffMoveKey(spep_5+100,hit_b2,0,0,0);

setEffScaleKey(spep_5,hit_b2,1.0,1.0);
setEffScaleKey(spep_5+100,hit_b2,1.0,1.0);

setEffAlphaKey(spep_5,hit_b2,255);
setEffAlphaKey(spep_5+100,hit_b2,255);

setEffRotateKey(spep_5,hit_b2,0);
setEffRotateKey(spep_5+100,hit_b2,0);


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 98, 1, 0 );

changeAnime( spep_5 , 1, 106 );

setMoveKey( spep_5 -180 + 180, 1, -341, 81.4 , 0 );
setMoveKey( spep_5 -180 + 182, 1, -332.2, 63.1 , 0 );
setMoveKey( spep_5 -180 + 184, 1, -309.2, 82.7 , 0 );
setMoveKey( spep_5 -180 + 186, 1, -313.8, 85.7 , 0 );
setMoveKey( spep_5 -180 + 188, 1, -277.4, 83.9 , 0 );
setMoveKey( spep_5 -180 + 190, 1, -268.7, 82.2 , 0 );
setMoveKey( spep_5 -180 + 192, 1, -245.6, 85.1 , 0 );
setMoveKey( spep_5 -180 + 194, 1, -242.8, 80.6 , 0 );
setMoveKey( spep_5 -180 + 196, 1, -213.7, 86.4 , 0 );
setMoveKey( spep_5 -180 + 198, 1, -213.3, 93.4 , 0 );
setMoveKey( spep_5 -180 + 200, 1, -181.9, 87.6 , 0 );
setMoveKey( spep_5 -180 + 202, 1, -179.7, 87.6 , 0 );
setMoveKey( spep_5 -180 + 204, 1, -150.1, 88.9 , 0 );
setMoveKey( spep_5 -180 + 206, 1, -141.9, 96.5 , 0 );
setMoveKey( spep_5 -180 + 208, 1, -118.2, 90.1 , 0 );
setMoveKey( spep_5 -180 + 210, 1, -116.6, 82.5 , 0 );
setMoveKey( spep_5 -180 + 212, 1, -97.3, 91.2 , 0 );
setMoveKey( spep_5 -180 + 214, 1, -108.1, 99.2 , 0 );
setMoveKey( spep_5 -180 + 216, 1, -87.2, 92.1 , 0 );
setMoveKey( spep_5 -180 + 218, 1, -96.6, 88.5 , 0 );
setMoveKey( spep_5 -180 + 220, 1, -77, 93 , 0 );
setMoveKey( spep_5 -180 + 222, 1, -83.9, 97.3 , 0 );
setMoveKey( spep_5 -180 + 224, 1, -66.9, 94 , 0 );
setMoveKey( spep_5 -180 + 226, 1, -76.6, 98.5 , 0 );
setMoveKey( spep_5 -180 + 228, 1, -56.8, 94.9 , 0 );
setMoveKey( spep_5 -180 + 230, 1, -67.8, 103.4 , 0 );
setMoveKey( spep_5 -180 + 232, 1, -46.7, 95.8 , 0 );
setMoveKey( spep_5 -180 + 234, 1, -56.6, 88.6 , 0 );
setMoveKey( spep_5 -180 + 236, 1, -36.6, 96.7 , 0 );
setMoveKey( spep_5 -180 + 238, 1, -39.6, 97.5 , 0 );
setMoveKey( spep_5 -180 + 240, 1, -26.5, 97.7 , 0 );
setMoveKey( spep_5 -180 + 242, 1, -44.6, 102.6 , 0 );
setMoveKey( spep_5 -180 + 244, 1, -16.3, 98.6 , 0 );
setMoveKey( spep_5 -180 + 246, 1, -19.5, 99.6 , 0 );
setMoveKey( spep_5 -180 + 248, 1, -6.2, 99.5 , 0 );
setMoveKey( spep_5 -180 + 250, 1, -24.6, 104.6 , 0 );
setMoveKey( spep_5 -180 + 252, 1, 3.9, 100.4 , 0 );
setMoveKey( spep_5 -180 + 254, 1, 0.7, 105.7 , 0 );
setMoveKey( spep_5 -180 + 256, 1, 14, 101.4 , 0 );
setMoveKey( spep_5 -180 + 258, 1, -4.6, 106.6 , 0 );
setMoveKey( spep_5 -180 + 260, 1, 24.1, 102.3 , 0 );
setMoveKey( spep_5 -180 + 262, 1, 20.8, 107.8 , 0 );
setMoveKey( spep_5 -180 + 264, 1, 34.3, 103.2 , 0 );
setMoveKey( spep_5 -180 + 266, 1, 19.4, 104.7 , 0 );
setMoveKey( spep_5 -180 + 268, 1, 44.4, 104.2 , 0 );
setMoveKey( spep_5 -180 + 270, 1, 37, 109.9 , 0 );
setMoveKey( spep_5 -180 + 272, 1, 54.5, 105.1 , 0 );
setMoveKey( spep_5 -180 + 274, 1, 43.4, 102.7 , 0 );
setMoveKey( spep_5 -180 + 276, 1, 64.6, 106 , 0 );
setMoveKey( spep_5 -180 + 278, 1, 57.1, 116 , 0 );

setScaleKey( spep_5 -180 + 180, 1, 1.3, 1.3 );
setScaleKey( spep_5 -180 + 182, 1, 1.33, 1.33 );
setScaleKey( spep_5 -180 + 184, 1, 1.35, 1.35 );
setScaleKey( spep_5 -180 + 186, 1, 1.38, 1.38 );
setScaleKey( spep_5 -180 + 188, 1, 1.4, 1.4 );
setScaleKey( spep_5 -180 + 190, 1, 1.42, 1.42 );
setScaleKey( spep_5 -180 + 192, 1, 1.45, 1.45 );
setScaleKey( spep_5 -180 + 194, 1, 1.47, 1.47 );
setScaleKey( spep_5 -180 + 196, 1, 1.5, 1.5 );
setScaleKey( spep_5 -180 + 198, 1, 1.52, 1.52 );
setScaleKey( spep_5 -180 + 200, 1, 1.55, 1.55 );
setScaleKey( spep_5 -180 + 202, 1, 1.57, 1.57 );
setScaleKey( spep_5 -180 + 204, 1, 1.59, 1.59 );
setScaleKey( spep_5 -180 + 206, 1, 1.62, 1.62 );
setScaleKey( spep_5 -180 + 208, 1, 1.64, 1.64 );
setScaleKey( spep_5 -180 + 210, 1, 1.67, 1.67 );
setScaleKey( spep_5 -180 + 212, 1, 1.68, 1.68 );
setScaleKey( spep_5 -180 + 214, 1, 1.69, 1.69 );
setScaleKey( spep_5 -180 + 216, 1, 1.69, 1.69 );
setScaleKey( spep_5 -180 + 218, 1, 1.7, 1.7 );
setScaleKey( spep_5 -180 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_5 -180 + 222, 1, 1.72, 1.72 );
setScaleKey( spep_5 -180 + 224, 1, 1.73, 1.73 );
setScaleKey( spep_5 -180 + 226, 1, 1.74, 1.74 );
setScaleKey( spep_5 -180 + 228, 1, 1.75, 1.75 );
setScaleKey( spep_5 -180 + 230, 1, 1.76, 1.76 );
setScaleKey( spep_5 -180 + 232, 1, 1.77, 1.77 );
setScaleKey( spep_5 -180 + 234, 1, 1.78, 1.78 );
setScaleKey( spep_5 -180 + 236, 1, 1.79, 1.79 );
setScaleKey( spep_5 -180 + 238, 1, 1.8, 1.8 );
setScaleKey( spep_5 -180 + 240, 1, 1.81, 1.81 );
setScaleKey( spep_5 -180 + 242, 1, 1.82, 1.82 );
setScaleKey( spep_5 -180 + 244, 1, 1.83, 1.83 );
setScaleKey( spep_5 -180 + 246, 1, 1.84, 1.84 );
setScaleKey( spep_5 -180 + 248, 1, 1.84, 1.84 );
setScaleKey( spep_5 -180 + 250, 1, 1.85, 1.85 );
setScaleKey( spep_5 -180 + 252, 1, 1.86, 1.86 );
setScaleKey( spep_5 -180 + 254, 1, 1.87, 1.87 );
setScaleKey( spep_5 -180 + 256, 1, 1.88, 1.88 );
setScaleKey( spep_5 -180 + 258, 1, 1.89, 1.89 );
setScaleKey( spep_5 -180 + 260, 1, 1.9, 1.9 );
setScaleKey( spep_5 -180 + 262, 1, 1.91, 1.91 );
setScaleKey( spep_5 -180 + 264, 1, 1.92, 1.92 );
setScaleKey( spep_5 -180 + 266, 1, 1.93, 1.93 );
setScaleKey( spep_5 -180 + 268, 1, 1.94, 1.94 );
setScaleKey( spep_5 -180 + 270, 1, 1.95, 1.95 );
setScaleKey( spep_5 -180 + 272, 1, 1.96, 1.96 );
setScaleKey( spep_5 -180 + 274, 1, 1.97, 1.97 );
setScaleKey( spep_5 -180 + 276, 1, 1.98, 1.98 );
setScaleKey( spep_5 -180 + 278, 1, 1.99, 1.99 );

setRotateKey( spep_5 -180 + 180, 1, -20.2 );
setRotateKey( spep_5 -180 + 180 +98, 1, -20.2 );

-- ** 文字エントリー ** --
ctzudodo = entryEffectLife( spep_5-180 + 180,  10014, 98, 0x100, -1, 0, 67.7, 368.5 );--ズドドドッ

setEffShake(  spep_5,  ctzudodo,  98,  20);
setEffMoveKey( spep_5-180 + 180, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 182, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 184, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 186, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 188, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 190, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 192, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 194, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 196, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 198, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 200, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 202, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 204, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 206, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 208, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 210, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 212, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 214, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 216, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 218, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 220, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 222, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 224, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 226, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 228, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 230, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 232, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 234, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 236, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 238, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 240, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 242, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 244, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 246, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 248, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 250, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 252, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 254, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 256, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 258, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 260, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 262, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 264, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 266, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 268, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 270, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 272, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 274, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 276, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 278, ctzudodo, 58.1, 357.5 , 0 );

setEffScaleKey( spep_5-180 + 180, ctzudodo, 2.58, 2.58 );
setEffScaleKey( spep_5-180 + 278, ctzudodo, 2.58, 2.58 );

setEffRotateKey( spep_5-180 + 180, ctzudodo, 58.7 );
setEffRotateKey( spep_5-180 + 278, ctzudodo, 58.7 );

setEffAlphaKey( spep_5-180 + 180, ctzudodo, 255 );
setEffAlphaKey( spep_5-180 + 278, ctzudodo, 255 );

--流線
ryusen4 = entryEffectLife( spep_5 + 0,  914, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 4.08, 1.23 );
setEffScaleKey( spep_5 + 100, ryusen4, 4.08, 1.23 );

setEffRotateKey( spep_5 + 0, ryusen4, 0 );
setEffRotateKey( spep_5 + 100, ryusen4, 0 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 100, ryusen4, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.32, 1.92 );
setEffScaleKey( spep_5 + 80, shuchusen4, 1.32, 1.92 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 80, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 255 );

--SE
playSe( spep_5 , 1023 ); --爆発
playSe( spep_5+20 , 1023 ); --爆発
playSe( spep_5+40 , 1023 ); --爆発
playSe( spep_5+60 , 1023 ); --爆発
playSe( spep_5+80 , 1023 ); --爆発

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

--シロフェード
entryFade(spep_5+90, 6, 14, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_6+ 0, 1, 1 );

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+110, ct, 0);

playSe( spep_6+14, SE_11);
shuchusen = entryEffectLife( spep_6+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+106);

else

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;
--[[
setDisp( spep_0, 0, 1);
setDisp( spep_0+10, 0, 0);
changeAnime(spep_0,0,0);

setMoveKey(   spep_0+0,   0,    0, 0,   0);
setMoveKey(   spep_0+1,   0,    0, 0,   0);
setMoveKey(   spep_0+2,   0,    0, 0,   0);
setMoveKey(   spep_0+3,   0,    0, 0,   0);
setMoveKey(   spep_0+10,   0,    0, 0,   0);

setScaleKey(   spep_0+0,   0, 1.6, 1.6);
setScaleKey(   spep_0+1,   0, 1.6, 1.6);
setScaleKey(   spep_0+2,   0, 1.6, 1.6);
setScaleKey(   spep_0+3,   0, 1.6, 1.6);
setScaleKey(   spep_0+10,   0, 1.6, 1.6);

setRotateKey(   spep_0+0,   0, 0);
setRotateKey(   spep_0+1,   0, 0);
setRotateKey(   spep_0+2,   0, 0);
setRotateKey(   spep_0+3,   0, 0);
setRotateKey(   spep_0+10,   0, 0);
]]

--エフェクト再生
tame=entryEffectLife(spep_0,SP_01x,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+140,tame,0,0,0);

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

--後ろの気
ef_ki=entryEffectLife(spep_0+10, 1503, 130,0x80,-1,0,0,0);   

setEffMoveKey(spep_0+10,ef_ki,0,0,0);
setEffMoveKey(spep_0+140,ef_ki,0,0,0);

setEffScaleKey(spep_0+10, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_0+140,ef_ki, 1.0, 1.0);

setEffAlphaKey(spep_0+10,ef_ki,255);
setEffAlphaKey(spep_0+140,ef_ki,255);

setEffRotateKey(spep_0+10,ef_ki,0);
setEffRotateKey(spep_0+140,ef_ki,0);
--[[
--バチバチ
ef_bati=entryEffectLife(spep_0+10, 1502, 130,0x100,-1,0,0,0);   

setEffMoveKey(spep_0+10,ef_bati,0,0,0);
setEffMoveKey(spep_0+140,ef_bati,0,0,0);

setEffScaleKey(spep_0+10,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_0+140,ef_bati, 1.0, 1.0);

setEffAlphaKey(spep_0+10,ef_bati,255);
setEffAlphaKey(spep_0+140,ef_bati,255);

setEffRotateKey(spep_0+10,ef_bati,0);
setEffRotateKey(spep_0+140,ef_bati,0);
]]--

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -4 + 20,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ

setEffMoveKey( spep_0 -4 + 20, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -4 + 22, ctzuzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 -4 + 24, ctzuzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 -4 + 26, ctzuzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 -4 + 28, ctzuzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 -4 + 30, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 32, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 34, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 36, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 38, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 40, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 42, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 44, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 46, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 48, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 50, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 52, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 54, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 56, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 -4 + 58, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 -4 + 60, ctzuzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 -4 + 20, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -4 + 22, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 -4 + 24, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -4 + 26, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -4 + 60, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -4 + 20, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -4 + 60, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -4 + 20, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -4 + 38, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -4 + 40, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 -4 + 42, ctzuzuzun, 172 );
setEffAlphaKey( spep_0 -4 + 44, ctzuzuzun, 136 );
setEffAlphaKey( spep_0 -4 + 46, ctzuzuzun, 104 );
setEffAlphaKey( spep_0 -4 + 48, ctzuzuzun, 77 );
setEffAlphaKey( spep_0 -4 + 50, ctzuzuzun, 53 );
setEffAlphaKey( spep_0 -4 + 52, ctzuzuzun, 34 );
setEffAlphaKey( spep_0 -4 + 54, ctzuzuzun, 19 );
setEffAlphaKey( spep_0 -4 + 56, ctzuzuzun, 9 );
setEffAlphaKey( spep_0 -4 + 58, ctzuzuzun, 2 );
setEffAlphaKey( spep_0 -4 + 60, ctzuzuzun, 0 );


--集中線
shuchusen5 = entryEffectLife( spep_0 + 18,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 18, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen5, 1.21, 2.03 );
setEffScaleKey( spep_0 + 138, shuchusen5, 1.21, 2.03 );

setEffRotateKey( spep_0 + 18, shuchusen5, 180 );
setEffRotateKey( spep_0 + 138, shuchusen5, 180 );

setEffAlphaKey( spep_0 + 18, shuchusen5, 255 );
setEffAlphaKey( spep_0 + 138, shuchusen5, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+64,190006,70,0x100,-1,-110,520);--ゴゴゴ
setEffMoveKey(spep_0+64,ctgogo,-110,520,0);
setEffMoveKey(spep_0+134,ctgogo,-110,520,0);
setEffScaleKey(spep_0+64, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+134, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 64, ctgogo, 0 );
setEffAlphaKey( spep_0 + 65, ctgogo, 255 );
setEffAlphaKey( spep_0 + 66, ctgogo, 255 );
setEffAlphaKey( spep_0 + 134, ctgogo, 255 );

--顔カットイン
--speff=entryEffect(spep_0+52,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+52,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え



-- ** エフェクト等 ** --
entryFade(spep_0, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+10,0,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+132,6,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_0 +18, SE_02 ); --気を貯める
playSe( spep_0 +38, SE_02 ); --気を貯める
--playSe( spep_0 +58, SE_02 ); --気を貯める
playSe( spep_0 +64, SE_04);--ゴゴゴ

spep_1=spep_0+140;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;
--------------------------------------
--ビームを出す
--------------------------------------
--エフェクト再生
beam=entryEffectLife(spep_2,SP_02x,110,0x100,-1,0,0,0);

setEffMoveKey(spep_2,beam,0,0,0);
setEffMoveKey(spep_2+110,beam,0,0,0);

setEffScaleKey(spep_2,beam,1.0,1.0);
setEffScaleKey(spep_2+110,beam,1.0,1.0);

setEffAlphaKey(spep_2,beam,255);
setEffAlphaKey(spep_2+110,beam,255);

setEffRotateKey(spep_2,beam,0);
setEffRotateKey(spep_2+110,beam,0);

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 110, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, ryusen,0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 5.84, 1.23 );
setEffScaleKey( spep_2 + 110, ryusen, 5.84, 1.23 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 110, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 38 );
setEffAlphaKey( spep_2 + 2, ryusen, 57 );
setEffAlphaKey( spep_2 + 4, ryusen, 77 );
setEffAlphaKey( spep_2 + 6, ryusen, 97 );
setEffAlphaKey( spep_2 + 8, ryusen, 117 );
setEffAlphaKey( spep_2 + 10, ryusen, 136 );
setEffAlphaKey( spep_2 + 12, ryusen, 156 );
setEffAlphaKey( spep_2 + 14, ryusen, 176 );
setEffAlphaKey( spep_2 + 16, ryusen, 196 );
setEffAlphaKey( spep_2 + 18, ryusen, 215 );
setEffAlphaKey( spep_2 + 20, ryusen, 235 );
setEffAlphaKey( spep_2 + 22, ryusen, 255 );
setEffAlphaKey( spep_2 + 110, ryusen, 255 );

--集中線
shuchusen = entryEffectLife( spep_2 + 0,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.26, 1.69 );
setEffScaleKey( spep_2 + 110, shuchusen, 1.26, 1.69 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 110, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 110, shuchusen, 255 );

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--SE
--playSe( spep_2 , 1016 ); --グミ撃つち
--playSe( spep_2+20 , 1016 ); --グミ撃つち
playSe( spep_2+44 , 1017 ); --グミ撃つち


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
]]

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
playSe( spep_2+68 , 1017 ); --グミ撃つち
playSe( spep_2+84 , 1017 ); --グミ撃つち
playSe( spep_2+100 , 1017 ); --グミ撃つち
-- ** エフェクト等 ** --
entryFade(spep_2+102, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+110;
--------------------------------------
--ビームが当たる
--------------------------------------
--エフェクト再生(前)
hit_f=entryEffectLife(spep_3,SP_03x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,hit_f,0,0,0);
setEffMoveKey(spep_3+100,hit_f,0,0,0);

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+100,hit_f,1.0,1.0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+100,hit_f,255);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+100,hit_f,0);

--エフェクト再生(後)
hit_b=entryEffectLife(spep_3,SP_04x,100,0x80,-1,0,0,0);

setEffMoveKey(spep_3,hit_b,0,0,0);
setEffMoveKey(spep_3+100,hit_b,0,0,0);

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+100,hit_b,1.0,1.0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+100,hit_b,255);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+100,hit_b,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 98, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 19, 1, 106 );  --22
changeAnime( spep_3 + 20, 1, 106 );  --22

setMoveKey( spep_3 + 0, 1, -766.1, 55.2 , 0 );
setMoveKey( spep_3 + 2, 1, -682.7, 58.8 , 0 );
setMoveKey( spep_3 + 4, 1, -583, 55.2 , 0 );
setMoveKey( spep_3 + 6, 1, -511.4, 43.5 , 0 );
setMoveKey( spep_3 + 8, 1, -399.9, 55.2 , 0 );
setMoveKey( spep_3 + 10, 1, -316.5, 54.8 , 0 );
setMoveKey( spep_3 + 12, 1, -216.8, 55.3 , 0 );
setMoveKey( spep_3 + 14, 1, -141.2, 39.6 , 0 );
setMoveKey( spep_3 + 16, 1, -33.7, 55.3 , 0 );
setMoveKey( spep_3 + 18, 1, -41.2, 58.9 , 0 );
setMoveKey( spep_3 + 21, 1, -24.3, 55.3 , 0 );
setMoveKey( spep_3 + 22, 1, -23.8, 76.2 , 0 );
setMoveKey( spep_3 + 24, 1, -20.5, 94.1 , 0 );
setMoveKey( spep_3 + 26, 1, -22.6, 76.2 , 0 );
setMoveKey( spep_3 + 28, 1, -20.9, 90.9 , 0 );
setMoveKey( spep_3 + 30, 1, -13.3, 80.2 , 0 );
setMoveKey( spep_3 + 32, 1, -10, 94.1 , 0 );
setMoveKey( spep_3 + 34, 1, -8, 80.2 , 0 );
setMoveKey( spep_3 + 36, 1, -10.4, 90.9 , 0 );
setMoveKey( spep_3 + 38, 1, -6.8, 80.2 , 0 );
setMoveKey( spep_3 + 40, 1, 0.5, 94.1 , 0 );
setMoveKey( spep_3 + 42, 1, 2.5, 76.2 , 0 );
setMoveKey( spep_3 + 44, 1, 0.2, 90.9 , 0 );
setMoveKey( spep_3 + 46, 1, 3.8, 76.2 , 0 );
setMoveKey( spep_3 + 48, 1, 11.1, 94.1 , 0 );
setMoveKey( spep_3 + 50, 1, 13, 80.2 , 0 );
setMoveKey( spep_3 + 52, 1, 10.7, 90.9 , 0 );
setMoveKey( spep_3 + 54, 1, 14.3, 76.2 , 0 );
setMoveKey( spep_3 + 56, 1, 21.6, 94.1 , 0 );
setMoveKey( spep_3 + 58, 1, 23.6, 80.2 , 0 );
setMoveKey( spep_3 + 60, 1, 21.2, 90.9 , 0 );
setMoveKey( spep_3 + 62, 1, 24.8, 76.2 , 0 );
setMoveKey( spep_3 + 64, 1, 32.1, 94.1 , 0 );
setMoveKey( spep_3 + 66, 1, 34.1, 80.2 , 0 );
setMoveKey( spep_3 + 68, 1, 31.7, 90.9 , 0 );
setMoveKey( spep_3 + 70, 1, 35.3, 76.2 , 0 );
setMoveKey( spep_3 + 72, 1, 42.6, 94.1 , 0 );
setMoveKey( spep_3 + 74, 1, 44.6, 76.2 , 0 );
setMoveKey( spep_3 + 76, 1, 42.3, 90.9 , 0 );
setMoveKey( spep_3 + 78, 1, 45.9, 72.2 , 0 );
setMoveKey( spep_3 + 80, 1, 53.2, 94.1 , 0 );
setMoveKey( spep_3 + 82, 1, 55.1, 76.2 , 0 );
setMoveKey( spep_3 + 84, 1, 52.8, 90.9 , 0 );
setMoveKey( spep_3 + 86, 1, 56.4, 80.2 , 0 );
setMoveKey( spep_3 + 88, 1, 63.7, 94.1 , 0 );
setMoveKey( spep_3 + 90, 1, 65.7, 76.2 , 0 );
setMoveKey( spep_3 + 92, 1, 63.3, 90.9 , 0 );
setMoveKey( spep_3 + 94, 1, 66.9, 76.2 , 0 );
setMoveKey( spep_3 + 96, 1, 74.2, 94.1 , 0 );
setMoveKey( spep_3 + 98, 1, 76.2, 76.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 19, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 20, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 98, 1, 1.45, 1.45 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );
setRotateKey( spep_3 + 19, 1, -20.2 );
setRotateKey( spep_3 + 20, 1, -20.2 );
setRotateKey( spep_3 + 98, 1, -20.2 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.32, 1.92 );
setEffScaleKey( spep_3 + 100, shuchusen2, 1.32, 1.92 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen2, 255 );

--流線
ryusen2 = entryEffectLife( spep_3 + 0,  914, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 4.08, 1.23 );
setEffScaleKey( spep_3 + 100, ryusen2, 4.08, 1.23 );

setEffRotateKey( spep_3 + 0, ryusen2, 180 );
setEffRotateKey( spep_3 + 100, ryusen2, 180 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 100, ryusen2, 255 );

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+90, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_3+20 , 1025 ); --ヒット
playSe( spep_3+34 , 1025 ); --ヒット
playSe( spep_3+48 , 1025 ); --ヒット
playSe( spep_3+62 , 1025 ); --ヒット
playSe( spep_3+76 , 1025 ); --ヒット
playSe( spep_3+90 , 1025 ); --ヒット
--playSe( spep_3+80 , 1025 ); --ヒット
--playSe( spep_3+90 , 1025 ); --ヒット

--次の準備
spep_4=spep_3+100;

--------------------------------------
--ビームを撃つ
--------------------------------------
--エフェクト再生
beam2=entryEffectLife(spep_4,SP_05x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam2,0,0,0);
setEffMoveKey(spep_4+80,beam2,0,0,0);

setEffScaleKey(spep_4,beam2,1.0,1.0);
setEffScaleKey(spep_4+80,beam2,1.0,1.0);

setEffAlphaKey(spep_4,beam2,255);
setEffAlphaKey(spep_4+80,beam2,255);

setEffRotateKey(spep_4,beam2,0);
setEffRotateKey(spep_4+80,beam2,0);

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.32, 1.92 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.32, 1.92 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 80, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen3, 255 );


--流線
ryusen3 = entryEffectLife( spep_4 + 0,  914, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 4.08, 1.23 );
setEffScaleKey( spep_4 + 80, ryusen3, 4.08, 1.23 );

setEffRotateKey( spep_4 + 0, ryusen3, 180 );
setEffRotateKey( spep_4 + 80, ryusen3, 180 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe( spep_4 , 1017 ); --グミ撃つち
playSe( spep_4+16 , 1017 ); --グミ撃つち
playSe( spep_4+32 , 1017 ); --グミ撃つち
playSe( spep_4+48 , 1017 ); --グミ撃つち
playSe( spep_4+64 , 1017 ); --グミ撃つち

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ビームが当たる
--------------------------------------
--エフェクト再生(前)
hit_f2=entryEffectLife(spep_5,SP_06x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f2,0,0,0);
setEffMoveKey(spep_5+100,hit_f2,0,0,0);

setEffScaleKey(spep_5,hit_f2,1.0,1.0);
setEffScaleKey(spep_5+100,hit_f2,1.0,1.0);

setEffAlphaKey(spep_5,hit_f2,255);
setEffAlphaKey(spep_5+100,hit_f2,255);

setEffRotateKey(spep_5,hit_f2,0);
setEffRotateKey(spep_5+100,hit_f2,0);

--エフェクト再生(後)
hit_b2=entryEffectLife(spep_5,SP_07x,100,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b2,0,0,0);
setEffMoveKey(spep_5+100,hit_b2,0,0,0);

setEffScaleKey(spep_5,hit_b2,1.0,1.0);
setEffScaleKey(spep_5+100,hit_b2,1.0,1.0);

setEffAlphaKey(spep_5,hit_b2,255);
setEffAlphaKey(spep_5+100,hit_b2,255);

setEffRotateKey(spep_5,hit_b2,0);
setEffRotateKey(spep_5+100,hit_b2,0);


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 98, 1, 0 );

changeAnime( spep_5 , 1, 106 );

setMoveKey( spep_5 -180 + 180, 1, -341, 81.4 , 0 );
setMoveKey( spep_5 -180 + 182, 1, -332.2, 63.1 , 0 );
setMoveKey( spep_5 -180 + 184, 1, -309.2, 82.7 , 0 );
setMoveKey( spep_5 -180 + 186, 1, -313.8, 85.7 , 0 );
setMoveKey( spep_5 -180 + 188, 1, -277.4, 83.9 , 0 );
setMoveKey( spep_5 -180 + 190, 1, -268.7, 82.2 , 0 );
setMoveKey( spep_5 -180 + 192, 1, -245.6, 85.1 , 0 );
setMoveKey( spep_5 -180 + 194, 1, -242.8, 80.6 , 0 );
setMoveKey( spep_5 -180 + 196, 1, -213.7, 86.4 , 0 );
setMoveKey( spep_5 -180 + 198, 1, -213.3, 93.4 , 0 );
setMoveKey( spep_5 -180 + 200, 1, -181.9, 87.6 , 0 );
setMoveKey( spep_5 -180 + 202, 1, -179.7, 87.6 , 0 );
setMoveKey( spep_5 -180 + 204, 1, -150.1, 88.9 , 0 );
setMoveKey( spep_5 -180 + 206, 1, -141.9, 96.5 , 0 );
setMoveKey( spep_5 -180 + 208, 1, -118.2, 90.1 , 0 );
setMoveKey( spep_5 -180 + 210, 1, -116.6, 82.5 , 0 );
setMoveKey( spep_5 -180 + 212, 1, -97.3, 91.2 , 0 );
setMoveKey( spep_5 -180 + 214, 1, -108.1, 99.2 , 0 );
setMoveKey( spep_5 -180 + 216, 1, -87.2, 92.1 , 0 );
setMoveKey( spep_5 -180 + 218, 1, -96.6, 88.5 , 0 );
setMoveKey( spep_5 -180 + 220, 1, -77, 93 , 0 );
setMoveKey( spep_5 -180 + 222, 1, -83.9, 97.3 , 0 );
setMoveKey( spep_5 -180 + 224, 1, -66.9, 94 , 0 );
setMoveKey( spep_5 -180 + 226, 1, -76.6, 98.5 , 0 );
setMoveKey( spep_5 -180 + 228, 1, -56.8, 94.9 , 0 );
setMoveKey( spep_5 -180 + 230, 1, -67.8, 103.4 , 0 );
setMoveKey( spep_5 -180 + 232, 1, -46.7, 95.8 , 0 );
setMoveKey( spep_5 -180 + 234, 1, -56.6, 88.6 , 0 );
setMoveKey( spep_5 -180 + 236, 1, -36.6, 96.7 , 0 );
setMoveKey( spep_5 -180 + 238, 1, -39.6, 97.5 , 0 );
setMoveKey( spep_5 -180 + 240, 1, -26.5, 97.7 , 0 );
setMoveKey( spep_5 -180 + 242, 1, -44.6, 102.6 , 0 );
setMoveKey( spep_5 -180 + 244, 1, -16.3, 98.6 , 0 );
setMoveKey( spep_5 -180 + 246, 1, -19.5, 99.6 , 0 );
setMoveKey( spep_5 -180 + 248, 1, -6.2, 99.5 , 0 );
setMoveKey( spep_5 -180 + 250, 1, -24.6, 104.6 , 0 );
setMoveKey( spep_5 -180 + 252, 1, 3.9, 100.4 , 0 );
setMoveKey( spep_5 -180 + 254, 1, 0.7, 105.7 , 0 );
setMoveKey( spep_5 -180 + 256, 1, 14, 101.4 , 0 );
setMoveKey( spep_5 -180 + 258, 1, -4.6, 106.6 , 0 );
setMoveKey( spep_5 -180 + 260, 1, 24.1, 102.3 , 0 );
setMoveKey( spep_5 -180 + 262, 1, 20.8, 107.8 , 0 );
setMoveKey( spep_5 -180 + 264, 1, 34.3, 103.2 , 0 );
setMoveKey( spep_5 -180 + 266, 1, 19.4, 104.7 , 0 );
setMoveKey( spep_5 -180 + 268, 1, 44.4, 104.2 , 0 );
setMoveKey( spep_5 -180 + 270, 1, 37, 109.9 , 0 );
setMoveKey( spep_5 -180 + 272, 1, 54.5, 105.1 , 0 );
setMoveKey( spep_5 -180 + 274, 1, 43.4, 102.7 , 0 );
setMoveKey( spep_5 -180 + 276, 1, 64.6, 106 , 0 );
setMoveKey( spep_5 -180 + 278, 1, 57.1, 116 , 0 );

setScaleKey( spep_5 -180 + 180, 1, 1.3, 1.3 );
setScaleKey( spep_5 -180 + 182, 1, 1.33, 1.33 );
setScaleKey( spep_5 -180 + 184, 1, 1.35, 1.35 );
setScaleKey( spep_5 -180 + 186, 1, 1.38, 1.38 );
setScaleKey( spep_5 -180 + 188, 1, 1.4, 1.4 );
setScaleKey( spep_5 -180 + 190, 1, 1.42, 1.42 );
setScaleKey( spep_5 -180 + 192, 1, 1.45, 1.45 );
setScaleKey( spep_5 -180 + 194, 1, 1.47, 1.47 );
setScaleKey( spep_5 -180 + 196, 1, 1.5, 1.5 );
setScaleKey( spep_5 -180 + 198, 1, 1.52, 1.52 );
setScaleKey( spep_5 -180 + 200, 1, 1.55, 1.55 );
setScaleKey( spep_5 -180 + 202, 1, 1.57, 1.57 );
setScaleKey( spep_5 -180 + 204, 1, 1.59, 1.59 );
setScaleKey( spep_5 -180 + 206, 1, 1.62, 1.62 );
setScaleKey( spep_5 -180 + 208, 1, 1.64, 1.64 );
setScaleKey( spep_5 -180 + 210, 1, 1.67, 1.67 );
setScaleKey( spep_5 -180 + 212, 1, 1.68, 1.68 );
setScaleKey( spep_5 -180 + 214, 1, 1.69, 1.69 );
setScaleKey( spep_5 -180 + 216, 1, 1.69, 1.69 );
setScaleKey( spep_5 -180 + 218, 1, 1.7, 1.7 );
setScaleKey( spep_5 -180 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_5 -180 + 222, 1, 1.72, 1.72 );
setScaleKey( spep_5 -180 + 224, 1, 1.73, 1.73 );
setScaleKey( spep_5 -180 + 226, 1, 1.74, 1.74 );
setScaleKey( spep_5 -180 + 228, 1, 1.75, 1.75 );
setScaleKey( spep_5 -180 + 230, 1, 1.76, 1.76 );
setScaleKey( spep_5 -180 + 232, 1, 1.77, 1.77 );
setScaleKey( spep_5 -180 + 234, 1, 1.78, 1.78 );
setScaleKey( spep_5 -180 + 236, 1, 1.79, 1.79 );
setScaleKey( spep_5 -180 + 238, 1, 1.8, 1.8 );
setScaleKey( spep_5 -180 + 240, 1, 1.81, 1.81 );
setScaleKey( spep_5 -180 + 242, 1, 1.82, 1.82 );
setScaleKey( spep_5 -180 + 244, 1, 1.83, 1.83 );
setScaleKey( spep_5 -180 + 246, 1, 1.84, 1.84 );
setScaleKey( spep_5 -180 + 248, 1, 1.84, 1.84 );
setScaleKey( spep_5 -180 + 250, 1, 1.85, 1.85 );
setScaleKey( spep_5 -180 + 252, 1, 1.86, 1.86 );
setScaleKey( spep_5 -180 + 254, 1, 1.87, 1.87 );
setScaleKey( spep_5 -180 + 256, 1, 1.88, 1.88 );
setScaleKey( spep_5 -180 + 258, 1, 1.89, 1.89 );
setScaleKey( spep_5 -180 + 260, 1, 1.9, 1.9 );
setScaleKey( spep_5 -180 + 262, 1, 1.91, 1.91 );
setScaleKey( spep_5 -180 + 264, 1, 1.92, 1.92 );
setScaleKey( spep_5 -180 + 266, 1, 1.93, 1.93 );
setScaleKey( spep_5 -180 + 268, 1, 1.94, 1.94 );
setScaleKey( spep_5 -180 + 270, 1, 1.95, 1.95 );
setScaleKey( spep_5 -180 + 272, 1, 1.96, 1.96 );
setScaleKey( spep_5 -180 + 274, 1, 1.97, 1.97 );
setScaleKey( spep_5 -180 + 276, 1, 1.98, 1.98 );
setScaleKey( spep_5 -180 + 278, 1, 1.99, 1.99 );

setRotateKey( spep_5 -180 + 180, 1, -20.2 );
setRotateKey( spep_5 -180 + 180 +98, 1, -20.2 );

-- ** 文字エントリー ** --
ctzudodo = entryEffectLife( spep_5-180 + 180,  10014, 98, 0x100, -1, 0, 67.7, 368.5 );--ズドドドッ

setEffShake(  spep_5,  ctzudodo,  98,  20);
setEffMoveKey( spep_5-180 + 180, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 182, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 184, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 186, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 188, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 190, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 192, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 194, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 196, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 198, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 200, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 202, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 204, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 206, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 208, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 210, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 212, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 214, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 216, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 218, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 220, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 222, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 224, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 226, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 228, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 230, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 232, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 234, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 236, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 238, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 240, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 242, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 244, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 246, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 248, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 250, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 252, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 254, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 256, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 258, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 260, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 262, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 264, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 266, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 268, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 270, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 272, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 274, ctzudodo, 58.1, 357.5 , 0 );
setEffMoveKey( spep_5-180 + 276, ctzudodo, 67.7, 368.5 , 0 );
setEffMoveKey( spep_5-180 + 278, ctzudodo, 58.1, 357.5 , 0 );

setEffScaleKey( spep_5-180 + 180, ctzudodo, 2.58, 2.58 );
setEffScaleKey( spep_5-180 + 278, ctzudodo, 2.58, 2.58 );

setEffRotateKey( spep_5-180 + 180, ctzudodo, -28.7 );
setEffRotateKey( spep_5-180 + 278, ctzudodo, -28.7 );

setEffAlphaKey( spep_5-180 + 180, ctzudodo, 255 );
setEffAlphaKey( spep_5-180 + 278, ctzudodo, 255 );

--流線
ryusen4 = entryEffectLife( spep_5 + 0,  914, 100, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 4.08, 1.23 );
setEffScaleKey( spep_5 + 100, ryusen4, 4.08, 1.23 );

setEffRotateKey( spep_5 + 0, ryusen4, 0 );
setEffRotateKey( spep_5 + 100, ryusen4, 0 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 100, ryusen4, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.32, 1.92 );
setEffScaleKey( spep_5 + 80, shuchusen4, 1.32, 1.92 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 80, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 80, shuchusen4, 255 );

--SE
playSe( spep_5 , 1023 ); --爆発
playSe( spep_5+20 , 1023 ); --爆発
playSe( spep_5+40 , 1023 ); --爆発
playSe( spep_5+60 , 1023 ); --爆発
playSe( spep_5+80 , 1023 ); --爆発

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

--シロフェード
entryFade(spep_5+90, 6, 14, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_6+ 0, 1, 1 );

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+110, ct, 0);

playSe( spep_6+14, SE_11);
shuchusen = entryEffectLife( spep_6+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+106);
end
