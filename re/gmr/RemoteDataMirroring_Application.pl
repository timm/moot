% RemoteDataMirroring_Application  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ numberOfDataCopiesMatchesNumberOfServers,
    maintainOperationalCostsWithinBudget,
    dataRiskRiskThreshold,
    diffusionTimeMaxTime,
    measureNetworkProperties,
    networkPartitions0,
    lowDiffusionTime,
    networkLinkConnectivity,
    storeNetworkProperties,
    sendData2,
    diffusionTimeMaxTime2,
    networkConnectivity ].
costLossRateCapacityThroughputData <-- [storeNetworkProperties].
dataRiskRiskThreshold <-- [sendData2].
diffusionTimeMaxTime <-- [diffusionTimeMaxTime2].
diffusionTimeMaxTime2 <-- [lowDiffusionTime].
lowDiffusionTime <--
  [ dataSentNumberOfDataCopies,
    dataReceivedDataSent ].
maintainOperationalCostsWithinBudget <--
  [ networkPartitions0,
    measureNetworkProperties ].
measureCapacity <-- [storeNetworkProperties].
measureCost <-- [storeNetworkProperties].
measureLossRate <-- [storeNetworkProperties].
measureNetworkProperties <--
  [ costLossRateCapacityThroughputData,
    workload ].
measureThroughput <-- [storeNetworkProperties].
networkConnectivity <-- [networkLinkConnectivity].
networkLinkConnectivity <-- [activateLink].
networkLinkConnectivity <-- [deactivateLink].
networkPartitions0 <-- [networkConnectivity].
numberOfDataCopiesMatchesNumberOfServers <--
  [ maintainOperationalCostsWithinBudget,
    dataRiskRiskThreshold,
    diffusionTimeMaxTime ].
sendData <-- [sendDataSynchronously].
sendData <-- [sendDataAsynchronously].
sendData2 <-- [sendData].
workload <-- [measureWorkload].
