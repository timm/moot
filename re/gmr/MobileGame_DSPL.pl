% MobileGame_DSPL  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ provideGame,
    adjustGraphicsQuality,
    provideGamingEnvironment,
    adjustSoundQuality,
    playGame,
    playWithOtherPlayers ].
goals(soft) <--
  [ or([ efficiencyInResourceUsage,
         highQualityInteraction,
         highQualityInteraction2,
         efficiencyInResourceUsage2 ]) ].
adjustGraphicsQuality <-- [setToHighQualGraphics].
adjustGraphicsQuality <-- [setToLowQualGraphics].
adjustSoundQuality <-- [setToHighQualSound].
adjustSoundQuality <-- [setToLowQualSound].
efficiencyInResourceUsage2 <-- [efficiencyInResourceUsage].
highQualityInteraction2 <-- [highQualityInteraction].
playGame <-- [playGame11].
playGame11 <--
  [ adjustGraphicsQuality,
    setSoundEffects11,
    provideGamingEnvironment ].
playWithOtherPlayers <-- [useMultiplayerMode].
provideGame <-- [playGame11].
provideGamingEnvironment <-- [useSinglePlayerMode].
provideGamingEnvironment <-- [useMultiplayerMode].
setSoundEffects11 <-- [adjustSoundQuality, useVibrationEffects01].
efficiencyInResourceUsage <--
  [ hurts(setToHighQualGraphics),
    helps(setToLowQualGraphics),
    hurts(useVibrationEffects01),
    hurts(setToHighQualSound),
    helps(setToLowQualSound),
    hurts(useMultiplayerMode) ].
highQualityInteraction <--
  [ helps(useMultiplayerMode),
    helps(setToHighQualGraphics),
    hurts(setToLowQualGraphics),
    helps(useVibrationEffects01),
    helps(setToHighQualSound),
    hurts(setToLowQualSound),
    helps(useSinglePlayerMode) ].
