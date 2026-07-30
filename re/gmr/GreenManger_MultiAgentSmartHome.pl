% GreenManger_MultiAgentSmartHome  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ applianceSmartControl,
    smartPowerMonitoring,
    smartApplianceMonitoring,
    powerConsumptionManaged,
    applianceOperationCoordinated,
    adaptToUserPreferences,
    adaptToUserNeeds,
    adaptToEnergyTariff,
    adaptedToPowerLimit,
    tradeOffConfortEfficiency,
    applianceDataCollected,
    schedulingStrategySelected,
    scheduleObtained,
    operationScheduleExecuted,
    applianceOperationsScheduled,
    operationScheduleGenerated,
    waterConsumptionManaged,
    applianceControlled,
    powerConsumptionMonitored ].
goals(soft) <--
  [ or([ userComfort,
         energyEfficiency,
         sustainableHome,
         avoidPowerInterruption ]) ].
adaptToEnergyTariff <-- [energyTariff].
applianceControlled <-- [applianceSmartControl].
applianceOperationCoordinated <--
  [ collectApplianceStatus,
    validateSchedule ].
applianceOperationsScheduled <-- [scheduleOperationRemotely].
applianceOperationsScheduled <-- [scheduleOperationManually].
applianceSmartControl <-- [onDemand].
applianceSmartControl <-- [programmed].
avoidPowerInterruption <-- [powerLimitContracted].
checkApplianceOperation <-- [applianceState].
collectApplianceStatus <-- [powerConsumptionMonitored].
monitorPowerConsumption <-- [powerConsumption].
operationScheduleExecuted <--
  [ applianceOperationsScheduled,
    applianceOperationCoordinated ].
operationScheduleGenerated <--
  [ scheduleObtained,
    schedulingStrategySelected,
    applianceDataCollected ].
powerConsumptionManaged <--
  [ operationScheduleExecuted,
    operationScheduleGenerated ].
powerConsumptionMonitored <-- [smartPowerMonitoring].
scheduleObtained <-- [userConfirms].
scheduleObtained <-- [systemConfirms].
scheduleOperationRemotely <-- [applianceControlled].
schedulingStrategySelected <-- [adaptToUserPreferences].
schedulingStrategySelected <-- [adaptToUserNeeds].
schedulingStrategySelected <-- [adaptToEnergyTariff].
schedulingStrategySelected <-- [tradeOffConfortEfficiency].
schedulingStrategySelected <-- [adaptedToPowerLimit].
smartApplianceMonitoring <-- [checkApplianceOperation, notifyState].
smartPowerMonitoring <--
  [ monitorPowerConsumption,
    notifyPowerConsumption ].
energyEfficiency <--
  [ helps(adaptToEnergyTariff),
    helps(systemConfirms) ].
sustainableHome <-- [makes(energyEfficiency)].
userComfort <--
  [ makes(adaptToUserPreferences),
    helps(adaptToUserNeeds),
    makes(avoidPowerInterruption),
    helps(userConfirms) ].
