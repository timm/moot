% SafeFlight_ATC  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ maintainSafeATCSystem,
    maintainRobustAndReliableATCSystem,
    avoidHazardousEvents,
    maintainPerturbationHandling,
    maintainSecureATCSystem,
    maintainEmbeddedSoftwareSecured,
    maintainAssessWeatherImpact,
    maintainAssessEquipMalfunction,
    maintainSafeTakingOff,
    maintainSafeLanding,
    maintainSafeCruising,
    achieveAssessFuelLevel,
    maintainSpeedBelowMaximumPermittedSpeed,
    maintainCommunicationAvailable,
    maintainEmergencyLandingAvailable,
    achieveAssessSeparationStandards,
    maintainResolveFlightPlacesConflicts,
    maintainRespondingATCWithinPermittedDelay,
    maintainConnexionOverDedicatedBandwithChannel,
    avoidAircraftsInTwoDifferentDirectionsInTheSameRoute,
    maintainWorstCaseFlyingDistance,
    maintainAssessMinimumSeparationInTrailStandard ].
achieveAssessSeparationStandards <--
  [ avoidAircraftsInTwoDifferentDirectionsInTheSameRoute,
    maintainWorstCaseFlyingDistance ].
avoidHazardousEvents <--
  [ maintainSafeCruising,
    maintainSafeLanding,
    maintainSafeTakingOff ].
maintainCommunicationAvailable <--
  [ maintainConnexionOverDedicatedBandwithChannel,
    maintainRespondingATCWithinPermittedDelay ].
maintainPerturbationHandling <--
  [ maintainAssessEquipMalfunction,
    maintainAssessWeatherImpact ].
maintainSafeATCSystem <--
  [ maintainRobustAndReliableATCSystem,
    avoidHazardousEvents,
    maintainPerturbationHandling,
    maintainSecureATCSystem ].
maintainSafeCruising <--
  [ achieveAssessFuelLevel,
    maintainSpeedBelowMaximumPermittedSpeed,
    maintainCommunicationAvailable,
    maintainEmergencyLandingAvailable,
    maintainResolveFlightPlacesConflicts,
    achieveAssessSeparationStandards ].
maintainSafeTakingOff <--
  [ maintainAssessMinimumSeparationInTrailStandard ].
maintainSecureATCSystem <-- [maintainEmbeddedSoftwareSecured].
