% bCMS_SR_Fireman  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ determineWhereWhenAndHowManyFireTrucksToSend,
    proposeAStrategyForHandlingTheCrisis,
    receiveUpdatesRegardingTheCirisisFromIndividualFiremen,
    collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman,
    toReceiveRequestsToGoToReturnFromTheCrisisLocation,
    reportLocationStatusToFSC,
    reportConditionsOfTheCrisisToFSCAndAllFiremen,
    provideCrisisStatus,
    provideInstructions,
    gatherCrisisRelatedInformation ].
goals(soft) <--
  [ or([ handleACrisisEfficientlyAndEffectively,
         getResourcesToTheCrisisLocationInTheShortestAmountOfTime,
         haveAccurateEstimationOfResourceNeedsAndTimeOfArrivalsForResources,
         haveEffectiveNegotiationSkills,
         dependableCommunicationWithInvolvedStakeholders,
         maintainAFeelingOfControlOverTheCrisis,
         minimizeStressLevelByProvidingAndReceivingCrisisInformationToAndFromOtherCoordinatorsInATimelyFashion,
         provideClearExecutableInstructionsToAppropriateStaff,
         maintainControlOverACrisisSituation,
         stayAlive,
         minimizeInjury,
         saveAndSupportTheVictim,
         minimizeDamageToProperty,
         workWellInATeam,
         haveConfidenceInCoordinator,
         followInstructionsWell,
         keepUpToDateRegardingCrisisSituation ]) ].
crisisStatus <-- [provideCrisisStatus].
gatherCrisisRelatedInformation <--
  [ crisisRelatedInformation,
    crisisRelatedInformation2 ].
instructions <-- [provideInstructions].
instructions2 <-- [provideInstructions].
receiveUpdatesRegardingTheCirisisFromIndividualFiremen <-- [updates].
toReceiveRequestsToGoToReturnFromTheCrisisLocation <--
  [ updatedInformationAndInstructions ].
updatedInformationAndInstructions <--
  [ collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman ].
updates <-- [provideUpdates].
