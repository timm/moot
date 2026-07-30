% bCMS_SR_bCMS_exceptional  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources,
    keepUpToDateOnNatureOfCrisisAndDeployedResources2,
    determineWhereWhenAndHowManyFireTrucksToSend,
    proposeAStrategyForHandlingTheCrisis,
    receiveUpdatesRegardingTheCirisisFromIndividualFiremen,
    collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman,
    reportReasonForTimeout,
    updateInformationRegardingCrisis,
    maintainInformationRegardingCrisis,
    establishCommuniationAndIdentification,
    exchangeCrisisDetails,
    developARoutePlan,
    communicatePlanUpdates,
    agreeToCloseCrisis ].
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
         coordinateCrisis,
         firePersonnelReachCrisisFaster ]) ].
introduction <-- [establishCommuniationAndIdentification].
introduction2 <-- [establishCommuniationAndIdentification].
introductions <-- [introduction2].
keepPSCUpToDateRegardingNatureOfCrisisAndDeployedResources <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources2 ].
keepUpToDateOnNatureOfCrisisAndDeployedResources <--
  [ communicatePlanUpdates ].
keepUpToDateOnNatureOfCrisisAndDeployedResources2 <--
  [ communicatePlanUpdates ].
reachAnAgreementWithThePSCOnHowToProceed <--
  [ strategyForHandlingCrisis2 ].
receiveUpdatesRegardingTheCirisisFromIndividualFiremen <-- [updates].
recordAndAlertTimeout <-- [timeoutReason, timeoutReason2].
reportReasonForTimeout <-- [timeout].
strategyForHandlingCrisis <-- [developARoutePlan].
strategyForHandlingCrisis2 <-- [developARoutePlan].
timeout <-- [recordAndAlertTimeout].
timeout2 <-- [recordAndAlertTimeout].
timeoutReason <-- [reportReasonForTimeout].
updatedInformationAndInstructions <--
  [ collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman ].
