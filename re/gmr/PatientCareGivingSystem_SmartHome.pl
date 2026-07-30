% PatientCareGivingSystem_SmartHome  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ g0HomeIsManagedForSafetyOfPatient,
    g1EnforceRoutineExitProcedure,
    g2RefreshAirInsideHome,
    g3HomeIsProtectedAgainstRobbery,
    g4PatientIsAlerted,
    g5PatientIsPreventedFromExiting,
    g6GiveIllusionOfBeingLivedIn,
    g12AssistanceComes,
    g11PreventRobberFromEntering,
    g7ActAgainstPotentialRobbery,
    g13PoliceComes,
    g14ANeighborComes,
    g10CalmThePatient,
    g9NotifyCaregiver,
    g8ActuateTheHome,
    neighborComes ].
goals(soft) <--
  [ or([ sg1PatientPrivacy,
         sg2EnergySpentWisely,
         sg3LessNoise ]) ].
g0HomeIsManagedForSafetyOfPatient <--
  [ g1EnforceRoutineExitProcedure,
    g2RefreshAirInsideHome,
    g3HomeIsProtectedAgainstRobbery ].
g10CalmThePatient <-- [makeRelaxationEffects].
g11PreventRobberFromEntering <-- [t14LockDoors].
g12AssistanceComes <-- [g13PoliceComes].
g12AssistanceComes <-- [g14ANeighborComes].
g13PoliceComes <-- [policeIsNotified].
g14ANeighborComes <-- [neighborComes].
g1EnforceRoutineExitProcedure <-- [g5PatientIsPreventedFromExiting].
g1EnforceRoutineExitProcedure <-- [g4PatientIsAlerted].
g2RefreshAirInsideHome <-- [t8OpenWindows].
g2RefreshAirInsideHome <-- [t9TurnOnAirVentilator].
g3HomeIsProtectedAgainstRobbery <--
  [ g6GiveIllusionOfBeingLivedIn,
    g7ActAgainstPotentialRobbery ].
g4PatientIsAlerted <-- [t1AlertViaVoiceMessage].
g4PatientIsAlerted <-- [t2SwitchOnLightsAtPatientLocation].
g5PatientIsPreventedFromExiting <--
  [ g10CalmThePatient,
    g9NotifyCaregiver,
    g8ActuateTheHome ].
g6GiveIllusionOfBeingLivedIn <-- [t10TurnOnOffLightIteratively].
g7ActAgainstPotentialRobbery <--
  [ g11PreventRobberFromEntering,
    g12AssistanceComes ].
g8ActuateTheHome <-- [t3LockBalconyDoorWindowMainEntrance].
g9NotifyCaregiver <-- [t4CallCaregiverByPhone].
g9NotifyCaregiver <-- [t5CallCaregiverByPublicCall].
makeRelaxationEffects <-- [t7TurnOnCalmMusic].
makeRelaxationEffects <-- [t6GiveWarmLightColor].
policeIsNotified <--
  [ t13TurnOnSecurityCameras,
    t12TurnAllLightsOn,
    t11PhonePolice ].
sg1PatientPrivacy <--
  [ helps(t8OpenWindows),
    helps(t9TurnOnAirVentilator) ].
sg2EnergySpentWisely <--
  [ hurts(t9TurnOnAirVentilator),
    helps(t8OpenWindows) ].
sg3LessNoise <--
  [ helps(t4CallCaregiverByPhone),
    hurts(t5CallCaregiverByPublicCall) ].
