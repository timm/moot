% bCMS_SR_bCMS_VehicleCommunicationVariant  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources,
    keepUpToDateOnNatureOfCrisisAndDeployedResources2,
    keepUpToDateOnNatureOfCrisisAndDeployedResources3,
    keepUpToDateOnNatureOfCrisisAndDeployedResources4,
    determineWhereWhenAndHowManyFireTrucksToSend,
    proposeAStrategyForHandlingTheCrisis,
    receiveUpdatesRegardingTheCirisisFromIndividualFiremen,
    collateAndDistrubeUpdatedInformationAndInstructionsBackToTheFireman,
    updateInformationRegardingCrisis,
    maintainInformationRegardingCrisis,
    establishCommuniationAndIdentification,
    exchangeCrisisDetails,
    developARoutePlan,
    communicatePlanUpdates,
    agreeToCloseCrisis,
    ensureIntegrityOfCommunicationBetweenCoordinatorsRegardingCrisisLocationVehicleAndLocation999OfTheTime,
    ensureTheIntegrityOfAllOtherDataTransmittedBetweenCoordinatorsIsPreserved95OfTheTime,
    theCrisisDetailsAndRoutePlanAndIdentificationOfCoordinatorsShallBeAvailableWithTheExceptionOfATotalOf5MinutesWhenACrisisIsActive,
    theCrisisDetailsAndRoutePlanShallBeAvailableWithTheExceptionOfATotalOf30MinutesForEvery48HoursWhenNoCrisisIsActive,
    respondToUserRequestsWithin5Seconds95OfTheTime,
    respondToUserRequestsWithing30Seconds9999OfTheTime,
    selectProtocol ].
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
communicatePlanUpdates <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources3 ].
developARoutePlan <--
  [ strategyForHandlingCrisis3,
    keepUpToDateOnNatureOfCrisisAndDeployedResources4 ].
establishCommuniationAndIdentification <--
  [ introduction,
    introduction3 ].
facilitateCommunicationWithVehicles <-- [notifiationOfAccidents].
introduction2 <-- [establishCommuniationAndIdentification].
introduction4 <-- [establishCommuniationAndIdentification].
introductions <-- [introduction2].
keepPSCUpToDateRegardingNatureOfCrisisAndDeployedResources <--
  [ keepUpToDateOnNatureOfCrisisAndDeployedResources2 ].
keepUpToDateOnNatureOfCrisisAndDeployedResources <--
  [ communicatePlanUpdates ].
keepUpToDateOnNatureOfCrisisAndDeployedResources2 <--
  [ communicatePlanUpdates ].
messages <-- [facilitateCommunicationWithVehicles].
messages2 <-- [facilitateCommunicationWithVehicles].
reachAnAgreementWithThePSCOnHowToProceed <--
  [ strategyForHandlingCrisis2 ].
routingInformation <-- [facilitateCommunicationWithVehicles].
routingInformation2 <-- [facilitateCommunicationWithVehicles].
strategyForHandlingCrisis <-- [developARoutePlan].
strategyForHandlingCrisis2 <-- [developARoutePlan].
