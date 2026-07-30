% MedicalConsultationAndDiagnosis  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ obtainAccessToPatientSRecordsDuringMedicalConsultation,
    obtainAccessToPatientSClinicalHistory,
    obtainPatientSData,
    diagnosePatientSHealthState,
    provideMedicalCareToPatientThroughMedicalConsultation,
    provideMedicalCareToPatient,
    obtainAccessToSpecialistsInAreasRelatedToRheumatology,
    diagnosisRheumatologicCondition,
    standardizeDiagnosisCueSheets,
    diagnosisSeriousRheumatologicalConditions,
    diagnosisMildRheumatologicalConditions,
    rheumatologicDiagnosis,
    diagnosisNonRheumatologicDiseases ].
goals(soft) <--
  [ or([ selectTheMostSuitableTreatmentForPatient,
         acquireTechnicalSkills ]) ].
diagnosePatientSHealthState <--
  [ rheumatologicDiagnosis,
    obtainAccessToPatientSClinicalHistory,
    examinatePatient ].
diagnosisRheumatologicCondition <--
  [ diagnosisSeriousRheumatologicalConditions ].
diagnosisRheumatologicCondition <-- [standardizeDiagnosisCueSheets].
diagnosisRheumatologicCondition <--
  [ obtainAccessToSpecialistsInAreasRelatedToRheumatology ].
diagnosisRheumatologicCondition <--
  [ diagnosisMildRheumatologicalConditions ].
examinatePatient <-- [examinationRequest].
obtainAccessToPatientSClinicalHistory <--
  [ obtainAccessToPatientSRecordsDuringMedicalConsultation ].
obtainPatientSData <--
  [ obtainAccessToPatientSRecordsDuringMedicalConsultation ].
prescribePatientSTreatment <-- [drugsPrescribition].
provideMedicalCareToPatient <--
  [ provideMedicalCareToPatientThroughMedicalConsultation ].
provideMedicalCareToPatientThroughMedicalConsultation <--
  [ diagnosePatientSHealthState,
    prescribePatientSTreatment ].
rheumatologicDiagnosis <-- [diagnosisRheumatologicCondition].
rheumatologicDiagnosis <-- [diagnosisNonRheumatologicDiseases].
