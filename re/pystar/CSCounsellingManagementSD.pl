% CSCounsellingManagementSD  (nfr3 dialect: <-- rules, soft bodies are edges)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ anITTrainerBePresent,
    bilingualCounsellorsBeHired,
    counsellingPoliciesBeFollowed,
    professionalCounsellorsBeUsed,
    callsBeRecordedIntoADataBase,
    performanceReviewInformationBeCollectedInDataBase,
    feedbackToCounsellorsBeProvided,
    aTrainingComputerBePresent,
    supervisionBePerformedAtLeastEvery3Months ].
goals(soft) <--
  [ or([ considerationOfFeedbackManagers,
         happinessCounsellingManagement,
         counsellingManager,
         avoidLiabilityProblems,
         accommodateSchedulesCounsellors,
         salary,
         supportDayToDayClinicalNeedsOfCounsellors,
         improveITSkills,
         improveCallRecordingEquipment,
         professionalWorkEnvironment,
         increaseFundingForTraining,
         accommodateSchedulesCounsellingManagers,
         improvedQualityAssuranceCounsellingReviewsAndEvaluation,
         effectiveUseOfTechnologyCounsellors,
         reduceStaggeringOfSchedules,
         continualImprovementCounsellingSkills,
         pressureCounsellorsToProvideOnlineServices,
         helpAsManyKidsAsPossible,
         improveHiringProcessOfCounsellors,
         clearerCallClassificationCatagories,
         increasedEmphasisOnITInHiringProcessOfCounsellors,
         increaseITMethodsToAcquireFeedback,
         increaseITTrainingForCounsellors,
         sufficientCounsellingResources,
         improveITSkillsOfCounsellors,
         positiveInternalOpinion,
         supportAnalysisCounsellorsTime,
         effectiveScheduling,
         highQualityCounselling,
         avoidRelationshipsWithSpecificCounsellor,
         increaseNumberOfCounsellors,
         counsellingTrainingManagement,
         improvedWritingSkillsCounsellors,
         performCounsellingAsInstructedBySupervisorCounsellors,
         reduceCostOfCounsellingHR,
         accountabilityServices,
         increasedCounsellingResources,
         facilitateFasterChangesInCounsellorDuties,
         increasedEmphasisOnITInHiringProcessOfCounsellors2,
         improvedWritingSkillsCounsellors1,
         happinessCounsellors ]) ].
continualImprovementCounsellingSkills <--
  [ counsellingTrainingManagement ].
counsellingManager <--
  [ avoidLiabilityProblems,
    secondReadingOfWebPosts,
    accommodateSchedulesCounsellingManagers,
    professionalWorkEnvironment,
    negotiateWithCounsellorsUnion ].
counsellingTrainingManagement <--
  [ increaseITMethodsToAcquireFeedback,
    improvedWritingSkillsCounsellors,
    increaseFundingForTraining,
    improveITSkills,
    supervisionBePerformedAtLeastEvery3Months,
    aTrainingComputerBePresent,
    increaseITTrainingForCounsellors,
    increasedEmphasisOnITInHiringProcessOfCounsellors,
    anITTrainerBePresent,
    feedbackToCounsellorsBeProvided ].
counsellingWorkshops <-- [counsellingTrainingManagement].
happinessCounsellingManagement <-- [counsellingManager].
improveITSkillsOfCounsellors <-- [counsellingTrainingManagement].
improvedWritingSkillsCounsellors1 <-- [counsellingTrainingManagement].
professionalCounsellorsBeUsed <-- [counsellingTrainingManagement].
