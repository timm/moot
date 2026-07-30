% PatientAndProvider_remoteHealthcare  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [treatment, treatment2].
goals(soft) <--
  [ or([ viableHealthcareService,
         effectiveTreatment,
         efficientOperation,
         cost,
         waitingTime,
         comfortableTreatment,
         medicalFacility,
         carerFeeling,
         happiness,
         qualityOfCare,
         normalLIfestyle,
         expense,
         flexibleTreatment,
         fastRecovery,
         culturalSpiritualWellbeing,
         comfort,
         timeForTreatment,
         timeSaving,
         privacy,
         viableHealthcare ]) ].
treatment <-- [patientCenteredTreatment].
treatment <-- [holisticCenteredTreatment].
treatment <-- [providerCenteredTreatment].
treatment2 <-- [patientCenteredTreatment2].
treatment2 <-- [holisticCenteredTreatment2].
treatment2 <-- [providerCenteredTreatment2].
carerFeeling <--
  [ helps(patientCenteredTreatment),
    hurts(providerCenteredTreatment),
    helps(holisticCenteredTreatment) ].
comfort <--
  [ helps(patientCenteredTreatment2),
    helps(holisticCenteredTreatment2),
    hurts(providerCenteredTreatment2) ].
comfortableTreatment <--
  [ helps(patientCenteredTreatment),
    makes(holisticCenteredTreatment),
    hurts(providerCenteredTreatment) ].
cost <--
  [ helps(effectiveTreatment),
    helps(efficientOperation),
    helps(waitingTime) ].
culturalSpiritualWellbeing <--
  [ makes(holisticCenteredTreatment2),
    helps(providerCenteredTreatment2),
    hurts(patientCenteredTreatment2) ].
effectiveTreatment <--
  [ makes(comfortableTreatment),
    makes(medicalFacility),
    helps(carerFeeling) ].
efficientOperation <--
  [ hurts(comfortableTreatment),
    helps(medicalFacility),
    helps(carerFeeling) ].
expense <--
  [ helps(qualityOfCare),
    helps(normalLIfestyle),
    makes(timeSaving) ].
fastRecovery <--
  [ helps(comfort),
    helps(culturalSpiritualWellbeing),
    helps(timeForTreatment) ].
flexibleTreatment <--
  [ helps(culturalSpiritualWellbeing),
    helps(comfort),
    helps(privacy) ].
happiness <-- [makes(qualityOfCare), makes(normalLIfestyle)].
medicalFacility <--
  [ hurts(holisticCenteredTreatment),
    makes(providerCenteredTreatment) ].
normalLIfestyle <-- [helps(fastRecovery), helps(flexibleTreatment)].
privacy <--
  [ hurts(holisticCenteredTreatment2),
    hurts(providerCenteredTreatment2),
    helps(patientCenteredTreatment2) ].
qualityOfCare <-- [helps(fastRecovery), helps(flexibleTreatment)].
timeForTreatment <--
  [ helps(providerCenteredTreatment2),
    helps(patientCenteredTreatment2),
    hurts(holisticCenteredTreatment2) ].
timeSaving <-- [helps(flexibleTreatment), helps(fastRecovery)].
viableHealthcareService <--
  [ makes(effectiveTreatment),
    helps(efficientOperation) ].
waitingTime <-- [helps(medicalFacility)].
