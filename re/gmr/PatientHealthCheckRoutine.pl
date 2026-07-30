% PatientHealthCheckRoutine  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ g19GetUpPatientWithTransferSling,
    g20PositionTransferSling,
    g21GetPatientUp,
    g22WashPatient,
    g23WashInBasin,
    g24SupportPatientInHavingAShower,
    g25GetUpPatientByLifiting,
    g1PreBreakfastMorningRoutine,
    g2GetOutOfBed,
    g5CheckHealth,
    g10TakeMedicine,
    g13HaveAWash,
    g18CallHelper,
    g3GetUpAutonomously,
    g4GetSupportToGetUp,
    g6RoutineCheck,
    g7SpecificCheck,
    g8MeasureGlucose,
    g9CheckHeartActivity,
    g11RegulateGlucose,
    g12PreventHeartAttack,
    g14WashAutonomously,
    g17GetAidInWashing,
    g15WashInBasing,
    g16HaveShower,
    washPatient,
    getUpPatientByLifiting,
    getUpPatientWithTransferSling ].
goals(soft) <--
  [ or([ reliability,
         efficacy,
         lowFailureCost ]) ].
g10TakeMedicine <-- [g11RegulateGlucose].
g10TakeMedicine <-- [g12PreventHeartAttack].
g11RegulateGlucose <-- [t12InjectWithInsulinPen].
g11RegulateGlucose <-- [t13UseInsulinPump].
g12PreventHeartAttack <-- [t14TakeAspirin].
g12PreventHeartAttack <-- [t15TakeBetaBlockers].
g13HaveAWash <-- [g17GetAidInWashing].
g13HaveAWash <-- [g14WashAutonomously].
g14WashAutonomously <-- [g15WashInBasing].
g14WashAutonomously <-- [g16HaveShower].
g15WashInBasing <-- [t16WashHandsFace].
g16HaveShower <-- [t17TakeUnassistedShower].
g16HaveShower <-- [t18UseGrabber].
g17GetAidInWashing <-- [t19GetAssistedWashing].
g18CallHelper <-- [t21SendSMS].
g18CallHelper <-- [t20PhoneHelper].
g19GetUpPatientWithTransferSling <--
  [ g20PositionTransferSling,
    g21GetPatientUp ].
g1PreBreakfastMorningRoutine <--
  [ g10TakeMedicine,
    g5CheckHealth,
    g2GetOutOfBed,
    g13HaveAWash ].
g20PositionTransferSling <-- [t23PositionSlingWithRemote].
g20PositionTransferSling <-- [t22PositionSlingManually].
g21GetPatientUp <-- [t24ActivateSling].
g22WashPatient <-- [g23WashInBasin].
g22WashPatient <-- [g24SupportPatientInHavingAShower].
g23WashInBasin <-- [t25CleanPatientSFaceHands].
g24SupportPatientInHavingAShower <-- [t28UseShowerChair].
g24SupportPatientInHavingAShower <-- [t27HelpPatientToStand].
g25GetUpPatientByLifiting <-- [t28LiftUpPatient].
g2GetOutOfBed <-- [g3GetUpAutonomously, g4GetSupportToGetUp].
g3GetUpAutonomously <-- [t2GetUpWithoutSupport].
g3GetUpAutonomously <-- [t3UseBedRails].
g3GetUpAutonomously <-- [t1UsePoleTrapeze].
g4GetSupportToGetUp <-- [t4UseTransferSling].
g4GetSupportToGetUp <-- [t5LiftPatient].
g5CheckHealth <-- [g6RoutineCheck, g7SpecificCheck].
g6RoutineCheck <-- [t6UseSmartShirt].
g6RoutineCheck <-- [t7UseThermometer].
g6RoutineCheck <-- [t8UseOxymeter].
g7SpecificCheck <-- [g8MeasureGlucose].
g7SpecificCheck <-- [g9CheckHeartActivity].
g8MeasureGlucose <-- [t6UseGlucoseMeter].
g9CheckHeartActivity <-- [t10UsePulseCheckr].
g9CheckHeartActivity <-- [t11UseSmartShirtEKG].
t19GetAssistedWashing <-- [washPatient].
t4UseTransferSling <-- [getUpPatientWithTransferSling].
t5LiftPatient <-- [getUpPatientByLifiting].
