% TeamCollaboration_MLOps  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ modelFollowsAcceptableSDLCPractices,
    abilityToWorkInParallelOnTheSameApplication,
    stagedDeployment,
    modelPerformanceBeMaintained,
    modelBeReadyForDeployment,
    modelVersionControlInPlace,
    businessApprovedModel,
    bestFitForChosenModel,
    modelSelectionBeComplete,
    feedbackLoopInPlaceForModelDriftDetection,
    stagedDeployment2 ].
goals(soft) <--
  [ or([ codeBeAdaptableToLatestEnvironmentRequirements,
         modelPipelinesBeScalableAndFlexible,
         avoidConfusionOfRequirementsBetweenDifferentReleases,
         reactiveToChangingRequirementsAndParameters,
         modelPerformanceBeAvailable,
         avoidOverfittingModel,
         avoidSpuriousModelSelection,
         avoidInabilityToIdentifyBusinessProblem,
         continuousDeliveryOfBusinessReqs,
         avoidTooManyFeatures,
         avoidNotEnoughFeatures,
         modelPipelinesBeScalableAndFlexible2 ]) ].
abilityToWorkInParallelOnTheSameApplication <--
  [ buildEnvironmentForMultipleModelsSimultaneously,
    buildContinuousMonitoringCapabilityAcrossReleases,
    stagedDeployment ].
acquireTrainingData <-- [trainingData].
assessCodeQuality <-- [conductCodeQualityCheck].
bestFitForChosenModel <--
  [ optimizeModelHyperparameter,
    modelSelectionBeComplete ].
businessApprovedModel <-- [trainModel].
completeModelSelection <-- [multipleEvaluationMetrics].
conductCodeQualityCheck <-- [businessApprovedModel].
conductFeatureEngineering <--
  [ biasVarianceTradeOffAnalysis,
    dataUnderstanding ].
conductStandardTuningTechniques <-- [gridSearch].
conductStandardTuningTechniques <-- [randomSearch].
continuousBusinessRequirements <-- [continuousDeliveryOfBusinessReqs].
continuousMonitoring <-- [continuousMonitoringAcrossReleasesForDrift].
continuousMonitoringAcrossReleasesForDrift <--
  [ feedbackLoopInPlaceForModelDriftDetection ].
feedbackLoopInPlaceForModelDriftDetection <--
  [ buildContinuousMonitoringCapabilityAcrossReleases ].
identifyInfrastuctureNeeds <-- [modelPipelinesBeScalableAndFlexible2].
manageComputeResources <-- [scaleInfrastructureNeeds].
modelBeReadyForDeployment <--
  [ modelVersionControlInPlace,
    businessApprovedModel,
    bestFitForChosenModel,
    continuousMonitoring ].
modelBenchmarksAndMetrics <-- [modelPerformanceBeAvailable].
modelFollowsAcceptableSDLCPractices <--
  [ assessCodeQuality,
    abilityToWorkInParallelOnTheSameApplication ].
modelPerformanceBeMaintained <--
  [ understandRequirementsBetweenDifferentReleases,
    monitorModelPerformance ].
modelPipelinesBeScalableAndFlexible2 <--
  [ modelPipelinesBeScalableAndFlexible ].
modelSelectionBeComplete <-- [completeModelSelection].
modelVersionControlInPlace <-- [conductModelVersioning].
monitorModelPerformance <-- [manageComputeResources].
monitorPredicitiveServicePerformance <-- [modelBenchmarksAndMetrics].
optimizeModelHyperparameter <-- [conductStandardTuningTechniques].
scaleInfrastructureNeeds <--
  [ monitorPredicitiveServicePerformance,
    accessResourceUtilization,
    identifyInfrastuctureNeeds ].
stagedDeployment <-- [stagedDeployment2].
stagedDeployment2 <-- [modelVersionControlInPlace].
trainModel <--
  [ trainingData,
    businessExpectations,
    conductFeatureEngineering ].
understandRequirementsBetweenDifferentReleases <--
  [ understandingOfRequirementsBetweenDifferentReleases ].
understandingOfRequirementsBetweenDifferentReleases <--
  [ continuousBusinessRequirements ].
avoidConfusionOfRequirementsBetweenDifferentReleases <--
  [ helps(understandingOfRequirementsBetweenDifferentReleases) ].
avoidInabilityToIdentifyBusinessProblem <--
  [ helps(businessExpectations) ].
avoidNotEnoughFeatures <-- [helps(biasVarianceTradeOffAnalysis)].
avoidOverfittingModel <-- [helps(optimizeModelHyperparameter)].
avoidSpuriousModelSelection <-- [helps(multipleEvaluationMetrics)].
avoidTooManyFeatures <-- [helps(dataUnderstanding)].
codeBeAdaptableToLatestEnvironmentRequirements <--
  [ helps(assessCodeQuality) ].
continuousDeliveryOfBusinessReqs <-- [helps(trainModel)].
modelPerformanceBeAvailable <-- [helps(modelBeReadyForDeployment)].
modelPipelinesBeScalableAndFlexible <--
  [ helps(abilityToWorkInParallelOnTheSameApplication) ].
reactiveToChangingRequirementsAndParameters <--
  [ helps(scaleInfrastructureNeeds) ].
