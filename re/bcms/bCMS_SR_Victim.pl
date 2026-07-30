% bCMS_SR_Victim  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ receiveInstructions,
    recieveStatus,
    toReceiveRequestsToGoToReturnFromTheCrisisLocation,
    reportLocationStatusToPSC,
    reportConditionsOfTheCrisisToFSCAndAllPolicemen,
    communicateWithTheVictimAndTheWitnessAtTheCrisisLocation ].
goals(soft) <--
  [ or([ beRescuedInTheShortestAmountOfTime,
         recoverFromInjuriesAndOrLossInTheShortestAmoutnOfTime,
         minimizeStressCausedByTheCrisis,
         beInformedOfCrisisStatusAsItImpactsMe,
         toKnowWhatToDoAtDifferentStagesInTheCrisis,
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
recieveStatus <-- [crisisStatus, crisisStatus2].
