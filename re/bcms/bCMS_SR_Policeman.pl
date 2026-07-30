% bCMS_SR_Policeman  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ toReceiveRequestsToGoToReturnFromTheCrisisLocation,
    reportLocationStatusToPSC,
    reportConditionsOfTheCrisisToFSCAndAllPolicemen,
    provideInstructions,
    gatherCrisisRelatedInformation,
    provideCrisisStatus ].
goals(soft) <--
  [ or([ minimizeDamageToProperty,
         haveConfidenceInCoordinator,
         keepUpToDateRegardingCrisisSituation,
         followInstructionsWell,
         workWellInATeam,
         minimizeInjury,
         saveAndSupportTheVictim,
         stayAlive,
         reEstablishOrder ]) ].
actsOnOrdersReceivedFromThePSC <--
  [ updatedInformationAndInstructions ].
communicateWithTheVictimAndTheWitnessAtTheCrisisLocation <--
  [ crisisRelatedInformation2 ].
crisisStatus <-- [provideCrisisStatus].
gatherCrisisRelatedInformation <-- [crisisRelatedInformation].
instructions <-- [provideInstructions].
instructions2 <-- [provideInstructions].
updates <-- [provideUpdates].
