-- アクションバンク位置戻す用スクリプト
setPhase(9);

if (_IS_ATK_FLASH_MOVE_END_ == 1) then
    setDisp(8, 0, 0);
    setMoveKey( -7, 0, 0, 0);       -- キーフレームマイナス設定でカレント位置設定
    setMoveKey(  8, 0, -2000, 0);
    setMoveKey(  9, 0, -2000, 0);
    entryEffect(   5, 700, 0x00,  0, 0,    0,  0);
end

if (_IS_DFC_FLASH_MOVE_END_ == 1) then
    setDisp(8, 1, 0);
    setMoveKey( -7, 1, 0, 0);       -- キーフレームマイナス設定でカレント位置設定
    setMoveKey(  8, 1, 2000, 0);
    setMoveKey(  9, 1, 2000, 0);
    entryEffect(   5, 700, 0x00,  1, 0,    0,  0);
end

endPhase(25);
