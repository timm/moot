% EyeCareTreatment  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ achieveAdvancedTreatmentForPatient,
    achieveReceiveFeeFromPatient,
    achieveProvideAdvancedTreatmentToPatient,
    achieveProvideTreatmentToPatient,
    achieveReceiveFeeFromPatient2,
    achieveExaminationForTreatmentByPrimaryCarePhysician,
    eyeCareServiceForBetterEyesight,
    achievePrimaryTreatmentForBetterEyesight,
    achieveAdvancedTreatmentForBetterEyesight,
    achieveReceivePrimaryTreatment,
    achieveReceiveExaminationForTreatment,
    achieveReferralServiceForBetterEyesight,
    achieveReferralToEyeCareSpecialistForBetterEyesight,
    achieveBasicTreatmentForBetterEyesight,
    achieveSpecializedExaminationForAdvancedTreatmentByEyeCareSpecialist ].
goals(soft) <--
  [ or([ achievePatientBeingSatisfied ]) ].
achieveAdvancedTreatmentForBetterEyesight <--
  [ payFeeForAdvancedTreatment,
    achieveSpecializedExaminationForAdvancedTreatmentByEyeCareSpecialist ].
achieveAdvancedTreatmentForPatient <--
  [ achieveReceiveFeeFromPatient,
    achieveProvideAdvancedTreatmentToPatient ].
achieveExaminationForTreatmentByPrimaryCarePhysician <--
  [ primaryTreatment ].
achievePrimaryTreatmentForBetterEyesight <--
  [ achieveReceivePrimaryTreatment,
    achieveReceiveExaminationForTreatment,
    achieveReferralServiceForBetterEyesight,
    payFee ].
achieveProvideTreatmentToPatient <-- [primaryTreatment].
achieveReceiveExaminationForTreatment <-- [examinationForTreatment].
achieveReceiveFeeFromPatient <-- [fee2].
achieveReceiveFeeFromPatient2 <-- [fee].
achieveReceivePrimaryTreatment <-- [primaryTreatment2].
achieveReferralServiceForBetterEyesight <--
  [ achieveReferralToEyeCareSpecialistForBetterEyesight,
    achieveBasicTreatmentForBetterEyesight ].
achieveSpecializedExaminationForAdvancedTreatmentByEyeCareSpecialist <--
  [ advancedTreatment ].
advancedTreatment <-- [achieveAdvancedTreatmentForPatient].
examinationForTreatment <--
  [ achieveExaminationForTreatmentByPrimaryCarePhysician ].
eyeCareServiceForBetterEyesight <--
  [ achieveAdvancedTreatmentForBetterEyesight,
    achievePrimaryTreatmentForBetterEyesight ].
fee <-- [payFee].
fee2 <-- [payFeeForAdvancedTreatment].
primaryTreatment2 <-- [achieveProvideTreatmentToPatient].
achievePatientBeingSatisfied <--
  [ helps(achieveAdvancedTreatmentForPatient) ].
