% bCMS_SR_PSC  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources,
    keepUpToDateOnNatureOfCrisisAndDeployedResources2,
    determineWhereWhenAndHowManyPoliceCarsToSend,
    proposeAStrategyForHandlingTheCrisis,
    receiveUpdatesRegardingTheCirisisFromIndividualPoliceOfficers,
    collateAndDistrubeUpdatedInformationAndInstructionsBackToThePoliceOfficers ].
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
keepFSCUpToDateRegardingNatureOfCrisisAndDeployedResources <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources2 ].
keepUpToDateOnNatureOfCrisisAndDeployedResources <--
  [ keepFSCUpToDateRegardingNatureOfCrisisAndDeployedResources ].
reachAnAgreementWithTheFSCOnHowToProceed <--
  [ strategyForHandlingCrisis2 ].
receiveUpdatesRegardingTheCirisisFromIndividualPoliceOfficers <--
  [ updates ].
strategyForHandlingCrisis <-- [proposeAStrategyForHandlingTheCrisis].
updatedInformationAndInstructions <--
  [ collateAndDistrubeUpdatedInformationAndInstructionsBackToThePoliceOfficers ].
