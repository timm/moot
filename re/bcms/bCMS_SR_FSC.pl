% bCMS_SR_FSC  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources,
    keepUpToDateOnNatureOfCrisisAndDeployedResources2,
    determineWhereWhenAndHowManyFireTrucksToSend,
    proposeAStrategyForHandlingTheCrisis,
    receiveUpdatesRegardingTheCirisisFromIndividualFiremen,
    collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman ].
goals(soft) <--
  [ or([ handleACrisisEfficientlyAndEffectively,
         getResourcesToTheCrisisLocationInTheShortestAmountOfTime,
         haveAccurateEstimationOfResourceNeedsAndTimeOfArrivalsForResources,
         haveEffectiveNegotiationSkills,
         dependableCommunicationWithInvolvedStakeholders,
         maintainAFeelingOfControlOverTheCrisis,
         minimizeStressLevelByProvidingAndReceivingCrisisInformationToAndFromOtherCoordinatorsInATimelyFashion,
         provideClearExecutableInstructionsToAppropriateStaff,
         maintainControlOverACrisisSituation ]) ].
introduction <-- [introductions].
introductions <-- [introduction2].
keepPSCUpToDateRegardingNatureOfCrisisAndDeployedResources <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources2 ].
keepUpToDateOnNatureOfCrisisAndDeployedResources <--
  [ keepPSCUpToDateRegardingNatureOfCrisisAndDeployedResources ].
reachAnAgreementWithThePSCOnHowToProceed <--
  [ strategyForHandlingCrisis2 ].
receiveUpdatesRegardingTheCirisisFromIndividualFiremen <-- [updates].
strategyForHandlingCrisis <-- [proposeAStrategyForHandlingTheCrisis].
updatedInformationAndInstructions <--
  [ collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman ].
