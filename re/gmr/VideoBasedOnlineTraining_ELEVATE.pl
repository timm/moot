% VideoBasedOnlineTraining_ELEVATE  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ elevatePlatformCreated,
    businessInEDSucceded,
    profitMade,
    trainingAttended,
    elearning,
    professionalKnowledgeUpdated,
    jobPositionKept,
    trainingCertificationGot,
    serviceProvided,
    personnelSkillsUpdated,
    trainingSessionsRequirementsSpecified,
    technologyStandardCompliance,
    planAndBudgetApproved,
    continuousTrainingEnsured,
    elevateTools,
    domainNeedsUnderstood,
    elevateUsed ].
goals(soft) <--
  [ or([ reuseAssets,
         minimizeEffort,
         performWell,
         highQuality,
         effectiveTraining,
         sustainableCosts,
         sustainableCostsTimeResources,
         usableAdvancedFeatures ]) ].
businessInEDSucceded <-- [elevatePlatformCreated].
jobPositionKept <--
  [ professionalKnowledgeUpdated,
    trainingCertificationGot ].
professionalKnowledgeUpdated <-- [trainingAttended].
professionalKnowledgeUpdated <-- [elearning].
profitMade <-- [businessInEDSucceded].
highQuality <-- [makes(personnelSkillsUpdated)].
minimizeEffort <-- [hurts(trainingAttended), makes(elearning)].
performWell <-- [helps(professionalKnowledgeUpdated)].
reuseAssets <-- [helps(elevatePlatformCreated)].
