SECTION "HRAM", HRAM[$ff80]

hButtonsHeld:: ; $ff80
    db

hButtonsPressed:: ; $ff81
    db

timer0:: db
timer1:: db
timer2:: db

hVBlankInterruptFinished:: ; $ff85
    db

; visible
hCurrSpriteSpecStruct:: ; $ff86
    db
hCurrSpriteSpecBaseY:: ; $ff87
    db
hCurrSpriteSpecBaseX:: ; $ff88
    db
    union
hCurrSpriteTileIndex:: ; $ff89
    db
    nextu
hCurrSpriteSpecIdx:: ; $ff89
    db
    endu
hUnusedFF8A:: ;; $ff8a
    db
hCurrSpecEntireSpecYXFlipped:: ; $ff8b
    db
hCurrSpecBaseXFlip:: ; $ff8c
    db

hCurr_wOam_SpriteAddr:: ; $ff8d
    dw ; big-endian

hNumSpriteSpecs:: ; $ff8f
    db

hCurrSpriteSpecBaseYOffset:: ; $ff90
    db

hCurrSpriteSpecBaseXOffset:: ; $ff91
    db

hCurrSpriteX:: ; $ff92
    db

hCurrSpriteY:: ; $ff93
    db

hCurrSpriteXFlipWithinCurrSpec:: ; $ff94
    db

hShouldHideCurrSprite:: ; $ff95
    db

hSpriteSpecSrcAddr:: ; $ff96
    dw ; big-endian

; todo: 98, if equ 1, send played piece to vram, this sending sets hff98 to 2
hPieceFallingState:: ; $ff98
    db

hNumFramesUntilCurrPieceMovesDown:: ; $ff99
    db

hNumFramesUntilPiecesMoveDown:: ; $ff9a
    db

hPieceCollisionDetected:: ; $ff9b
    db

hTetrisFlashCount:: ; $ff9c
    db

hff9d:
    ds $e-$d

hNumLinesCompletedBCD:: ; $ff9e
    dw

    union

hNumCompletedTetrisRows:: ; $ffa0
    db

    nextu

hPreRotationSpecIdx:: ; $ffa0
    db

    nextu

hPreHorizMovementSpecIdx:: ; $ffa0
    db

    nextu

hRandomSquareObstacleTileChosen:: ; $ffa0
    db

    nextu

hMarioLuigiFaceTopLeftTileIdx:: ; $ffa0

    endu

hTempIE:: ; $ffa1
    db

hffa2:
    ds 4-2

hUnusedFFA4:: ; $ffa4
    db

hffa5:
    db

hTimers:: ; $ffa6
hTimer1:: ; $ffa6
    db
hTimer2:: ; $ffa7
    db
hTimerEnd::

hffa8:
    ds 9-8

; measured in 10s, originally level
hATypeLinesThresholdToPassForNextLevel:: ; $ffa9
    db

hStickyButtonCounter:: ; $ffaa
    db

hGamePaused:: ; $ffab
    db

w2PlayerHighSelected_1:: ; $ffac
    db

w2PlayerHighSelected_2:: ; $ffad
    db

hHiddenLoadedPiece:: ; $ffae
    db

    union

hffaf:
    db

hLowByteOfCurrDemoStepAddress:: ; $ffb0
    db

    nextu

h2PlayerAddressOfNextPiece:: ; $ffaf
    dw

    endu

hNumRowsUpOurTetrisPiecesAre:: ; $ffb1
    db

hCurrPieceSquarePixelY:: ; $ffb2
    db

hCurrPieceSquarePixelX:: ; $ffb3
    db

hCurrPieceSquareScreen0Addr:: ; $ffb4
    dw

hOamDmaFunction:: ; $ffb6
    ds $0a
.end::

; A-type = $37, B-type = $77
hGameType:: ; $ffc0
    db

; $1c - $1f ($1f being off)
hMusicType:: ; $ffc1
    db

hATypeLevel:: ; $ffc2
    db

hBTypeLevel:: ; $ffc3
    db

hBTypeHigh:: ; $ffc4
    db

hIs2Player:: ; $ffc5
    db

    union

hTimerMultiplier:: ; $ffc6
    db

    nextu

hTypedLetterCounter:: ; $ffc6
    db

    nextu

h5GamesFinishedTimer:: ; $ffc6
    db

    endu

hMustEnterHighScore:: ; $ffc7
    db

; ie 3 if 1st place, 2 if 2nd, 1 if 3rd
hReversedHighScoreRanking:: ; $ffc8
    db

; eg for congrats text, or entering high score name
hTypedTextCharLoc:: ; $ffc9
    dw ; big-endian

hMultiplayerPlayerRole:: ; $ffcb
    db

hSerialInterruptHandled:: ; $ffcc
    db

hSerialInterruptFunc:: ; $ffcd
    db

hMasterShouldSerialTransferInVBlank:: ; $ffce
    db

hNextSerialByteToLoad:: ; $ffcf
    db

hSerialByteRead:: ; $ffd0
    db

hOppositeSerialByteToWinningLosingState:: ; $ffd1
    db

h2toThePowerOf_OtherPlayersLinesClearedMinus1:: ; $ffd2
    db

; bit 7 set when current player has played their next piece
hOtherPlayersMultiplierToProcess:: ; $ffd3
    db

hCurrPlayersRowsShiftedUpDueToOtherPlayer:: ; $ffd4
    db

hCurrPlayerJustFinishedRequiredLines:: ; $ffd5
    db

h2PlayerGameFinished:: ; $ffd6
    db

hNumWinningGames:: ; $ffd7
    db

hNumLosingGames:: ; $ffd8
    db

hSelfIsAdvantage:: ; $ffd9
    db

hOtherIsAdvantage:: ; $ffda
    db

hIsDeuce:: ; $ffdb
    db

h2toThePowerOf_LinesClearedMinus1:: ; $ffdc
    db

hffdd:
    ds $e0-$dd

hFoundDisplayableScoreDigit:: ; $ffe0
    db

hGameState:: ; $ffe1
    db

; unused
hVBlankInterruptCounter:: ; $ffe2
    db

; when copying to ram buffer, because copy routine incs this
; but rows check this var in dec order, 1 row is shifted per frame
hRowsShiftingDownState:: ; $ffe3
    db

hPrevOrCurrDemoPlayed:: ; $ffe4
    db

hNumTimesHoldingDownEvery3Frames:: ; $ffe5
    db

hLowByteOfVramDestForLevelNum:: ; $ffe6
    db

hffe7:
    ds 8-7

hJustSetHighScoreAndCopiedToRamBuffer:: ; $ffe8
    db

hIsRecordingDemo:: ; $ffe9
    db

hFramesUntilNextDemoInput:: ; $ffea
    db

hAddressOfDemoInput:: ; $ffeb
    dw

hDemoButtonsHeld:: ; $ffed
    db

hActualUserButtonsHeldDuringDemo:: ; $ffee
    db

hWonOrLostAtTheSameTimeAsOtherPlayer:: ; $ffef
    db

hPassiveShouldUpdateMusicOamAndPlaySong:: ; $fff0
    db

hPausedNextSerialByteToLoad:: ; $fff1
    db

hPausedSerialByteRead:: ; $fff2
    db

hATypeRocketSpecIdx:: ; $fff3
    db

hIsHardMode:: ; $fff4
    db

hfff5:
    ds $b-5

    union

h1stHighScoreHighestByteForLevel:: ; $fffb
    dw ; big-endian

    nextu

hIsPieceStuckOnTopRow:: ; $fffb
    db

    nextu

hfffb:
    db

hPrevHiddenPiece:: ; $fffc
    db

    endu
