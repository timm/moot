% WastewaterUtilitySystem_CyberAttack  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ monitoringAndReporting,
    antigoals,
    automatedTreatmentWithOperationConditions,
    normalOperationManaged,
    abnormalEventDetectedAndReported ].
abnormalEventDetectedAndReported <--
  [ switchToSafeState,
    generateAlarmOnProblem ].
alarm <-- [manageAlarms].
alterReportToBreakIntegrity <-- [produceAccurateDailyReports].
antigoals <--
  [ generateFalseAlarmToBreakAvailability,
    injectWrongDataToBreakAvailabilityIntegrity,
    alterReportToBreakIntegrity ].
automatedTreatmentWithOperationConditions <--
  [ normalOperationManaged,
    abnormalEventDetectedAndReported ].
dataCollection <-- [sensorData].
generateAlarmOnProblem <-- [alarm].
generateFalseAlarmToBreakAvailability <-- [normalOperationManaged].
injectWrongDataToBreakAvailabilityIntegrity <-- [dataCollection].
monitoringAndReporting <--
  [ manageAlarms,
    produceAccurateDailyReports ].
normalOperationManaged <-- [automatedWaterTreatment, dataCollection].
sensorData <-- [produceAccurateDailyReports].
