% bCMS_SR_Witness  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ receiveInstructions,
    toReceiveRequestsToGoToReturnFromTheCrisisLocation,
    reportLocationStatusToPSC,
    reportConditionsOfTheCrisisToFSCAndAllPolicemen,
    communicateWithTheVictimAndTheWitnessAtTheCrisisLocation ].
goals(soft) <--
  [ or([ toKnowWhatToDoAtDifferentStagesInTheCrisis,
         provideAccurateInformationAboutTheCrisisToPoliceAndFiremen,
         minimizeDamageToProperty,
         haveConfidenceInCoordinator,
         keepUpToDateRegardingCrisisSituation,
         followInstructionsWell,
         workWellInATeam,
         minimizeInjury,
         saveAndSupportTheVictim,
         stayAlive,
         reEstablishOrder ]) ].
communicateWithTheVictimAndTheWitnessAtTheCrisisLocation <--
  [ crisisRelatedInformation ].
crisisRelatedInformation <-- [provideInformationToPolice].
crisisRelatedInformation2 <-- [provideToFiremen].
receiveInstructions <-- [instructions, instructions2].
