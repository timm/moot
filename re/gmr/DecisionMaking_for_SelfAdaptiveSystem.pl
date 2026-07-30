% DecisionMaking_for_SelfAdaptiveSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ sendData,
    copyDataRemotely,
    calculateTopology,
    selectTopology,
    selectPropagationParameters,
    measureCapacity,
    measureThroughput,
    measureWorkload ].
goals(soft) <--
  [ or([ maximizeReliability,
         maximizePerformance,
         minimizeOperationalCosts ]) ].
connectNetwork <--
  [ calculateTopology,
    selectTopology,
    selectPropagationParameters,
    measureCapacity,
    measureThroughput,
    measureWorkload ].
copyDataRemotely <-- [distributeData].
copyDataRemotely <-- [connectNetwork].
distributeData <-- [sendData].
linkCapacityData <-- [measureCapacity].
linkThroughputData <-- [measureThroughput].
network <-- [sendData].
network2 <-- [calculateTopology].
selectPropagationParameters <-- [useAsynchronousPropagation].
selectPropagationParameters <-- [useSynchronousPropagation].
selectTopology <-- [useMSTTopology].
selectTopology <-- [useRedundantTopology].
serverWorkloadData <-- [measureWorkload].
maximizePerformance <--
  [ makes(useAsynchronousPropagation),
    hurts(useSynchronousPropagation) ].
maximizeReliability <--
  [ makes(useSynchronousPropagation),
    makes(useRedundantTopology),
    breaks(useAsynchronousPropagation),
    hurts(useMSTTopology) ].
minimizeOperationalCosts <--
  [ helps(useMSTTopology),
    hurts(useRedundantTopology) ].
