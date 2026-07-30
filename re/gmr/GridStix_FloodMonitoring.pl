% GridStix_FloodMonitoring  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ predictFlooding,
    communicateData,
    calculateFlowRate,
    measureDepth,
    transmitData ].
goals(soft) <--
  [ or([ faultTolerance,
         energyEfficiency,
         predictionAccuracy ]) ].
calculateFlowRate <-- [multiNodeImageProcessing].
calculateFlowRate <-- [simpleNodeImageProcessing].
communicateData <-- [useSPTopology].
communicateData <-- [useFHTopology].
depth <-- [depth2].
depth2 <-- [measureDepth].
flowRate <-- [flowRate2].
flowRate2 <-- [calculateFlowRate].
predictFlooding <-- [providePointPrediction].
providePointPrediction <--
  [ communicateData,
    calculateFlowRate,
    measureDepth ].
transmitData <-- [useWifi].
transmitData <-- [useBluetooth].
energyEfficiency <--
  [ hurts(multiNodeImageProcessing),
    helps(simpleNodeImageProcessing),
    helps(useSPTopology),
    hurts(useFHTopology),
    hurts(useWifi),
    helps(useBluetooth) ].
faultTolerance <--
  [ hurts(useSPTopology),
    helps(useFHTopology),
    helps(useWifi),
    hurts(useBluetooth) ].
predictionAccuracy <--
  [ helps(multiNodeImageProcessing),
    hurts(simpleNodeImageProcessing) ].
