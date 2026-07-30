% SmartCity_monolithicCaseStudy  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ safeAndRightSizedRoadNetwork,
    parking,
    maintenance,
    mulitmodalAdaptation,
    preventiveMaintenance,
    reactiveMaintenance,
    safeAndReliableTransportation,
    publicTransportation,
    carTransportation,
    lineDesign,
    mulitmodality,
    scheduling,
    trafficMngt,
    sharedCars,
    reduceCarWithinCity ].
goals(soft) <--
  [ or([ safeExperience,
         goodLiveCondAirNoiseTemp,
         roadsInGoodCondition,
         fastReliableTransport,
         cleanWater,
         wasteRemovalAndSorting ]) ].
carTransportation <-- [trafficMngt, sharedCars].
location <-- [parking].
maintenance <-- [preventiveMaintenance, reactiveMaintenance].
mulitmodality <-- [reduceCarWithinCity].
preventiveMaintenance <-- [roadStatus].
publicTransportation <-- [lineDesign, mulitmodality, scheduling].
reduceCarWithinCity <-- [mulitmodalAdaptation].
roadStatus <-- [trafficMngt].
safeAndReliableTransportation <--
  [ publicTransportation,
    carTransportation ].
safeAndRightSizedRoadNetwork <--
  [ parking,
    maintenance,
    mulitmodalAdaptation ].
sharedCars <-- [location].
